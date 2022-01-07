; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_radix.c_ldns_radix_find_less_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_radix.c_ldns_radix_find_less_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_16__*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_radix_find_less_equal(%struct.TYPE_15__* %0, i64* %1, i64 %2, %struct.TYPE_16__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__**, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_16__** %3, %struct.TYPE_16__*** %9, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = icmp ne %struct.TYPE_15__* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %20 = icmp ne %struct.TYPE_16__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i64*, i64** %7, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21, %16, %4
  %25 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %25, align 8
  store i32 0, i32* %5, align 4
  br label %256

26:                                               ; preds = %21
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %10, align 8
  br label %30

30:                                               ; preds = %236, %26
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %244

34:                                               ; preds = %30
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %11, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %46 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %47 = call i32 @ldns_radix_self_or_prev(%struct.TYPE_16__* %45, %struct.TYPE_16__** %46)
  store i32 0, i32* %5, align 4
  br label %256

48:                                               ; preds = %34
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %12, align 8
  %53 = sub i64 %52, %51
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp uge i64 %54, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %48
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %61 = call %struct.TYPE_16__* @ldns_radix_last_in_subtree_incl_self(%struct.TYPE_16__* %60)
  %62 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  store %struct.TYPE_16__* %61, %struct.TYPE_16__** %62, align 8
  %63 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = icmp eq %struct.TYPE_16__* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %68 = call %struct.TYPE_16__* @ldns_radix_prev(%struct.TYPE_16__* %67)
  %69 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  store %struct.TYPE_16__* %68, %struct.TYPE_16__** %69, align 8
  br label %70

70:                                               ; preds = %66, %59
  store i32 0, i32* %5, align 4
  br label %256

71:                                               ; preds = %48
  %72 = load i64, i64* %11, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %11, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = icmp ne %struct.TYPE_16__* %80, null
  br i1 %81, label %95, label %82

82:                                               ; preds = %71
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %84 = load i64, i64* %12, align 8
  %85 = call %struct.TYPE_16__* @ldns_radix_prev_from_index(%struct.TYPE_16__* %83, i64 %84)
  %86 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  store %struct.TYPE_16__* %85, %struct.TYPE_16__** %86, align 8
  %87 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = icmp eq %struct.TYPE_16__* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %92 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %93 = call i32 @ldns_radix_self_or_prev(%struct.TYPE_16__* %91, %struct.TYPE_16__** %92)
  br label %94

94:                                               ; preds = %90, %82
  store i32 0, i32* %5, align 4
  br label %256

95:                                               ; preds = %71
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = load i64, i64* %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %236

104:                                              ; preds = %95
  %105 = load i64, i64* %11, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = load i64, i64* %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %105, %112
  %114 = load i64, i64* %8, align 8
  %115 = icmp ugt i64 %113, %114
  br i1 %115, label %116, label %167

116:                                              ; preds = %104
  %117 = load i64*, i64** %7, align 8
  %118 = load i64, i64* %11, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = load i64, i64* %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i64, i64* %8, align 8
  %128 = load i64, i64* %11, align 8
  %129 = sub i64 %127, %128
  %130 = call i32 @memcmp(i64* %119, i32 %126, i64 %129)
  %131 = icmp sle i32 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %116
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = load i64, i64* %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %138, align 8
  %140 = call %struct.TYPE_16__* @ldns_radix_prev(%struct.TYPE_16__* %139)
  %141 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  store %struct.TYPE_16__* %140, %struct.TYPE_16__** %141, align 8
  br label %166

142:                                              ; preds = %116
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = load i64, i64* %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %148, align 8
  %150 = call %struct.TYPE_16__* @ldns_radix_last_in_subtree_incl_self(%struct.TYPE_16__* %149)
  %151 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  store %struct.TYPE_16__* %150, %struct.TYPE_16__** %151, align 8
  %152 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %152, align 8
  %154 = icmp eq %struct.TYPE_16__* %153, null
  br i1 %154, label %155, label %165

155:                                              ; preds = %142
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %157, align 8
  %159 = load i64, i64* %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %161, align 8
  %163 = call %struct.TYPE_16__* @ldns_radix_prev(%struct.TYPE_16__* %162)
  %164 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  store %struct.TYPE_16__* %163, %struct.TYPE_16__** %164, align 8
  br label %165

165:                                              ; preds = %155, %142
  br label %166

166:                                              ; preds = %165, %132
  store i32 0, i32* %5, align 4
  br label %256

167:                                              ; preds = %104
  %168 = load i64*, i64** %7, align 8
  %169 = load i64, i64* %11, align 8
  %170 = getelementptr inbounds i64, i64* %168, i64 %169
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = load i64, i64* %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 3
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %179, align 8
  %181 = load i64, i64* %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @memcmp(i64* %170, i32 %177, i64 %184)
  store i32 %185, i32* %13, align 4
  %186 = load i32, i32* %13, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %198

188:                                              ; preds = %167
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 3
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %190, align 8
  %192 = load i64, i64* %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %194, align 8
  %196 = call %struct.TYPE_16__* @ldns_radix_prev(%struct.TYPE_16__* %195)
  %197 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  store %struct.TYPE_16__* %196, %struct.TYPE_16__** %197, align 8
  store i32 0, i32* %5, align 4
  br label %256

198:                                              ; preds = %167
  %199 = load i32, i32* %13, align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %225

201:                                              ; preds = %198
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 3
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %203, align 8
  %205 = load i64, i64* %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %207, align 8
  %209 = call %struct.TYPE_16__* @ldns_radix_last_in_subtree_incl_self(%struct.TYPE_16__* %208)
  %210 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  store %struct.TYPE_16__* %209, %struct.TYPE_16__** %210, align 8
  %211 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %211, align 8
  %213 = icmp eq %struct.TYPE_16__* %212, null
  br i1 %213, label %214, label %224

214:                                              ; preds = %201
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 3
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %216, align 8
  %218 = load i64, i64* %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %220, align 8
  %222 = call %struct.TYPE_16__* @ldns_radix_prev(%struct.TYPE_16__* %221)
  %223 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  store %struct.TYPE_16__* %222, %struct.TYPE_16__** %223, align 8
  br label %224

224:                                              ; preds = %214, %201
  store i32 0, i32* %5, align 4
  br label %256

225:                                              ; preds = %198
  br label %226

226:                                              ; preds = %225
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 3
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %228, align 8
  %230 = load i64, i64* %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* %11, align 8
  %235 = add i64 %234, %233
  store i64 %235, i64* %11, align 8
  br label %236

236:                                              ; preds = %226, %95
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 3
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %238, align 8
  %240 = load i64, i64* %12, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %242, align 8
  store %struct.TYPE_16__* %243, %struct.TYPE_16__** %10, align 8
  br label %30

244:                                              ; preds = %30
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %244
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %251 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  store %struct.TYPE_16__* %250, %struct.TYPE_16__** %251, align 8
  store i32 1, i32* %5, align 4
  br label %256

252:                                              ; preds = %244
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %254 = call %struct.TYPE_16__* @ldns_radix_prev(%struct.TYPE_16__* %253)
  %255 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  store %struct.TYPE_16__* %254, %struct.TYPE_16__** %255, align 8
  store i32 0, i32* %5, align 4
  br label %256

256:                                              ; preds = %252, %249, %224, %188, %166, %94, %70, %44, %24
  %257 = load i32, i32* %5, align 4
  ret i32 %257
}

declare dso_local i32 @ldns_radix_self_or_prev(%struct.TYPE_16__*, %struct.TYPE_16__**) #1

declare dso_local %struct.TYPE_16__* @ldns_radix_last_in_subtree_incl_self(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @ldns_radix_prev(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @ldns_radix_prev_from_index(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @memcmp(i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
