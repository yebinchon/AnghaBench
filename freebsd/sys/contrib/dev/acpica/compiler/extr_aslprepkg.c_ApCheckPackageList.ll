; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslprepkg.c_ApCheckPackageList.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslprepkg.c_ApCheckPackageList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_21__*, %struct.TYPE_17__, %struct.TYPE_21__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_18__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_16__ = type { i64, i32* }
%struct.TYPE_15__ = type { i64, i32 }

@ACPI_RTYPE_PACKAGE = common dso_local global i32 0, align 4
@ACPI_RTYPE_INTEGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_21__*, %struct.TYPE_20__*, i64, i64)* @ApCheckPackageList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ApCheckPackageList(i8* %0, %struct.TYPE_21__* %1, %struct.TYPE_20__* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %11, align 8
  store i64 0, i64* %16, align 8
  br label %19

19:                                               ; preds = %335, %5
  %20 = load i64, i64* %16, align 8
  %21 = load i64, i64* %10, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %25 = icmp ne %struct.TYPE_21__* %24, null
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi i1 [ false, %19 ], [ %25, %23 ]
  br i1 %27, label %28, label %338

28:                                               ; preds = %26
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %31 = load i32, i32* @ACPI_RTYPE_PACKAGE, align 4
  %32 = load i64, i64* %16, align 8
  %33 = load i64, i64* %9, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @ApCheckObjectType(i8* %29, %struct.TYPE_21__* %30, i32 %31, i64 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i64 @ACPI_FAILURE(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %330

40:                                               ; preds = %28
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %43, align 8
  store %struct.TYPE_21__* %44, %struct.TYPE_21__** %12, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %14, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %52, align 8
  store %struct.TYPE_21__* %53, %struct.TYPE_21__** %12, align 8
  %54 = load i64, i64* %14, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %40
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 128
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i8*, i8** %6, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %65 = call i32 @ApZeroLengthPackage(i8* %63, %struct.TYPE_21__* %64)
  br label %330

66:                                               ; preds = %56, %40
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %328 [
    i32 135, label %71
    i32 130, label %71
    i32 129, label %71
    i32 132, label %120
    i32 128, label %161
    i32 133, label %189
    i32 131, label %238
    i32 134, label %261
  ]

71:                                               ; preds = %66, %66, %66
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %75, %79
  store i64 %80, i64* %15, align 8
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* %15, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %71
  %85 = load i8*, i8** %6, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* %15, align 8
  %89 = call i32 @ApPackageTooSmall(i8* %85, %struct.TYPE_21__* %86, i64 %87, i64 %88)
  br label %329

90:                                               ; preds = %71
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* %15, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i8*, i8** %6, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %97 = load i64, i64* %14, align 8
  %98 = load i64, i64* %15, align 8
  %99 = call i32 @ApPackageTooLarge(i8* %95, %struct.TYPE_21__* %96, i64 %97, i64 %98)
  br label %329

100:                                              ; preds = %90
  %101 = load i8*, i8** %6, align 8
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @ApCheckPackageElements(i8* %101, %struct.TYPE_21__* %102, i32 %106, i64 %110, i32 %114, i64 %118)
  br label %329

120:                                              ; preds = %66
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %124, %128
  store i64 %129, i64* %15, align 8
  %130 = load i64, i64* %14, align 8
  %131 = load i64, i64* %15, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %120
  %134 = load i8*, i8** %6, align 8
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %136 = load i64, i64* %14, align 8
  %137 = load i64, i64* %15, align 8
  %138 = call i32 @ApPackageTooSmall(i8* %134, %struct.TYPE_21__* %135, i64 %136, i64 %137)
  br label %329

139:                                              ; preds = %120
  %140 = load i8*, i8** %6, align 8
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = load i64, i64* %14, align 8
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = sub nsw i64 %154, %158
  %160 = call i32 @ApCheckPackageElements(i8* %140, %struct.TYPE_21__* %141, i32 %145, i64 %149, i32 %153, i64 %159)
  br label %329

161:                                              ; preds = %66
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %15, align 8
  %166 = load i64, i64* %15, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %161
  %169 = load i64, i64* %14, align 8
  %170 = load i64, i64* %15, align 8
  %171 = icmp slt i64 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %168
  %173 = load i8*, i8** %6, align 8
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %175 = load i64, i64* %14, align 8
  %176 = call i32 @ApPackageTooSmall(i8* %173, %struct.TYPE_21__* %174, i64 %175, i64 1)
  br label %329

177:                                              ; preds = %168, %161
  %178 = load i8*, i8** %6, align 8
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @ApCheckPackageElements(i8* %178, %struct.TYPE_21__* %179, i32 %183, i64 %187, i32 0, i64 0)
  br label %329

189:                                              ; preds = %66
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  store i64 %193, i64* %15, align 8
  %194 = load i64, i64* %14, align 8
  %195 = load i64, i64* %15, align 8
  %196 = icmp slt i64 %194, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %189
  %198 = load i8*, i8** %6, align 8
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %200 = load i64, i64* %14, align 8
  %201 = load i64, i64* %15, align 8
  %202 = call i32 @ApPackageTooSmall(i8* %198, %struct.TYPE_21__* %199, i64 %200, i64 %201)
  br label %329

203:                                              ; preds = %189
  %204 = load i64, i64* %14, align 8
  %205 = load i64, i64* %15, align 8
  %206 = icmp sgt i64 %204, %205
  br i1 %206, label %207, label %213

207:                                              ; preds = %203
  %208 = load i8*, i8** %6, align 8
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %210 = load i64, i64* %14, align 8
  %211 = load i64, i64* %15, align 8
  %212 = call i32 @ApPackageTooLarge(i8* %208, %struct.TYPE_21__* %209, i64 %210, i64 %211)
  br label %329

213:                                              ; preds = %203
  store i64 0, i64* %17, align 8
  br label %214

214:                                              ; preds = %234, %213
  %215 = load i64, i64* %17, align 8
  %216 = load i64, i64* %15, align 8
  %217 = icmp slt i64 %215, %216
  br i1 %217, label %218, label %237

218:                                              ; preds = %214
  %219 = load i8*, i8** %6, align 8
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = load i64, i64* %17, align 8
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = load i64, i64* %17, align 8
  %229 = call i32 @ApCheckObjectType(i8* %219, %struct.TYPE_21__* %220, i32 %227, i64 %228)
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %232, align 8
  store %struct.TYPE_21__* %233, %struct.TYPE_21__** %12, align 8
  br label %234

234:                                              ; preds = %218
  %235 = load i64, i64* %17, align 8
  %236 = add nsw i64 %235, 1
  store i64 %236, i64* %17, align 8
  br label %214

237:                                              ; preds = %214
  br label %329

238:                                              ; preds = %66
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %15, align 8
  %243 = load i64, i64* %14, align 8
  %244 = load i64, i64* %15, align 8
  %245 = icmp slt i64 %243, %244
  br i1 %245, label %246, label %252

246:                                              ; preds = %238
  %247 = load i8*, i8** %6, align 8
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %249 = load i64, i64* %14, align 8
  %250 = load i64, i64* %15, align 8
  %251 = call i32 @ApPackageTooSmall(i8* %247, %struct.TYPE_21__* %248, i64 %249, i64 %250)
  br label %329

252:                                              ; preds = %238
  %253 = load i8*, i8** %6, align 8
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 8
  %259 = load i64, i64* %14, align 8
  %260 = call i32 @ApCheckPackageElements(i8* %253, %struct.TYPE_21__* %254, i32 %258, i64 %259, i32 0, i64 0)
  br label %329

261:                                              ; preds = %66
  %262 = load i8*, i8** %6, align 8
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %264 = load i32, i32* @ACPI_RTYPE_INTEGER, align 4
  %265 = call i32 @ApCheckObjectType(i8* %262, %struct.TYPE_21__* %263, i32 %264, i64 0)
  store i32 %265, i32* %13, align 4
  %266 = load i32, i32* %13, align 4
  %267 = call i32 @ACPI_SUCCESS(i32 %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %314

269:                                              ; preds = %261
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  store i64 %274, i64* %15, align 8
  %275 = load i64, i64* %14, align 8
  %276 = load i64, i64* %15, align 8
  %277 = icmp slt i64 %275, %276
  br i1 %277, label %278, label %284

278:                                              ; preds = %269
  %279 = load i8*, i8** %6, align 8
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %281 = load i64, i64* %14, align 8
  %282 = load i64, i64* %15, align 8
  %283 = call i32 @ApPackageTooSmall(i8* %279, %struct.TYPE_21__* %280, i64 %281, i64 %282)
  br label %329

284:                                              ; preds = %269
  %285 = load i64, i64* %14, align 8
  %286 = load i64, i64* %15, align 8
  %287 = icmp sgt i64 %285, %286
  br i1 %287, label %288, label %294

288:                                              ; preds = %284
  %289 = load i8*, i8** %6, align 8
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %291 = load i64, i64* %14, align 8
  %292 = load i64, i64* %15, align 8
  %293 = call i32 @ApPackageTooLarge(i8* %289, %struct.TYPE_21__* %290, i64 %291, i64 %292)
  br label %294

294:                                              ; preds = %288, %284
  br label %295

295:                                              ; preds = %294
  %296 = load i64, i64* %14, align 8
  %297 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = icmp slt i64 %296, %300
  br i1 %301, label %302, label %312

302:                                              ; preds = %295
  %303 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  store i64 %306, i64* %15, align 8
  %307 = load i8*, i8** %6, align 8
  %308 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %309 = load i64, i64* %14, align 8
  %310 = load i64, i64* %15, align 8
  %311 = call i32 @ApPackageTooSmall(i8* %307, %struct.TYPE_21__* %308, i64 %309, i64 %310)
  br label %329

312:                                              ; preds = %295
  %313 = load i64, i64* %15, align 8
  store i64 %313, i64* %14, align 8
  br label %314

314:                                              ; preds = %312, %261
  %315 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %316 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %316, i32 0, i32 0
  %318 = load %struct.TYPE_21__*, %struct.TYPE_21__** %317, align 8
  store %struct.TYPE_21__* %318, %struct.TYPE_21__** %12, align 8
  %319 = load i8*, i8** %6, align 8
  %320 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %321 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 8
  %325 = load i64, i64* %14, align 8
  %326 = sub nsw i64 %325, 1
  %327 = call i32 @ApCheckPackageElements(i8* %319, %struct.TYPE_21__* %320, i32 %324, i64 %326, i32 0, i64 0)
  br label %329

328:                                              ; preds = %66
  br label %329

329:                                              ; preds = %328, %314, %302, %278, %252, %246, %237, %207, %197, %177, %172, %139, %133, %100, %94, %84
  br label %330

330:                                              ; preds = %329, %62, %39
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %332 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %332, i32 0, i32 0
  %334 = load %struct.TYPE_21__*, %struct.TYPE_21__** %333, align 8
  store %struct.TYPE_21__* %334, %struct.TYPE_21__** %11, align 8
  br label %335

335:                                              ; preds = %330
  %336 = load i64, i64* %16, align 8
  %337 = add nsw i64 %336, 1
  store i64 %337, i64* %16, align 8
  br label %19

338:                                              ; preds = %26
  ret void
}

declare dso_local i32 @ApCheckObjectType(i8*, %struct.TYPE_21__*, i32, i64) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ApZeroLengthPackage(i8*, %struct.TYPE_21__*) #1

declare dso_local i32 @ApPackageTooSmall(i8*, %struct.TYPE_21__*, i64, i64) #1

declare dso_local i32 @ApPackageTooLarge(i8*, %struct.TYPE_21__*, i64, i64) #1

declare dso_local i32 @ApCheckPackageElements(i8*, %struct.TYPE_21__*, i32, i64, i32, i64) #1

declare dso_local i32 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
