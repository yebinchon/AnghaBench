; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_abort_tasks_lun.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_abort_tasks_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_lun = type { i32, i32, i32 }
%union.ctl_io = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%union.ctl_ha_msg = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i32*, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i64 0, align 8
@CTL_FLAG_ABORT_STATUS = common dso_local global i32 0, align 4
@CTL_FLAG_ABORT = common dso_local global i32 0, align 4
@CTL_LUN_PRIMARY_SC = common dso_local global i32 0, align 4
@CTL_TASK_ABORT_TASK = common dso_local global i32 0, align 4
@CTL_MSG_MANAGE_TASKS = common dso_local global i32 0, align 4
@CTL_HA_CHAN_CTL = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ooa_links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_lun*, i64, i64, i32)* @ctl_abort_tasks_lun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_abort_tasks_lun(%struct.ctl_lun* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ctl_lun*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.ctl_io*, align 8
  %10 = alloca %union.ctl_ha_msg, align 8
  store %struct.ctl_lun* %0, %struct.ctl_lun** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %12 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %11, i32 0, i32 2
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @mtx_assert(i32* %12, i32 %13)
  %15 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %16 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %15, i32 0, i32 1
  %17 = call i64 @TAILQ_FIRST(i32* %16)
  %18 = inttoptr i64 %17 to %union.ctl_io*
  store %union.ctl_io* %18, %union.ctl_io** %9, align 8
  br label %19

19:                                               ; preds = %124, %4
  %20 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %21 = icmp ne %union.ctl_io* %20, null
  br i1 %21, label %22, label %130

22:                                               ; preds = %19
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @UINT32_MAX, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %6, align 8
  %28 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %29 = bitcast %union.ctl_io* %28 to %struct.TYPE_10__*
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %27, %32
  br i1 %33, label %34, label %123

34:                                               ; preds = %26, %22
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @UINT32_MAX, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %7, align 8
  %40 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %41 = bitcast %union.ctl_io* %40 to %struct.TYPE_10__*
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %39, %44
  br i1 %45, label %46, label %123

46:                                               ; preds = %38, %34
  %47 = load i64, i64* %6, align 8
  %48 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %49 = bitcast %union.ctl_io* %48 to %struct.TYPE_10__*
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %47, %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %46
  %55 = load i64, i64* %7, align 8
  %56 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %57 = bitcast %union.ctl_io* %56 to %struct.TYPE_10__*
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %55, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %54, %46
  %63 = load i32, i32* @CTL_FLAG_ABORT_STATUS, align 4
  %64 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %65 = bitcast %union.ctl_io* %64 to %struct.TYPE_10__*
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %63
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %62, %54
  %70 = load i32, i32* @CTL_FLAG_ABORT, align 4
  %71 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %72 = bitcast %union.ctl_io* %71 to %struct.TYPE_10__*
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %70
  store i32 %75, i32* %73, align 8
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %118, label %78

78:                                               ; preds = %69
  %79 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %80 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @CTL_LUN_PRIMARY_SC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %118, label %85

85:                                               ; preds = %78
  %86 = bitcast %union.ctl_ha_msg* %10 to %struct.TYPE_9__*
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 3
  %88 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %89 = bitcast %union.ctl_io* %88 to %struct.TYPE_10__*
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = bitcast %struct.TYPE_6__* %87 to i8*
  %92 = bitcast %struct.TYPE_6__* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 16, i1 false)
  %93 = load i32, i32* @CTL_TASK_ABORT_TASK, align 4
  %94 = bitcast %union.ctl_ha_msg* %10 to %struct.TYPE_7__*
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %97 = bitcast %union.ctl_io* %96 to %struct.TYPE_8__*
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = bitcast %union.ctl_ha_msg* %10 to %struct.TYPE_7__*
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %103 = bitcast %union.ctl_io* %102 to %struct.TYPE_8__*
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = bitcast %union.ctl_ha_msg* %10 to %struct.TYPE_7__*
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @CTL_MSG_MANAGE_TASKS, align 4
  %109 = bitcast %union.ctl_ha_msg* %10 to %struct.TYPE_9__*
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = bitcast %union.ctl_ha_msg* %10 to %struct.TYPE_9__*
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  store i32* null, i32** %112, align 8
  %113 = bitcast %union.ctl_ha_msg* %10 to %struct.TYPE_9__*
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  store i32* null, i32** %114, align 8
  %115 = load i32, i32* @CTL_HA_CHAN_CTL, align 4
  %116 = load i32, i32* @M_NOWAIT, align 4
  %117 = call i32 @ctl_ha_msg_send(i32 %115, %union.ctl_ha_msg* %10, i32 12, i32 %116)
  br label %118

118:                                              ; preds = %85, %78, %69
  %119 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %120 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %121 = load i32, i32* @FALSE, align 4
  %122 = call i32 @ctl_try_unblock_io(%struct.ctl_lun* %119, %union.ctl_io* %120, i32 %121)
  br label %123

123:                                              ; preds = %118, %38, %26
  br label %124

124:                                              ; preds = %123
  %125 = load %union.ctl_io*, %union.ctl_io** %9, align 8
  %126 = bitcast %union.ctl_io* %125 to %struct.TYPE_10__*
  %127 = load i32, i32* @ooa_links, align 4
  %128 = call i64 @TAILQ_NEXT(%struct.TYPE_10__* %126, i32 %127)
  %129 = inttoptr i64 %128 to %union.ctl_io*
  store %union.ctl_io* %129, %union.ctl_io** %9, align 8
  br label %19

130:                                              ; preds = %19
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @TAILQ_FIRST(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ctl_ha_msg_send(i32, %union.ctl_ha_msg*, i32, i32) #1

declare dso_local i32 @ctl_try_unblock_io(%struct.ctl_lun*, %union.ctl_io*, i32) #1

declare dso_local i64 @TAILQ_NEXT(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
