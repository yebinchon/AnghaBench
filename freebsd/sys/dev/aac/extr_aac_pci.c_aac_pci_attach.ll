; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_pci.c_aac_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_pci.c_aac_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32, i32, i32*, i8*, i8*, i8*, i8*, i32*, i32*, i32* }
%struct.aac_ident = type { i32, i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENXIO = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_BUSMASTEREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"can't enable bus-master feature\0A\00", align 1
@HBA_FLAGS_DBG_INIT_B = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"set hardware up for i960Rx/NARK\00", align 1
@aac_rx_interface = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"set hardware up for StrongARM\00", align 1
@aac_sa_interface = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"set hardware up for Rocket/MIPS\00", align 1
@aac_rkt_interface = common dso_local global i32 0, align 4
@AAC_HWIF_UNKNOWN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"unknown hardware type\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"can't allocate register window 0\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"can't allocate register window 1\0A\00", align 1
@aac_enable_msi = common dso_local global i64 0, align 8
@AAC_FLAGS_NOMSI = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"can't allocate interrupt\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_UNRESTRICTED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"can't allocate parent DMA tag\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aac_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca %struct.aac_ident*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %9 = call i32 @fwprintf(%struct.aac_softc* null, i8* %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.aac_softc* @device_get_softc(i32 %10)
  store %struct.aac_softc* %11, %struct.aac_softc** %3, align 8
  %12 = load i32, i32* %2, align 4
  %13 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %14 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @pci_enable_busmaster(i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @PCIR_COMMAND, align 4
  %20 = call i32 @pci_read_config(i32 %18, i32 %19, i32 2)
  %21 = load i32, i32* @PCIM_CMD_BUSMASTEREN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %196

27:                                               ; preds = %1
  %28 = load i32, i32* %2, align 4
  %29 = call %struct.aac_ident* @aac_find_ident(i32 %28)
  store %struct.aac_ident* %29, %struct.aac_ident** %4, align 8
  %30 = load %struct.aac_ident*, %struct.aac_ident** %4, align 8
  %31 = getelementptr inbounds %struct.aac_ident, %struct.aac_ident* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %34 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %36 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %56 [
    i32 131, label %38
    i32 130, label %38
    i32 128, label %44
    i32 129, label %50
  ]

38:                                               ; preds = %27, %27
  %39 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %40 = load i8*, i8** @HBA_FLAGS_DBG_INIT_B, align 8
  %41 = call i32 @fwprintf(%struct.aac_softc* %39, i8* %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %43 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %42, i32 0, i32 11
  store i32* @aac_rx_interface, i32** %43, align 8
  br label %62

44:                                               ; preds = %27
  %45 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %46 = load i8*, i8** @HBA_FLAGS_DBG_INIT_B, align 8
  %47 = call i32 @fwprintf(%struct.aac_softc* %45, i8* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %49 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %48, i32 0, i32 11
  store i32* @aac_sa_interface, i32** %49, align 8
  br label %62

50:                                               ; preds = %27
  %51 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %52 = load i8*, i8** @HBA_FLAGS_DBG_INIT_B, align 8
  %53 = call i32 @fwprintf(%struct.aac_softc* %51, i8* %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %54 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %55 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %54, i32 0, i32 11
  store i32* @aac_rkt_interface, i32** %55, align 8
  br label %62

56:                                               ; preds = %27
  %57 = load i32, i32* @AAC_HWIF_UNKNOWN, align 4
  %58 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %59 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %196

62:                                               ; preds = %50, %44, %38
  %63 = load %struct.aac_ident*, %struct.aac_ident** %4, align 8
  %64 = getelementptr inbounds %struct.aac_ident, %struct.aac_ident* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %67 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = call i32 @PCIR_BAR(i32 0)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %2, align 4
  %70 = load i32, i32* @SYS_RES_MEMORY, align 4
  %71 = load i32, i32* @RF_ACTIVE, align 4
  %72 = call i8* @bus_alloc_resource_any(i32 %69, i32 %70, i32* %7, i32 %71)
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %75 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %74, i32 0, i32 9
  store i32* %73, i32** %75, align 8
  %76 = icmp eq i32* %73, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %62
  %78 = load i32, i32* %2, align 4
  %79 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %196

80:                                               ; preds = %62
  %81 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %82 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %81, i32 0, i32 9
  %83 = load i32*, i32** %82, align 8
  %84 = call i8* @rman_get_bustag(i32* %83)
  %85 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %86 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %85, i32 0, i32 7
  store i8* %84, i8** %86, align 8
  %87 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %88 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %87, i32 0, i32 9
  %89 = load i32*, i32** %88, align 8
  %90 = call i8* @rman_get_bushandle(i32* %89)
  %91 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %92 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %91, i32 0, i32 5
  store i8* %90, i8** %92, align 8
  %93 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %94 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 130
  br i1 %96, label %97, label %123

97:                                               ; preds = %80
  %98 = call i32 @PCIR_BAR(i32 1)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %2, align 4
  %100 = load i32, i32* @SYS_RES_MEMORY, align 4
  %101 = load i32, i32* @RF_ACTIVE, align 4
  %102 = call i8* @bus_alloc_resource_any(i32 %99, i32 %100, i32* %7, i32 %101)
  %103 = bitcast i8* %102 to i32*
  %104 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %105 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %104, i32 0, i32 10
  store i32* %103, i32** %105, align 8
  %106 = icmp eq i32* %103, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %97
  %108 = load i32, i32* %2, align 4
  %109 = call i32 @device_printf(i32 %108, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %196

110:                                              ; preds = %97
  %111 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %112 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %111, i32 0, i32 10
  %113 = load i32*, i32** %112, align 8
  %114 = call i8* @rman_get_bustag(i32* %113)
  %115 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %116 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %115, i32 0, i32 8
  store i8* %114, i8** %116, align 8
  %117 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %118 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %117, i32 0, i32 10
  %119 = load i32*, i32** %118, align 8
  %120 = call i8* @rman_get_bushandle(i32* %119)
  %121 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %122 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %121, i32 0, i32 6
  store i8* %120, i8** %122, align 8
  br label %139

123:                                              ; preds = %80
  %124 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %125 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %124, i32 0, i32 9
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %128 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %127, i32 0, i32 10
  store i32* %126, i32** %128, align 8
  %129 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %130 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %129, i32 0, i32 7
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %133 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %132, i32 0, i32 8
  store i8* %131, i8** %133, align 8
  %134 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %135 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %134, i32 0, i32 5
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %138 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %137, i32 0, i32 6
  store i8* %136, i8** %138, align 8
  br label %139

139:                                              ; preds = %123, %110
  store i32 0, i32* %7, align 4
  %140 = load i64, i64* @aac_enable_msi, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %139
  %143 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %144 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @AAC_FLAGS_NOMSI, align 4
  %147 = and i32 %145, %146
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  store i32 1, i32* %5, align 4
  %150 = load i32, i32* %2, align 4
  %151 = call i64 @pci_alloc_msi(i32 %150, i32* %5)
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  store i32 1, i32* %7, align 4
  br label %154

154:                                              ; preds = %153, %149
  br label %155

155:                                              ; preds = %154, %142, %139
  %156 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %157 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @SYS_RES_IRQ, align 4
  %160 = load i32, i32* @RF_ACTIVE, align 4
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %155
  br label %166

164:                                              ; preds = %155
  %165 = load i32, i32* @RF_SHAREABLE, align 4
  br label %166

166:                                              ; preds = %164, %163
  %167 = phi i32 [ 0, %163 ], [ %165, %164 ]
  %168 = or i32 %160, %167
  %169 = call i8* @bus_alloc_resource_any(i32 %158, i32 %159, i32* %7, i32 %168)
  %170 = bitcast i8* %169 to i32*
  %171 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %172 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %171, i32 0, i32 4
  store i32* %170, i32** %172, align 8
  %173 = icmp eq i32* %170, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %166
  %175 = load i32, i32* %2, align 4
  %176 = call i32 @device_printf(i32 %175, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %196

177:                                              ; preds = %166
  %178 = load i32, i32* %2, align 4
  %179 = call i32 @bus_get_dma_tag(i32 %178)
  %180 = load i32, i32* @PAGE_SIZE, align 4
  %181 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %182 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %183 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %184 = load i32, i32* @BUS_SPACE_UNRESTRICTED, align 4
  %185 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %186 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %187 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %186, i32 0, i32 2
  %188 = call i64 @bus_dma_tag_create(i32 %179, i32 %180, i32 undef, i32 %181, i32 %182, i32* null, i32* null, i32 %183, i32 %184, i32 %185, i32 0, i32* null, i32* null, i32* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %177
  %191 = load i32, i32* %2, align 4
  %192 = call i32 @device_printf(i32 %191, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %196

193:                                              ; preds = %177
  %194 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %195 = call i32 @aac_attach(%struct.aac_softc* %194)
  store i32 %195, i32* %6, align 4
  br label %196

196:                                              ; preds = %193, %190, %174, %107, %77, %56, %24
  %197 = load i32, i32* %6, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %201 = call i32 @aac_free(%struct.aac_softc* %200)
  br label %202

202:                                              ; preds = %199, %196
  %203 = load i32, i32* %6, align 4
  ret i32 %203
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local %struct.aac_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.aac_ident* @aac_find_ident(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i8* @rman_get_bustag(i32*) #1

declare dso_local i8* @rman_get_bushandle(i32*) #1

declare dso_local i64 @pci_alloc_msi(i32, i32*) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @aac_attach(%struct.aac_softc*) #1

declare dso_local i32 @aac_free(%struct.aac_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
