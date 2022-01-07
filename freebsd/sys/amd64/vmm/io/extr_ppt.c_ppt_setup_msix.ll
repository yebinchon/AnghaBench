; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_ppt.c_ppt_setup_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_ppt.c_ppt_setup_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.pptdev = type { %struct.TYPE_7__, i32, %struct.vm* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32**, i32**, %struct.TYPE_8__*, i32*, i32* }
%struct.TYPE_8__ = type { i8*, i8*, %struct.pptdev* }
%struct.pci_devinfo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_PPTMSIX = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@PCIM_MSIX_VCTRL_MASK = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@pptintr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppt_setup_msix(%struct.vm* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i8* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.vm*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.pptdev*, align 8
  %21 = alloca %struct.pci_devinfo*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store %struct.vm* %0, %struct.vm** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store i32 %8, i32* %19, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %15, align 4
  %32 = call %struct.pptdev* @ppt_find(i32 %29, i32 %30, i32 %31)
  store %struct.pptdev* %32, %struct.pptdev** %20, align 8
  %33 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %34 = icmp eq %struct.pptdev* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %9
  %36 = load i32, i32* @ENOENT, align 4
  store i32 %36, i32* %10, align 4
  br label %353

37:                                               ; preds = %9
  %38 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %39 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %38, i32 0, i32 2
  %40 = load %struct.vm*, %struct.vm** %39, align 8
  %41 = load %struct.vm*, %struct.vm** %11, align 8
  %42 = icmp ne %struct.vm* %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @EBUSY, align 4
  store i32 %44, i32* %10, align 4
  br label %353

45:                                               ; preds = %37
  %46 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %47 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.pci_devinfo* @device_get_ivars(i32 %48)
  store %struct.pci_devinfo* %49, %struct.pci_devinfo** %21, align 8
  %50 = load %struct.pci_devinfo*, %struct.pci_devinfo** %21, align 8
  %51 = icmp ne %struct.pci_devinfo* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %10, align 4
  br label %353

54:                                               ; preds = %45
  %55 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %56 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %210

60:                                               ; preds = %54
  %61 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %62 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @pci_msix_count(i32 %63)
  store i32 %64, i32* %22, align 4
  %65 = load i32, i32* %22, align 4
  %66 = icmp sle i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %10, align 4
  br label %353

69:                                               ; preds = %60
  %70 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %71 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  %73 = load i32, i32* %22, align 4
  %74 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %75 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load i32, i32* %22, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 8
  store i64 %79, i64* %26, align 8
  %80 = load i32, i32* %22, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 8
  store i64 %82, i64* %27, align 8
  %83 = load i32, i32* %22, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 24
  store i64 %85, i64* %28, align 8
  %86 = load i64, i64* %26, align 8
  %87 = load i32, i32* @M_PPTMSIX, align 4
  %88 = load i32, i32* @M_WAITOK, align 4
  %89 = load i32, i32* @M_ZERO, align 4
  %90 = or i32 %88, %89
  %91 = call i8* @malloc(i64 %86, i32 %87, i32 %90)
  %92 = bitcast i8* %91 to i32**
  %93 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %94 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 4
  store i32** %92, i32*** %95, align 8
  %96 = load i64, i64* %27, align 8
  %97 = load i32, i32* @M_PPTMSIX, align 4
  %98 = load i32, i32* @M_WAITOK, align 4
  %99 = load i32, i32* @M_ZERO, align 4
  %100 = or i32 %98, %99
  %101 = call i8* @malloc(i64 %96, i32 %97, i32 %100)
  %102 = bitcast i8* %101 to i32**
  %103 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %104 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 5
  store i32** %102, i32*** %105, align 8
  %106 = load i64, i64* %28, align 8
  %107 = load i32, i32* @M_PPTMSIX, align 4
  %108 = load i32, i32* @M_WAITOK, align 4
  %109 = load i32, i32* @M_ZERO, align 4
  %110 = or i32 %108, %109
  %111 = call i8* @malloc(i64 %106, i32 %107, i32 %110)
  %112 = bitcast i8* %111 to %struct.TYPE_8__*
  %113 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %114 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 6
  store %struct.TYPE_8__* %112, %struct.TYPE_8__** %115, align 8
  %116 = load %struct.pci_devinfo*, %struct.pci_devinfo** %21, align 8
  %117 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %24, align 4
  %121 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %122 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @SYS_RES_MEMORY, align 4
  %125 = load i32, i32* @RF_ACTIVE, align 4
  %126 = call i8* @bus_alloc_resource_any(i32 %123, i32 %124, i32* %24, i32 %125)
  %127 = bitcast i8* %126 to i32*
  %128 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %129 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 8
  store i32* %127, i32** %130, align 8
  %131 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %132 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 8
  %134 = load i32*, i32** %133, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %69
  %137 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %138 = call i32 @ppt_teardown_msix(%struct.pptdev* %137)
  %139 = load i32, i32* @ENOSPC, align 4
  store i32 %139, i32* %10, align 4
  br label %353

140:                                              ; preds = %69
  %141 = load i32, i32* %24, align 4
  %142 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %143 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  store i32 %141, i32* %144, align 8
  %145 = load %struct.pci_devinfo*, %struct.pci_devinfo** %21, align 8
  %146 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.pci_devinfo*, %struct.pci_devinfo** %21, align 8
  %151 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %149, %154
  br i1 %155, label %156, label %186

156:                                              ; preds = %140
  %157 = load %struct.pci_devinfo*, %struct.pci_devinfo** %21, align 8
  %158 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %24, align 4
  %162 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %163 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @SYS_RES_MEMORY, align 4
  %166 = load i32, i32* @RF_ACTIVE, align 4
  %167 = call i8* @bus_alloc_resource_any(i32 %164, i32 %165, i32* %24, i32 %166)
  %168 = bitcast i8* %167 to i32*
  %169 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %170 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 7
  store i32* %168, i32** %171, align 8
  %172 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %173 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 7
  %175 = load i32*, i32** %174, align 8
  %176 = icmp eq i32* %175, null
  br i1 %176, label %177, label %181

177:                                              ; preds = %156
  %178 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %179 = call i32 @ppt_teardown_msix(%struct.pptdev* %178)
  %180 = load i32, i32* @ENOSPC, align 4
  store i32 %180, i32* %10, align 4
  br label %353

181:                                              ; preds = %156
  %182 = load i32, i32* %24, align 4
  %183 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %184 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 3
  store i32 %182, i32* %185, align 4
  br label %186

186:                                              ; preds = %181, %140
  %187 = load i32, i32* %22, align 4
  store i32 %187, i32* %23, align 4
  %188 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %189 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @pci_alloc_msix(i32 %190, i32* %23)
  store i32 %191, i32* %25, align 4
  %192 = load i32, i32* %25, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %186
  %195 = load i32, i32* %23, align 4
  %196 = load i32, i32* %22, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %209

198:                                              ; preds = %194, %186
  %199 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %200 = call i32 @ppt_teardown_msix(%struct.pptdev* %199)
  %201 = load i32, i32* %25, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load i32, i32* @ENOSPC, align 4
  br label %207

205:                                              ; preds = %198
  %206 = load i32, i32* %25, align 4
  br label %207

207:                                              ; preds = %205, %203
  %208 = phi i32 [ %204, %203 ], [ %206, %205 ]
  store i32 %208, i32* %10, align 4
  br label %353

209:                                              ; preds = %194
  br label %210

210:                                              ; preds = %209, %54
  %211 = load i32, i32* %19, align 4
  %212 = load i32, i32* @PCIM_MSIX_VCTRL_MASK, align 4
  %213 = and i32 %211, %212
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %348

215:                                              ; preds = %210
  %216 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %217 = load i32, i32* %16, align 4
  %218 = call i32 @ppt_teardown_msix_intr(%struct.pptdev* %216, i32 %217)
  %219 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %220 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 5
  %222 = load i32**, i32*** %221, align 8
  %223 = load i32, i32* %16, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32*, i32** %222, i64 %224
  store i32* null, i32** %225, align 8
  %226 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %227 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %16, align 4
  %231 = add nsw i32 %229, %230
  store i32 %231, i32* %24, align 4
  %232 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %233 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @SYS_RES_IRQ, align 4
  %236 = load i32, i32* @RF_ACTIVE, align 4
  %237 = call i8* @bus_alloc_resource_any(i32 %234, i32 %235, i32* %24, i32 %236)
  %238 = bitcast i8* %237 to i32*
  %239 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %240 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 4
  %242 = load i32**, i32*** %241, align 8
  %243 = load i32, i32* %16, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32*, i32** %242, i64 %244
  store i32* %238, i32** %245, align 8
  %246 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %247 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 4
  %249 = load i32**, i32*** %248, align 8
  %250 = load i32, i32* %16, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32*, i32** %249, i64 %251
  %253 = load i32*, i32** %252, align 8
  %254 = icmp eq i32* %253, null
  br i1 %254, label %255, label %257

255:                                              ; preds = %215
  %256 = load i32, i32* @ENXIO, align 4
  store i32 %256, i32* %10, align 4
  br label %353

257:                                              ; preds = %215
  %258 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %259 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %260 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 6
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %261, align 8
  %263 = load i32, i32* %16, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 2
  store %struct.pptdev* %258, %struct.pptdev** %266, align 8
  %267 = load i8*, i8** %17, align 8
  %268 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %269 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 6
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %270, align 8
  %272 = load i32, i32* %16, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 1
  store i8* %267, i8** %275, align 8
  %276 = load i8*, i8** %18, align 8
  %277 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %278 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 6
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %279, align 8
  %281 = load i32, i32* %16, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 0
  store i8* %276, i8** %284, align 8
  %285 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %286 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %289 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 4
  %291 = load i32**, i32*** %290, align 8
  %292 = load i32, i32* %16, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32*, i32** %291, i64 %293
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* @INTR_TYPE_NET, align 4
  %297 = load i32, i32* @INTR_MPSAFE, align 4
  %298 = or i32 %296, %297
  %299 = load i32, i32* @pptintr, align 4
  %300 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %301 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 6
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** %302, align 8
  %304 = load i32, i32* %16, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i64 %305
  %307 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %308 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 5
  %310 = load i32**, i32*** %309, align 8
  %311 = load i32, i32* %16, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32*, i32** %310, i64 %312
  %314 = call i32 @bus_setup_intr(i32 %287, i32* %295, i32 %298, i32 %299, i32* null, %struct.TYPE_8__* %306, i32** %313)
  store i32 %314, i32* %25, align 4
  %315 = load i32, i32* %25, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %347

317:                                              ; preds = %257
  %318 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %319 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @SYS_RES_IRQ, align 4
  %322 = load i32, i32* %24, align 4
  %323 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %324 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 4
  %326 = load i32**, i32*** %325, align 8
  %327 = load i32, i32* %16, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32*, i32** %326, i64 %328
  %330 = load i32*, i32** %329, align 8
  %331 = call i32 @bus_release_resource(i32 %320, i32 %321, i32 %322, i32* %330)
  %332 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %333 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 5
  %335 = load i32**, i32*** %334, align 8
  %336 = load i32, i32* %16, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32*, i32** %335, i64 %337
  store i32* null, i32** %338, align 8
  %339 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %340 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %340, i32 0, i32 4
  %342 = load i32**, i32*** %341, align 8
  %343 = load i32, i32* %16, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32*, i32** %342, i64 %344
  store i32* null, i32** %345, align 8
  %346 = load i32, i32* @ENXIO, align 4
  store i32 %346, i32* %10, align 4
  br label %353

347:                                              ; preds = %257
  br label %352

348:                                              ; preds = %210
  %349 = load %struct.pptdev*, %struct.pptdev** %20, align 8
  %350 = load i32, i32* %16, align 4
  %351 = call i32 @ppt_teardown_msix_intr(%struct.pptdev* %349, i32 %350)
  br label %352

352:                                              ; preds = %348, %347
  store i32 0, i32* %10, align 4
  br label %353

353:                                              ; preds = %352, %317, %255, %207, %177, %136, %67, %52, %43, %35
  %354 = load i32, i32* %10, align 4
  ret i32 %354
}

declare dso_local %struct.pptdev* @ppt_find(i32, i32, i32) #1

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @pci_msix_count(i32) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @ppt_teardown_msix(%struct.pptdev*) #1

declare dso_local i32 @pci_alloc_msix(i32, i32*) #1

declare dso_local i32 @ppt_teardown_msix_intr(%struct.pptdev*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32, i32*, %struct.TYPE_8__*, i32**) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
