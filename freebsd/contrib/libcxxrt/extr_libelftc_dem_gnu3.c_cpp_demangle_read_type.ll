; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i64, i32, i32, i8*, %struct.vector_str, %struct.vector_str, %struct.vector_str }
%struct.vector_str = type { i32, i32* }
%struct.vector_type_qualifier = type { %struct.vector_str }

@.str = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"signed char\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@TYPE_CMX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"decimal64\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"decimal128\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"decimal32\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"char32_t\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"decltype(nullptr)\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"char16_t\00", align 1
@TYPE_VEC = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"long double\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"__float128\00", align 1
@TYPE_IMG = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@TYPE_CST = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"__int128\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"unsigned __int128\00", align 1
@TYPE_PTR = common dso_local global i32 0, align 4
@TYPE_RST = common dso_local global i32 0, align 4
@TYPE_REF = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@TYPE_EXT = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@TYPE_VAT = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [8 x i8] c"wchar_t\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"long long\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"unsigned long long\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*, i32)* @cpp_demangle_read_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_type(%struct.cpp_demangle_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpp_demangle_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vector_type_qualifier, align 8
  %7 = alloca %struct.vector_str*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %17 = icmp eq %struct.cpp_demangle_data* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %736

19:                                               ; preds = %2
  %20 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %21 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %20, i32 0, i32 5
  store %struct.vector_str* %21, %struct.vector_str** %7, align 8
  %22 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %23 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %19
  %28 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %29 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %33 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %31, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strncmp(i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %27
  %43 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %44 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %48 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %47, i32 0, i32 4
  store %struct.vector_str* %48, %struct.vector_str** %7, align 8
  br label %109

49:                                               ; preds = %27, %19
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %108

52:                                               ; preds = %49
  %53 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %54 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %86

57:                                               ; preds = %52
  %58 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %59 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %736

62:                                               ; preds = %57
  %63 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %64 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %736

69:                                               ; preds = %62
  %70 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %71 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %70, i32 0, i32 1
  store i32 1, i32* %71, align 8
  %72 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %73 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %72, i32 0, i32 2
  store i32 1, i32* %73, align 4
  %74 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %75 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %81 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %80, i32 0, i32 6
  %82 = call i32 @vector_str_pop(%struct.vector_str* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %736

85:                                               ; preds = %79, %69
  br label %86

86:                                               ; preds = %85, %52
  %87 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %88 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %93 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %92, i32 0, i32 2
  store i32 0, i32* %93, align 4
  br label %107

94:                                               ; preds = %86
  %95 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %96 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %95, i32 0, i32 3
  %97 = load i8*, i8** %96, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 73
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %103 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %736

106:                                              ; preds = %101, %94
  br label %107

107:                                              ; preds = %106, %91
  br label %108

108:                                              ; preds = %107, %49
  br label %109

109:                                              ; preds = %108, %42
  %110 = load %struct.vector_str*, %struct.vector_str** %7, align 8
  %111 = icmp ne %struct.vector_str* %110, null
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = call i32 @vector_type_qualifier_init(%struct.vector_type_qualifier* %6)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %736

117:                                              ; preds = %109
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %118 = load %struct.vector_str*, %struct.vector_str** %7, align 8
  %119 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  store i64 %121, i64* %8, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %13, align 8
  br label %122

122:                                              ; preds = %576, %560, %484, %474, %464, %408, %368, %324, %159, %117
  %123 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %124 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %123, i32 0, i32 3
  %125 = load i8*, i8** %124, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  switch i32 %127, label %621 [
    i32 97, label %128
    i32 65, label %138
    i32 98, label %144
    i32 67, label %154
    i32 99, label %164
    i32 100, label %174
    i32 68, label %184
    i32 101, label %327
    i32 102, label %337
    i32 70, label %347
    i32 103, label %353
    i32 71, label %363
    i32 104, label %373
    i32 105, label %383
    i32 106, label %393
    i32 75, label %403
    i32 108, label %413
    i32 109, label %423
    i32 77, label %433
    i32 110, label %439
    i32 111, label %449
    i32 80, label %459
    i32 114, label %469
    i32 82, label %479
    i32 115, label %489
    i32 83, label %499
    i32 116, label %505
    i32 84, label %515
    i32 117, label %521
    i32 85, label %531
    i32 118, label %561
    i32 86, label %571
    i32 119, label %581
    i32 120, label %591
    i32 121, label %601
    i32 122, label %611
  ]

128:                                              ; preds = %122
  %129 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %130 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 11)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  br label %728

133:                                              ; preds = %128
  %134 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %135 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %134, i32 0, i32 3
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %135, align 8
  br label %627

138:                                              ; preds = %122
  %139 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %140 = call i32 @cpp_demangle_read_array(%struct.cpp_demangle_data* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  br label %728

143:                                              ; preds = %138
  store i32 0, i32* %11, align 4
  br label %627

144:                                              ; preds = %122
  %145 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %146 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %144
  br label %728

149:                                              ; preds = %144
  %150 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %151 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %150, i32 0, i32 3
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %151, align 8
  br label %627

154:                                              ; preds = %122
  %155 = load i32, i32* @TYPE_CMX, align 4
  %156 = call i32 @vector_type_qualifier_push(%struct.vector_type_qualifier* %6, i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %154
  br label %728

159:                                              ; preds = %154
  %160 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %161 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %160, i32 0, i32 3
  %162 = load i8*, i8** %161, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %161, align 8
  br label %122

164:                                              ; preds = %122
  %165 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %166 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %164
  br label %728

169:                                              ; preds = %164
  %170 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %171 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %170, i32 0, i32 3
  %172 = load i8*, i8** %171, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %171, align 8
  br label %627

174:                                              ; preds = %122
  %175 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %176 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %175, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 6)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %174
  br label %728

179:                                              ; preds = %174
  %180 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %181 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %180, i32 0, i32 3
  %182 = load i8*, i8** %181, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %181, align 8
  br label %627

184:                                              ; preds = %122
  %185 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %186 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %185, i32 0, i32 3
  %187 = load i8*, i8** %186, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %186, align 8
  %189 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %190 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %189, i32 0, i32 3
  %191 = load i8*, i8** %190, align 8
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  switch i32 %193, label %325 [
    i32 100, label %194
    i32 101, label %204
    i32 102, label %214
    i32 104, label %224
    i32 105, label %234
    i32 110, label %244
    i32 115, label %254
    i32 118, label %264
  ]

194:                                              ; preds = %184
  %195 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %196 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %195, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 9)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %194
  br label %728

199:                                              ; preds = %194
  %200 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %201 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %200, i32 0, i32 3
  %202 = load i8*, i8** %201, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %201, align 8
  br label %326

204:                                              ; preds = %184
  %205 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %206 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %205, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 10)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %204
  br label %728

