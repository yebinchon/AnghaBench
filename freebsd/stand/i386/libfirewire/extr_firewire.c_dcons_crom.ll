; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_firewire.c_dcons_crom.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_firewire.c_dcons_crom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { %struct.crom_chunk*, %struct.crom_src*, %struct.crom_src_buf* }
%struct.crom_chunk = type { i32 }
%struct.crom_src = type { i32 }
%struct.crom_src_buf = type { i32, i32, i32 }

@CROM_UDIR = common dso_local global i32 0, align 4
@CSRKEY_SPEC = common dso_local global i32 0, align 4
@CSRVAL_VENDOR_PRIVATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@CSRKEY_VER = common dso_local global i32 0, align 4
@DCONS_CSR_VAL_VER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"dcons\00", align 1
@DCONS_CSR_KEY_HI = common dso_local global i32 0, align 4
@dcons_paddr = common dso_local global i32 0, align 4
@DCONS_CSR_KEY_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwohci_softc*)* @dcons_crom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcons_crom(%struct.fwohci_softc* %0) #0 {
  %2 = alloca %struct.fwohci_softc*, align 8
  %3 = alloca %struct.crom_src_buf*, align 8
  %4 = alloca %struct.crom_src*, align 8
  %5 = alloca %struct.crom_chunk*, align 8
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %2, align 8
  %6 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %7 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %6, i32 0, i32 2
  %8 = load %struct.crom_src_buf*, %struct.crom_src_buf** %7, align 8
  store %struct.crom_src_buf* %8, %struct.crom_src_buf** %3, align 8
  %9 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %10 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %9, i32 0, i32 1
  %11 = load %struct.crom_src*, %struct.crom_src** %10, align 8
  store %struct.crom_src* %11, %struct.crom_src** %4, align 8
  %12 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %13 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %12, i32 0, i32 0
  %14 = load %struct.crom_chunk*, %struct.crom_chunk** %13, align 8
  store %struct.crom_chunk* %14, %struct.crom_chunk** %5, align 8
  %15 = load %struct.crom_src_buf*, %struct.crom_src_buf** %3, align 8
  %16 = getelementptr inbounds %struct.crom_src_buf, %struct.crom_src_buf* %15, i32 0, i32 0
  %17 = call i32 @bzero(i32* %16, i32 4)
  %18 = load %struct.crom_src*, %struct.crom_src** %4, align 8
  %19 = load %struct.crom_chunk*, %struct.crom_chunk** %5, align 8
  %20 = load %struct.crom_src_buf*, %struct.crom_src_buf** %3, align 8
  %21 = getelementptr inbounds %struct.crom_src_buf, %struct.crom_src_buf* %20, i32 0, i32 0
  %22 = load i32, i32* @CROM_UDIR, align 4
  %23 = call i32 @crom_add_chunk(%struct.crom_src* %18, %struct.crom_chunk* %19, i32* %21, i32 %22)
  %24 = load %struct.crom_src_buf*, %struct.crom_src_buf** %3, align 8
  %25 = getelementptr inbounds %struct.crom_src_buf, %struct.crom_src_buf* %24, i32 0, i32 0
  %26 = load i32, i32* @CSRKEY_SPEC, align 4
  %27 = load i32, i32* @CSRVAL_VENDOR_PRIVATE, align 4
  %28 = call i32 @crom_add_entry(i32* %25, i32 %26, i32 %27)
  %29 = load %struct.crom_src*, %struct.crom_src** %4, align 8
  %30 = load %struct.crom_src_buf*, %struct.crom_src_buf** %3, align 8
  %31 = getelementptr inbounds %struct.crom_src_buf, %struct.crom_src_buf* %30, i32 0, i32 0
  %32 = load %struct.crom_src_buf*, %struct.crom_src_buf** %3, align 8
  %33 = getelementptr inbounds %struct.crom_src_buf, %struct.crom_src_buf* %32, i32 0, i32 2
  %34 = call i32 @crom_add_simple_text(%struct.crom_src* %29, i32* %31, i32* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.crom_src_buf*, %struct.crom_src_buf** %3, align 8
  %36 = getelementptr inbounds %struct.crom_src_buf, %struct.crom_src_buf* %35, i32 0, i32 0
  %37 = load i32, i32* @CSRKEY_VER, align 4
  %38 = load i32, i32* @DCONS_CSR_VAL_VER, align 4
  %39 = call i32 @crom_add_entry(i32* %36, i32 %37, i32 %38)
  %40 = load %struct.crom_src*, %struct.crom_src** %4, align 8
  %41 = load %struct.crom_src_buf*, %struct.crom_src_buf** %3, align 8
  %42 = getelementptr inbounds %struct.crom_src_buf, %struct.crom_src_buf* %41, i32 0, i32 0
  %43 = load %struct.crom_src_buf*, %struct.crom_src_buf** %3, align 8
  %44 = getelementptr inbounds %struct.crom_src_buf, %struct.crom_src_buf* %43, i32 0, i32 1
  %45 = call i32 @crom_add_simple_text(%struct.crom_src* %40, i32* %42, i32* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.crom_src_buf*, %struct.crom_src_buf** %3, align 8
  %47 = getelementptr inbounds %struct.crom_src_buf, %struct.crom_src_buf* %46, i32 0, i32 0
  %48 = load i32, i32* @DCONS_CSR_KEY_HI, align 4
  %49 = load i32, i32* @dcons_paddr, align 4
  %50 = call i32 @ADDR_HI(i32 %49)
  %51 = call i32 @crom_add_entry(i32* %47, i32 %48, i32 %50)
  %52 = load %struct.crom_src_buf*, %struct.crom_src_buf** %3, align 8
  %53 = getelementptr inbounds %struct.crom_src_buf, %struct.crom_src_buf* %52, i32 0, i32 0
  %54 = load i32, i32* @DCONS_CSR_KEY_LO, align 4
  %55 = load i32, i32* @dcons_paddr, align 4
  %56 = call i32 @ADDR_LO(i32 %55)
  %57 = call i32 @crom_add_entry(i32* %53, i32 %54, i32 %56)
  ret void
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @crom_add_chunk(%struct.crom_src*, %struct.crom_chunk*, i32*, i32) #1

declare dso_local i32 @crom_add_entry(i32*, i32, i32) #1

declare dso_local i32 @crom_add_simple_text(%struct.crom_src*, i32*, i32*, i8*) #1

declare dso_local i32 @ADDR_HI(i32) #1

declare dso_local i32 @ADDR_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
