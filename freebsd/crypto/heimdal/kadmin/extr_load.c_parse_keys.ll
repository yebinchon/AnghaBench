; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_load.c_parse_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_load.c_parse_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32*, %struct.TYPE_13__*, %struct.TYPE_15__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_18__ }

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@context = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"realloc: out of memory\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"krb5_data_alloc\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%u/\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"krb5_data_copy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*)* @parse_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_keys(%struct.TYPE_16__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 (i8*, i8*, ...) @sscanf(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %251

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %8, align 8
  br label %23

23:                                               ; preds = %248, %18
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %250

26:                                               ; preds = %23
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 32
  %38 = trunc i64 %37 to i32
  %39 = call %struct.TYPE_17__* @realloc(%struct.TYPE_17__* %30, i32 %38)
  store %struct.TYPE_17__* %39, %struct.TYPE_17__** %10, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %41 = icmp eq %struct.TYPE_17__* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %26
  %43 = load i32, i32* @context, align 4
  %44 = call i32 @krb5_errx(i32 %43, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %26
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %49, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i64 %58
  store %struct.TYPE_17__* %59, %struct.TYPE_17__** %10, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %66 = call i32 @memset(%struct.TYPE_17__* %65, i32 0, i32 32)
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 (i8*, i8*, ...) @sscanf(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %78

70:                                               ; preds = %45
  %71 = call i32* @malloc(i32 4)
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  store i32* %71, i32** %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  store i32 %74, i32* %77, align 4
  br label %81

78:                                               ; preds = %45
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  store i32* null, i32** %80, align 8
  br label %81

81:                                               ; preds = %78, %70
  %82 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %82, i8** %8, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 (i8*, i8*, ...) @sscanf(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %85 = icmp ne i32 %84, 1
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 1, i32* %3, align 4
  br label %251

87:                                               ; preds = %81
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %92, i8** %8, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i8*, i8** %8, align 8
  %97 = call i64 @strlen(i8* %96)
  %98 = sub i64 %97, 1
  %99 = udiv i64 %98, 2
  %100 = add i64 %99, 1
  %101 = call i64 @krb5_data_alloc(%struct.TYPE_18__* %95, i64 %100)
  store i64 %101, i64* %6, align 8
  %102 = load i64, i64* %6, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %87
  %105 = load i32, i32* @context, align 4
  %106 = load i64, i64* %6, align 8
  %107 = call i32 @krb5_err(i32 %105, i32 1, i64 %106, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %108

108:                                              ; preds = %104, %87
  store i64 0, i64* %9, align 8
  br label %109

109:                                              ; preds = %132, %108
  %110 = load i64, i64* %9, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = call i64 @strlen(i8* %111)
  %113 = icmp ult i64 %110, %112
  br i1 %113, label %114, label %135

114:                                              ; preds = %109
  %115 = load i8*, i8** %8, align 8
  %116 = load i64, i64* %9, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  %118 = call i32 (i8*, i8*, ...) @sscanf(i8* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %7)
  %119 = icmp ne i32 %118, 1
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  store i32 1, i32* %3, align 4
  br label %251

121:                                              ; preds = %114
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to i32*
  %129 = load i64, i64* %9, align 8
  %130 = udiv i64 %129, 2
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %122, i32* %131, align 4
  br label %132

132:                                              ; preds = %121
  %133 = load i64, i64* %9, align 8
  %134 = add i64 %133, 2
  store i64 %134, i64* %9, align 8
  br label %109

135:                                              ; preds = %109
  %136 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %136, i8** %8, align 8
  %137 = load i8*, i8** %8, align 8
  %138 = call i64 @strcmp(i8* %137, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %248

140:                                              ; preds = %135
  %141 = load i8*, i8** %8, align 8
  %142 = call i32 (i8*, i8*, ...) @sscanf(i8* %141, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* %11)
  %143 = icmp ne i32 %142, 1
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  store i32 1, i32* %3, align 4
  br label %251

145:                                              ; preds = %140
  %146 = load i8*, i8** %8, align 8
  %147 = call i8* @strchr(i8* %146, i8 signext 47)
  store i8* %147, i8** %8, align 8
  %148 = load i8*, i8** %8, align 8
  %149 = icmp eq i8* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  store i32 1, i32* %3, align 4
  br label %251

151:                                              ; preds = %145
  %152 = load i8*, i8** %8, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %8, align 8
  %154 = load i8*, i8** %8, align 8
  %155 = call i64 @strlen(i8* %154)
  store i64 %155, i64* %12, align 8
  %156 = call %struct.TYPE_13__* @calloc(i32 1, i32 16)
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 1
  store %struct.TYPE_13__* %156, %struct.TYPE_13__** %158, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  %162 = icmp eq %struct.TYPE_13__* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %151
  %164 = load i32, i32* @context, align 4
  %165 = call i32 @krb5_errx(i32 %164, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %166

166:                                              ; preds = %163, %151
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  store i32 %167, i32* %171, align 8
  %172 = load i64, i64* %12, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %241

174:                                              ; preds = %166
  %175 = load i8*, i8** %8, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 34
  br i1 %178, label %179, label %196

179:                                              ; preds = %174
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 1
  %184 = load i8*, i8** %8, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 1
  %186 = load i64, i64* %12, align 8
  %187 = sub i64 %186, 2
  %188 = call i64 @krb5_data_copy(%struct.TYPE_18__* %183, i8* %185, i64 %187)
  store i64 %188, i64* %6, align 8
  %189 = load i64, i64* %6, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %179
  %192 = load i32, i32* @context, align 4
  %193 = load i64, i64* %6, align 8
  %194 = call i32 @krb5_err(i32 %192, i32 1, i64 %193, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %195

195:                                              ; preds = %191, %179
  br label %240

196:                                              ; preds = %174
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  %201 = load i64, i64* %12, align 8
  %202 = sub i64 %201, 1
  %203 = udiv i64 %202, 2
  %204 = add i64 %203, 1
  %205 = call i64 @krb5_data_alloc(%struct.TYPE_18__* %200, i64 %204)
  store i64 %205, i64* %6, align 8
  %206 = load i64, i64* %6, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %196
  %209 = load i32, i32* @context, align 4
  %210 = load i64, i64* %6, align 8
  %211 = call i32 @krb5_err(i32 %209, i32 1, i64 %210, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %212

212:                                              ; preds = %208, %196
  store i64 0, i64* %9, align 8
  br label %213

213:                                              ; preds = %236, %212
  %214 = load i64, i64* %9, align 8
  %215 = load i64, i64* %12, align 8
  %216 = icmp ult i64 %214, %215
  br i1 %216, label %217, label %239

217:                                              ; preds = %213
  %218 = load i8*, i8** %8, align 8
  %219 = load i64, i64* %9, align 8
  %220 = getelementptr inbounds i8, i8* %218, i64 %219
  %221 = call i32 (i8*, i8*, ...) @sscanf(i8* %220, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %7)
  %222 = icmp ne i32 %221, 1
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  store i32 1, i32* %3, align 4
  br label %251

224:                                              ; preds = %217
  %225 = load i32, i32* %7, align 4
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = inttoptr i64 %231 to i32*
  %233 = load i64, i64* %9, align 8
  %234 = udiv i64 %233, 2
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  store i32 %225, i32* %235, align 4
  br label %236

236:                                              ; preds = %224
  %237 = load i64, i64* %9, align 8
  %238 = add i64 %237, 2
  store i64 %238, i64* %9, align 8
  br label %213

239:                                              ; preds = %213
  br label %240

240:                                              ; preds = %239, %195
  br label %247

241:                                              ; preds = %166
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 1
  %246 = call i32 @krb5_data_zero(%struct.TYPE_18__* %245)
  br label %247

247:                                              ; preds = %241, %240
  br label %248

248:                                              ; preds = %247, %135
  %249 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %249, i8** %8, align 8
  br label %23

250:                                              ; preds = %23
  store i32 0, i32* %3, align 4
  br label %251

251:                                              ; preds = %250, %223, %150, %144, %120, %86, %17
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local %struct.TYPE_17__* @realloc(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i64 @krb5_data_alloc(%struct.TYPE_18__*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_13__* @calloc(i32, i32) #1

declare dso_local i64 @krb5_data_copy(%struct.TYPE_18__*, i8*, i64) #1

declare dso_local i32 @krb5_data_zero(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
