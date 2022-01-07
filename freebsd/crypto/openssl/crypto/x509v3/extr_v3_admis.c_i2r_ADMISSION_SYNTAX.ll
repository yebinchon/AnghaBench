; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_admis.c_i2r_ADMISSION_SYNTAX.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_admis.c_i2r_ADMISSION_SYNTAX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3_ext_method = type { i32 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32, i32*, i32* }
%struct.TYPE_6__ = type { i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [24 x i8] c"%*sadmissionAuthority:\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%*s  \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%*sEntry %0d:\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"%*s  admissionAuthority:\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%*s    \00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"%*s  Profession Info Entry %0d:\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"%*s    registrationNumber: \00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"%*s    Info Entries:\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"%*s      \00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"%*s    Profession OIDs:\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"%*s      %s%s%s%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v3_ext_method*, i8*, i32*, i32)* @i2r_ADMISSION_SYNTAX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2r_ADMISSION_SYNTAX(%struct.v3_ext_method* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v3_ext_method*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [128 x i8], align 16
  store %struct.v3_ext_method* %0, %struct.v3_ext_method** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %10, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %49

26:                                               ; preds = %4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %28, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %26
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %33, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %31
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i64 @GENERAL_NAME_print(i32* %37, i32* %40)
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = load i32*, i32** %8, align 8
  %45 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp sle i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %36, %31, %26
  br label %285

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %4
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %281, %49
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @sk_ADMISSIONS_num(i32 %54)
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %284

57:                                               ; preds = %50
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call %struct.TYPE_8__* @sk_ADMISSIONS_value(i32 %60, i32 %61)
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %14, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 1, %65
  %67 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %64, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = icmp sle i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %285

70:                                               ; preds = %57
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %98

75:                                               ; preds = %70
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %77, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %79 = icmp sle i64 %78, 0
  br i1 %79, label %96, label %80

80:                                               ; preds = %75
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %82, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %84 = icmp sle i64 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %80
  %86 = load i32*, i32** %8, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = call i64 @GENERAL_NAME_print(i32* %86, i32* %89)
  %91 = icmp sle i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %85
  %93 = load i32*, i32** %8, align 8
  %94 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %95 = icmp sle i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92, %85, %80, %75
  br label %285

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97, %70
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load %struct.v3_ext_method*, %struct.v3_ext_method** %6, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i64 @i2r_NAMING_AUTHORITY(%struct.v3_ext_method* %104, i32* %107, i32* %108, i32 %109)
  %111 = icmp sle i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  br label %285

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %113, %98
  store i32 0, i32* %12, align 4
  br label %115

115:                                              ; preds = %277, %114
  %116 = load i32, i32* %12, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @sk_PROFESSION_INFO_num(i32 %119)
  %121 = icmp slt i32 %116, %120
  br i1 %121, label %122, label %280

122:                                              ; preds = %115
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = call %struct.TYPE_6__* @sk_PROFESSION_INFO_value(i32 %125, i32 %126)
  store %struct.TYPE_6__* %127, %struct.TYPE_6__** %15, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 1, %130
  %132 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %129, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  %133 = icmp sle i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %122
  br label %285

135:                                              ; preds = %122
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %158

140:                                              ; preds = %135
  %141 = load i32*, i32** %8, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %141, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %142, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %144 = icmp sle i64 %143, 0
  br i1 %144, label %156, label %145

145:                                              ; preds = %140
  %146 = load i32*, i32** %8, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = call i64 @ASN1_STRING_print(i32* %146, i32* %149)
  %151 = icmp sle i64 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %145
  %153 = load i32*, i32** %8, align 8
  %154 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %155 = icmp sle i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %152, %145, %140
  br label %285

157:                                              ; preds = %152
  br label %158

158:                                              ; preds = %157, %135
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %175

163:                                              ; preds = %158
  %164 = load %struct.v3_ext_method*, %struct.v3_ext_method** %6, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = load i32*, i32** %8, align 8
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 2
  %171 = call i64 @i2r_NAMING_AUTHORITY(%struct.v3_ext_method* %164, i32* %167, i32* %168, i32 %170)
  %172 = icmp sle i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %163
  br label %285

174:                                              ; preds = %163
  br label %175

175:                                              ; preds = %174, %158
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %219

180:                                              ; preds = %175
  %181 = load i32*, i32** %8, align 8
  %182 = load i32, i32* %9, align 4
  %183 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %181, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %182, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %184 = icmp sle i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  br label %285

186:                                              ; preds = %180
  store i32 0, i32* %13, align 4
  br label %187

187:                                              ; preds = %215, %186
  %188 = load i32, i32* %13, align 4
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @sk_ASN1_STRING_num(i32* %191)
  %193 = icmp slt i32 %188, %192
  br i1 %193, label %194, label %218

194:                                              ; preds = %187
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %13, align 4
  %199 = call i32* @sk_ASN1_STRING_value(i32* %197, i32 %198)
  store i32* %199, i32** %16, align 8
  %200 = load i32*, i32** %8, align 8
  %201 = load i32, i32* %9, align 4
  %202 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %200, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %201, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %203 = icmp sle i64 %202, 0
  br i1 %203, label %213, label %204

204:                                              ; preds = %194
  %205 = load i32*, i32** %8, align 8
  %206 = load i32*, i32** %16, align 8
  %207 = call i64 @ASN1_STRING_print(i32* %205, i32* %206)
  %208 = icmp sle i64 %207, 0
  br i1 %208, label %213, label %209

209:                                              ; preds = %204
  %210 = load i32*, i32** %8, align 8
  %211 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %210, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %212 = icmp sle i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %209, %204, %194
  br label %285

214:                                              ; preds = %209
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %13, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %13, align 4
  br label %187

218:                                              ; preds = %187
  br label %219

219:                                              ; preds = %218, %175
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = icmp ne i32* %222, null
  br i1 %223, label %224, label %276

224:                                              ; preds = %219
  %225 = load i32*, i32** %8, align 8
  %226 = load i32, i32* %9, align 4
  %227 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %225, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %226, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %228 = icmp sle i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %224
  br label %285

230:                                              ; preds = %224
  store i32 0, i32* %13, align 4
  br label %231

231:                                              ; preds = %272, %230
  %232 = load i32, i32* %13, align 4
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = call i32 @sk_ASN1_OBJECT_num(i32* %235)
  %237 = icmp slt i32 %232, %236
  br i1 %237, label %238, label %275

238:                                              ; preds = %231
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %13, align 4
  %243 = call i32* @sk_ASN1_OBJECT_value(i32* %241, i32 %242)
  store i32* %243, i32** %17, align 8
  %244 = load i32*, i32** %17, align 8
  %245 = call i32 @OBJ_obj2nid(i32* %244)
  %246 = call i8* @OBJ_nid2ln(i32 %245)
  store i8* %246, i8** %18, align 8
  %247 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %248 = load i32*, i32** %17, align 8
  %249 = call i32 @OBJ_obj2txt(i8* %247, i32 128, i32* %248, i32 1)
  %250 = load i32*, i32** %8, align 8
  %251 = load i32, i32* %9, align 4
  %252 = load i8*, i8** %18, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %254, label %256

254:                                              ; preds = %238
  %255 = load i8*, i8** %18, align 8
  br label %257

256:                                              ; preds = %238
  br label %257

257:                                              ; preds = %256, %254
  %258 = phi i8* [ %255, %254 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %256 ]
  %259 = load i8*, i8** %18, align 8
  %260 = icmp ne i8* %259, null
  %261 = zext i1 %260 to i64
  %262 = select i1 %260, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %263 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %264 = load i8*, i8** %18, align 8
  %265 = icmp ne i8* %264, null
  %266 = zext i1 %265 to i64
  %267 = select i1 %265, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %268 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %250, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %251, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %258, i8* %262, i8* %263, i8* %267)
  %269 = icmp sle i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %257
  br label %285

