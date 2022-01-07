; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_firewire.c_fw_reset_crom.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_firewire.c_fw_reset_crom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { %struct.crom_chunk*, %struct.crom_src*, %struct.crom_src_buf* }
%struct.crom_chunk = type { i32 }
%struct.crom_src = type { i32 }
%struct.crom_src_buf = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"fw_reset\0A\00", align 1
@CSRKEY_NCAP = common dso_local global i32 0, align 4
@CSRKEY_VENDOR = common dso_local global i32 0, align 4
@CSRVAL_VENDOR_PRIVATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"FreeBSD Project\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwohci_softc*)* @fw_reset_crom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_reset_crom(%struct.fwohci_softc* %0) #0 {
  %2 = alloca %struct.fwohci_softc*, align 8
  %3 = alloca %struct.crom_src_buf*, align 8
  %4 = alloca %struct.crom_src*, align 8
  %5 = alloca %struct.crom_chunk*, align 8
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %2, align 8
  %6 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %8 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %7, i32 0, i32 2
  %9 = load %struct.crom_src_buf*, %struct.crom_src_buf** %8, align 8
  %10 = icmp eq %struct.crom_src_buf* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %13 = call i32 @fw_init_crom(%struct.fwohci_softc* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %16 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %15, i32 0, i32 2
  %17 = load %struct.crom_src_buf*, %struct.crom_src_buf** %16, align 8
  store %struct.crom_src_buf* %17, %struct.crom_src_buf** %3, align 8
  %18 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %19 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %18, i32 0, i32 1
  %20 = load %struct.crom_src*, %struct.crom_src** %19, align 8
  store %struct.crom_src* %20, %struct.crom_src** %4, align 8
  %21 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %22 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %21, i32 0, i32 0
  %23 = load %struct.crom_chunk*, %struct.crom_chunk** %22, align 8
  store %struct.crom_chunk* %23, %struct.crom_chunk** %5, align 8
  %24 = load %struct.crom_src*, %struct.crom_src** %4, align 8
  %25 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %24, i32 0, i32 0
  %26 = call i32 @STAILQ_INIT(i32* %25)
  %27 = load %struct.crom_chunk*, %struct.crom_chunk** %5, align 8
  %28 = call i32 @bzero(%struct.crom_chunk* %27, i32 4)
  %29 = load %struct.crom_src*, %struct.crom_src** %4, align 8
  %30 = load %struct.crom_chunk*, %struct.crom_chunk** %5, align 8
  %31 = call i32 @crom_add_chunk(%struct.crom_src* %29, i32* null, %struct.crom_chunk* %30, i32 0)
  %32 = load %struct.crom_chunk*, %struct.crom_chunk** %5, align 8
  %33 = load i32, i32* @CSRKEY_NCAP, align 4
  %34 = call i32 @crom_add_entry(%struct.crom_chunk* %32, i32 %33, i32 33728)
  %35 = load %struct.crom_chunk*, %struct.crom_chunk** %5, align 8
  %36 = load i32, i32* @CSRKEY_VENDOR, align 4
  %37 = load i32, i32* @CSRVAL_VENDOR_PRIVATE, align 4
  %38 = call i32 @crom_add_entry(%struct.crom_chunk* %35, i32 %36, i32 %37)
  %39 = load %struct.crom_src*, %struct.crom_src** %4, align 8
  %40 = load %struct.crom_chunk*, %struct.crom_chunk** %5, align 8
  %41 = load %struct.crom_src_buf*, %struct.crom_src_buf** %3, align 8
  %42 = getelementptr inbounds %struct.crom_src_buf, %struct.crom_src_buf* %41, i32 0, i32 0
  %43 = call i32 @crom_add_simple_text(%struct.crom_src* %39, %struct.crom_chunk* %40, i32* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fw_init_crom(%struct.fwohci_softc*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @bzero(%struct.crom_chunk*, i32) #1

declare dso_local i32 @crom_add_chunk(%struct.crom_src*, i32*, %struct.crom_chunk*, i32) #1

declare dso_local i32 @crom_add_entry(%struct.crom_chunk*, i32, i32) #1

declare dso_local i32 @crom_add_simple_text(%struct.crom_src*, %struct.crom_chunk*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
