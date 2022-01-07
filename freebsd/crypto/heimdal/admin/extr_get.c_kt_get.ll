; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/admin/extr_get.c_kt_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/admin/extr_get.c_kt_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.get_options = type { i8*, i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i8** }
%struct.TYPE_16__ = type { i32, i32, i64, i8* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_15__, i8* }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"unrecognized enctype: %s\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"can't parse principal %s\00", align 1
@KADM5_PRINCIPAL = common dso_local global i32 0, align 4
@KRB5_KDB_DISALLOW_ALL_TIX = common dso_local global i32 0, align 4
@KADM5_ATTRIBUTES = common dso_local global i32 0, align 4
@KADM5_PRINC_EXPIRE_TIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@KADM5_DUP = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"kadm5_create_principal(%s)\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"kadm5_randkey_principal(%s)\00", align 1
@KADM5_KVNO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"kadm5_get_principal(%s)\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"%s: disallow-all-tix flag set - clearing\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"kadm5_modify_principal(%s)\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"krb5_kt_add_entry\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kt_get(%struct.get_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.get_options*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_16__, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_15__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_14__, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  store %struct.get_options* %0, %struct.get_options** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i64 0, i64* %8, align 8
  store i8* null, i8** %10, align 8
  store i64* null, i64** %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %16, align 4
  %27 = call i32* (...) @ktutil_open_keytab()
  store i32* %27, i32** %9, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %430

30:                                               ; preds = %3
  %31 = load %struct.get_options*, %struct.get_options** %5, align 8
  %32 = getelementptr inbounds %struct.get_options, %struct.get_options* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32, i32* @context, align 4
  %37 = load %struct.get_options*, %struct.get_options** %5, align 8
  %38 = getelementptr inbounds %struct.get_options, %struct.get_options* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @krb5_set_default_realm(i32 %36, i8* %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.get_options*, %struct.get_options** %5, align 8
  %43 = getelementptr inbounds %struct.get_options, %struct.get_options* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %101

47:                                               ; preds = %41
  %48 = load %struct.get_options*, %struct.get_options** %5, align 8
  %49 = getelementptr inbounds %struct.get_options, %struct.get_options* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 8
  %54 = trunc i64 %53 to i32
  %55 = call i64* @malloc(i32 %54)
  store i64* %55, i64** %11, align 8
  %56 = load i64*, i64** %11, align 8
  %57 = icmp eq i64* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i32, i32* @context, align 4
  %60 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %410

61:                                               ; preds = %47
  %62 = load %struct.get_options*, %struct.get_options** %5, align 8
  %63 = getelementptr inbounds %struct.get_options, %struct.get_options* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %67

67:                                               ; preds = %97, %61
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %12, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %100

71:                                               ; preds = %67
  %72 = load i32, i32* @context, align 4
  %73 = load %struct.get_options*, %struct.get_options** %5, align 8
  %74 = getelementptr inbounds %struct.get_options, %struct.get_options* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i8**, i8*** %75, align 8
  %77 = load i64, i64* %13, align 8
  %78 = getelementptr inbounds i8*, i8** %76, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = load i64*, i64** %11, align 8
  %81 = load i64, i64* %13, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = call i64 @krb5_string_to_enctype(i32 %72, i8* %79, i64* %82)
  store i64 %83, i64* %8, align 8
  %84 = load i64, i64* %8, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %71
  %87 = load i32, i32* @context, align 4
  %88 = load %struct.get_options*, %struct.get_options** %5, align 8
  %89 = getelementptr inbounds %struct.get_options, %struct.get_options* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i8**, i8*** %90, align 8
  %92 = load i64, i64* %13, align 8
  %93 = getelementptr inbounds i8*, i8** %91, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %94)
  br label %410

96:                                               ; preds = %71
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %13, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %13, align 8
  br label %67

100:                                              ; preds = %67
  br label %101

101:                                              ; preds = %100, %41
  store i32 0, i32* %14, align 4
  br label %102

102:                                              ; preds = %406, %101
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %409

106:                                              ; preds = %102
  store i32 0, i32* %19, align 4
  store i32 0, i32* %22, align 4
  %107 = load i32, i32* @context, align 4
  %108 = load i8**, i8*** %7, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @krb5_parse_name(i32 %107, i8* %112, i8** %17)
  store i64 %113, i64* %8, align 8
  %114 = load i64, i64* %8, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %106
  %117 = load i32, i32* @context, align 4
  %118 = load i64, i64* %8, align 8
  %119 = load i8**, i8*** %7, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %117, i64 %118, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %123)
  %125 = load i32, i32* %16, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %16, align 4
  br label %406

