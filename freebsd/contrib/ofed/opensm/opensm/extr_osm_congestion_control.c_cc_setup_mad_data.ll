; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_congestion_control.c_cc_setup_mad_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_congestion_control.c_cc_setup_mad_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_16__, %struct.TYPE_21__* }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_29__, %struct.TYPE_26__*, i32, i32, i32, %struct.TYPE_23__, i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_27__*, %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_27__ = type { %struct.TYPE_20__*, i64, i8* }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_25__ = type { %struct.TYPE_19__*, i32, i32 }
%struct.TYPE_19__ = type { i64, i64, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i8*, i8*, i32, i32, i32, i32 }

@IB_CC_PORT_MASK_DATA_SIZE = common dso_local global i32 0, align 4
@IB_CA_CONG_ENTRY_DATA_SIZE = common dso_local global i32 0, align 4
@IB_CC_TBL_ENTRY_LIST_MAX = common dso_local global i32 0, align 4
@OSM_CCT_ENTRY_MAD_BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @cc_setup_mad_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_setup_mad_data(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %3, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %4, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 11
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 7
  store i32 %22, i32* %25, align 4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IB_CC_PORT_MASK_DATA_SIZE, align 4
  %34 = call i32 @memcpy(i32 %29, i32 %32, i32 %33)
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IB_CC_PORT_MASK_DATA_SIZE, align 4
  %43 = call i32 @memcpy(i32 %38, i32 %41, i32 %42)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 %46, 4
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 4
  store i32 %53, i32* %56, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 12
  %61 = call i8* @cl_hton16(i32 %60)
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 3
  store i8* %61, i8** %64, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 14
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 7
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %69, %73
  %75 = call i8* @cl_hton16(i32 %74)
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 2
  store i8* %75, i8** %78, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 2
  store i32 %87, i32* %90, align 4
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 8
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %153, %1
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @IB_CA_CONG_ENTRY_DATA_SIZE, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %156

101:                                              ; preds = %97
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i64 %107
  store %struct.TYPE_19__* %108, %struct.TYPE_19__** %7, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 3
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 4
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 1
  store i64 0, i64* %150, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 0
  store i64 0, i64* %152, align 8
  br label %153

153:                                              ; preds = %101
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %6, align 4
  br label %97

156:                                              ; preds = %97
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %156
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  store i32 1, i32* %164, align 8
  br label %182

165:                                              ; preds = %156
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sub nsw i32 %169, 1
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = load i32, i32* @IB_CC_TBL_ENTRY_LIST_MAX, align 4
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = sdiv i32 %176, %173
  store i32 %177, i32* %175, align 8
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 8
  br label %182

182:                                              ; preds = %165, %162
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @OSM_CCT_ENTRY_MAD_BLOCKS, align 4
  %187 = icmp sle i32 %185, %186
  %188 = zext i1 %187 to i32
  %189 = call i32 @CL_ASSERT(i32 %188)
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %182
  store i32 0, i32* %5, align 4
  br label %202

196:                                              ; preds = %182
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = sub nsw i32 %200, 1
  store i32 %201, i32* %5, align 4
  br label %202

202:                                              ; preds = %196, %195
  store i32 0, i32* %6, align 4
  br label %203

203:                                              ; preds = %286, %202
  %204 = load i32, i32* %6, align 4
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp slt i32 %204, %207
  br i1 %208, label %209, label %289

209:                                              ; preds = %203
  %210 = load i32, i32* %5, align 4
  %211 = call i8* @cl_hton16(i32 %210)
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %213, align 8
  %215 = load i32, i32* %6, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %217, i32 0, i32 2
  store i8* %211, i8** %218, align 8
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_27__*, %struct.TYPE_27__** %220, align 8
  %222 = load i32, i32* %6, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %224, i32 0, i32 1
  store i64 0, i64* %225, align 8
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_27__*, %struct.TYPE_27__** %227, align 8
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %232, align 8
  %234 = call i32 @memset(%struct.TYPE_20__* %233, i8 signext 0, i32 8)
  %235 = load i32, i32* %5, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %209
  br label %289

238:                                              ; preds = %209
  store i32 0, i32* %8, align 4
  br label %239

239:                                              ; preds = %282, %238
  %240 = load i32, i32* %8, align 4
  %241 = load i32, i32* @IB_CC_TBL_ENTRY_LIST_MAX, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %285

243:                                              ; preds = %239
  %244 = load i32, i32* %6, align 4
  %245 = load i32, i32* @IB_CC_TBL_ENTRY_LIST_MAX, align 4
  %246 = mul nsw i32 %244, %245
  %247 = load i32, i32* %8, align 4
  %248 = add nsw i32 %246, %247
  store i32 %248, i32* %9, align 4
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_28__*, %struct.TYPE_28__** %251, align 8
  %253 = load i32, i32* %9, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = shl i32 %257, 14
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_28__*, %struct.TYPE_28__** %261, align 8
  %263 = load i32, i32* %9, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = or i32 %258, %267
  %269 = call i8* @cl_hton16(i32 %268)
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_27__*, %struct.TYPE_27__** %271, align 8
  %273 = load i32, i32* %6, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %276, align 8
  %278 = load i32, i32* %8, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 0
  store i8* %269, i8** %281, align 8
  br label %282

282:                                              ; preds = %243
  %283 = load i32, i32* %8, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %8, align 4
  br label %239

285:                                              ; preds = %239
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %6, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %6, align 4
  br label %203

289:                                              ; preds = %237, %203
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @cl_hton16(i32) #1

declare dso_local i32 @CL_ASSERT(i32) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
