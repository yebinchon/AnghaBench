; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_versatile_pci.c_versatile_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_versatile_pci.c_versatile_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.versatile_pci_softc = type { i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i8*, i8* }

@versatile_pci_mem_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Error: could not allocate memory resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@PCI_CORE_IMAP0 = common dso_local global i32 0, align 4
@PCI_IO_WINDOW = common dso_local global i32 0, align 4
@PCI_CORE_IMAP1 = common dso_local global i32 0, align 4
@PCI_NPREFETCH_WINDOW = common dso_local global i32 0, align 4
@PCI_CORE_IMAP2 = common dso_local global i32 0, align 4
@PCI_PREFETCH_WINDOW = common dso_local global i32 0, align 4
@PCI_CORE_SMAP0 = common dso_local global i32 0, align 4
@PCI_CORE_SMAP1 = common dso_local global i32 0, align 4
@PCI_CORE_SMAP2 = common dso_local global i32 0, align 4
@SCM_PCICTL = common dso_local global i32 0, align 4
@PCI_SLOTMAX = common dso_local global i32 0, align 4
@PCIR_DEVVENDOR = common dso_local global i64 0, align 8
@PCIR_REVID = common dso_local global i64 0, align 8
@VERSATILE_PCI_DEV = common dso_local global i32 0, align 4
@VERSATILE_PCI_CLASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Versatile PCI core not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"PCI core at slot #%d\0A\00", align 1
@PCI_CORE_SELFID = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i64 0, align 8
@PCIM_CMD_BUSMASTEREN = common dso_local global i32 0, align 4
@PCIM_CMD_MEMEN = common dso_local global i32 0, align 4
@PCIM_CMD_MWRICEN = common dso_local global i32 0, align 4
@RMAN_ARRAY = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"versatile PCI memory window\00", align 1
@PCI_NPREFETCH_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [51 x i8] c"versatile_pci_attach: failed to set up memory rman\00", align 1
@bootverbose = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"versatile PCI IO window\00", align 1
@PCI_IO_SIZE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [48 x i8] c"versatile_pci_attach: failed to set up I/O rman\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"versatile PCI IRQs\00", align 1
@VERSATILE_PCI_IRQ_START = common dso_local global i32 0, align 4
@VERSATILE_PCI_IRQ_END = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [48 x i8] c"versatile_pci_attach: failed to set up IRQ rman\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"versatilepci\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@PCIM_CMD_PORTEN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @versatile_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @versatile_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.versatile_pci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.versatile_pci_softc* @device_get_softc(i32 %11)
  store %struct.versatile_pci_softc* %12, %struct.versatile_pci_softc** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @ofw_bus_get_node(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @versatile_pci_mem_spec, align 4
  %17 = load %struct.versatile_pci_softc*, %struct.versatile_pci_softc** %4, align 8
  %18 = getelementptr inbounds %struct.versatile_pci_softc, %struct.versatile_pci_softc* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @bus_alloc_resources(i32 %15, i32 %16, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 (i32, i8*, ...) @device_printf(i32 %24, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %287

27:                                               ; preds = %1
  %28 = load i32, i32* @PCI_CORE_IMAP0, align 4
  %29 = load i32, i32* @PCI_IO_WINDOW, align 4
  %30 = ashr i32 %29, 28
  %31 = call i32 @versatile_pci_core_write_4(i32 %28, i32 %30)
  %32 = load i32, i32* @PCI_CORE_IMAP1, align 4
  %33 = load i32, i32* @PCI_NPREFETCH_WINDOW, align 4
  %34 = ashr i32 %33, 28
  %35 = call i32 @versatile_pci_core_write_4(i32 %32, i32 %34)
  %36 = load i32, i32* @PCI_CORE_IMAP2, align 4
  %37 = load i32, i32* @PCI_PREFETCH_WINDOW, align 4
  %38 = ashr i32 %37, 28
  %39 = call i32 @versatile_pci_core_write_4(i32 %36, i32 %38)
  %40 = load i32, i32* @PCI_CORE_SMAP0, align 4
  %41 = load i32, i32* @PCI_IO_WINDOW, align 4
  %42 = ashr i32 %41, 28
  %43 = call i32 @versatile_pci_core_write_4(i32 %40, i32 %42)
  %44 = load i32, i32* @PCI_CORE_SMAP1, align 4
  %45 = load i32, i32* @PCI_NPREFETCH_WINDOW, align 4
  %46 = ashr i32 %45, 28
  %47 = call i32 @versatile_pci_core_write_4(i32 %44, i32 %46)
  %48 = load i32, i32* @PCI_CORE_SMAP2, align 4
  %49 = load i32, i32* @PCI_NPREFETCH_WINDOW, align 4
  %50 = ashr i32 %49, 28
  %51 = call i32 @versatile_pci_core_write_4(i32 %48, i32 %50)
  %52 = load i32, i32* @SCM_PCICTL, align 4
  %53 = call i32 @versatile_scm_reg_write_4(i32 %52, i32 1)
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %80, %27
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @PCI_SLOTMAX, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = shl i32 %59, 11
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* @PCIR_DEVVENDOR, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @versatile_pci_read_4(i64 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = shl i32 %65, 11
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* @PCIR_REVID, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @versatile_pci_read_4(i64 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @VERSATILE_PCI_DEV, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %58
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @VERSATILE_PCI_CLASS, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %83

79:                                               ; preds = %74, %58
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %54

83:                                               ; preds = %78, %54
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @PCI_SLOTMAX, align 4
  %86 = add nsw i32 %85, 1
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %83
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @versatile_pci_mem_spec, align 4
  %91 = load %struct.versatile_pci_softc*, %struct.versatile_pci_softc** %4, align 8
  %92 = getelementptr inbounds %struct.versatile_pci_softc, %struct.versatile_pci_softc* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @bus_release_resources(i32 %89, i32 %90, i32 %93)
  %95 = load i32, i32* %3, align 4
  %96 = call i32 (i32, i8*, ...) @device_printf(i32 %95, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i32, i32* @ENXIO, align 4
  store i32 %97, i32* %2, align 4
  br label %287

98:                                               ; preds = %83
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.versatile_pci_softc*, %struct.versatile_pci_softc** %4, align 8
  %101 = getelementptr inbounds %struct.versatile_pci_softc, %struct.versatile_pci_softc* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 (i32, i8*, ...) @device_printf(i32 %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @PCI_CORE_SELFID, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @versatile_pci_core_write_4(i32 %105, i32 %106)
  %108 = load i32, i32* %6, align 4
  %109 = shl i32 %108, 11
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* @PCIR_COMMAND, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @versatile_pci_conf_read_4(i64 %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* @PCIM_CMD_BUSMASTEREN, align 4
  %115 = load i32, i32* @PCIM_CMD_MEMEN, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @PCIM_CMD_MWRICEN, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* %9, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %6, align 4
  %122 = shl i32 %121, 11
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* @PCIR_COMMAND, align 8
  %125 = add nsw i64 %123, %124
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @versatile_pci_conf_write_4(i64 %125, i32 %126)
  %128 = load i32, i32* %6, align 4
  %129 = shl i32 %128, 11
  %130 = sext i32 %129 to i64
  %131 = call i64 @PCIR_BAR(i32 0)
  %132 = add nsw i64 %130, %131
  %133 = call i32 @versatile_pci_write_4(i64 %132, i32 0)
  %134 = load i32, i32* %6, align 4
  %135 = shl i32 %134, 11
  %136 = sext i32 %135 to i64
  %137 = call i64 @PCIR_BAR(i32 1)
  %138 = add nsw i64 %136, %137
  %139 = call i32 @versatile_pci_write_4(i64 %138, i32 0)
  %140 = load i32, i32* %6, align 4
  %141 = shl i32 %140, 11
  %142 = sext i32 %141 to i64
  %143 = call i64 @PCIR_BAR(i32 2)
  %144 = add nsw i64 %142, %143
  %145 = call i32 @versatile_pci_write_4(i64 %144, i32 0)
  %146 = load i8*, i8** @RMAN_ARRAY, align 8
  %147 = load %struct.versatile_pci_softc*, %struct.versatile_pci_softc** %4, align 8
  %148 = getelementptr inbounds %struct.versatile_pci_softc, %struct.versatile_pci_softc* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  store i8* %146, i8** %149, align 8
  %150 = load %struct.versatile_pci_softc*, %struct.versatile_pci_softc** %4, align 8
  %151 = getelementptr inbounds %struct.versatile_pci_softc, %struct.versatile_pci_softc* %150, i32 0, i32 5
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8** %152, align 8
  %153 = load %struct.versatile_pci_softc*, %struct.versatile_pci_softc** %4, align 8
  %154 = getelementptr inbounds %struct.versatile_pci_softc, %struct.versatile_pci_softc* %153, i32 0, i32 5
  %155 = call i64 @rman_init(%struct.TYPE_3__* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %168, label %157

157:                                              ; preds = %98
  %158 = load %struct.versatile_pci_softc*, %struct.versatile_pci_softc** %4, align 8
  %159 = getelementptr inbounds %struct.versatile_pci_softc, %struct.versatile_pci_softc* %158, i32 0, i32 5
  %160 = load i32, i32* @PCI_NPREFETCH_WINDOW, align 4
  %161 = load i32, i32* @PCI_NPREFETCH_WINDOW, align 4
  %162 = sext i32 %161 to i64
  %163 = load i64, i64* @PCI_NPREFETCH_SIZE, align 8
  %164 = add nsw i64 %162, %163
  %165 = sub nsw i64 %164, 1
  %166 = call i64 @rman_manage_region(%struct.TYPE_3__* %159, i32 %160, i64 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %157, %98
  %169 = call i32 @panic(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168, %157
  store i32 1, i32* @bootverbose, align 4
  %171 = load i8*, i8** @RMAN_ARRAY, align 8
  %172 = load %struct.versatile_pci_softc*, %struct.versatile_pci_softc** %4, align 8
  %173 = getelementptr inbounds %struct.versatile_pci_softc, %struct.versatile_pci_softc* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 1
  store i8* %171, i8** %174, align 8
  %175 = load %struct.versatile_pci_softc*, %struct.versatile_pci_softc** %4, align 8
  %176 = getelementptr inbounds %struct.versatile_pci_softc, %struct.versatile_pci_softc* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8** %177, align 8
  %178 = load %struct.versatile_pci_softc*, %struct.versatile_pci_softc** %4, align 8
  %179 = getelementptr inbounds %struct.versatile_pci_softc, %struct.versatile_pci_softc* %178, i32 0, i32 4
  %180 = call i64 @rman_init(%struct.TYPE_3__* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %193, label %182

182:                                              ; preds = %170
  %183 = load %struct.versatile_pci_softc*, %struct.versatile_pci_softc** %4, align 8
  %184 = getelementptr inbounds %struct.versatile_pci_softc, %struct.versatile_pci_softc* %183, i32 0, i32 4
  %185 = load i32, i32* @PCI_IO_WINDOW, align 4
  %186 = load i32, i32* @PCI_IO_WINDOW, align 4
  %187 = sext i32 %186 to i64
  %188 = load i64, i64* @PCI_IO_SIZE, align 8
  %189 = add nsw i64 %187, %188
  %190 = sub nsw i64 %189, 1
  %191 = call i64 @rman_manage_region(%struct.TYPE_3__* %184, i32 %185, i64 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %182, %170
  %194 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  br label %195

195:                                              ; preds = %193, %182
  %196 = load i8*, i8** @RMAN_ARRAY, align 8
  %197 = load %struct.versatile_pci_softc*, %struct.versatile_pci_softc** %4, align 8
  %198 = getelementptr inbounds %struct.versatile_pci_softc, %struct.versatile_pci_softc* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 1
  store i8* %196, i8** %199, align 8
  %200 = load %struct.versatile_pci_softc*, %struct.versatile_pci_softc** %4, align 8
  %201 = getelementptr inbounds %struct.versatile_pci_softc, %struct.versatile_pci_softc* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8** %202, align 8
  %203 = load %struct.versatile_pci_softc*, %struct.versatile_pci_softc** %4, align 8
  %204 = getelementptr inbounds %struct.versatile_pci_softc, %struct.versatile_pci_softc* %203, i32 0, i32 3
  %205 = call i64 @rman_init(%struct.TYPE_3__* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %214, label %207

207:                                              ; preds = %195
  %208 = load %struct.versatile_pci_softc*, %struct.versatile_pci_softc** %4, align 8
  %209 = getelementptr inbounds %struct.versatile_pci_softc, %struct.versatile_pci_softc* %208, i32 0, i32 3
  %210 = load i32, i32* @VERSATILE_PCI_IRQ_START, align 4
  %211 = load i64, i64* @VERSATILE_PCI_IRQ_END, align 8
  %212 = call i64 @rman_manage_region(%struct.TYPE_3__* %209, i32 %210, i64 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %207, %195
  %215 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  br label %216

216:                                              ; preds = %214, %207
  %217 = load %struct.versatile_pci_softc*, %struct.versatile_pci_softc** %4, align 8
  %218 = getelementptr inbounds %struct.versatile_pci_softc, %struct.versatile_pci_softc* %217, i32 0, i32 2
  %219 = load i32, i32* %3, align 4
  %220 = call i32 @device_get_nameunit(i32 %219)
  %221 = load i32, i32* @MTX_SPIN, align 4
  %222 = call i32 @mtx_init(i32* %218, i32 %220, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %221)
  %223 = load i64, i64* @PCIR_COMMAND, align 8
  %224 = add nsw i64 24576, %223
  %225 = call i32 @versatile_pci_conf_read_4(i64 %224)
  store i32 %225, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %226

226:                                              ; preds = %275, %216
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* @PCI_SLOTMAX, align 4
  %229 = icmp sle i32 %227, %228
  br i1 %229, label %230, label %278

230:                                              ; preds = %226
  %231 = load i32, i32* %6, align 4
  %232 = shl i32 %231, 11
  %233 = sext i32 %232 to i64
  %234 = load i64, i64* @PCIR_DEVVENDOR, align 8
  %235 = add nsw i64 %233, %234
  %236 = call i32 @versatile_pci_read_4(i64 %235)
  store i32 %236, i32* %7, align 4
  %237 = load i32, i32* %6, align 4
  %238 = shl i32 %237, 11
  %239 = sext i32 %238 to i64
  %240 = load i64, i64* @PCIR_REVID, align 8
  %241 = add nsw i64 %239, %240
  %242 = call i32 @versatile_pci_read_4(i64 %241)
  store i32 %242, i32* %8, align 4
  %243 = load i32, i32* %6, align 4
  %244 = load %struct.versatile_pci_softc*, %struct.versatile_pci_softc** %4, align 8
  %245 = getelementptr inbounds %struct.versatile_pci_softc, %struct.versatile_pci_softc* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = icmp eq i32 %243, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %230
  br label %275

249:                                              ; preds = %230
  %250 = load i32, i32* %7, align 4
  %251 = icmp eq i32 %250, -1
  br i1 %251, label %252, label %256

252:                                              ; preds = %249
  %253 = load i32, i32* %8, align 4
  %254 = icmp eq i32 %253, -1
  br i1 %254, label %255, label %256

255:                                              ; preds = %252
  br label %275

256:                                              ; preds = %252, %249
  %257 = load i32, i32* %6, align 4
  %258 = shl i32 %257, 11
  %259 = sext i32 %258 to i64
  %260 = load i64, i64* @PCIR_COMMAND, align 8
  %261 = add nsw i64 %259, %260
  %262 = call i32 @versatile_pci_conf_read_4(i64 %261)
  store i32 %262, i32* %9, align 4
  %263 = load i32, i32* @PCIM_CMD_MEMEN, align 4
  %264 = load i32, i32* @PCIM_CMD_PORTEN, align 4
  %265 = or i32 %263, %264
  %266 = load i32, i32* %9, align 4
  %267 = or i32 %266, %265
  store i32 %267, i32* %9, align 4
  %268 = load i32, i32* %6, align 4
  %269 = shl i32 %268, 11
  %270 = sext i32 %269 to i64
  %271 = load i64, i64* @PCIR_COMMAND, align 8
  %272 = add nsw i64 %270, %271
  %273 = load i32, i32* %9, align 4
  %274 = call i32 @versatile_pci_conf_write_4(i64 %272, i32 %273)
  br label %275

275:                                              ; preds = %256, %255, %248
  %276 = load i32, i32* %6, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %6, align 4
  br label %226

278:                                              ; preds = %226
  %279 = load i32, i32* %10, align 4
  %280 = load %struct.versatile_pci_softc*, %struct.versatile_pci_softc** %4, align 8
  %281 = getelementptr inbounds %struct.versatile_pci_softc, %struct.versatile_pci_softc* %280, i32 0, i32 1
  %282 = call i32 @ofw_bus_setup_iinfo(i32 %279, i32* %281, i32 4)
  %283 = load i32, i32* %3, align 4
  %284 = call i32 @device_add_child(i32 %283, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 -1)
  %285 = load i32, i32* %3, align 4
  %286 = call i32 @bus_generic_attach(i32 %285)
  store i32 %286, i32* %2, align 4
  br label %287

287:                                              ; preds = %278, %88, %23
  %288 = load i32, i32* %2, align 4
  ret i32 %288
}

declare dso_local %struct.versatile_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @bus_alloc_resources(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @versatile_pci_core_write_4(i32, i32) #1

declare dso_local i32 @versatile_scm_reg_write_4(i32, i32) #1

declare dso_local i32 @versatile_pci_read_4(i64) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32) #1

declare dso_local i32 @versatile_pci_conf_read_4(i64) #1

declare dso_local i32 @versatile_pci_conf_write_4(i64, i32) #1

declare dso_local i32 @versatile_pci_write_4(i64, i32) #1

declare dso_local i64 @PCIR_BAR(i32) #1

declare dso_local i64 @rman_init(%struct.TYPE_3__*) #1

declare dso_local i64 @rman_manage_region(%struct.TYPE_3__*, i32, i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @ofw_bus_setup_iinfo(i32, i32*, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
