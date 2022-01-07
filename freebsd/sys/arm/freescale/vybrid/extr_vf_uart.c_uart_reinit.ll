; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_uart.c_uart_reinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_uart.c_uart_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { %struct.uart_bas }
%struct.uart_bas = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Error: can't reconfigure bas\0A\00", align 1
@UART_MODEM = common dso_local global i32 0, align 4
@UART_C2 = common dso_local global i32 0, align 4
@UART_C2_RE = common dso_local global i32 0, align 4
@UART_C2_TE = common dso_local global i32 0, align 4
@UART_C1 = common dso_local global i32 0, align 4
@UART_BDH = common dso_local global i32 0, align 4
@UART_BDH_SBR = common dso_local global i32 0, align 4
@UART_BDL = common dso_local global i32 0, align 4
@UART_C4 = common dso_local global i32 0, align 4
@UART_C4_BRFA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uart_reinit(%struct.uart_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uart_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.uart_bas*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %12 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %11, i32 0, i32 0
  store %struct.uart_bas* %12, %struct.uart_bas** %7, align 8
  %13 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %14 = icmp ne %struct.uart_bas* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %96

17:                                               ; preds = %3
  %18 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %19 = load i32, i32* @UART_MODEM, align 4
  %20 = call i32 @uart_setreg(%struct.uart_bas* %18, i32 %19, i32 0)
  %21 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %22 = load i32, i32* @UART_C2, align 4
  %23 = call i32 @uart_getreg(%struct.uart_bas* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @UART_C2_RE, align 4
  %25 = load i32, i32* @UART_C2_TE, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %10, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %10, align 4
  %30 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %31 = load i32, i32* @UART_C2, align 4
  %32 = call i32 @uart_setreg(%struct.uart_bas* %30, i32 %31, i32 0)
  %33 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %34 = load i32, i32* @UART_C1, align 4
  %35 = call i32 @uart_setreg(%struct.uart_bas* %33, i32 %34, i32 0)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = mul nsw i32 %37, 16
  %39 = sdiv i32 %36, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sdiv i32 %40, %41
  %43 = load i32, i32* %8, align 4
  %44 = mul nsw i32 %43, 16
  %45 = sub nsw i32 %42, %44
  store i32 %45, i32* %9, align 4
  %46 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %47 = load i32, i32* @UART_BDH, align 4
  %48 = call i32 @uart_getreg(%struct.uart_bas* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* @UART_BDH_SBR, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 7936
  %55 = ashr i32 %54, 8
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %10, align 4
  %58 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %59 = load i32, i32* @UART_BDH, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @uart_setreg(%struct.uart_bas* %58, i32 %59, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, 255
  store i32 %63, i32* %10, align 4
  %64 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %65 = load i32, i32* @UART_BDL, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @uart_setreg(%struct.uart_bas* %64, i32 %65, i32 %66)
  %68 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %69 = load i32, i32* @UART_C4, align 4
  %70 = call i32 @uart_getreg(%struct.uart_bas* %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* @UART_C4_BRFA, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %10, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @UART_C4_BRFA, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %10, align 4
  %80 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %81 = load i32, i32* @UART_C4, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @uart_setreg(%struct.uart_bas* %80, i32 %81, i32 %82)
  %84 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %85 = load i32, i32* @UART_C2, align 4
  %86 = call i32 @uart_getreg(%struct.uart_bas* %84, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* @UART_C2_RE, align 4
  %88 = load i32, i32* @UART_C2_TE, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %10, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %10, align 4
  %92 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %93 = load i32, i32* @UART_C2, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @uart_setreg(%struct.uart_bas* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %17, %15
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
