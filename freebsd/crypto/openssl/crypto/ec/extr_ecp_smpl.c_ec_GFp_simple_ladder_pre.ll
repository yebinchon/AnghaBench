; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_ladder_pre.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_ladder_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_22__*, i32*, i32* }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_24__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_24__*, i32*, i32*, i32*)* }
%struct.TYPE_23__ = type { i64, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_simple_ladder_pre(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1, %struct.TYPE_23__* %2, %struct.TYPE_23__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %9, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %17, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %12, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %13, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %14, align 8
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %15, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %16, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %17, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_24__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_24__*, i32*, i32*, i32*, i32*)** %39, align 8
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 %40(%struct.TYPE_24__* %41, i32* %44, i32* %47, i32* %50, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %272

54:                                               ; preds = %5
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 1
  %59 = load i32 (%struct.TYPE_24__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_24__*, i32*, i32*, i32*)** %58, align 8
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 %59(%struct.TYPE_24__* %60, i32* %61, i32* %64, i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %272

68:                                               ; preds = %54
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_24__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_24__*, i32*, i32*, i32*, i32*)** %72, align 8
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 %73(%struct.TYPE_24__* %74, i32* %77, i32* %80, i32* %81, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %272

85:                                               ; preds = %68
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 1
  %90 = load i32 (%struct.TYPE_24__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_24__*, i32*, i32*, i32*)** %89, align 8
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 %90(%struct.TYPE_24__* %91, i32* %92, i32* %95, i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %272

99:                                               ; preds = %85
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 1
  %104 = load i32 (%struct.TYPE_24__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_24__*, i32*, i32*, i32*)** %103, align 8
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %106 = load i32*, i32** %14, align 8
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = call i32 %104(%struct.TYPE_24__* %105, i32* %106, i32* %109, i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %272

113:                                              ; preds = %99
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 0
  %118 = load i32 (%struct.TYPE_24__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_24__*, i32*, i32*, i32*, i32*)** %117, align 8
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %120 = load i32*, i32** %15, align 8
  %121 = load i32*, i32** %14, align 8
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = load i32*, i32** %11, align 8
  %126 = call i32 %118(%struct.TYPE_24__* %119, i32* %120, i32* %121, i32* %124, i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %272

128:                                              ; preds = %113
  %129 = load i32*, i32** %16, align 8
  %130 = load i32*, i32** %13, align 8
  %131 = load i32*, i32** %15, align 8
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @BN_mod_sub_quick(i32* %129, i32* %130, i32* %131, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %272

137:                                              ; preds = %128
  %138 = load i32*, i32** %13, align 8
  %139 = load i32*, i32** %13, align 8
  %140 = load i32*, i32** %15, align 8
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @BN_mod_add_quick(i32* %138, i32* %139, i32* %140, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %272

146:                                              ; preds = %137
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 1
  %151 = load i32 (%struct.TYPE_24__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_24__*, i32*, i32*, i32*)** %150, align 8
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %153 = load i32*, i32** %16, align 8
  %154 = load i32*, i32** %16, align 8
  %155 = load i32*, i32** %11, align 8
  %156 = call i32 %151(%struct.TYPE_24__* %152, i32* %153, i32* %154, i32* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %272

158:                                              ; preds = %146
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 0
  %163 = load i32 (%struct.TYPE_24__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_24__*, i32*, i32*, i32*, i32*)** %162, align 8
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %165 = load i32*, i32** %17, align 8
  %166 = load i32*, i32** %14, align 8
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = load i32*, i32** %11, align 8
  %171 = call i32 %163(%struct.TYPE_24__* %164, i32* %165, i32* %166, i32* %169, i32* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %272

173:                                              ; preds = %158
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 0
  %178 = load i32 (%struct.TYPE_24__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_24__*, i32*, i32*, i32*, i32*)** %177, align 8
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %180 = load i32*, i32** %12, align 8
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load i32*, i32** %11, align 8
  %188 = call i32 %178(%struct.TYPE_24__* %179, i32* %180, i32* %183, i32* %186, i32* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %272

190:                                              ; preds = %173
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 0
  %195 = load i32 (%struct.TYPE_24__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_24__*, i32*, i32*, i32*, i32*)** %194, align 8
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %197 = load i32*, i32** %15, align 8
  %198 = load i32*, i32** %12, align 8
  %199 = load i32*, i32** %17, align 8
  %200 = load i32*, i32** %11, align 8
  %201 = call i32 %195(%struct.TYPE_24__* %196, i32* %197, i32* %198, i32* %199, i32* %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %272

203:                                              ; preds = %190
  %204 = load i32*, i32** %15, align 8
  %205 = load i32*, i32** %15, align 8
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @BN_mod_lshift_quick(i32* %204, i32* %205, i32 3, i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %272

211:                                              ; preds = %203
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  %215 = load i32*, i32** %16, align 8
  %216 = load i32*, i32** %15, align 8
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @BN_mod_sub_quick(i32* %214, i32* %215, i32* %216, i32 %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %272

222:                                              ; preds = %211
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 0
  %227 = load i32 (%struct.TYPE_24__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_24__*, i32*, i32*, i32*, i32*)** %226, align 8
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %229 = load i32*, i32** %12, align 8
  %230 = load i32*, i32** %12, align 8
  %231 = load i32*, i32** %13, align 8
  %232 = load i32*, i32** %11, align 8
  %233 = call i32 %227(%struct.TYPE_24__* %228, i32* %229, i32* %230, i32* %231, i32* %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %272

235:                                              ; preds = %222
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 0
  %240 = load i32 (%struct.TYPE_24__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_24__*, i32*, i32*, i32*, i32*)** %239, align 8
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %242 = load i32*, i32** %13, align 8
  %243 = load i32*, i32** %14, align 8
  %244 = load i32*, i32** %17, align 8
  %245 = load i32*, i32** %11, align 8
  %246 = call i32 %240(%struct.TYPE_24__* %241, i32* %242, i32* %243, i32* %244, i32* %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %272

248:                                              ; preds = %235
  %249 = load i32*, i32** %12, align 8
  %250 = load i32*, i32** %12, align 8
  %251 = load i32*, i32** %13, align 8
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @BN_mod_add_quick(i32* %249, i32* %250, i32* %251, i32 %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %272

257:                                              ; preds = %248
  %258 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = load i32*, i32** %12, align 8
  %262 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @BN_mod_lshift_quick(i32* %260, i32* %261, i32 2, i32 %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %257
  %268 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %270 = call i32 @EC_POINT_copy(%struct.TYPE_23__* %268, %struct.TYPE_23__* %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %267, %257, %248, %235, %222, %211, %203, %190, %173, %158, %146, %137, %128, %113, %99, %85, %68, %54, %5
  store i32 0, i32* %6, align 4
  br label %280

273:                                              ; preds = %267
  %274 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %274, i32 0, i32 0
  store i64 0, i64* %275, align 8
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %276, i32 0, i32 0
  store i64 0, i64* %277, align 8
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %278, i32 0, i32 0
  store i64 0, i64* %279, align 8
  store i32 1, i32* %6, align 4
  br label %280

280:                                              ; preds = %273, %272
  %281 = load i32, i32* %6, align 4
  ret i32 %281
}

declare dso_local i32 @BN_mod_sub_quick(i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_mod_add_quick(i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_mod_lshift_quick(i32*, i32*, i32, i32) #1

declare dso_local i32 @EC_POINT_copy(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
