; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_fwohci.c_fwohci_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_fwohci.c_fwohci_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FWOHCI_INTMASKCLR = common dso_local global i32 0, align 4
@OHCI_HCCCTL = common dso_local global i32 0, align 4
@OHCI_HCC_RESET = common dso_local global i32 0, align 4
@firewire_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"resetting OHCI...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"done (loop=%d)\0A\00", align 1
@OHCI_BUS_OPT = common dso_local global i32 0, align 4
@OHCI_BUSFNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Link %s, max_rec %d bytes.\0A\00", align 1
@linkspeed = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"max_rec %d -> %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"BUS_OPT 0x%x -> 0x%x\0A\00", align 1
@OHCI_CROMHDR = common dso_local global i32 0, align 4
@OHCI_CROMPTR = common dso_local global i32 0, align 4
@OHCI_HCCCTLCLR = common dso_local global i32 0, align 4
@OHCI_HCC_BIGEND = common dso_local global i32 0, align 4
@OHCI_HCC_POSTWR = common dso_local global i32 0, align 4
@OHCI_HCC_LINKEN = common dso_local global i32 0, align 4
@OHCI_CNTL_SID = common dso_local global i32 0, align 4
@OHCI_LNKCTL = common dso_local global i32 0, align 4
@OHCI_SID_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fwohci_reset(%struct.fwohci_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.fwohci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %11 = load i32, i32* @FWOHCI_INTMASKCLR, align 4
  %12 = call i32 @OWRITE(%struct.fwohci_softc* %10, i32 %11, i32 -1)
  %13 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %14 = load i32, i32* @OHCI_HCCCTL, align 4
  %15 = load i32, i32* @OHCI_HCC_RESET, align 4
  %16 = call i32 @OWRITE(%struct.fwohci_softc* %13, i32 %14, i32 %15)
  %17 = load i64, i64* @firewire_debug, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (i32, i8*, ...) @device_printf(i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %2
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %35, %22
  %24 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %25 = load i32, i32* @OHCI_HCCCTL, align 4
  %26 = call i32 @OREAD(%struct.fwohci_softc* %24, i32 %25)
  %27 = load i32, i32* @OHCI_HCC_RESET, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  %33 = icmp sgt i32 %31, 100
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %37

35:                                               ; preds = %30
  %36 = call i32 @DELAY(i32 1000)
  br label %23

37:                                               ; preds = %34, %23
  %38 = load i64, i64* @firewire_debug, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @fwohci_probe_phy(%struct.fwohci_softc* %44, i32 %45)
  %47 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %48 = load i32, i32* @OHCI_BUS_OPT, align 4
  %49 = call i32 @OREAD(%struct.fwohci_softc* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @OHCI_BUSFNC, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 61440
  %55 = ashr i32 %54, 12
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, 7
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32*, i32** @linkspeed, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @MAXREC(i32 %64)
  %66 = call i32 (i32, i8*, ...) @device_printf(i32 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %65)
  %67 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %68 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 8
  %71 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %72 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %75 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %43
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %79, -61441
  %81 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %82 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = shl i32 %83, 12
  %85 = or i32 %80, %84
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @MAXREC(i32 %87)
  %89 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %90 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @MAXREC(i32 %91)
  %93 = call i32 (i32, i8*, ...) @device_printf(i32 %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %88, i32 %92)
  br label %94

94:                                               ; preds = %78, %43
  %95 = load i64, i64* @firewire_debug, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 (i32, i8*, ...) @device_printf(i32 %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %97, %94
  %103 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %104 = load i32, i32* @OHCI_BUS_OPT, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @OWRITE(%struct.fwohci_softc* %103, i32 %104, i32 %105)
  %107 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %108 = load i32, i32* @OHCI_CROMHDR, align 4
  %109 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %110 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @OWRITE(%struct.fwohci_softc* %107, i32 %108, i32 %113)
  %115 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %116 = load i32, i32* @OHCI_CROMPTR, align 4
  %117 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %118 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @VTOP(i32* %119)
  %121 = call i32 @OWRITE(%struct.fwohci_softc* %115, i32 %116, i32 %120)
  %122 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %123 = load i32, i32* @OHCI_HCCCTLCLR, align 4
  %124 = load i32, i32* @OHCI_HCC_BIGEND, align 4
  %125 = call i32 @OWRITE(%struct.fwohci_softc* %122, i32 %123, i32 %124)
  %126 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %127 = load i32, i32* @OHCI_HCCCTL, align 4
  %128 = load i32, i32* @OHCI_HCC_POSTWR, align 4
  %129 = call i32 @OWRITE(%struct.fwohci_softc* %126, i32 %127, i32 %128)
  %130 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %131 = load i32, i32* @OHCI_HCCCTL, align 4
  %132 = load i32, i32* @OHCI_HCC_LINKEN, align 4
  %133 = call i32 @OWRITE(%struct.fwohci_softc* %130, i32 %131, i32 %132)
  ret void
}

declare dso_local i32 @OWRITE(%struct.fwohci_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @OREAD(%struct.fwohci_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @fwohci_probe_phy(%struct.fwohci_softc*, i32) #1

declare dso_local i32 @MAXREC(i32) #1

declare dso_local i32 @VTOP(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
