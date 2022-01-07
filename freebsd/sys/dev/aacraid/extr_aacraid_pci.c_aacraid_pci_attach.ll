; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_pci.c_aacraid_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_pci.c_aacraid_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32, i32, i32*, i8*, i8*, i8*, i32*, i8*, i8*, i8*, i32 }
%struct.aac_ident = type { i32, i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENXIO = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_BUSMASTEREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"can't enable bus-master feature\0A\00", align 1
@HBA_FLAGS_DBG_INIT_B = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"set hardware up for PMC SRC\00", align 1
@aacraid_src_interface = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"set hardware up for PMC SRCv\00", align 1
@aacraid_srcv_interface = common dso_local global i32 0, align 4
@AAC_HWIF_UNKNOWN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"unknown hardware type\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"couldn't allocate register window 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"couldn't allocate register window 1\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_UNRESTRICTED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"can't allocate parent DMA tag\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aacraid_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aacraid_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca %struct.aac_ident*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %8 = call i32 @fwprintf(%struct.aac_softc* null, i8* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.aac_softc* @device_get_softc(i32 %9)
  store %struct.aac_softc* %10, %struct.aac_softc** %3, align 8
  %11 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %12 = call i32 @bzero(%struct.aac_softc* %11, i32 88)
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %15 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @pci_enable_busmaster(i32 %17)
  %19 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %20 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PCIR_COMMAND, align 4
  %23 = call i32 @pci_read_config(i32 %21, i32 %22, i32 2)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @PCIM_CMD_BUSMASTEREN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %1
  %29 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %30 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %160

33:                                               ; preds = %1
  %34 = load i32, i32* %2, align 4
  %35 = call %struct.aac_ident* @aac_find_ident(i32 %34)
  store %struct.aac_ident* %35, %struct.aac_ident** %4, align 8
  %36 = load %struct.aac_ident*, %struct.aac_ident** %4, align 8
  %37 = getelementptr inbounds %struct.aac_ident, %struct.aac_ident* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %40 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %42 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %58 [
    i32 129, label %44
    i32 128, label %51
  ]

44:                                               ; preds = %33
  %45 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %46 = load i8*, i8** @HBA_FLAGS_DBG_INIT_B, align 8
  %47 = call i32 @fwprintf(%struct.aac_softc* %45, i8* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @aacraid_src_interface, align 4
  %49 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %50 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %49, i32 0, i32 12
  store i32 %48, i32* %50, align 8
  br label %67

51:                                               ; preds = %33
  %52 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %53 = load i8*, i8** @HBA_FLAGS_DBG_INIT_B, align 8
  %54 = call i32 @fwprintf(%struct.aac_softc* %52, i8* %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* @aacraid_srcv_interface, align 4
  %56 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %57 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %56, i32 0, i32 12
  store i32 %55, i32* %57, align 8
  br label %67

58:                                               ; preds = %33
  %59 = load i32, i32* @AAC_HWIF_UNKNOWN, align 4
  %60 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %61 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %63 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @device_printf(i32 %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i32, i32* @ENXIO, align 4
  store i32 %66, i32* %5, align 4
  br label %160

67:                                               ; preds = %51, %44
  %68 = load i32, i32* @ENOMEM, align 4
  store i32 %68, i32* %5, align 4
  %69 = call i8* @PCIR_BAR(i32 0)
  %70 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %71 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %70, i32 0, i32 11
  store i8* %69, i8** %71, align 8
  %72 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %73 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SYS_RES_MEMORY, align 4
  %76 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %77 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %76, i32 0, i32 11
  %78 = load i32, i32* @RF_ACTIVE, align 4
  %79 = call i8* @bus_alloc_resource_any(i32 %74, i32 %75, i8** %77, i32 %78)
  %80 = bitcast i8* %79 to i32*
  %81 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %82 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %81, i32 0, i32 8
  store i32* %80, i32** %82, align 8
  %83 = icmp eq i32* %80, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %67
  %85 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %86 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @device_printf(i32 %87, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %160

89:                                               ; preds = %67
  %90 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %91 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %90, i32 0, i32 8
  %92 = load i32*, i32** %91, align 8
  %93 = call i8* @rman_get_bustag(i32* %92)
  %94 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %95 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %94, i32 0, i32 10
  store i8* %93, i8** %95, align 8
  %96 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %97 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %96, i32 0, i32 8
  %98 = load i32*, i32** %97, align 8
  %99 = call i8* @rman_get_bushandle(i32* %98)
  %100 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %101 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %100, i32 0, i32 9
  store i8* %99, i8** %101, align 8
  %102 = call i8* @PCIR_BAR(i32 2)
  %103 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %104 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %103, i32 0, i32 7
  store i8* %102, i8** %104, align 8
  %105 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %106 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @SYS_RES_MEMORY, align 4
  %109 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %110 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %109, i32 0, i32 7
  %111 = load i32, i32* @RF_ACTIVE, align 4
  %112 = call i8* @bus_alloc_resource_any(i32 %107, i32 %108, i8** %110, i32 %111)
  %113 = bitcast i8* %112 to i32*
  %114 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %115 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %114, i32 0, i32 4
  store i32* %113, i32** %115, align 8
  %116 = icmp eq i32* %113, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %89
  %118 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %119 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @device_printf(i32 %120, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %160

122:                                              ; preds = %89
  %123 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %124 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = call i8* @rman_get_bustag(i32* %125)
  %127 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %128 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %127, i32 0, i32 6
  store i8* %126, i8** %128, align 8
  %129 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %130 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %129, i32 0, i32 4
  %131 = load i32*, i32** %130, align 8
  %132 = call i8* @rman_get_bushandle(i32* %131)
  %133 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %134 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %133, i32 0, i32 5
  store i8* %132, i8** %134, align 8
  %135 = load i32, i32* %2, align 4
  %136 = call i32 @bus_get_dma_tag(i32 %135)
  %137 = load i32, i32* @PAGE_SIZE, align 4
  %138 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %139 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %140 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %141 = load i32, i32* @BUS_SPACE_UNRESTRICTED, align 4
  %142 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %143 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %144 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %143, i32 0, i32 3
  %145 = call i64 @bus_dma_tag_create(i32 %136, i32 %137, i32 0, i32 %138, i32 %139, i32* null, i32* null, i32 %140, i32 %141, i32 %142, i32 0, i32* null, i32* null, i32* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %122
  %148 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %149 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @device_printf(i32 %150, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %160

152:                                              ; preds = %122
  %153 = load %struct.aac_ident*, %struct.aac_ident** %4, align 8
  %154 = getelementptr inbounds %struct.aac_ident, %struct.aac_ident* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %157 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %159 = call i32 @aacraid_attach(%struct.aac_softc* %158)
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %152, %147, %117, %84, %58, %28
  %161 = load i32, i32* %5, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %165 = call i32 @aacraid_free(%struct.aac_softc* %164)
  br label %166

166:                                              ; preds = %163, %160
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local %struct.aac_softc* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.aac_softc*, i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.aac_ident* @aac_find_ident(i32) #1

declare dso_local i8* @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i8**, i32) #1

declare dso_local i8* @rman_get_bustag(i32*) #1

declare dso_local i8* @rman_get_bushandle(i32*) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @aacraid_attach(%struct.aac_softc*) #1

declare dso_local i32 @aacraid_free(%struct.aac_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