209:                                              ; preds = %204
  %210 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %211 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %210, i32 0, i32 3
  %212 = load i8*, i8** %211, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %211, align 8
  br label %326

214:                                              ; preds = %184
  %215 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %216 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %215, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 9)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %214
  br label %728

219:                                              ; preds = %214
  %220 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %221 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %220, i32 0, i32 3
  %222 = load i8*, i8** %221, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %221, align 8
  br label %326

224:                                              ; preds = %184
  %225 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %226 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %225, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %224
  br label %728

229:                                              ; preds = %224
  %230 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %231 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %230, i32 0, i32 3
  %232 = load i8*, i8** %231, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %231, align 8
  br label %326

234:                                              ; preds = %184
  %235 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %236 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %235, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 8)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %234
  br label %728

239:                                              ; preds = %234
  %240 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %241 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %240, i32 0, i32 3
  %242 = load i8*, i8** %241, align 8
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** %241, align 8
  br label %326

244:                                              ; preds = %184
  %245 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %246 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %245, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 17)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %249, label %248

248:                                              ; preds = %244
  br label %728

249:                                              ; preds = %244
  %250 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %251 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %250, i32 0, i32 3
  %252 = load i8*, i8** %251, align 8
  %253 = getelementptr inbounds i8, i8* %252, i32 1
  store i8* %253, i8** %251, align 8
  br label %326

254:                                              ; preds = %184
  %255 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %256 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %255, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 8)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %259, label %258

258:                                              ; preds = %254
  br label %728

259:                                              ; preds = %254
  %260 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %261 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %260, i32 0, i32 3
  %262 = load i8*, i8** %261, align 8
  %263 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %263, i8** %261, align 8
  br label %326