127:                                              ; preds = %106
  %128 = call i32 @memset(%struct.TYPE_16__* %18, i32 0, i32 24)
  %129 = load i8*, i8** %17, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 3
  store i8* %129, i8** %130, align 8
  %131 = load i32, i32* @KADM5_PRINCIPAL, align 4
  %132 = load i32, i32* %19, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %19, align 4
  %134 = load i32, i32* @KRB5_KDB_DISALLOW_ALL_TIX, align 4
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %134
  store i32 %137, i32* %135, align 8
  %138 = load i32, i32* @KADM5_ATTRIBUTES, align 4
  %139 = load i32, i32* %19, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %19, align 4
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  store i64 0, i64* %141, align 8
  %142 = load i32, i32* @KADM5_PRINC_EXPIRE_TIME, align 4
  %143 = load i32, i32* %19, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %19, align 4
  %145 = load i8*, i8** %10, align 8
  %146 = icmp eq i8* %145, null
  br i1 %146, label %147, label %176

147:                                              ; preds = %127
  %148 = load %struct.get_options*, %struct.get_options** %5, align 8
  %149 = getelementptr inbounds %struct.get_options, %struct.get_options* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load %struct.get_options*, %struct.get_options** %5, align 8
  %154 = getelementptr inbounds %struct.get_options, %struct.get_options* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  store i8* %155, i8** %24, align 8
  br label %160

156:                                              ; preds = %147
  %157 = load i32, i32* @context, align 4
  %158 = load i8*, i8** %17, align 8
  %159 = call i8* @krb5_principal_get_realm(i32 %157, i8* %158)
  store i8* %159, i8** %24, align 8
  br label %160

160:                                              ; preds = %156, %152
  %161 = load %struct.get_options*, %struct.get_options** %5, align 8
  %162 = getelementptr inbounds %struct.get_options, %struct.get_options* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load i8*, i8** %24, align 8
  %165 = load %struct.get_options*, %struct.get_options** %5, align 8
  %166 = getelementptr inbounds %struct.get_options, %struct.get_options* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.get_options*, %struct.get_options** %5, align 8
  %169 = getelementptr inbounds %struct.get_options, %struct.get_options* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i8* @open_kadmin_connection(i32 %163, i8* %164, i32 %167, i32 %170)
  store i8* %171, i8** %10, align 8
  %172 = load i8*, i8** %10, align 8
  %173 = icmp eq i8* %172, null
  br i1 %173, label %174, label %175

174:                                              ; preds = %160
  br label %409

175:                                              ; preds = %160
  br label %176

176:                                              ; preds = %175, %127
  %177 = load i8*, i8** %10, align 8
  %178 = load i32, i32* %19, align 4
  %179 = call i64 @kadm5_create_principal(i8* %177, %struct.TYPE_16__* %18, i32 %178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i64 %179, i64* %8, align 8
  %180 = load i64, i64* %8, align 8
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  store i32 1, i32* %22, align 4
  br label %202

183:                                              ; preds = %176
  %184 = load i64, i64* %8, align 8
  %185 = load i64, i64* @KADM5_DUP, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %201

187:                                              ; preds = %183
  %188 = load i32, i32* @context, align 4
  %189 = load i64, i64* %8, align 8
  %190 = load i8**, i8*** %7, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %190, i64 %192
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %188, i64 %189, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %194)
  %196 = load i32, i32* @context, align 4
  %197 = load i8*, i8** %17, align 8
  %198 = call i32 @krb5_free_principal(i32 %196, i8* %197)
  %199 = load i32, i32* %16, align 4
  %200 = add i32 %199, 1
  store i32 %200, i32* %16, align 4
  br label %406

