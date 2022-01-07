; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc.c_enc_daemon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc.c_enc_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32*, i32, %struct.intr_config_hook, i32 }
%struct.intr_config_hook = type { i32* }

@ENC_FLAG_SHUTDOWN = common dso_local global i32 0, align 4
@ENC_UPDATE_NONE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@enc_status_updater = common dso_local global i32 0, align 4
@PUSER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @enc_daemon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enc_daemon(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.intr_config_hook*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @cam_periph_lock(i32 %9)
  br label %11

11:                                               ; preds = %57, %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ENC_FLAG_SHUTDOWN, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %11
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %18
  %24 = load i32, i32* @ENC_UPDATE_NONE, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  store %struct.intr_config_hook* %28, %struct.intr_config_hook** %4, align 8
  %29 = load %struct.intr_config_hook*, %struct.intr_config_hook** %4, align 8
  %30 = getelementptr inbounds %struct.intr_config_hook, %struct.intr_config_hook* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load %struct.intr_config_hook*, %struct.intr_config_hook** %4, align 8
  %35 = call i32 @config_intrhook_disestablish(%struct.intr_config_hook* %34)
  %36 = load %struct.intr_config_hook*, %struct.intr_config_hook** %4, align 8
  %37 = getelementptr inbounds %struct.intr_config_hook, %struct.intr_config_hook* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %33, %23
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  %41 = load i32, i32* @hz, align 4
  %42 = mul nsw i32 60, %41
  %43 = load i32, i32* @enc_status_updater, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = call i32 @callout_reset(i32* %40, i32 %42, i32 %43, %struct.TYPE_4__* %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @PUSER, align 4
  %53 = call i32 @cam_periph_sleep(i32 %48, i32* %51, i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %57

54:                                               ; preds = %18
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = call i32 @enc_fsm_step(%struct.TYPE_4__* %55)
  br label %57

57:                                               ; preds = %54, %38
  br label %11

58:                                               ; preds = %11
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  store i32* null, i32** %60, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @cam_periph_unlock(i32 %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @cam_periph_release(i32 %67)
  %69 = call i32 @kproc_exit(i32 0)
  ret void
}

declare dso_local i32 @cam_periph_lock(i32) #1

declare dso_local i32 @config_intrhook_disestablish(%struct.intr_config_hook*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @cam_periph_sleep(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @enc_fsm_step(%struct.TYPE_4__*) #1

declare dso_local i32 @cam_periph_unlock(i32) #1

declare dso_local i32 @cam_periph_release(i32) #1

declare dso_local i32 @kproc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
