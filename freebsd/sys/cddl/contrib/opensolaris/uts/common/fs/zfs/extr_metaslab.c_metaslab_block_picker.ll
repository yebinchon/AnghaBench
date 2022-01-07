; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_metaslab.c_metaslab_block_picker.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_metaslab.c_metaslab_block_picker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64*, i64, i64)* @metaslab_block_picker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @metaslab_block_picker(i32* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call %struct.TYPE_5__* @metaslab_block_find(i32* %12, i64 %14, i64 %15)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %10, align 8
  br label %17

17:                                               ; preds = %39, %4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %43

20:                                               ; preds = %17
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i64 @P2ROUNDUP(i32 %23, i64 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %8, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sle i64 %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %20
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %8, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i64*, i64** %7, align 8
  store i64 %36, i64* %37, align 8
  %38 = load i64, i64* %11, align 8
  store i64 %38, i64* %5, align 8
  br label %55

39:                                               ; preds = %20
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %42 = call %struct.TYPE_5__* @AVL_NEXT(i32* %40, %struct.TYPE_5__* %41)
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %10, align 8
  br label %17

43:                                               ; preds = %17
  %44 = load i64*, i64** %7, align 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i64 -1, i64* %5, align 8
  br label %55

48:                                               ; preds = %43
  %49 = load i64*, i64** %7, align 8
  store i64 0, i64* %49, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i64*, i64** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i64 @metaslab_block_picker(i32* %50, i64* %51, i64 %52, i64 %53)
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %48, %47, %33
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local %struct.TYPE_5__* @metaslab_block_find(i32*, i64, i64) #1

declare dso_local i64 @P2ROUNDUP(i32, i64) #1

declare dso_local %struct.TYPE_5__* @AVL_NEXT(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