264:                                              ; preds = %184
  %265 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %266 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %265, i32 0, i32 3
  %267 = load i8*, i8** %266, align 8
  %268 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %268, i8** %266, align 8
  %269 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %270 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %269, i32 0, i32 3
  %271 = load i8*, i8** %270, align 8
  %272 = load i8, i8* %271, align 1
  %273 = sext i8 %272 to i32
  %274 = icmp eq i32 %273, 95
  br i1 %274, label %275, label %293

275:                                              ; preds = %264
  %276 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %277 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %276, i32 0, i32 3
  %278 = load i8*, i8** %277, align 8
  %279 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %279, i8** %277, align 8
  %280 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %281 = call i32 @cpp_demangle_read_expression_flat(%struct.cpp_demangle_data* %280, i8** %14)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %284, label %283

283:                                              ; preds = %275
  br label %728

284:                                              ; preds = %275
  %285 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %6, i32 0, i32 0
  %286 = load i8*, i8** %14, align 8
  %287 = load i8*, i8** %14, align 8
  %288 = call i32 @strlen(i8* %287)
  %289 = call i32 @vector_str_push(%struct.vector_str* %285, i8* %286, i32 %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %292, label %291

291:                                              ; preds = %284
  br label %728

292:                                              ; preds = %284
  br label %307

293:                                              ; preds = %264
  %294 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %295 = call i32 @cpp_demangle_read_number_as_string(%struct.cpp_demangle_data* %294, i8** %15)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %298, label %297

297:                                              ; preds = %293
  br label %728

298:                                              ; preds = %293
  %299 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %6, i32 0, i32 0
  %300 = load i8*, i8** %15, align 8
  %301 = load i8*, i8** %15, align 8
  %302 = call i32 @strlen(i8* %301)
  %303 = call i32 @vector_str_push(%struct.vector_str* %299, i8* %300, i32 %302)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %306, label %305

305:                                              ; preds = %298
  br label %728

306:                                              ; preds = %298
  br label %307

307:                                              ; preds = %306, %292
  %308 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %309 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %308, i32 0, i32 3
  %310 = load i8*, i8** %309, align 8
  %311 = load i8, i8* %310, align 1
  %312 = sext i8 %311 to i32
  %313 = icmp ne i32 %312, 95
  br i1 %313, label %314, label %315

314:                                              ; preds = %307
  br label %728

315:                                              ; preds = %307
  %316 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %317 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %316, i32 0, i32 3
  %318 = load i8*, i8** %317, align 8
  %319 = getelementptr inbounds i8, i8* %318, i32 1
  store i8* %319, i8** %317, align 8
  %320 = load i32, i32* @TYPE_VEC, align 4
  %321 = call i32 @vector_type_qualifier_push(%struct.vector_type_qualifier* %6, i32 %320)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %324, label %323

323:                                              ; preds = %315
  br label %728

324:                                              ; preds = %315
  br label %122

325:                                              ; preds = %184
  br label %728

326:                                              ; preds = %259, %249, %239, %229, %219, %209, %199
  br label %627

327:                                              ; preds = %122
  %328 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %329 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %328, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 11)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %332, label %331

331:                                              ; preds = %327
  br label %728

332:                                              ; preds = %327
  %333 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %334 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %333, i32 0, i32 3
  %335 = load i8*, i8** %334, align 8
  %336 = getelementptr inbounds i8, i8* %335, i32 1
  store i8* %336, i8** %334, align 8
  br label %627

337:                                              ; preds = %122
  %338 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %339 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %338, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 5)
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %342, label %341

341:                                              ; preds = %337
  br label %728

342:                                              ; preds = %337
  %343 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %344 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %343, i32 0, i32 3
  %345 = load i8*, i8** %344, align 8
  %346 = getelementptr inbounds i8, i8* %345, i32 1
  store i8* %346, i8** %344, align 8
  br label %627

347:                                              ; preds = %122
  %348 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %349 = call i32 @cpp_demangle_read_function(%struct.cpp_demangle_data* %348, i32* %10, %struct.vector_type_qualifier* %6)
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %352, label %351

351:                                              ; preds = %347
  br label %728

352:                                              ; preds = %347
  store i32 0, i32* %11, align 4
  br label %627

353:                                              ; preds = %122
  %354 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %355 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %354, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i32 10)
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %358, label %357

357:                                              ; preds = %353
  br label %728

