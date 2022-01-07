; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_cir.c_aw_ir_read_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_cir.c_aw_ir_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_ir_softc = type { i32 }

@AW_IR_RXFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.aw_ir_softc*)* @aw_ir_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @aw_ir_read_data(%struct.aw_ir_softc* %0) #0 {
  %2 = alloca %struct.aw_ir_softc*, align 8
  store %struct.aw_ir_softc* %0, %struct.aw_ir_softc** %2, align 8
  %3 = load %struct.aw_ir_softc*, %struct.aw_ir_softc** %2, align 8
  %4 = load i32, i32* @AW_IR_RXFIFO, align 4
  %5 = call i32 @READ(%struct.aw_ir_softc* %3, i32 %4)
  %6 = and i32 %5, 255
  %7 = trunc i32 %6 to i8
  ret i8 %7
}

declare dso_local i32 @READ(%struct.aw_ir_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
