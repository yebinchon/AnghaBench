; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_h_ps_strings2.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_h_ps_strings2.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8**, i64 }

@LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"arg%04zx\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"strdup failed\00", align 1
@__ps_strings = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"Sleeping forever...\0A\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca [16 x i8], align 16
  %4 = alloca i8**, align 8
  store i32 0, i32* %1, align 4
  %5 = load i64, i64* @LEN, align 8
  %6 = call i8** @calloc(i64 %5, i32 8)
  store i8** %6, i8*** %4, align 8
  %7 = icmp eq i8** %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %0
  store i64 0, i64* %2, align 8
  br label %11

11:                                               ; preds = %28, %10
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @LEN, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %17 = load i64, i64* %2, align 8
  %18 = call i32 @snprintf(i8* %16, i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %20 = call i8* @strdup(i8* %19)
  %21 = load i8**, i8*** %4, align 8
  %22 = load i64, i64* %2, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 %22
  store i8* %20, i8** %23, align 8
  %24 = icmp eq i8* %20, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %15
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %2, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %2, align 8
  br label %11

31:                                               ; preds = %11
  %32 = load i8**, i8*** %4, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__ps_strings, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i8** %32, i8*** %34, align 8
  %35 = load i64, i64* @LEN, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__ps_strings, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %42, %31
  %40 = load i32, i32* @UINT_MAX, align 4
  %41 = call i32 @sleep(i32 %40)
  br label %42

42:                                               ; preds = %39
  br i1 true, label %39, label %43

43:                                               ; preds = %42
  ret i32 0
}

declare dso_local i8** @calloc(i64, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