201:                                              ; preds = %183
  br label %202

202:                                              ; preds = %201, %182
  %203 = load i8*, i8** %10, align 8
  %204 = load i8*, i8** %17, align 8
  %205 = call i64 @kadm5_randkey_principal(i8* %203, i8* %204, %struct.TYPE_15__** %20, i32* %21)
  store i64 %205, i64* %8, align 8
  %206 = load i64, i64* %8, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %222

208:                                              ; preds = %202
  %209 = load i32, i32* @context, align 4
  %210 = load i64, i64* %8, align 8
  %211 = load i8**, i8*** %7, align 8
  %212 = load i32, i32* %14, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8*, i8** %211, i64 %213
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %209, i64 %210, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %215)
  %217 = load i32, i32* @context, align 4
  %218 = load i8*, i8** %17, align 8
  %219 = call i32 @krb5_free_principal(i32 %217, i8* %218)
  %220 = load i32, i32* %16, align 4
  %221 = add i32 %220, 1
  store i32 %221, i32* %16, align 4
  br label %406

222:                                              ; preds = %202
  %223 = load i8*, i8** %10, align 8
  %224 = load i8*, i8** %17, align 8
  %225 = load i32, i32* @KADM5_PRINCIPAL, align 4
  %226 = load i32, i32* @KADM5_KVNO, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @KADM5_ATTRIBUTES, align 4
  %229 = or i32 %227, %228
  %230 = call i64 @kadm5_get_principal(i8* %223, i8* %224, %struct.TYPE_16__* %18, i32 %229)
  store i64 %230, i64* %8, align 8
  %231 = load i64, i64* %8, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %262

233:                                              ; preds = %222
  %234 = load i32, i32* @context, align 4
  %235 = load i64, i64* %8, align 8
  %236 = load i8**, i8*** %7, align 8
  %237 = load i32, i32* %14, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8*, i8** %236, i64 %238
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %234, i64 %235, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %240)
  store i32 0, i32* %15, align 4
  br label %242

242:                                              ; preds = %253, %233
  %243 = load i32, i32* %15, align 4
  %244 = load i32, i32* %21, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %256

246:                                              ; preds = %242
  %247 = load i32, i32* @context, align 4
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %249 = load i32, i32* %15, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i64 %250
  %252 = call i32 @krb5_free_keyblock_contents(i32 %247, %struct.TYPE_15__* %251)
  br label %253

253:                                              ; preds = %246
  %254 = load i32, i32* %15, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %15, align 4
  br label %242

256:                                              ; preds = %242
  %257 = load i32, i32* @context, align 4
  %258 = load i8*, i8** %17, align 8
  %259 = call i32 @krb5_free_principal(i32 %257, i8* %258)
  %260 = load i32, i32* %16, align 4
  %261 = add i32 %260, 1
  store i32 %261, i32* %16, align 4
  br label %406

262:                                              ; preds = %222
  %263 = load i32, i32* %22, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %279, label %265

265:                                              ; preds = %262
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @KRB5_KDB_DISALLOW_ALL_TIX, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %279

271:                                              ; preds = %265
  %272 = load i32, i32* @context, align 4
  %273 = load i8**, i8*** %7, align 8
  %274 = load i32, i32* %14, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8*, i8** %273, i64 %275
  %277 = load i8*, i8** %276, align 8
  %278 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %272, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* %277)
  br label %279

279:                                              ; preds = %271, %265, %262
  %280 = load i32, i32* @KRB5_KDB_DISALLOW_ALL_TIX, align 4
  %281 = xor i32 %280, -1
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = and i32 %283, %281
  store i32 %284, i32* %282, align 8
  %285 = load i32, i32* @KADM5_ATTRIBUTES, align 4
  store i32 %285, i32* %19, align 4
  %286 = load i32, i32* %22, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %279
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  store i32 1, i32* %289, align 4
  %290 = load i32, i32* @KADM5_KVNO, align 4
  %291 = load i32, i32* %19, align 4
  %292 = or i32 %291, %290
  store i32 %292, i32* %19, align 4
  br label %293

