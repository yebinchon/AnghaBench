; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_ehci.c_zy7_ehci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_ehci.c_zy7_ehci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__, i32, i32, i32, i32, i32*, i32, i32, i32, i32*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@EHCI_MAX_DEVICES = common dso_local global i32 0, align 4
@ehci_iterate_hw_softc = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Can't allocate memory\00", align 1
@EHCI_REG_SIZE = common dso_local global i32 0, align 4
@EHCI_REG_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: unable to subregion USB host registers\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Can't allocate IRQ\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Could not add USB device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Zynq-7000 ehci USB 2.0 controller\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Xilinx\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ehci_interrupt = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"Cannot setup IRQ\0A\00", align 1
@EHCI_SCFLG_TT = common dso_local global i32 0, align 4
@EHCI_SCFLG_NORESTERM = common dso_local global i32 0, align 4
@zy7_ehci_post_reset = common dso_local global i32 0, align 4
@ehci_get_port_speed_portsc = common dso_local global i32 0, align 4
@ZY7_USB_TXFILLTUNING = common dso_local global i32 0, align 4
@ZY7_USB_TXFILLTUNING_TXFIFOTHRES_SHFT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"Cannot config phy!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EHCI_SCFLG_DONEINIT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"USB init failed err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @zy7_ehci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zy7_ehci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.TYPE_7__* @device_get_softc(i32 %8)
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 4
  store i32 %10, i32* %13, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 11
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @EHCI_MAX_DEVICES, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i32 32, i32* %26, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @USB_GET_DMA_TAG(i32 %29)
  %31 = call i64 @usb_bus_mem_alloc_all(%struct.TYPE_8__* %28, i32 %30, i32* @ehci_iterate_hw_softc)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* %2, align 4
  br label %218

35:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @SYS_RES_MEMORY, align 4
  %38 = load i32, i32* @RF_ACTIVE, align 4
  %39 = call i8* @bus_alloc_resource_any(i32 %36, i32 %37, i32* %7, i32 %38)
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 10
  store i32* %40, i32** %42, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 10
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %35
  %48 = load i32, i32* %3, align 4
  %49 = call i32 (i32, i8*, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @zy7_ehci_detach(i32 %50)
  %52 = load i32, i32* @ENOMEM, align 4
  store i32 %52, i32* %2, align 4
  br label %218

53:                                               ; preds = %35
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 10
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @rman_get_bustag(i32* %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 10
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @rman_get_bushandle(i32* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @EHCI_REG_SIZE, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 9
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @EHCI_REG_OFFSET, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 8
  %77 = call i64 @bus_space_subregion(i32 %69, i32 %70, i32 %71, i32 %74, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %53
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @device_get_name(i32 %80)
  %82 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %79, %53
  store i32 0, i32* %7, align 4
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @SYS_RES_IRQ, align 4
  %86 = load i32, i32* @RF_ACTIVE, align 4
  %87 = call i8* @bus_alloc_resource_any(i32 %84, i32 %85, i32* %7, i32 %86)
  %88 = bitcast i8* %87 to i32*
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 6
  store i32* %88, i32** %90, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 6
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %83
  %96 = load i32, i32* %3, align 4
  %97 = call i32 (i32, i8*, ...) @device_printf(i32 %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @zy7_ehci_detach(i32 %98)
  %100 = load i32, i32* @ENOMEM, align 4
  store i32 %100, i32* %2, align 4
  br label %218

101:                                              ; preds = %83
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @device_add_child(i32 %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %101
  %113 = load i32, i32* %3, align 4
  %114 = call i32 (i32, i8*, ...) @device_printf(i32 %113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @zy7_ehci_detach(i32 %115)
  %117 = load i32, i32* @ENXIO, align 4
  store i32 %117, i32* %2, align 4
  br label %218

118:                                              ; preds = %101
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = call i32 @device_set_ivars(i32 %122, %struct.TYPE_8__* %124)
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @device_set_desc(i32 %129, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @strcpy(i32 %133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %135 = load i32, i32* %3, align 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 6
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* @INTR_TYPE_BIO, align 4
  %140 = load i32, i32* @INTR_MPSAFE, align 4
  %141 = or i32 %139, %140
  %142 = load i64, i64* @ehci_interrupt, align 8
  %143 = inttoptr i64 %142 to i32*
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 5
  %147 = call i32 @bus_setup_intr(i32 %135, i32* %138, i32 %141, i32* null, i32* %143, %struct.TYPE_7__* %144, i32* %146)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %118
  %151 = load i32, i32* %3, align 4
  %152 = call i32 (i32, i8*, ...) @device_printf(i32 %151, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @zy7_ehci_detach(i32 %153)
  %155 = load i32, i32* %6, align 4
  store i32 %155, i32* %2, align 4
  br label %218

156:                                              ; preds = %118
  %157 = load i32, i32* @EHCI_SCFLG_TT, align 4
  %158 = load i32, i32* @EHCI_SCFLG_NORESTERM, align 4
  %159 = or i32 %157, %158
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  %164 = load i32, i32* @zy7_ehci_post_reset, align 4
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 4
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* @ehci_get_port_speed_portsc, align 4
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 3
  store i32 %167, i32* %169, align 4
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* @ZY7_USB_TXFILLTUNING, align 4
  %175 = load i32, i32* @ZY7_USB_TXFILLTUNING_TXFIFOTHRES_SHFT, align 4
  %176 = shl i32 8, %175
  %177 = call i32 @bus_space_write_4(i32 %172, i32 %173, i32 %174, i32 %176)
  %178 = load i32, i32* %3, align 4
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %5, align 4
  %183 = call i64 @zy7_phy_config(i32 %178, i32 %181, i32 %182)
  %184 = icmp slt i64 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %156
  %186 = load i32, i32* %3, align 4
  %187 = call i32 (i32, i8*, ...) @device_printf(i32 %186, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %188 = load i32, i32* %3, align 4
  %189 = call i32 @zy7_ehci_detach(i32 %188)
  %190 = load i32, i32* @EIO, align 4
  store i32 %190, i32* %2, align 4
  br label %218

191:                                              ; preds = %156
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %193 = call i32 @ehci_init(%struct.TYPE_7__* %192)
  store i32 %193, i32* %6, align 4
  %194 = load i32, i32* %6, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %207, label %196

196:                                              ; preds = %191
  %197 = load i32, i32* @EHCI_SCFLG_DONEINIT, align 4
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 8
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @device_probe_and_attach(i32 %205)
  store i32 %206, i32* %6, align 4
  br label %207

207:                                              ; preds = %196, %191
  %208 = load i32, i32* %6, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %207
  %211 = load i32, i32* %3, align 4
  %212 = load i32, i32* %6, align 4
  %213 = call i32 (i32, i8*, ...) @device_printf(i32 %211, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %212)
  %214 = load i32, i32* %3, align 4
  %215 = call i32 @zy7_ehci_detach(i32 %214)
  %216 = load i32, i32* %6, align 4
  store i32 %216, i32* %2, align 4
  br label %218

217:                                              ; preds = %207
  store i32 0, i32* %2, align 4
  br label %218

218:                                              ; preds = %217, %210, %185, %150, %112, %95, %47, %33
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

declare dso_local %struct.TYPE_7__* @device_get_softc(i32) #1

declare dso_local i64 @usb_bus_mem_alloc_all(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @zy7_ehci_detach(i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i64 @bus_space_subregion(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i64 @zy7_phy_config(i32, i32, i32) #1

declare dso_local i32 @ehci_init(%struct.TYPE_7__*) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
