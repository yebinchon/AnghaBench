; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslprepkg.c_ApCheckPackage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslprepkg.c_ApCheckPackage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_27__ = type { %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_23__, %struct.TYPE_21__ }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_25__ = type { i64, i32 }
%struct.TYPE_23__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_21__ = type { i64, i32, i32* }

@ACPI_RTYPE_INTEGER = common dso_local global i32 0, align 4
@AslGbl_MsgBuffer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%4.4s: Package length, %d, must be even.\00", align 1
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_RESERVED_PACKAGE_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ApCheckPackage(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %4, align 8
  %11 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i64 1
  store %struct.TYPE_27__* %12, %struct.TYPE_27__** %6, align 8
  %13 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  store %struct.TYPE_28__* %16, %struct.TYPE_28__** %5, align 8
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %37 [
    i32 140, label %29
    i32 139, label %29
    i32 132, label %29
    i32 131, label %29
    i32 138, label %36
    i32 137, label %36
    i32 136, label %36
    i32 135, label %36
    i32 133, label %36
    i32 134, label %36
    i32 129, label %36
  ]

29:                                               ; preds = %24, %24, %24, %24
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %35 = call i32 @ApZeroLengthPackage(i8* %33, %struct.TYPE_28__* %34)
  br label %38

36:                                               ; preds = %24, %24, %24, %24, %24, %24, %24
  br label %37

37:                                               ; preds = %24, %36
  br label %38

38:                                               ; preds = %37, %29
  br label %376

39:                                               ; preds = %2
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %42, align 8
  store %struct.TYPE_28__* %43, %struct.TYPE_28__** %5, align 8
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %365 [
    i32 128, label %48
    i32 140, label %52
    i32 138, label %103
    i32 139, label %128
    i32 131, label %185
    i32 132, label %207
    i32 130, label %243
    i32 129, label %305
    i32 137, label %356
    i32 135, label %356
    i32 133, label %356
    i32 136, label %356
    i32 134, label %356
  ]

48:                                               ; preds = %39
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %51 = call i32 @ApCustomPackage(%struct.TYPE_28__* %49, %struct.TYPE_27__* %50)
  br label %366

52:                                               ; preds = %39
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %56, %60
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  br label %367

66:                                               ; preds = %52
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @ApPackageTooLarge(i8* %74, %struct.TYPE_28__* %75, i64 %76, i64 %77)
  br label %79

79:                                               ; preds = %70, %66
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @ApCheckPackageElements(i8* %84, %struct.TYPE_28__* %85, i32 %89, i64 %93, i32 %97, i64 %101)
  br label %366

103:                                              ; preds = %39
  store i64 0, i64* %10, align 8
  br label %104

104:                                              ; preds = %124, %103
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* %9, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %104
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load i64, i64* %10, align 8
  %119 = call i32 @ApCheckObjectType(i8* %112, %struct.TYPE_28__* %113, i32 %117, i64 %118)
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %122, align 8
  store %struct.TYPE_28__* %123, %struct.TYPE_28__** %5, align 8
  br label %124

124:                                              ; preds = %108
  %125 = load i64, i64* %10, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %10, align 8
  br label %104

127:                                              ; preds = %104
  br label %366

128:                                              ; preds = %39
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %8, align 8
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* %8, align 8
  %135 = icmp ult i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  br label %367

137:                                              ; preds = %128
  store i64 0, i64* %10, align 8
  br label %138

138:                                              ; preds = %181, %137
  %139 = load i64, i64* %10, align 8
  %140 = load i64, i64* %9, align 8
  %141 = icmp ult i64 %139, %140
  br i1 %141, label %142, label %184

142:                                              ; preds = %138
  %143 = load i64, i64* %10, align 8
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ult i64 %143, %147
  br i1 %148, label %149, label %164

149:                                              ; preds = %142
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* %10, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i64, i64* %10, align 8
  %163 = call i32 @ApCheckObjectType(i8* %153, %struct.TYPE_28__* %154, i32 %161, i64 %162)
  br label %176

164:                                              ; preds = %142
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %170 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i64, i64* %10, align 8
  %175 = call i32 @ApCheckObjectType(i8* %168, %struct.TYPE_28__* %169, i32 %173, i64 %174)
  br label %176

176:                                              ; preds = %164, %149
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_28__*, %struct.TYPE_28__** %179, align 8
  store %struct.TYPE_28__* %180, %struct.TYPE_28__** %5, align 8
  br label %181

181:                                              ; preds = %176
  %182 = load i64, i64* %10, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %10, align 8
  br label %138

184:                                              ; preds = %138
  br label %366

185:                                              ; preds = %39
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %191 = load i32, i32* @ACPI_RTYPE_INTEGER, align 4
  %192 = call i32 @ApCheckObjectType(i8* %189, %struct.TYPE_28__* %190, i32 %191, i64 0)
  %193 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_28__*, %struct.TYPE_28__** %195, align 8
  store %struct.TYPE_28__* %196, %struct.TYPE_28__** %5, align 8
  %197 = load i64, i64* %9, align 8
  %198 = add i64 %197, -1
  store i64 %198, i64* %9, align 8
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %205 = load i64, i64* %9, align 8
  %206 = call i32 @ApCheckPackageList(i8* %202, %struct.TYPE_28__* %203, %struct.TYPE_27__* %204, i32 1, i64 %205)
  br label %366

207:                                              ; preds = %39
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %213 = load i32, i32* @ACPI_RTYPE_INTEGER, align 4
  %214 = call i32 @ApCheckObjectType(i8* %211, %struct.TYPE_28__* %212, i32 %213, i64 0)
  store i32 %214, i32* %7, align 4
  %215 = load i32, i32* %7, align 4
  %216 = call i32 @ACPI_SUCCESS(i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %230

218:                                              ; preds = %207
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  store i64 %223, i64* %8, align 8
  %224 = load i64, i64* %8, align 8
  %225 = load i64, i64* %9, align 8
  %226 = icmp uge i64 %224, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %218
  br label %367

228:                                              ; preds = %218
  %229 = load i64, i64* %8, align 8
  store i64 %229, i64* %9, align 8
  br label %230

230:                                              ; preds = %228, %207
  %231 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_28__*, %struct.TYPE_28__** %233, align 8
  store %struct.TYPE_28__* %234, %struct.TYPE_28__** %5, align 8
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 0
  %238 = load i8*, i8** %237, align 8
  %239 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %240 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %241 = load i64, i64* %9, align 8
  %242 = call i32 @ApCheckPackageList(i8* %238, %struct.TYPE_28__* %239, %struct.TYPE_27__* %240, i32 1, i64 %241)
  br label %366

243:                                              ; preds = %39
  %244 = load i64, i64* %9, align 8
  %245 = and i64 %244, 1
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %263

247:                                              ; preds = %243
  %248 = load i32, i32* @AslGbl_MsgBuffer, align 4
  %249 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  %253 = load i64, i64* %9, align 8
  %254 = call i32 @sprintf(i32 %248, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %252, i64 %253)
  %255 = load i32, i32* @ASL_ERROR, align 4
  %256 = load i32, i32* @ASL_MSG_RESERVED_PACKAGE_LENGTH, align 4
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_28__*, %struct.TYPE_28__** %259, align 8
  %261 = load i32, i32* @AslGbl_MsgBuffer, align 4
  %262 = call i32 @AslError(i32 %255, i32 %256, %struct.TYPE_28__* %260, i32 %261)
  br label %263

263:                                              ; preds = %247, %243
  store i64 0, i64* %10, align 8
  br label %264

264:                                              ; preds = %301, %263
  %265 = load i64, i64* %10, align 8
  %266 = load i64, i64* %9, align 8
  %267 = icmp ult i64 %265, %266
  br i1 %267, label %268, label %304

268:                                              ; preds = %264
  %269 = load i64, i64* %10, align 8
  %270 = and i64 %269, 1
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %284

272:                                              ; preds = %268
  %273 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %274, i32 0, i32 0
  %276 = load i8*, i8** %275, align 8
  %277 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %278 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 4
  %282 = load i64, i64* %10, align 8
  %283 = call i32 @ApCheckObjectType(i8* %276, %struct.TYPE_28__* %277, i32 %281, i64 %282)
  br label %296

284:                                              ; preds = %268
  %285 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %286, i32 0, i32 0
  %288 = load i8*, i8** %287, align 8
  %289 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %290 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 8
  %294 = load i64, i64* %10, align 8
  %295 = call i32 @ApCheckObjectType(i8* %288, %struct.TYPE_28__* %289, i32 %293, i64 %294)
  br label %296

296:                                              ; preds = %284, %272
  %297 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %298, i32 0, i32 0
  %300 = load %struct.TYPE_28__*, %struct.TYPE_28__** %299, align 8
  store %struct.TYPE_28__* %300, %struct.TYPE_28__** %5, align 8
  br label %301

301:                                              ; preds = %296
  %302 = load i64, i64* %10, align 8
  %303 = add i64 %302, 1
  store i64 %303, i64* %10, align 8
  br label %264

304:                                              ; preds = %264
  br label %366

305:                                              ; preds = %39
  %306 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = add i64 %309, 1
  store i64 %310, i64* %8, align 8
  %311 = load i64, i64* %9, align 8
  %312 = load i64, i64* %8, align 8
  %313 = icmp ult i64 %311, %312
  br i1 %313, label %314, label %315

314:                                              ; preds = %305
  br label %367

315:                                              ; preds = %305
  store i64 0, i64* %10, align 8
  br label %316

316:                                              ; preds = %339, %315
  %317 = load i64, i64* %10, align 8
  %318 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = icmp ult i64 %317, %321
  br i1 %322, label %323, label %342

323:                                              ; preds = %316
  %324 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %325, i32 0, i32 0
  %327 = load i8*, i8** %326, align 8
  %328 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %329 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 8
  %333 = load i64, i64* %10, align 8
  %334 = call i32 @ApCheckObjectType(i8* %327, %struct.TYPE_28__* %328, i32 %332, i64 %333)
  %335 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %336, i32 0, i32 0
  %338 = load %struct.TYPE_28__*, %struct.TYPE_28__** %337, align 8
  store %struct.TYPE_28__* %338, %struct.TYPE_28__** %5, align 8
  br label %339

339:                                              ; preds = %323
  %340 = load i64, i64* %10, align 8
  %341 = add i64 %340, 1
  store i64 %341, i64* %10, align 8
  br label %316

342:                                              ; preds = %316
  %343 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %344, i32 0, i32 0
  %346 = load i8*, i8** %345, align 8
  %347 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %348 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %349 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = trunc i64 %352 to i32
  %354 = load i64, i64* %9, align 8
  %355 = call i32 @ApCheckPackageList(i8* %346, %struct.TYPE_28__* %347, %struct.TYPE_27__* %348, i32 %353, i64 %354)
  br label %366

356:                                              ; preds = %39, %39, %39, %39, %39
  %357 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %358, i32 0, i32 0
  %360 = load i8*, i8** %359, align 8
  %361 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %362 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %363 = load i64, i64* %9, align 8
  %364 = call i32 @ApCheckPackageList(i8* %360, %struct.TYPE_28__* %361, %struct.TYPE_27__* %362, i32 0, i64 %363)
  br label %366

365:                                              ; preds = %39
  br label %376

366:                                              ; preds = %356, %342, %304, %230, %185, %184, %127, %80, %48
  br label %376

367:                                              ; preds = %314, %227, %136, %65
  %368 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %369, i32 0, i32 0
  %371 = load i8*, i8** %370, align 8
  %372 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %373 = load i64, i64* %9, align 8
  %374 = load i64, i64* %8, align 8
  %375 = call i32 @ApPackageTooSmall(i8* %371, %struct.TYPE_28__* %372, i64 %373, i64 %374)
  br label %376

376:                                              ; preds = %367, %366, %365, %38
  ret void
}

declare dso_local i32 @ApZeroLengthPackage(i8*, %struct.TYPE_28__*) #1

declare dso_local i32 @ApCustomPackage(%struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local i32 @ApPackageTooLarge(i8*, %struct.TYPE_28__*, i64, i64) #1

declare dso_local i32 @ApCheckPackageElements(i8*, %struct.TYPE_28__*, i32, i64, i32, i64) #1

declare dso_local i32 @ApCheckObjectType(i8*, %struct.TYPE_28__*, i32, i64) #1

declare dso_local i32 @ApCheckPackageList(i8*, %struct.TYPE_28__*, %struct.TYPE_27__*, i32, i64) #1

declare dso_local i32 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i64) #1

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @ApPackageTooSmall(i8*, %struct.TYPE_28__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
