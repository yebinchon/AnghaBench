; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_rangeMap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_rangeMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rangetable = common dso_local global i64* null, align 8
@mintable = common dso_local global i64* null, align 8
@tlen_table = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"Error, not a valid param\0A \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @rangeMap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rangeMap(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i64*, i64** @rangetable, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = sub nsw i32 %12, 1
  %14 = call i32 @MIN(i32 %7, i32 %13)
  %15 = call i32 @MAX(i32 %14, i32 0)
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %4, align 8
  switch i64 %17, label %34 [
    i64 128, label %18
    i64 135, label %18
    i64 133, label %18
    i64 131, label %18
    i64 132, label %18
    i64 130, label %18
    i64 129, label %25
    i64 134, label %30
    i64 136, label %33
  ]

18:                                               ; preds = %2, %2, %2, %2, %2, %2
  %19 = load i64*, i64** @mintable, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %22, %23
  store i64 %24, i64* %3, align 8
  br label %38

25:                                               ; preds = %2
  %26 = load i64*, i64** @tlen_table, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %3, align 8
  br label %38

30:                                               ; preds = %2
  %31 = load i64, i64* %6, align 8
  %32 = sub i64 %31, 1
  store i64 %32, i64* %3, align 8
  br label %38

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %2, %33
  br label %35

35:                                               ; preds = %34
  %36 = call i32 @DISPLAY(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 @assert(i32 0)
  store i64 -1, i64* %3, align 8
  br label %38

38:                                               ; preds = %35, %30, %25, %18
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @DISPLAY(i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
