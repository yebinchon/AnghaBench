; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_DequeueNodeInfoFromRelevantLst.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_DequeueNodeInfoFromRelevantLst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DequeueNodeInfoFromRelevantLst(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @XX_LockIntrSpinlock(i64 %13)
  store i32 %14, i32* %8, align 4
  br label %15

15:                                               ; preds = %12, %3
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @NCSW_LIST_IsEmpty(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @XX_RestoreAllIntr(i32 %20)
  br label %65

22:                                               ; preds = %15
  %23 = load i32*, i32** %4, align 8
  %24 = call i32* @NCSW_LIST_FIRST(i32* %23)
  store i32* %24, i32** %9, align 8
  br label %25

25:                                               ; preds = %46, %22
  %26 = load i32*, i32** %9, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = icmp ne i32* %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load i32*, i32** %9, align 8
  %31 = call %struct.TYPE_5__* @CC_NODE_F_OBJECT(i32* %30)
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %7, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = call i32 @ASSERT_COND(%struct.TYPE_5__* %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.TYPE_5__*
  %38 = call i32 @ASSERT_COND(%struct.TYPE_5__* %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %29
  br label %49

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45
  %47 = load i32*, i32** %9, align 8
  %48 = call i32* @NCSW_LIST_NEXT(i32* %47)
  store i32* %48, i32** %9, align 8
  br label %25

49:                                               ; preds = %44, %25
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = icmp ne %struct.TYPE_5__* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = call i32 @NCSW_LIST_DelAndInit(i32* %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = call i32 @XX_Free(%struct.TYPE_5__* %56)
  br label %58

58:                                               ; preds = %52, %49
  %59 = load i64, i64* %6, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i64, i64* %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @XX_UnlockIntrSpinlock(i64 %62, i32 %63)
  br label %65

65:                                               ; preds = %19, %61, %58
  ret void
}

declare dso_local i32 @XX_LockIntrSpinlock(i64) #1

declare dso_local i64 @NCSW_LIST_IsEmpty(i32*) #1

declare dso_local i32 @XX_RestoreAllIntr(i32) #1

declare dso_local i32* @NCSW_LIST_FIRST(i32*) #1

declare dso_local %struct.TYPE_5__* @CC_NODE_F_OBJECT(i32*) #1

declare dso_local i32 @ASSERT_COND(%struct.TYPE_5__*) #1

declare dso_local i32* @NCSW_LIST_NEXT(i32*) #1

declare dso_local i32 @NCSW_LIST_DelAndInit(i32*) #1

declare dso_local i32 @XX_Free(%struct.TYPE_5__*) #1

declare dso_local i32 @XX_UnlockIntrSpinlock(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
