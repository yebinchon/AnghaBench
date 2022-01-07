; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_ramdisk_softc = type { i32, i32 }

@rd_softc = common dso_local global %struct.ctl_be_ramdisk_softc zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"ctlramdisk\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ctl_backend_ramdisk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_backend_ramdisk_init() #0 {
  %1 = alloca %struct.ctl_be_ramdisk_softc*, align 8
  store %struct.ctl_be_ramdisk_softc* @rd_softc, %struct.ctl_be_ramdisk_softc** %1, align 8
  %2 = load %struct.ctl_be_ramdisk_softc*, %struct.ctl_be_ramdisk_softc** %1, align 8
  %3 = call i32 @memset(%struct.ctl_be_ramdisk_softc* %2, i32 0, i32 8)
  %4 = load %struct.ctl_be_ramdisk_softc*, %struct.ctl_be_ramdisk_softc** %1, align 8
  %5 = getelementptr inbounds %struct.ctl_be_ramdisk_softc, %struct.ctl_be_ramdisk_softc* %4, i32 0, i32 1
  %6 = load i32, i32* @MTX_DEF, align 4
  %7 = call i32 @mtx_init(i32* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null, i32 %6)
  %8 = load %struct.ctl_be_ramdisk_softc*, %struct.ctl_be_ramdisk_softc** %1, align 8
  %9 = getelementptr inbounds %struct.ctl_be_ramdisk_softc, %struct.ctl_be_ramdisk_softc* %8, i32 0, i32 0
  %10 = call i32 @STAILQ_INIT(i32* %9)
  ret i32 0
}

declare dso_local i32 @memset(%struct.ctl_be_ramdisk_softc*, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
