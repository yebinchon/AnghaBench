; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_radix.c_isc_radix_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_radix.c_isc_radix_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.TYPE_7__*, i32*, %struct.TYPE_7__*, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isc_radix_remove(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @REQUIRE(i32 %9)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @REQUIRE(i32 %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %48

19:                                               ; preds = %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = icmp ne %struct.TYPE_7__* %22, null
  br i1 %23, label %24, label %48

24:                                               ; preds = %19
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @_deref_prefix(i32 %32, i32* %35)
  br label %37

37:                                               ; preds = %29, %24
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  %42 = load i32**, i32*** %41, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 1
  store i32* null, i32** %43, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 4
  %46 = load i32**, i32*** %45, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 0
  store i32* null, i32** %47, align 8
  br label %258

48:                                               ; preds = %19, %2
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = icmp eq %struct.TYPE_7__* %51, null
  br i1 %52, label %53, label %182

53:                                               ; preds = %48
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = icmp eq %struct.TYPE_7__* %56, null
  br i1 %57, label %58, label %182

58:                                               ; preds = %53
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %5, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @_deref_prefix(i32 %64, i32* %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = call i32 @isc_mem_put(i32 %71, %struct.TYPE_7__* %72, i32 40)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %75, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = icmp eq %struct.TYPE_7__* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %58
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = icmp eq %struct.TYPE_7__* %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @INSIST(i32 %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %89, align 8
  br label %258

90:                                               ; preds = %58
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = icmp eq %struct.TYPE_7__* %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %98, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  store %struct.TYPE_7__* %101, %struct.TYPE_7__** %6, align 8
  br label %115

102:                                              ; preds = %90
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = icmp eq %struct.TYPE_7__* %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @INSIST(i32 %108)
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %111, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  store %struct.TYPE_7__* %114, %struct.TYPE_7__** %6, align 8
  br label %115

115:                                              ; preds = %102, %96
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %258

121:                                              ; preds = %115
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = icmp eq %struct.TYPE_7__* %124, null
  br i1 %125, label %126, label %137

126:                                              ; preds = %121
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %131 = icmp eq %struct.TYPE_7__* %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @INSIST(i32 %132)
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  store %struct.TYPE_7__* %134, %struct.TYPE_7__** %136, align 8
  br label %167

137:                                              ; preds = %121
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %144 = icmp eq %struct.TYPE_7__* %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %137
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  store %struct.TYPE_7__* %146, %struct.TYPE_7__** %150, align 8
  br label %166

151:                                              ; preds = %137
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %158 = icmp eq %struct.TYPE_7__* %156, %157
  %159 = zext i1 %158 to i32
  %160 = call i32 @INSIST(i32 %159)
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  store %struct.TYPE_7__* %161, %struct.TYPE_7__** %165, align 8
  br label %166

166:                                              ; preds = %151, %145
  br label %167

167:                                              ; preds = %166, %126
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 3
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 3
  store %struct.TYPE_7__* %170, %struct.TYPE_7__** %172, align 8
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %177 = call i32 @isc_mem_put(i32 %175, %struct.TYPE_7__* %176, i32 40)
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %179, align 8
  br label %258

182:                                              ; preds = %53, %48
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %184, align 8
  %186 = icmp ne %struct.TYPE_7__* %185, null
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  store %struct.TYPE_7__* %190, %struct.TYPE_7__** %6, align 8
  br label %201

191:                                              ; preds = %182
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %193, align 8
  %195 = icmp ne %struct.TYPE_7__* %194, null
  %196 = zext i1 %195 to i32
  %197 = call i32 @INSIST(i32 %196)
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  store %struct.TYPE_7__* %200, %struct.TYPE_7__** %6, align 8
  br label %201

201:                                              ; preds = %191, %187
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 3
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %203, align 8
  store %struct.TYPE_7__* %204, %struct.TYPE_7__** %5, align 8
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 3
  store %struct.TYPE_7__* %205, %struct.TYPE_7__** %207, align 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = call i32 @_deref_prefix(i32 %210, i32* %213)
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %219 = call i32 @isc_mem_put(i32 %217, %struct.TYPE_7__* %218, i32 40)
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = add nsw i32 %222, -1
  store i32 %223, i32* %221, align 8
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %225 = icmp eq %struct.TYPE_7__* %224, null
  br i1 %225, label %226, label %237

226:                                              ; preds = %201
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %228, align 8
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %231 = icmp eq %struct.TYPE_7__* %229, %230
  %232 = zext i1 %231 to i32
  %233 = call i32 @INSIST(i32 %232)
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 0
  store %struct.TYPE_7__* %234, %struct.TYPE_7__** %236, align 8
  br label %258

237:                                              ; preds = %201
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %239, align 8
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %242 = icmp eq %struct.TYPE_7__* %240, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %237
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 1
  store %struct.TYPE_7__* %244, %struct.TYPE_7__** %246, align 8
  br label %258

247:                                              ; preds = %237
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %249, align 8
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %252 = icmp eq %struct.TYPE_7__* %250, %251
  %253 = zext i1 %252 to i32
  %254 = call i32 @INSIST(i32 %253)
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 0
  store %struct.TYPE_7__* %255, %struct.TYPE_7__** %257, align 8
  br label %258

258:                                              ; preds = %37, %80, %120, %167, %226, %247, %243
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @_deref_prefix(i32, i32*) #1

declare dso_local i32 @isc_mem_put(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @INSIST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
