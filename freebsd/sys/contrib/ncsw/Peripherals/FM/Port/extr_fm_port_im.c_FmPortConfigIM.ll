; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port_im.c_FmPortConfigIM.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port_im.c_FmPortConfigIM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_16__, i64, i32, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_13__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i64, i64, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i64, i64, i32, i32, i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@DEFAULT_PORT_ImfwExtStructsMemId = common dso_local global i32 0, align 4
@DEFAULT_PORT_ImfwExtStructsMemAttr = common dso_local global i32 0, align 4
@e_FM_PORT_TYPE_RX = common dso_local global i64 0, align 8
@e_FM_PORT_TYPE_RX_10G = common dso_local global i64 0, align 8
@XX_PhysToVirt = common dso_local global i64 0, align 8
@XX_VirtToPhys = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Max-Rx-Buffer-Length set to %d\00", align 1
@DEFAULT_PORT_rxBdRingLength = common dso_local global i32 0, align 4
@DEFAULT_PORT_exception = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@NO_IRQ = common dso_local global i64 0, align 8
@DEFAULT_PORT_txBdRingLength = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FmPortConfigIM(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %5 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %6 = call i32 @ASSERT_COND(%struct.TYPE_18__* %5)
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 6
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %10 = load i32, i32* @E_INVALID_HANDLE, align 4
  %11 = call i32 @SANITY_CHECK_RETURN(%struct.TYPE_19__* %9, i32 %10)
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 9
  store i32 %16, i32* %19, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 6
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 8
  store i32 %33, i32* %36, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 7
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @DEFAULT_PORT_ImfwExtStructsMemId, align 4
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 6
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* @DEFAULT_PORT_ImfwExtStructsMemAttr, align 4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 5
  store i32 %49, i32* %52, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @e_FM_PORT_TYPE_RX, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %2
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @e_FM_PORT_TYPE_RX_10G, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %232

64:                                               ; preds = %58, %2
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 5
  store i32 %70, i32* %74, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 4
  store i32 %80, i32* %84, align 4
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 3
  store i32 %90, i32* %94, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  store i32 %100, i32* %104, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 2
  store i64 %110, i64* %114, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %64
  %122 = load i64, i64* @XX_PhysToVirt, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 2
  store i64 %122, i64* %126, align 8
  br label %127

127:                                              ; preds = %121, %64
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  store i64 %133, i64* %137, align 8
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %127
  %145 = load i64, i64* @XX_VirtToPhys, align 8
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  store i64 %145, i64* %149, align 8
  br label %150

150:                                              ; preds = %144, %127
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 4
  store i32 %155, i32* %158, align 8
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  store i32 32768, i32* %161, align 8
  br label %162

162:                                              ; preds = %181, %150
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %187

168:                                              ; preds = %162
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = and i32 %173, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %168
  br label %187

181:                                              ; preds = %168
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = ashr i32 %185, 1
  store i32 %186, i32* %184, align 8
  br label %162

187:                                              ; preds = %180, %162
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %191, %196
  br i1 %197, label %198, label %207

198:                                              ; preds = %187
  %199 = load i32, i32* @WARNING, align 4
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  %205 = inttoptr i64 %204 to i8*
  %206 = call i32 @DBG(i32 %199, i8* %205)
  br label %207

207:                                              ; preds = %198, %187
  %208 = load i32, i32* @DEFAULT_PORT_rxBdRingLength, align 4
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 1
  store i32 %208, i32* %211, align 4
  %212 = load i32, i32* @DEFAULT_PORT_exception, align 4
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 5
  store i32 %212, i32* %214, align 8
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 4
  %218 = call i64 @FmIsMaster(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %207
  %221 = load i32, i32* @FALSE, align 4
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 3
  store i32 %221, i32* %223, align 8
  br label %228

224:                                              ; preds = %207
  %225 = load i32, i32* @TRUE, align 4
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 3
  store i32 %225, i32* %227, align 8
  br label %228

228:                                              ; preds = %224, %220
  %229 = load i64, i64* @NO_IRQ, align 8
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 2
  store i64 %229, i64* %231, align 8
  br label %245

232:                                              ; preds = %58
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 2
  store i32 %237, i32* %240, align 8
  %241 = load i32, i32* @DEFAULT_PORT_txBdRingLength, align 4
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 1
  store i32 %241, i32* %244, align 4
  br label %245

245:                                              ; preds = %232, %228
  ret void
}

declare dso_local i32 @ASSERT_COND(%struct.TYPE_18__*) #1

declare dso_local i32 @SANITY_CHECK_RETURN(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i64 @FmIsMaster(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
