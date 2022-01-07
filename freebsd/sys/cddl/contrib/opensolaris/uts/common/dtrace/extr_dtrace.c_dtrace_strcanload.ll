; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_strcanload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_strcanload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@DTRACE_ACCESS_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64*, %struct.TYPE_4__*, i32*)* @dtrace_strcanload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_strcanload(i64 %0, i64 %1, i64* %2, %struct.TYPE_4__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DTRACE_ACCESS_KERNEL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load i64*, i64** %9, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @DTRACE_RANGE_REMAIN(i64* %21, i64 %22, i64 %23, i64 %24)
  store i32 1, i32* %6, align 4
  br label %54

26:                                               ; preds = %5
  %27 = load i64*, i64** %9, align 8
  %28 = icmp eq i64* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i64* %12, i64** %9, align 8
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i64, i64* %7, align 8
  %32 = load i64*, i64** %9, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i64 @dtrace_canload_remains(i64 %31, i32 0, i64* %32, %struct.TYPE_4__* %33, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %30
  %38 = load i64, i64* %7, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load i64, i64* %8, align 8
  %41 = load i64*, i64** %9, align 8
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @MIN(i64 %40, i64 %42)
  %44 = call i32 @dtrace_strlen(i8* %39, i32 %43)
  %45 = add nsw i32 1, %44
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp ule i64 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  store i32 1, i32* %6, align 4
  br label %54

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %30
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %51, %20
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @DTRACE_RANGE_REMAIN(i64*, i64, i64, i64) #1

declare dso_local i64 @dtrace_canload_remains(i64, i32, i64*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @dtrace_strlen(i8*, i32) #1

declare dso_local i32 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
