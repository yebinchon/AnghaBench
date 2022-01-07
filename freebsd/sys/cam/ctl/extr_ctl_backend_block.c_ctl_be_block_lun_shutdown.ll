; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_lun_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_lun_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_block_lun = type { i32, %struct.ctl_be_block_softc* }
%struct.ctl_be_block_softc = type { i32 }

@CTL_BE_BLOCK_LUN_UNCONFIGURED = common dso_local global i32 0, align 4
@CTL_BE_BLOCK_LUN_WAITING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ctl_be_block_lun_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_be_block_lun_shutdown(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ctl_be_block_lun*, align 8
  %4 = alloca %struct.ctl_be_block_softc*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ctl_be_block_lun*
  store %struct.ctl_be_block_lun* %6, %struct.ctl_be_block_lun** %3, align 8
  %7 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %8 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %7, i32 0, i32 1
  %9 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %8, align 8
  store %struct.ctl_be_block_softc* %9, %struct.ctl_be_block_softc** %4, align 8
  %10 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ctl_be_block_softc, %struct.ctl_be_block_softc* %10, i32 0, i32 0
  %12 = call i32 @mtx_lock(i32* %11)
  %13 = load i32, i32* @CTL_BE_BLOCK_LUN_UNCONFIGURED, align 4
  %14 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %15 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %19 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CTL_BE_BLOCK_LUN_WAITING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %26 = call i32 @wakeup(%struct.ctl_be_block_lun* %25)
  br label %27

27:                                               ; preds = %24, %1
  %28 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %4, align 8
  %29 = getelementptr inbounds %struct.ctl_be_block_softc, %struct.ctl_be_block_softc* %28, i32 0, i32 0
  %30 = call i32 @mtx_unlock(i32* %29)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(%struct.ctl_be_block_lun*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
