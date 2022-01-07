; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FindNodeInfoInReleventLst.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FindNodeInfoInReleventLst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @FindNodeInfoInReleventLst(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @XX_LockIntrSpinlock(i64 %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32* @NCSW_LIST_FIRST(i32* %13)
  store i32* %14, i32** %9, align 8
  br label %15

15:                                               ; preds = %37, %3
  %16 = load i32*, i32** %9, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = load i32*, i32** %9, align 8
  %21 = call %struct.TYPE_4__* @CC_NODE_F_OBJECT(i32* %20)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %8, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @ASSERT_COND(i64 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %19
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @XX_UnlockIntrSpinlock(i64 %32, i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %4, align 8
  br label %44

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %36
  %38 = load i32*, i32** %9, align 8
  %39 = call i32* @NCSW_LIST_NEXT(i32* %38)
  store i32* %39, i32** %9, align 8
  br label %15

40:                                               ; preds = %15
  %41 = load i64, i64* %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @XX_UnlockIntrSpinlock(i64 %41, i32 %42)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %44

44:                                               ; preds = %40, %31
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %45
}

declare dso_local i32 @XX_LockIntrSpinlock(i64) #1

declare dso_local i32* @NCSW_LIST_FIRST(i32*) #1

declare dso_local %struct.TYPE_4__* @CC_NODE_F_OBJECT(i32*) #1

declare dso_local i32 @ASSERT_COND(i64) #1

declare dso_local i32 @XX_UnlockIntrSpinlock(i64, i32) #1

declare dso_local i32* @NCSW_LIST_NEXT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
