; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock.c_padlock_freesession.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock.c_padlock_freesession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padlock_softc = type { i32 }
%struct.padlock_session = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @padlock_freesession to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @padlock_freesession(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.padlock_softc*, align 8
  %6 = alloca %struct.padlock_session*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.padlock_softc* @device_get_softc(i32 %7)
  store %struct.padlock_softc* %8, %struct.padlock_softc** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.padlock_session* @crypto_get_driver_session(i32 %9)
  store %struct.padlock_session* %10, %struct.padlock_session** %6, align 8
  %11 = load %struct.padlock_softc*, %struct.padlock_softc** %5, align 8
  %12 = load %struct.padlock_session*, %struct.padlock_session** %6, align 8
  %13 = call i32 @padlock_freesession_one(%struct.padlock_softc* %11, %struct.padlock_session* %12)
  ret void
}

declare dso_local %struct.padlock_softc* @device_get_softc(i32) #1

declare dso_local %struct.padlock_session* @crypto_get_driver_session(i32) #1

declare dso_local i32 @padlock_freesession_one(%struct.padlock_softc*, %struct.padlock_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