358:                                              ; preds = %353
  %359 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %360 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %359, i32 0, i32 3
  %361 = load i8*, i8** %360, align 8
  %362 = getelementptr inbounds i8, i8* %361, i32 1
  store i8* %362, i8** %360, align 8
  br label %627

363:                                              ; preds = %122
  %364 = load i32, i32* @TYPE_IMG, align 4
  %365 = call i32 @vector_type_qualifier_push(%struct.vector_type_qualifier* %6, i32 %364)
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %368, label %367

367:                                              ; preds = %363
  br label %728

368:                                              ; preds = %363
  %369 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %370 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %369, i32 0, i32 3
  %371 = load i8*, i8** %370, align 8
  %372 = getelementptr inbounds i8, i8* %371, i32 1
  store i8* %372, i8** %370, align 8
  br label %122

373:                                              ; preds = %122
  %374 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %375 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %374, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 13)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %378, label %377

377:                                              ; preds = %373
  br label %728

378:                                              ; preds = %373
  %379 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %380 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %379, i32 0, i32 3
  %381 = load i8*, i8** %380, align 8
  %382 = getelementptr inbounds i8, i8* %381, i32 1
  store i8* %382, i8** %380, align 8
  br label %627

383:                                              ; preds = %122
  %384 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %385 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %384, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 3)
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %388, label %387

387:                                              ; preds = %383
  br label %728

388:                                              ; preds = %383
  %389 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %390 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %389, i32 0, i32 3
  %391 = load i8*, i8** %390, align 8
  %392 = getelementptr inbounds i8, i8* %391, i32 1
  store i8* %392, i8** %390, align 8
  br label %627

393:                                              ; preds = %122
  %394 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %395 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %394, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32 12)
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %398, label %397

397:                                              ; preds = %393
  br label %728

398:                                              ; preds = %393
  %399 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %400 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %399, i32 0, i32 3
  %401 = load i8*, i8** %400, align 8
  %402 = getelementptr inbounds i8, i8* %401, i32 1
  store i8* %402, i8** %400, align 8
  br label %627

403:                                              ; preds = %122
  %404 = load i32, i32* @TYPE_CST, align 4
  %405 = call i32 @vector_type_qualifier_push(%struct.vector_type_qualifier* %6, i32 %404)
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %408, label %407

407:                                              ; preds = %403
  br label %728

408:                                              ; preds = %403
  %409 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %410 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %409, i32 0, i32 3
  %411 = load i8*, i8** %410, align 8
  %412 = getelementptr inbounds i8, i8* %411, i32 1
  store i8* %412, i8** %410, align 8
  br label %122

413:                                              ; preds = %122
  %414 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %415 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %414, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 4)
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %418, label %417

417:                                              ; preds = %413
  br label %728

418:                                              ; preds = %413
  %419 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %420 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %419, i32 0, i32 3
  %421 = load i8*, i8** %420, align 8
  %422 = getelementptr inbounds i8, i8* %421, i32 1
  store i8* %422, i8** %420, align 8
  br label %627

423:                                              ; preds = %122
  %424 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %425 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %424, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32 13)
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %428, label %427

427:                                              ; preds = %423
  br label %728

428:                                              ; preds = %423
  %429 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %430 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %429, i32 0, i32 3
  %431 = load i8*, i8** %430, align 8
  %432 = getelementptr inbounds i8, i8* %431, i32 1
  store i8* %432, i8** %430, align 8
  br label %627

433:                                              ; preds = %122
  %434 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %435 = call i32 @cpp_demangle_read_pointer_to_member(%struct.cpp_demangle_data* %434)
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %438, label %437

437:                                              ; preds = %433
  br label %728

438:                                              ; preds = %433
  store i32 0, i32* %11, align 4
  br label %627

439:                                              ; preds = %122
  %440 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %441 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %440, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i32 8)
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %444, label %443

443:                                              ; preds = %439
  br label %728

444:                                              ; preds = %439
  %445 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %446 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %445, i32 0, i32 3
  %447 = load i8*, i8** %446, align 8
  %448 = getelementptr inbounds i8, i8* %447, i32 1
  store i8* %448, i8** %446, align 8
  br label %627

449:                                              ; preds = %122
  %450 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %451 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %450, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 17)
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %454, label %453

453:                                              ; preds = %449
  br label %728

454:                                              ; preds = %449
  %455 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %456 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %455, i32 0, i32 3
  %457 = load i8*, i8** %456, align 8
  %458 = getelementptr inbounds i8, i8* %457, i32 1
  store i8* %458, i8** %456, align 8
  br label %627

