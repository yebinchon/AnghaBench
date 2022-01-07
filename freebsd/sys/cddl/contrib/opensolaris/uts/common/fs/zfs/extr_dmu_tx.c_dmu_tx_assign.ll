; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_tx.c_dmu_tx_assign.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_tx.c_dmu_tx_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32 }

@TXG_WAIT = common dso_local global i32 0, align 4
@TXG_NOTHROTTLE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_tx_assign(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @TXG_WAIT, align 4
  %15 = load i32, i32* @TXG_NOTHROTTLE, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %13, %17
  %19 = call i32 @ASSERT0(i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dsl_pool_sync_context(i32 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @TXG_WAIT, align 4
  %30 = and i32 %28, %29
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dsl_pool_config_held(i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @IMPLY(i32 %30, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @TXG_NOTHROTTLE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %2
  %44 = load i32, i32* @B_TRUE, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %2
  br label %48

48:                                               ; preds = %66, %47
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @dmu_tx_try_assign(%struct.TYPE_6__* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = call i32 @dmu_tx_unassign(%struct.TYPE_6__* %54)
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @ERESTART, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %64, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @TXG_WAIT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59, %53
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %73

66:                                               ; preds = %59
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = call i32 @dmu_tx_wait(%struct.TYPE_6__* %67)
  br label %48

69:                                               ; preds = %48
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = call i32 @txg_rele_to_quiesce(i32* %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %64
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @dsl_pool_sync_context(i32) #1

declare dso_local i32 @IMPLY(i32, i32) #1

declare dso_local i32 @dsl_pool_config_held(i32) #1

declare dso_local i32 @dmu_tx_try_assign(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @dmu_tx_unassign(%struct.TYPE_6__*) #1

declare dso_local i32 @dmu_tx_wait(%struct.TYPE_6__*) #1

declare dso_local i32 @txg_rele_to_quiesce(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
