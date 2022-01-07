; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_vdev_uberblock_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_vdev_uberblock_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VDEV_LABELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @vdev_uberblock_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_uberblock_load(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @VDEV_UBERBLOCK_SIZE(i32* %8)
  %10 = call i32* @malloc(i32 %9)
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %62

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %56, %14
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @VDEV_LABELS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %59

19:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %52, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @VDEV_UBERBLOCK_COUNT(i32* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %20
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @VDEV_UBERBLOCK_OFFSET(i32* %29, i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @VDEV_UBERBLOCK_SIZE(i32* %32)
  %34 = call i64 @vdev_label_read(i32* %26, i32 %27, i32* %28, i32 %31, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %52

37:                                               ; preds = %25
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 @uberblock_verify(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %52

42:                                               ; preds = %37
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i64 @vdev_uberblock_compare(i32* %43, i32* %44)
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %4, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %42
  br label %52

52:                                               ; preds = %51, %41, %36
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %20

55:                                               ; preds = %20
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %15

59:                                               ; preds = %15
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @free(i32* %60)
  br label %62

62:                                               ; preds = %59, %13
  ret void
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @VDEV_UBERBLOCK_SIZE(i32*) #1

declare dso_local i32 @VDEV_UBERBLOCK_COUNT(i32*) #1

declare dso_local i64 @vdev_label_read(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @VDEV_UBERBLOCK_OFFSET(i32*, i32) #1

declare dso_local i64 @uberblock_verify(i32*) #1

declare dso_local i64 @vdev_uberblock_compare(i32*, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
