; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_audio.c_bcm2835_audio_create_worker.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_audio.c_bcm2835_audio_create_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_audio_info = type { i32 }
%struct.proc = type { i32 }

@WORKER_RUNNING = common dso_local global i32 0, align 4
@bcm2835_audio_worker = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"bcm2835_audio_worker\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to create bcm2835_audio_worker\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_audio_info*)* @bcm2835_audio_create_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_audio_create_worker(%struct.bcm2835_audio_info* %0) #0 {
  %2 = alloca %struct.bcm2835_audio_info*, align 8
  %3 = alloca %struct.proc*, align 8
  store %struct.bcm2835_audio_info* %0, %struct.bcm2835_audio_info** %2, align 8
  %4 = load i32, i32* @WORKER_RUNNING, align 4
  %5 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %6 = getelementptr inbounds %struct.bcm2835_audio_info, %struct.bcm2835_audio_info* %5, i32 0, i32 0
  store i32 %4, i32* %6, align 4
  %7 = load i32, i32* @bcm2835_audio_worker, align 4
  %8 = load %struct.bcm2835_audio_info*, %struct.bcm2835_audio_info** %2, align 8
  %9 = bitcast %struct.bcm2835_audio_info* %8 to i8*
  %10 = call i64 @kproc_create(i32 %7, i8* %9, %struct.proc** %3, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  ret void
}

declare dso_local i64 @kproc_create(i32, i8*, %struct.proc**, i32, i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
