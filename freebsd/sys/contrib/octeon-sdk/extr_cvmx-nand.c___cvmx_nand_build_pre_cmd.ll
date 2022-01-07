; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-nand.c___cvmx_nand_build_pre_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-nand.c___cvmx_nand_build_pre_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32*, i32*, i32*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cvmx_nand_state = common dso_local global %struct.TYPE_11__* null, align 8
@CVMX_NAND_STATE_16BIT = common dso_local global i32 0, align 4
@CVMX_NAND_NO_MEMORY = common dso_local global i64 0, align 8
@CVMX_NAND_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, i32, i32)* @__cvmx_nand_build_pre_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__cvmx_nand_build_pre_cmd(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_18__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = call i32 (...) @CVMX_NAND_LOG_CALLED()
  %19 = call i32 @memset(%struct.TYPE_18__* %13, i32 0, i32 120)
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cvmx_nand_state, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cvmx_nand_state, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cvmx_nand_state, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cvmx_nand_state, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cvmx_nand_state, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cvmx_nand_state, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 5
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cvmx_nand_state, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 6
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cvmx_nand_state, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 7
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = call i64 @cvmx_nand_submit(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %13)
  store i64 %100, i64* %12, align 8
  %101 = load i64, i64* %12, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %5
  %104 = load i64, i64* %12, align 8
  %105 = call i32 @CVMX_NAND_RETURN(i64 %104)
  br label %106

106:                                              ; preds = %103, %5
  %107 = call i32 @memset(%struct.TYPE_18__* %13, i32 0, i32 120)
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  store i32 15, i32* %109, align 4
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  %112 = call i64 @cvmx_nand_submit(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %13)
  store i64 %112, i64* %12, align 8
  %113 = load i64, i64* %12, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = load i64, i64* %12, align 8
  %117 = call i32 @CVMX_NAND_RETURN(i64 %116)
  br label %118

118:                                              ; preds = %115, %106
  %119 = call i32 @memset(%struct.TYPE_18__* %13, i32 0, i32 120)
  %120 = load i32, i32* %7, align 4
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  store i32 1, i32* %124, align 4
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 2
  store i32 3, i32* %126, align 4
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cvmx_nand_state, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @CVMX_NAND_STATE_16BIT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 2, i32 1
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 4
  %140 = call i64 @cvmx_nand_submit(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %13)
  store i64 %140, i64* %12, align 8
  %141 = load i64, i64* %12, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %118
  %144 = load i64, i64* %12, align 8
  %145 = call i32 @CVMX_NAND_RETURN(i64 %144)
  br label %146

146:                                              ; preds = %143, %118
  %147 = call i32 @memset(%struct.TYPE_18__* %13, i32 0, i32 120)
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  store i32 2, i32* %149, align 4
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 1
  store i32 1, i32* %151, align 4
  %152 = call i64 @cvmx_nand_submit(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %13)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %146
  %155 = load i64, i64* @CVMX_NAND_NO_MEMORY, align 8
  %156 = call i32 @CVMX_NAND_RETURN(i64 %155)
  br label %157

157:                                              ; preds = %154, %146
  %158 = call i32 @memset(%struct.TYPE_18__* %13, i32 0, i32 120)
  %159 = load i32, i32* %8, align 4
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cvmx_nand_state, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 4
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cvmx_nand_state, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 4
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cvmx_nand_state, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 2
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 4
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 1
  store i32 4, i32* %193, align 4
  %194 = call i64 @cvmx_nand_submit(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %13)
  store i64 %194, i64* %12, align 8
  %195 = load i64, i64* %12, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %157
  %198 = load i64, i64* %12, align 8
  %199 = call i32 @CVMX_NAND_RETURN(i64 %198)
  br label %200

200:                                              ; preds = %197, %157
  %201 = load i32, i32* %9, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %302

203:                                              ; preds = %200
  %204 = call i32 @memset(%struct.TYPE_18__* %13, i32 0, i32 120)
  %205 = load i32, i32* %9, align 4
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 4
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @__cvmx_nand_get_address_cycles(i32 %209)
  %211 = icmp slt i32 %208, %210
  br i1 %211, label %212, label %220

212:                                              ; preds = %203
  %213 = load i32, i32* %10, align 4
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 4
  %216 = load i32, i32* %10, align 4
  %217 = ashr i32 %216, 32
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 2
  store i32 %217, i32* %219, align 4
  br label %252

220:                                              ; preds = %203
  %221 = load i32, i32* %7, align 4
  %222 = call i32 @__cvmx_nand_get_column_bits(i32 %221)
  store i32 %222, i32* %14, align 4
  %223 = load i32, i32* %14, align 4
  %224 = add nsw i32 %223, 7
  %225 = ashr i32 %224, 3
  %226 = shl i32 %225, 3
  store i32 %226, i32* %15, align 4
  %227 = load i32, i32* %10, align 4
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cvmx_nand_state, align 8
  %229 = load i32, i32* %7, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = sub nsw i32 %233, 1
  %235 = and i32 %227, %234
  store i32 %235, i32* %16, align 4
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* %14, align 4
  %238 = ashr i32 %236, %237
  store i32 %238, i32* %17, align 4
  %239 = load i32, i32* %16, align 4
  %240 = load i32, i32* %17, align 4
  %241 = load i32, i32* %15, align 4
  %242 = shl i32 %240, %241
  %243 = add nsw i32 %239, %242
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* %17, align 4
  %247 = load i32, i32* %15, align 4
  %248 = sub nsw i32 32, %247
  %249 = ashr i32 %246, %248
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 2
  store i32 %249, i32* %251, align 4
  br label %252

252:                                              ; preds = %220, %212
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cvmx_nand_state, align 8
  %254 = load i32, i32* %7, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 3
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 0
  %260 = load i32, i32* %259, align 4
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 7
  store i32 %260, i32* %262, align 4
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cvmx_nand_state, align 8
  %264 = load i32, i32* %7, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 3
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 1
  %270 = load i32, i32* %269, align 4
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 6
  store i32 %270, i32* %272, align 4
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cvmx_nand_state, align 8
  %274 = load i32, i32* %7, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 3
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 2
  %280 = load i32, i32* %279, align 4
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 5
  store i32 %280, i32* %282, align 4
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cvmx_nand_state, align 8
  %284 = load i32, i32* %7, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 3
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 3
  %290 = load i32, i32* %289, align 4
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 4
  store i32 %290, i32* %292, align 4
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 3
  store i32 5, i32* %294, align 4
  %295 = call i64 @cvmx_nand_submit(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %13)
  store i64 %295, i64* %12, align 8
  %296 = load i64, i64* %12, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %252
  %299 = load i64, i64* %12, align 8
  %300 = call i32 @CVMX_NAND_RETURN(i64 %299)
  br label %301

301:                                              ; preds = %298, %252
  br label %302

302:                                              ; preds = %301, %200
  %303 = load i32, i32* %11, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %349

305:                                              ; preds = %302
  %306 = call i32 @memset(%struct.TYPE_18__* %13, i32 0, i32 120)
  %307 = load i32, i32* %11, align 4
  %308 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 0
  store i32 %307, i32* %309, align 4
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cvmx_nand_state, align 8
  %311 = load i32, i32* %7, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 2
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 0
  %317 = load i32, i32* %316, align 4
  %318 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i32 0, i32 4
  store i32 %317, i32* %319, align 4
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cvmx_nand_state, align 8
  %321 = load i32, i32* %7, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 2
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 1
  %327 = load i32, i32* %326, align 4
  %328 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 3
  store i32 %327, i32* %329, align 4
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cvmx_nand_state, align 8
  %331 = load i32, i32* %7, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 2
  %335 = load i32*, i32** %334, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 2
  %337 = load i32, i32* %336, align 4
  %338 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 2
  store i32 %337, i32* %339, align 4
  %340 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 1
  store i32 4, i32* %341, align 4
  %342 = call i64 @cvmx_nand_submit(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %13)
  store i64 %342, i64* %12, align 8
  %343 = load i64, i64* %12, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %305
  %346 = load i64, i64* %12, align 8
  %347 = call i32 @CVMX_NAND_RETURN(i64 %346)
  br label %348

348:                                              ; preds = %345, %305
  br label %349

349:                                              ; preds = %348, %302
  %350 = load i64, i64* @CVMX_NAND_SUCCESS, align 8
  %351 = call i32 @CVMX_NAND_RETURN(i64 %350)
  %352 = load i64, i64* %6, align 8
  ret i64 %352
}

declare dso_local i32 @CVMX_NAND_LOG_CALLED(...) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i64 @cvmx_nand_submit(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8) #1

declare dso_local i32 @CVMX_NAND_RETURN(i64) #1

declare dso_local i32 @__cvmx_nand_get_address_cycles(i32) #1

declare dso_local i32 @__cvmx_nand_get_column_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