271:                                              ; preds = %257
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %13, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %13, align 4
  br label %231

275:                                              ; preds = %231
  br label %276

276:                                              ; preds = %275, %219
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %12, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %12, align 4
  br label %115

280:                                              ; preds = %115
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %11, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %11, align 4
  br label %50

284:                                              ; preds = %50
  store i32 1, i32* %5, align 4
  br label %286

285:                                              ; preds = %270, %229, %213, %185, %173, %156, %134, %112, %96, %69, %47
  store i32 -1, i32* %5, align 4
  br label %286

286:                                              ; preds = %285, %284
  %287 = load i32, i32* %5, align 4
  ret i32 %287
}

declare dso_local i64 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i64 @GENERAL_NAME_print(i32*, i32*) #1

declare dso_local i32 @sk_ADMISSIONS_num(i32) #1

declare dso_local %struct.TYPE_8__* @sk_ADMISSIONS_value(i32, i32) #1

declare dso_local i64 @i2r_NAMING_AUTHORITY(%struct.v3_ext_method*, i32*, i32*, i32) #1

declare dso_local i32 @sk_PROFESSION_INFO_num(i32) #1

declare dso_local %struct.TYPE_6__* @sk_PROFESSION_INFO_value(i32, i32) #1

declare dso_local i64 @ASN1_STRING_print(i32*, i32*) #1

declare dso_local i32 @sk_ASN1_STRING_num(i32*) #1

declare dso_local i32* @sk_ASN1_STRING_value(i32*, i32) #1

declare dso_local i32 @sk_ASN1_OBJECT_num(i32*) #1

declare dso_local i32* @sk_ASN1_OBJECT_value(i32*, i32) #1

declare dso_local i8* @OBJ_nid2ln(i32) #1

declare dso_local i32 @OBJ_obj2nid(i32*) #1

declare dso_local i32 @OBJ_obj2txt(i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
