; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.cam_sim = type { i32 }
%struct.cam_path = type { i32 }
%struct.cam_devq = type { i32 }

@xsoftc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@CAM_MAX_HIGHPOWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"XPT lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"XPT highpower lock\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"CAM XPT task\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@xptaction = common dso_local global i32 0, align 4
@xptpoll = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"xpt\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CAM_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [67 x i8] c"xpt_init: xpt_bus_register failed with status %#x, failing attach\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CAM_XPT_PATH_ID = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [66 x i8] c"xpt_init: xpt_create_path failed with status %#x, failing attach\0A\00", align 1
@xptregister = common dso_local global i32 0, align 4
@CAM_PERIPH_BIO = common dso_local global i32 0, align 4
@cam_num_doneqs = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@MAXCPU = common dso_local global i32 0, align 4
@cam_doneqs = common dso_local global %struct.TYPE_6__* null, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"CAM doneq\00", align 1
@xpt_done_td = common dso_local global i32 0, align 4
@cam_proc = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"cam\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"doneq%d\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"xpt_init: Cannot init completion queues - failing attach\0A\00", align 1
@xpt_config = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [61 x i8] c"xpt_init: config_intrhook_establish failed - failing attach\0A\00", align 1
@CAM_BOOT_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @xpt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpt_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cam_sim*, align 8
  %5 = alloca %struct.cam_path*, align 8
  %6 = alloca %struct.cam_devq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = call i32 @TAILQ_INIT(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xsoftc, i32 0, i32 8))
  %11 = call i32 @TAILQ_INIT(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xsoftc, i32 0, i32 7))
  %12 = call i32 @STAILQ_INIT(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xsoftc, i32 0, i32 6))
  %13 = load i32, i32* @CAM_MAX_HIGHPOWER, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xsoftc, i32 0, i32 5), align 4
  %14 = load i32, i32* @MTX_DEF, align 4
  %15 = call i32 @mtx_init(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xsoftc, i32 0, i32 1), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32 %14)
  %16 = load i32, i32* @MTX_DEF, align 4
  %17 = call i32 @mtx_init(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xsoftc, i32 0, i32 4), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %16)
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %20 = call i32 @taskqueue_create(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %18, i32 %19, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xsoftc, i32 0, i32 3))
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xsoftc, i32 0, i32 3), align 4
  %21 = call %struct.cam_devq* @cam_simq_alloc(i32 16)
  store %struct.cam_devq* %21, %struct.cam_devq** %6, align 8
  %22 = load i32, i32* @xptaction, align 4
  %23 = load i32, i32* @xptpoll, align 4
  %24 = load %struct.cam_devq*, %struct.cam_devq** %6, align 8
  %25 = call %struct.cam_sim* @cam_sim_alloc(i32 %22, i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xsoftc, i32 0, i32 1), i32 0, i32 0, %struct.cam_devq* %24)
  store %struct.cam_sim* %25, %struct.cam_sim** %4, align 8
  %26 = load %struct.cam_sim*, %struct.cam_sim** %4, align 8
  %27 = icmp eq %struct.cam_sim* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* %2, align 4
  br label %125

30:                                               ; preds = %1
  %31 = call i32 @mtx_lock(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xsoftc, i32 0, i32 1))
  %32 = load %struct.cam_sim*, %struct.cam_sim** %4, align 8
  %33 = call i32 @xpt_bus_register(%struct.cam_sim* %32, i32* null, i32 0)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @CAM_SUCCESS, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xsoftc, i32 0, i32 1))
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %2, align 4
  br label %125

41:                                               ; preds = %30
  %42 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xsoftc, i32 0, i32 1))
  %43 = load i32, i32* @CAM_XPT_PATH_ID, align 4
  %44 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %45 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %46 = call i32 @xpt_create_path(%struct.cam_path** %5, i32* null, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @CAM_REQ_CMP, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %2, align 4
  br label %125

53:                                               ; preds = %41
  %54 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %55 = call i32 @xpt_path_lock(%struct.cam_path* %54)
  %56 = load i32, i32* @xptregister, align 4
  %57 = load i32, i32* @CAM_PERIPH_BIO, align 4
  %58 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %59 = load %struct.cam_sim*, %struct.cam_sim** %4, align 8
  %60 = call i32 @cam_periph_alloc(i32 %56, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %57, %struct.cam_path* %58, i32* null, i32 0, %struct.cam_sim* %59)
  %61 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %62 = call i32 @xpt_path_unlock(%struct.cam_path* %61)
  %63 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %64 = call i32 @xpt_free_path(%struct.cam_path* %63)
  %65 = load i32, i32* @cam_num_doneqs, align 4
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %67, label %71

67:                                               ; preds = %53
  %68 = load i32, i32* @mp_ncpus, align 4
  %69 = sdiv i32 %68, 6
  %70 = add nsw i32 1, %69
  store i32 %70, i32* @cam_num_doneqs, align 4
  br label %78

71:                                               ; preds = %53
  %72 = load i32, i32* @cam_num_doneqs, align 4
  %73 = load i32, i32* @MAXCPU, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @MAXCPU, align 4
  store i32 %76, i32* @cam_num_doneqs, align 4
  br label %77

77:                                               ; preds = %75, %71
  br label %78

78:                                               ; preds = %77, %67
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %109, %78
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @cam_num_doneqs, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %112

83:                                               ; preds = %79
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cam_doneqs, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* @MTX_DEF, align 4
  %90 = call i32 @mtx_init(i32* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32* null, i32 %89)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cam_doneqs, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = call i32 @STAILQ_INIT(i32* %95)
  %97 = load i32, i32* @xpt_done_td, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cam_doneqs, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %100
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @kproc_kthread_add(i32 %97, %struct.TYPE_6__* %101, i32* @cam_proc, i32* null, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %83
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* @cam_num_doneqs, align 4
  br label %112

108:                                              ; preds = %83
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %79

112:                                              ; preds = %106, %79
  %113 = load i32, i32* @cam_num_doneqs, align 4
  %114 = icmp slt i32 %113, 1
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i64 0, i64 0))
  %117 = load i32, i32* @ENOMEM, align 4
  store i32 %117, i32* %2, align 4
  br label %125

118:                                              ; preds = %112
  %119 = load i32, i32* @xpt_config, align 4
  store i32 %119, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xsoftc, i32 0, i32 0, i32 0), align 4
  %120 = call i64 @config_intrhook_establish(%struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xsoftc, i32 0, i32 0))
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %118
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %124, %115, %49, %36, %28
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @taskqueue_create(i8*, i32, i32, i32*) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local %struct.cam_sim* @cam_sim_alloc(i32, i32, i8*, i32*, i32, i32*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @xpt_bus_register(%struct.cam_sim*, i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @xpt_create_path(%struct.cam_path**, i32*, i32, i32, i32) #1

declare dso_local i32 @xpt_path_lock(%struct.cam_path*) #1

declare dso_local i32 @cam_periph_alloc(i32, i32*, i32*, i32*, i8*, i32, %struct.cam_path*, i32*, i32, %struct.cam_sim*) #1

declare dso_local i32 @xpt_path_unlock(%struct.cam_path*) #1

declare dso_local i32 @xpt_free_path(%struct.cam_path*) #1

declare dso_local i32 @kproc_kthread_add(i32, %struct.TYPE_6__*, i32*, i32*, i32, i32, i8*, i8*, i32) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
