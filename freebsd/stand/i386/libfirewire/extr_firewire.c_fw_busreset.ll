; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_firewire.c_fw_busreset.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_firewire.c_fw_busreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { i64 }

@FWOHCI_STATE_ENABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"fwohci not enabled\0A\00", align 1
@CMD_OK = common dso_local global i32 0, align 4
@FWOHCI_STATE_NORMAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"give up to wait bus initialize\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"poll count = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwohci_softc*)* @fw_busreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_busreset(%struct.fwohci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fwohci_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %3, align 8
  %5 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %6 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @FWOHCI_STATE_ENABLED, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @CMD_OK, align 4
  store i32 %12, i32* %2, align 4
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %15 = call i32 @fw_crom(%struct.fwohci_softc* %14)
  %16 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %17 = call i32 @fwohci_ibr(%struct.fwohci_softc* %16)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %33, %13
  %19 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %20 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FWOHCI_STATE_NORMAL, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %26 = call i32 @fwohci_poll(%struct.fwohci_softc* %25)
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %29, 1000
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %37

33:                                               ; preds = %24
  br label %18

34:                                               ; preds = %18
  %35 = load i32, i32* %4, align 4
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %31, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fw_crom(%struct.fwohci_softc*) #1

declare dso_local i32 @fwohci_ibr(%struct.fwohci_softc*) #1

declare dso_local i32 @fwohci_poll(%struct.fwohci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
