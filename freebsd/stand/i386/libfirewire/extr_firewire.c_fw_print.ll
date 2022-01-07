; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_firewire.c_fw_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_firewire.c_fw_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.fwohci_softc = type { i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s devices:\00", align 1
@fwohci = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MAX_OHCI = common dso_local global i32 0, align 4
@fwinfo = common dso_local global %struct.fwohci_softc* null, align 8
@FWOHCI_STATE_DEAD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [78 x i8] c"%d: locator=0x%04x devid=0x%08x base_addr=0x%08x handle=0x%08x bus_id=0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fw_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_print(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [80 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fwohci_softc*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %8 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fwohci, i32 0, i32 0), align 8
  %9 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = call i32 @pager_output(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %60

14:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %55, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MAX_OHCI, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %58

19:                                               ; preds = %15
  %20 = load %struct.fwohci_softc*, %struct.fwohci_softc** @fwinfo, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %20, i64 %22
  store %struct.fwohci_softc* %23, %struct.fwohci_softc** %7, align 8
  %24 = load %struct.fwohci_softc*, %struct.fwohci_softc** %7, align 8
  %25 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FWOHCI_STATE_DEAD, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %58

30:                                               ; preds = %19
  %31 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.fwohci_softc*, %struct.fwohci_softc** %7, align 8
  %34 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.fwohci_softc*, %struct.fwohci_softc** %7, align 8
  %37 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.fwohci_softc*, %struct.fwohci_softc** %7, align 8
  %40 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.fwohci_softc*, %struct.fwohci_softc** %7, align 8
  %43 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.fwohci_softc*, %struct.fwohci_softc** %7, align 8
  %46 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @snprintf(i8* %31, i32 80, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32 %35, i32 %38, i32 %41, i32 %44, i32 %47)
  %49 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %50 = call i32 @pager_output(i8* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %30
  br label %58

54:                                               ; preds = %30
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %15

58:                                               ; preds = %53, %29, %15
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %12
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @pager_output(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
