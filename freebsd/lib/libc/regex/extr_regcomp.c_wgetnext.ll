; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_wgetnext.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_wgetnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i64, i64 }

@REG_ILLSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse*)* @wgetnext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wgetnext(%struct.parse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.parse* %0, %struct.parse** %3, align 8
  %7 = call i32 @memset(i32* %4, i32 0, i32 4)
  %8 = load %struct.parse*, %struct.parse** %3, align 8
  %9 = getelementptr inbounds %struct.parse, %struct.parse* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.parse*, %struct.parse** %3, align 8
  %12 = getelementptr inbounds %struct.parse, %struct.parse* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.parse*, %struct.parse** %3, align 8
  %15 = getelementptr inbounds %struct.parse, %struct.parse* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  %18 = call i64 @mbrtowc(i32* %5, i64 %10, i64 %17, i32* %4)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp eq i64 %19, -1
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i64, i64* %6, align 8
  %23 = icmp eq i64 %22, -2
  br i1 %23, label %24, label %27

24:                                               ; preds = %21, %1
  %25 = load i32, i32* @REG_ILLSEQ, align 4
  %26 = call i32 @SETERROR(i32 %25)
  store i32 0, i32* %2, align 4
  br label %38

27:                                               ; preds = %21
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i64 1, i64* %6, align 8
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.parse*, %struct.parse** %3, align 8
  %34 = getelementptr inbounds %struct.parse, %struct.parse* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, %32
  store i64 %36, i64* %34, align 8
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %31, %24
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @mbrtowc(i32*, i64, i64, i32*) #1

declare dso_local i32 @SETERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
