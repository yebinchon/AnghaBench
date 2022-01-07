; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/blake2/extr_blake2_cryptodev.c_blake2_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/blake2/extr_blake2_cryptodev.c_blake2_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blake2_softc = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @blake2_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blake2_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.blake2_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.blake2_softc* @device_get_softc(i32 %4)
  store %struct.blake2_softc* %5, %struct.blake2_softc** %3, align 8
  %6 = load %struct.blake2_softc*, %struct.blake2_softc** %3, align 8
  %7 = getelementptr inbounds %struct.blake2_softc, %struct.blake2_softc* %6, i32 0, i32 1
  %8 = call i32 @rw_wlock(i32* %7)
  %9 = load %struct.blake2_softc*, %struct.blake2_softc** %3, align 8
  %10 = getelementptr inbounds %struct.blake2_softc, %struct.blake2_softc* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.blake2_softc*, %struct.blake2_softc** %3, align 8
  %12 = getelementptr inbounds %struct.blake2_softc, %struct.blake2_softc* %11, i32 0, i32 1
  %13 = call i32 @rw_wunlock(i32* %12)
  %14 = load %struct.blake2_softc*, %struct.blake2_softc** %3, align 8
  %15 = getelementptr inbounds %struct.blake2_softc, %struct.blake2_softc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @crypto_unregister_all(i32 %16)
  %18 = load %struct.blake2_softc*, %struct.blake2_softc** %3, align 8
  %19 = getelementptr inbounds %struct.blake2_softc, %struct.blake2_softc* %18, i32 0, i32 1
  %20 = call i32 @rw_destroy(i32* %19)
  %21 = call i32 (...) @blake2_cleanctx()
  ret i32 0
}

declare dso_local %struct.blake2_softc* @device_get_softc(i32) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @crypto_unregister_all(i32) #1

declare dso_local i32 @rw_destroy(i32*) #1

declare dso_local i32 @blake2_cleanctx(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