459:                                              ; preds = %122
  %460 = load i32, i32* @TYPE_PTR, align 4
  %461 = call i32 @vector_type_qualifier_push(%struct.vector_type_qualifier* %6, i32 %460)
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %464, label %463

463:                                              ; preds = %459
  br label %728

464:                                              ; preds = %459
  %465 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %466 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %465, i32 0, i32 3
  %467 = load i8*, i8** %466, align 8
  %468 = getelementptr inbounds i8, i8* %467, i32 1
  store i8* %468, i8** %466, align 8
  br label %122

469:                                              ; preds = %122
  %470 = load i32, i32* @TYPE_RST, align 4
  %471 = call i32 @vector_type_qualifier_push(%struct.vector_type_qualifier* %6, i32 %470)
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %474, label %473

473:                                              ; preds = %469
  br label %728

474:                                              ; preds = %469
  %475 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %476 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %475, i32 0, i32 3
  %477 = load i8*, i8** %476, align 8
  %478 = getelementptr inbounds i8, i8* %477, i32 1
  store i8* %478, i8** %476, align 8
  br label %122

479:                                              ; preds = %122
  %480 = load i32, i32* @TYPE_REF, align 4
  %481 = call i32 @vector_type_qualifier_push(%struct.vector_type_qualifier* %6, i32 %480)
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %484, label %483

483:                                              ; preds = %479
  br label %728

484:                                              ; preds = %479
  %485 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %486 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %485, i32 0, i32 3
  %487 = load i8*, i8** %486, align 8
  %488 = getelementptr inbounds i8, i8* %487, i32 1
  store i8* %488, i8** %486, align 8
  br label %122

489:                                              ; preds = %122
  %490 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %491 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %490, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i32 5)
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %494, label %493

493:                                              ; preds = %489
  br label %728

494:                                              ; preds = %489
  %495 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %496 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %495, i32 0, i32 3
  %497 = load i8*, i8** %496, align 8
  %498 = getelementptr inbounds i8, i8* %497, i32 1
  store i8* %498, i8** %496, align 8
  br label %627

499:                                              ; preds = %122
  %500 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %501 = call i32 @cpp_demangle_read_subst(%struct.cpp_demangle_data* %500)
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %504, label %503

503:                                              ; preds = %499
  br label %728

504:                                              ; preds = %499
  store i32 0, i32* %11, align 4
  br label %627

505:                                              ; preds = %122
  %506 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %507 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %506, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i32 14)
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %510, label %509

509:                                              ; preds = %505
  br label %728

510:                                              ; preds = %505
  %511 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %512 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %511, i32 0, i32 3
  %513 = load i8*, i8** %512, align 8
  %514 = getelementptr inbounds i8, i8* %513, i32 1
  store i8* %514, i8** %512, align 8
  br label %627

515:                                              ; preds = %122
  %516 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %517 = call i32 @cpp_demangle_read_tmpl_param(%struct.cpp_demangle_data* %516)
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %520, label %519

519:                                              ; preds = %515
  br label %728

520:                                              ; preds = %515
  store i32 0, i32* %11, align 4
  br label %627

521:                                              ; preds = %122
  %522 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %523 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %522, i32 0, i32 3
  %524 = load i8*, i8** %523, align 8
  %525 = getelementptr inbounds i8, i8* %524, i32 1
  store i8* %525, i8** %523, align 8
  %526 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %527 = call i32 @cpp_demangle_read_sname(%struct.cpp_demangle_data* %526)
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %530, label %529

529:                                              ; preds = %521
  br label %728

530:                                              ; preds = %521
  store i32 0, i32* %11, align 4
  br label %627

531:                                              ; preds = %122
  %532 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %533 = call i32 @cpp_demangle_read_number(%struct.cpp_demangle_data* %532, i64* %12)
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %536, label %535

535:                                              ; preds = %531
  br label %728

536:                                              ; preds = %531
  %537 = load i64, i64* %12, align 8
  %538 = icmp sle i64 %537, 0
  br i1 %538, label %539, label %540

539:                                              ; preds = %536
  br label %728

