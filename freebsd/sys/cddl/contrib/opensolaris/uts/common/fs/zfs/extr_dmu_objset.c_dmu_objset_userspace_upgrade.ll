; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_objset_userspace_upgrade.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_objset_userspace_upgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@ENOTSUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@JUSTLOOKING = common dso_local global i32 0, align 4
@FORREAL = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@OBJSET_FLAG_USERACCOUNTING_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_objset_userspace_upgrade(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = call i64 @dmu_objset_userspace_present(%struct.TYPE_10__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %86

13:                                               ; preds = %1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = call i32 @dmu_objset_userused_enabled(%struct.TYPE_10__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @ENOTSUP, align 4
  %19 = call i32 @SET_ERROR(i32 %18)
  store i32 %19, i32* %2, align 4
  br label %86

20:                                               ; preds = %13
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = call i64 @dmu_objset_is_snapshot(%struct.TYPE_10__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  %26 = call i32 @SET_ERROR(i32 %25)
  store i32 %26, i32* %2, align 4
  br label %86

27:                                               ; preds = %20
  store i64 0, i64* %4, align 8
  br label %28

28:                                               ; preds = %73, %27
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %77

31:                                               ; preds = %28
  %32 = load i32, i32* @JUSTLOOKING, align 4
  %33 = call i64 @issig(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32, i32* @FORREAL, align 4
  %37 = call i64 @issig(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EINTR, align 4
  %41 = call i32 @SET_ERROR(i32 %40)
  store i32 %41, i32* %2, align 4
  br label %86

42:                                               ; preds = %35, %31
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i32, i32* @FTAG, align 4
  %46 = call i32 @dmu_bonus_hold(%struct.TYPE_10__* %43, i64 %44, i32 %45, i32** %7)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %73

50:                                               ; preds = %42
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = call i32* @dmu_tx_create(%struct.TYPE_10__* %51)
  store i32* %52, i32** %6, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @dmu_tx_hold_bonus(i32* %53, i64 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* @TXG_WAIT, align 4
  %58 = call i32 @dmu_tx_assign(i32* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @dmu_tx_abort(i32* %62)
  br label %73

64:                                               ; preds = %50
  %65 = load i32*, i32** %7, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @dmu_buf_will_dirty(i32* %65, i32* %66)
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* @FTAG, align 4
  %70 = call i32 @dmu_buf_rele(i32* %68, i32 %69)
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @dmu_tx_commit(i32* %71)
  br label %73

73:                                               ; preds = %64, %61, %49
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = load i32, i32* @FALSE, align 4
  %76 = call i32 @dmu_object_next(%struct.TYPE_10__* %74, i64* %4, i32 %75, i32 0)
  store i32 %76, i32* %5, align 4
  br label %28

77:                                               ; preds = %28
  %78 = load i32, i32* @OBJSET_FLAG_USERACCOUNTING_COMPLETE, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %84 = call i32 @dmu_objset_pool(%struct.TYPE_10__* %83)
  %85 = call i32 @txg_wait_synced(i32 %84, i32 0)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %77, %39, %24, %17, %12
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @dmu_objset_userspace_present(%struct.TYPE_10__*) #1

declare dso_local i32 @dmu_objset_userused_enabled(%struct.TYPE_10__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @dmu_objset_is_snapshot(%struct.TYPE_10__*) #1

declare dso_local i64 @issig(i32) #1

declare dso_local i32 @dmu_bonus_hold(%struct.TYPE_10__*, i64, i32, i32**) #1

declare dso_local i32* @dmu_tx_create(%struct.TYPE_10__*) #1

declare dso_local i32 @dmu_tx_hold_bonus(i32*, i64) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @dmu_buf_will_dirty(i32*, i32*) #1

declare dso_local i32 @dmu_buf_rele(i32*, i32) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @dmu_object_next(%struct.TYPE_10__*, i64*, i32, i32) #1

declare dso_local i32 @txg_wait_synced(i32, i32) #1

declare dso_local i32 @dmu_objset_pool(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
