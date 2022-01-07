; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_glue.c_api_parse_cmdline_sig.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_glue.c_api_parse_cmdline_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.api_signature = type { i32 }

@opterr = common dso_local global i64 0, align 8
@optreset = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"a:\00", align 1
@optarg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @api_parse_cmdline_sig(i32 %0, i8** %1, %struct.api_signature** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.api_signature**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store %struct.api_signature** %2, %struct.api_signature*** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* @opterr, align 8
  store i32 1, i32* @optreset, align 4
  store i32 1, i32* @optind, align 4
  br label %10

10:                                               ; preds = %21, %3
  %11 = load i32, i32* %5, align 4
  %12 = load i8**, i8*** %6, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %9, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %20 [
    i32 97, label %17
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @optarg, align 4
  %19 = call i64 @strtoul(i32 %18, i32* null, i32 16)
  store i64 %19, i64* %8, align 8
  br label %21

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20, %17
  br label %10

22:                                               ; preds = %10
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i64, i64* %8, align 8
  %27 = inttoptr i64 %26 to %struct.api_signature*
  %28 = load %struct.api_signature**, %struct.api_signature*** %7, align 8
  store %struct.api_signature* %27, %struct.api_signature** %28, align 8
  %29 = load %struct.api_signature**, %struct.api_signature*** %7, align 8
  %30 = load %struct.api_signature*, %struct.api_signature** %29, align 8
  %31 = call i64 @valid_sig(%struct.api_signature* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %36

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %22
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %33
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @strtoul(i32, i32*, i32) #1

declare dso_local i64 @valid_sig(%struct.api_signature*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
