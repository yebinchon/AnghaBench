; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_objset_do_userquota_updates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_objset_do_userquota_updates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i32 }

@DMU_OT_NONE = common dso_local global i64 0, align 8
@DMU_USERUSED_OBJECT = common dso_local global i32 0, align 4
@DMU_OT_USERGROUP_USED = common dso_local global i32 0, align 4
@DMU_GROUPUSED_OBJECT = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@userquota_updates_task = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmu_objset_do_userquota_updates(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = call i32 @dmu_objset_userused_enabled(%struct.TYPE_14__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %73

12:                                               ; preds = %2
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = call %struct.TYPE_12__* @DMU_USERUSED_DNODE(%struct.TYPE_14__* %13)
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DMU_OT_NONE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %12
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = load i32, i32* @DMU_USERUSED_OBJECT, align 4
  %22 = load i32, i32* @DMU_OT_USERGROUP_USED, align 4
  %23 = load i64, i64* @DMU_OT_NONE, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @zap_create_claim(%struct.TYPE_14__* %20, i32 %21, i32 %22, i64 %23, i32 0, i32* %24)
  %26 = call i32 @VERIFY0(i32 %25)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = load i32, i32* @DMU_GROUPUSED_OBJECT, align 4
  %29 = load i32, i32* @DMU_OT_USERGROUP_USED, align 4
  %30 = load i64, i64* @DMU_OT_NONE, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @zap_create_claim(%struct.TYPE_14__* %27, i32 %28, i32 %29, i64 %30, i32 0, i32* %31)
  %33 = call i32 @VERIFY0(i32 %32)
  br label %34

34:                                               ; preds = %19, %12
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @multilist_get_num_sublists(i32 %37)
  store i32 %38, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %70, %34
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %39
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @multilist_sublist_is_empty_idx(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %70

51:                                               ; preds = %43
  %52 = load i32, i32* @KM_SLEEP, align 4
  %53 = call %struct.TYPE_13__* @kmem_alloc(i32 24, i32 %52)
  store %struct.TYPE_13__* %53, %struct.TYPE_13__** %7, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  store %struct.TYPE_14__* %54, %struct.TYPE_14__** %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  store i32* %60, i32** %62, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %64 = call %struct.TYPE_15__* @dmu_objset_pool(%struct.TYPE_14__* %63)
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @userquota_updates_task, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %69 = call i32 @taskq_dispatch(i32 %66, i32 %67, %struct.TYPE_13__* %68, i32 0)
  br label %70

70:                                               ; preds = %51, %50
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %39

73:                                               ; preds = %11, %39
  ret void
}

declare dso_local i32 @dmu_objset_userused_enabled(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_12__* @DMU_USERUSED_DNODE(%struct.TYPE_14__*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zap_create_claim(%struct.TYPE_14__*, i32, i32, i64, i32, i32*) #1

declare dso_local i32 @multilist_get_num_sublists(i32) #1

declare dso_local i64 @multilist_sublist_is_empty_idx(i32, i32) #1

declare dso_local %struct.TYPE_13__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @taskq_dispatch(i32, i32, %struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_15__* @dmu_objset_pool(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
