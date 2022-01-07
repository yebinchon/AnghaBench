; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/a10/extr_a10_intc.c_a10_intr_unmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/a10/extr_a10_intc.c_a10_intr_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10_aintc_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.a10_aintc_softc*, i32)* @a10_intr_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a10_intr_unmask(%struct.a10_aintc_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.a10_aintc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.a10_aintc_softc* %0, %struct.a10_aintc_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = srem i32 %8, 32
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sdiv i32 %10, 32
  store i32 %11, i32* %6, align 4
  %12 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %3, align 8
  %13 = getelementptr inbounds %struct.a10_aintc_softc, %struct.a10_aintc_softc* %12, i32 0, i32 0
  %14 = call i32 @mtx_lock_spin(i32* %13)
  %15 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @SW_INT_ENABLE_REG(i32 %16)
  %18 = call i32 @aintc_read_4(%struct.a10_aintc_softc* %15, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 1, %19
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @SW_INT_ENABLE_REG(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @aintc_write_4(%struct.a10_aintc_softc* %23, i32 %25, i32 %26)
  %28 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @SW_INT_MASK_REG(i32 %29)
  %31 = call i32 @aintc_read_4(%struct.a10_aintc_softc* %28, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 1, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @SW_INT_MASK_REG(i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @aintc_write_4(%struct.a10_aintc_softc* %37, i32 %39, i32 %40)
  %42 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %3, align 8
  %43 = getelementptr inbounds %struct.a10_aintc_softc, %struct.a10_aintc_softc* %42, i32 0, i32 0
  %44 = call i32 @mtx_unlock_spin(i32* %43)
  ret void
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @aintc_read_4(%struct.a10_aintc_softc*, i32) #1

declare dso_local i32 @SW_INT_ENABLE_REG(i32) #1

declare dso_local i32 @aintc_write_4(%struct.a10_aintc_softc*, i32, i32) #1

declare dso_local i32 @SW_INT_MASK_REG(i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