540:                                              ; preds = %536
  %541 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %6, i32 0, i32 0
  %542 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %543 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %542, i32 0, i32 3
  %544 = load i8*, i8** %543, align 8
  %545 = load i64, i64* %12, align 8
  %546 = trunc i64 %545 to i32
  %547 = call i32 @vector_str_push(%struct.vector_str* %541, i8* %544, i32 %546)
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %550, label %549

549:                                              ; preds = %540
  store i32 0, i32* %3, align 4
  br label %736

550:                                              ; preds = %540
  %551 = load i64, i64* %12, align 8
  %552 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %553 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %552, i32 0, i32 3
  %554 = load i8*, i8** %553, align 8
  %555 = getelementptr inbounds i8, i8* %554, i64 %551
  store i8* %555, i8** %553, align 8
  %556 = load i32, i32* @TYPE_EXT, align 4
  %557 = call i32 @vector_type_qualifier_push(%struct.vector_type_qualifier* %6, i32 %556)
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %560, label %559

559:                                              ; preds = %550
  br label %728

560:                                              ; preds = %550
  br label %122

561:                                              ; preds = %122
  %562 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %563 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %562, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 4)
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %566, label %565

565:                                              ; preds = %561
  br label %728

566:                                              ; preds = %561
  %567 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %568 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %567, i32 0, i32 3
  %569 = load i8*, i8** %568, align 8
  %570 = getelementptr inbounds i8, i8* %569, i32 1
  store i8* %570, i8** %568, align 8
  br label %627

571:                                              ; preds = %122
  %572 = load i32, i32* @TYPE_VAT, align 4
  %573 = call i32 @vector_type_qualifier_push(%struct.vector_type_qualifier* %6, i32 %572)
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %576, label %575

575:                                              ; preds = %571
  br label %728

576:                                              ; preds = %571
  %577 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %578 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %577, i32 0, i32 3
  %579 = load i8*, i8** %578, align 8
  %580 = getelementptr inbounds i8, i8* %579, i32 1
  store i8* %580, i8** %578, align 8
  br label %122

581:                                              ; preds = %122
  %582 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %583 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %582, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i32 7)
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %586, label %585

585:                                              ; preds = %581
  br label %728

586:                                              ; preds = %581
  %587 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %588 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %587, i32 0, i32 3
  %589 = load i8*, i8** %588, align 8
  %590 = getelementptr inbounds i8, i8* %589, i32 1
  store i8* %590, i8** %588, align 8
  br label %627

591:                                              ; preds = %122
  %592 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %593 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %592, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i32 9)
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %596, label %595

595:                                              ; preds = %591
  br label %728

596:                                              ; preds = %591
  %597 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %598 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %597, i32 0, i32 3
  %599 = load i8*, i8** %598, align 8
  %600 = getelementptr inbounds i8, i8* %599, i32 1
  store i8* %600, i8** %598, align 8
  br label %627

601:                                              ; preds = %122
  %602 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %603 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %602, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i32 18)
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %606, label %605

605:                                              ; preds = %601
  br label %728

606:                                              ; preds = %601
  %607 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %608 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %607, i32 0, i32 3
  %609 = load i8*, i8** %608, align 8
  %610 = getelementptr inbounds i8, i8* %609, i32 1
  store i8* %610, i8** %608, align 8
  br label %627

611:                                              ; preds = %122
  %612 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %613 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %612, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i32 3)
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %616, label %615

615:                                              ; preds = %611
  br label %728

616:                                              ; preds = %611
  %617 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %618 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %617, i32 0, i32 3
  %619 = load i8*, i8** %618, align 8
  %620 = getelementptr inbounds i8, i8* %619, i32 1
  store i8* %620, i8** %618, align 8
  br label %627

621:                                              ; preds = %122
  %622 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %623 = call i32 @cpp_demangle_read_name(%struct.cpp_demangle_data* %622)
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %626, label %625

625:                                              ; preds = %621
  br label %728

626:                                              ; preds = %621
  store i32 0, i32* %11, align 4
  br label %627

627:                                              ; preds = %626, %616, %606, %596, %586, %566, %530, %520, %510, %504, %494, %454, %444, %438, %428, %418, %398, %388, %378, %358, %352, %342, %332, %326, %179, %169, %149, %143, %133
  %628 = load %struct.vector_str*, %struct.vector_str** %7, align 8
  %629 = load i64, i64* %8, align 8
  %630 = load %struct.vector_str*, %struct.vector_str** %7, align 8
  %631 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %630, i32 0, i32 0
  %632 = load i32, i32* %631, align 8
  %633 = sub nsw i32 %632, 1
  %634 = call i8* @vector_str_substr(%struct.vector_str* %628, i64 %629, i32 %633, i64* %9)
  store i8* %634, i8** %13, align 8
  %635 = icmp eq i8* %634, null
  br i1 %635, label %636, label %637