293:                                              ; preds = %288, %279
  %294 = load i8*, i8** %10, align 8
  %295 = load i32, i32* %19, align 4
  %296 = call i64 @kadm5_modify_principal(i8* %294, %struct.TYPE_16__* %18, i32 %295)
  store i64 %296, i64* %8, align 8
  %297 = load i64, i64* %8, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %328

299:                                              ; preds = %293
  %300 = load i32, i32* @context, align 4
  %301 = load i64, i64* %8, align 8
  %302 = load i8**, i8*** %7, align 8
  %303 = load i32, i32* %14, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8*, i8** %302, i64 %304
  %306 = load i8*, i8** %305, align 8
  %307 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %300, i64 %301, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %306)
  store i32 0, i32* %15, align 4
  br label %308

308:                                              ; preds = %319, %299
  %309 = load i32, i32* %15, align 4
  %310 = load i32, i32* %21, align 4
  %311 = icmp slt i32 %309, %310
  br i1 %311, label %312, label %322

312:                                              ; preds = %308
  %313 = load i32, i32* @context, align 4
  %314 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %315 = load i32, i32* %15, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %314, i64 %316
  %318 = call i32 @krb5_free_keyblock_contents(i32 %313, %struct.TYPE_15__* %317)
  br label %319

319:                                              ; preds = %312
  %320 = load i32, i32* %15, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %15, align 4
  br label %308

322:                                              ; preds = %308
  %323 = load i32, i32* @context, align 4
  %324 = load i8*, i8** %17, align 8
  %325 = call i32 @krb5_free_principal(i32 %323, i8* %324)
  %326 = load i32, i32* %16, align 4
  %327 = add i32 %326, 1
  store i32 %327, i32* %16, align 4
  br label %406

328:                                              ; preds = %293
  store i32 0, i32* %15, align 4
  br label %329

329:                                              ; preds = %397, %328
  %330 = load i32, i32* %15, align 4
  %331 = load i32, i32* %21, align 4
  %332 = icmp slt i32 %330, %331
  br i1 %332, label %333, label %400

333:                                              ; preds = %329
  %334 = load i32, i32* @TRUE, align 4
  store i32 %334, i32* %25, align 4
  %335 = load i64, i64* %12, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %362

337:                                              ; preds = %333
  %338 = load i32, i32* @FALSE, align 4
  store i32 %338, i32* %25, align 4
  store i64 0, i64* %26, align 8
  br label %339

339:                                              ; preds = %358, %337
  %340 = load i64, i64* %26, align 8
  %341 = load i64, i64* %12, align 8
  %342 = icmp ult i64 %340, %341
  br i1 %342, label %343, label %361

343:                                              ; preds = %339
  %344 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %345 = load i32, i32* %15, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = load i64*, i64** %11, align 8
  %351 = load i64, i64* %26, align 8
  %352 = getelementptr inbounds i64, i64* %350, i64 %351
  %353 = load i64, i64* %352, align 8
  %354 = icmp eq i64 %349, %353
  br i1 %354, label %355, label %357

355:                                              ; preds = %343
  %356 = load i32, i32* @TRUE, align 4
  store i32 %356, i32* %25, align 4
  br label %361

357:                                              ; preds = %343
  br label %358

358:                                              ; preds = %357
  %359 = load i64, i64* %26, align 8
  %360 = add i64 %359, 1
  store i64 %360, i64* %26, align 8
  br label %339

361:                                              ; preds = %355, %339
  br label %362

362:                                              ; preds = %361, %333
  %363 = load i32, i32* %25, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %390

365:                                              ; preds = %362
  %366 = load i8*, i8** %17, align 8
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 3
  store i8* %366, i8** %367, align 8
  %368 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  store i32 %369, i32* %370, align 8
  %371 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  %372 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %373 = load i32, i32* %15, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %372, i64 %374
  %376 = bitcast %struct.TYPE_15__* %371 to i8*
  %377 = bitcast %struct.TYPE_15__* %375 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %376, i8* align 8 %377, i64 8, i1 false)
  %378 = call i32 @time(i32* null)
  %379 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  store i32 %378, i32* %379, align 4
  %380 = load i32, i32* @context, align 4
  %381 = load i32*, i32** %9, align 8
  %382 = call i64 @krb5_kt_add_entry(i32 %380, i32* %381, %struct.TYPE_14__* %23)
  store i64 %382, i64* %8, align 8
  %383 = load i64, i64* %8, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %389

