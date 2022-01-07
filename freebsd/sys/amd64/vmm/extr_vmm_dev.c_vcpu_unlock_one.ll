; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_dev.c_vcpu_unlock_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_dev.c_vcpu_unlock_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmmdev_softc = type { i32 }

@VCPU_FROZEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"vcpu %s(%d) has invalid state %d\00", align 1
@VCPU_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmmdev_softc*, i32)* @vcpu_unlock_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcpu_unlock_one(%struct.vmmdev_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.vmmdev_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vmmdev_softc* %0, %struct.vmmdev_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vmmdev_softc*, %struct.vmmdev_softc** %3, align 8
  %7 = getelementptr inbounds %struct.vmmdev_softc, %struct.vmmdev_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @vcpu_get_state(i32 %8, i32 %9, i32* null)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @VCPU_FROZEN, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.vmmdev_softc*, %struct.vmmdev_softc** %3, align 8
  %16 = getelementptr inbounds %struct.vmmdev_softc, %struct.vmmdev_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @vm_name(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %14, %2
  %23 = load %struct.vmmdev_softc*, %struct.vmmdev_softc** %3, align 8
  %24 = getelementptr inbounds %struct.vmmdev_softc, %struct.vmmdev_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @VCPU_IDLE, align 4
  %28 = call i32 @vcpu_set_state(i32 %25, i32 %26, i32 %27, i32 0)
  ret void
}

declare dso_local i32 @vcpu_get_state(i32, i32, i32*) #1

declare dso_local i32 @panic(i8*, i32, i32, i32) #1

declare dso_local i32 @vm_name(i32) #1

declare dso_local i32 @vcpu_set_state(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