636:                                              ; preds = %627
  br label %728

637:                                              ; preds = %627
  %638 = load i32, i32* %11, align 4
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %640, label %657

640:                                              ; preds = %637
  %641 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %642 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %641, i32 0, i32 6
  %643 = load i8*, i8** %13, align 8
  %644 = load i64, i64* %9, align 8
  %645 = call i32 @vector_str_find(%struct.vector_str* %642, i8* %643, i64 %644)
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %656, label %647

647:                                              ; preds = %640
  %648 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %649 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %648, i32 0, i32 6
  %650 = load i8*, i8** %13, align 8
  %651 = load i64, i64* %9, align 8
  %652 = trunc i64 %651 to i32
  %653 = call i32 @vector_str_push(%struct.vector_str* %649, i8* %650, i32 %652)
  %654 = icmp ne i32 %653, 0
  br i1 %654, label %656, label %655

655:                                              ; preds = %647
  br label %728

656:                                              ; preds = %647, %640
  br label %657

657:                                              ; preds = %656, %637
  %658 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %659 = load i8*, i8** %13, align 8
  %660 = call i32 @cpp_demangle_push_type_qualifier(%struct.cpp_demangle_data* %658, %struct.vector_type_qualifier* %6, i8* %659)
  %661 = icmp ne i32 %660, 0
  br i1 %661, label %663, label %662

662:                                              ; preds = %657
  br label %728

663:                                              ; preds = %657
  %664 = load i8*, i8** %13, align 8
  %665 = call i32 @free(i8* %664)
  %666 = load i8*, i8** %14, align 8
  %667 = call i32 @free(i8* %666)
  %668 = load i8*, i8** %15, align 8
  %669 = call i32 @free(i8* %668)
  %670 = call i32 @vector_type_qualifier_dest(%struct.vector_type_qualifier* %6)
  %671 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %672 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %671, i32 0, i32 0
  %673 = load i64, i64* %672, align 8
  %674 = icmp sgt i64 %673, 0
  br i1 %674, label %675, label %727

675:                                              ; preds = %663
  %676 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %677 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %676, i32 0, i32 3
  %678 = load i8*, i8** %677, align 8
  %679 = load i8, i8* %678, align 1
  %680 = sext i8 %679 to i32
  %681 = icmp eq i32 %680, 73
  br i1 %681, label %682, label %687

682:                                              ; preds = %675
  %683 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %684 = call i64 @cpp_demangle_read_tmpl_args(%struct.cpp_demangle_data* %683)
  %685 = icmp eq i64 %684, 0
  br i1 %685, label %686, label %687

686:                                              ; preds = %682
  store i32 0, i32* %3, align 4
  br label %736

687:                                              ; preds = %682, %675
  %688 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %689 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %688, i32 0, i32 0
  %690 = load i64, i64* %689, align 8
  %691 = add nsw i64 %690, -1
  store i64 %691, i64* %689, align 8
  %692 = icmp sgt i64 %691, 0
  br i1 %692, label %693, label %694

693:                                              ; preds = %687
  store i32 1, i32* %3, align 4
  br label %736

694:                                              ; preds = %687
  %695 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %696 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %695, i32 0, i32 4
  %697 = call i32 @vector_str_push(%struct.vector_str* %696, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i32 1)
  %698 = icmp ne i32 %697, 0
  br i1 %698, label %700, label %699

699:                                              ; preds = %694
  store i32 0, i32* %3, align 4
  br label %736

700:                                              ; preds = %694
  %701 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %702 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %701, i32 0, i32 5
  %703 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %704 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %703, i32 0, i32 4
  %705 = call i32 @vector_str_push_vector_head(%struct.vector_str* %702, %struct.vector_str* %704)
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %708, label %707

707:                                              ; preds = %700
  store i32 0, i32* %3, align 4
  br label %736