385:                                              ; preds = %365
  %386 = load i32, i32* @context, align 4
  %387 = load i64, i64* %8, align 8
  %388 = call i32 (i32, i64, i8*, ...) @krb5_warn(i32 %386, i64 %387, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %389

389:                                              ; preds = %385, %365
  br label %390

390:                                              ; preds = %389, %362
  %391 = load i32, i32* @context, align 4
  %392 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %393 = load i32, i32* %15, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %392, i64 %394
  %396 = call i32 @krb5_free_keyblock_contents(i32 %391, %struct.TYPE_15__* %395)
  br label %397

397:                                              ; preds = %390
  %398 = load i32, i32* %15, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %15, align 4
  br label %329

400:                                              ; preds = %329
  %401 = load i8*, i8** %10, align 8
  %402 = call i32 @kadm5_free_principal_ent(i8* %401, %struct.TYPE_16__* %18)
  %403 = load i32, i32* @context, align 4
  %404 = load i8*, i8** %17, align 8
  %405 = call i32 @krb5_free_principal(i32 %403, i8* %404)
  br label %406

406:                                              ; preds = %400, %322, %256, %208, %187, %116
  %407 = load i32, i32* %14, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %14, align 4
  br label %102

409:                                              ; preds = %174, %102
  br label %410

410:                                              ; preds = %409, %86, %58
  %411 = load i64*, i64** %11, align 8
  %412 = call i32 @free(i64* %411)
  %413 = load i8*, i8** %10, align 8
  %414 = icmp ne i8* %413, null
  br i1 %414, label %415, label %418

415:                                              ; preds = %410
  %416 = load i8*, i8** %10, align 8
  %417 = call i32 @kadm5_destroy(i8* %416)
  br label %418

418:                                              ; preds = %415, %410
  %419 = load i32, i32* @context, align 4
  %420 = load i32*, i32** %9, align 8
  %421 = call i32 @krb5_kt_close(i32 %419, i32* %420)
  %422 = load i64, i64* %8, align 8
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %427, label %424

424:                                              ; preds = %418
  %425 = load i32, i32* %16, align 4
  %426 = icmp ugt i32 %425, 0
  br label %427

427:                                              ; preds = %424, %418
  %428 = phi i1 [ true, %418 ], [ %426, %424 ]
  %429 = zext i1 %428 to i32
  store i32 %429, i32* %4, align 4
  br label %430

430:                                              ; preds = %427, %29
  %431 = load i32, i32* %4, align 4
  ret i32 %431
}

declare dso_local i32* @ktutil_open_keytab(...) #1

declare dso_local i32 @krb5_set_default_realm(i32, i8*) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @krb5_warnx(i32, i8*, ...) #1

declare dso_local i64 @krb5_string_to_enctype(i32, i8*, i64*) #1

declare dso_local i64 @krb5_parse_name(i32, i8*, i8**) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i8* @krb5_principal_get_realm(i32, i8*) #1

declare dso_local i8* @open_kadmin_connection(i32, i8*, i32, i32) #1

declare dso_local i64 @kadm5_create_principal(i8*, %struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @krb5_free_principal(i32, i8*) #1

declare dso_local i64 @kadm5_randkey_principal(i8*, i8*, %struct.TYPE_15__**, i32*) #1

declare dso_local i64 @kadm5_get_principal(i8*, i8*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @krb5_free_keyblock_contents(i32, %struct.TYPE_15__*) #1

declare dso_local i64 @kadm5_modify_principal(i8*, %struct.TYPE_16__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @krb5_kt_add_entry(i32, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @kadm5_free_principal_ent(i8*, %struct.TYPE_16__*) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @kadm5_destroy(i8*) #1

declare dso_local i32 @krb5_kt_close(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