708:                                              ; preds = %700
  %709 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %710 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %709, i32 0, i32 4
  %711 = call i32 @vector_str_dest(%struct.vector_str* %710)
  %712 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %713 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %712, i32 0, i32 4
  %714 = call i32 @vector_str_init(%struct.vector_str* %713)
  %715 = icmp ne i32 %714, 0
  br i1 %715, label %717, label %716

716:                                              ; preds = %708
  store i32 0, i32* %3, align 4
  br label %736

717:                                              ; preds = %708
  %718 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %719 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %718, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %720 = icmp ne i32 %719, 0
  br i1 %720, label %722, label %721

721:                                              ; preds = %717
  store i32 0, i32* %3, align 4
  br label %736

722:                                              ; preds = %717
  %723 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %724 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %723, i32 0, i32 1
  store i32 1, i32* %724, align 8
  %725 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %726 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %725, i32 0, i32 2
  store i32 1, i32* %726, align 4
  br label %727

727:                                              ; preds = %722, %663
  store i32 1, i32* %3, align 4
  br label %736

728:                                              ; preds = %662, %655, %636, %625, %615, %605, %595, %585, %575, %565, %559, %539, %535, %529, %519, %509, %503, %493, %483, %473, %463, %453, %443, %437, %427, %417, %407, %397, %387, %377, %367, %357, %351, %341, %331, %325, %323, %314, %305, %297, %291, %283, %258, %248, %238, %228, %218, %208, %198, %178, %168, %158, %148, %142, %132
  %729 = load i8*, i8** %13, align 8
  %730 = call i32 @free(i8* %729)
  %731 = load i8*, i8** %14, align 8
  %732 = call i32 @free(i8* %731)
  %733 = load i8*, i8** %15, align 8
  %734 = call i32 @free(i8* %733)
  %735 = call i32 @vector_type_qualifier_dest(%struct.vector_type_qualifier* %6)
  store i32 0, i32* %3, align 4
  br label %736

736:                                              ; preds = %728, %727, %721, %716, %707, %699, %693, %686, %549, %116, %105, %84, %68, %61, %18
  %737 = load i32, i32* %3, align 4
  ret i32 %737
}

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @cpp_demangle_push_str(%struct.cpp_demangle_data*, i8*, i32) #1

declare dso_local i32 @vector_str_pop(%struct.vector_str*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vector_type_qualifier_init(%struct.vector_type_qualifier*) #1

declare dso_local i32 @cpp_demangle_read_array(%struct.cpp_demangle_data*) #1

declare dso_local i32 @vector_type_qualifier_push(%struct.vector_type_qualifier*, i32) #1

declare dso_local i32 @cpp_demangle_read_expression_flat(%struct.cpp_demangle_data*, i8**) #1

declare dso_local i32 @vector_str_push(%struct.vector_str*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cpp_demangle_read_number_as_string(%struct.cpp_demangle_data*, i8**) #1

declare dso_local i32 @cpp_demangle_read_function(%struct.cpp_demangle_data*, i32*, %struct.vector_type_qualifier*) #1

declare dso_local i32 @cpp_demangle_read_pointer_to_member(%struct.cpp_demangle_data*) #1

declare dso_local i32 @cpp_demangle_read_subst(%struct.cpp_demangle_data*) #1

declare dso_local i32 @cpp_demangle_read_tmpl_param(%struct.cpp_demangle_data*) #1

declare dso_local i32 @cpp_demangle_read_sname(%struct.cpp_demangle_data*) #1

declare dso_local i32 @cpp_demangle_read_number(%struct.cpp_demangle_data*, i64*) #1

declare dso_local i32 @cpp_demangle_read_name(%struct.cpp_demangle_data*) #1

declare dso_local i8* @vector_str_substr(%struct.vector_str*, i64, i32, i64*) #1

declare dso_local i32 @vector_str_find(%struct.vector_str*, i8*, i64) #1

declare dso_local i32 @cpp_demangle_push_type_qualifier(%struct.cpp_demangle_data*, %struct.vector_type_qualifier*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vector_type_qualifier_dest(%struct.vector_type_qualifier*) #1

declare dso_local i64 @cpp_demangle_read_tmpl_args(%struct.cpp_demangle_data*) #1

declare dso_local i32 @vector_str_push_vector_head(%struct.vector_str*, %struct.vector_str*) #1

declare dso_local i32 @vector_str_dest(%struct.vector_str*) #1

declare dso_local i32 @vector_str_init(%struct.vector_str*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
