; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_iprop-log.c_print_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_iprop-log.c_print_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32*, i32*, i32, i32*, i32*, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@SEEK_CUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%Y-%m-%d %H:%M:%S\00", align 1
@kadm_get = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"unknown op: %d\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"%s: ver = %u, timestamp = %s, len = %u\0A\00", align 1
@op_names = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"    %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"kadm_rename: data alloc: %d\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"    %s -> %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"kadm_create: data alloc: %d\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"kadm_modify: data alloc: %d\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"    principal = %s\0A\00", align 1
@KADM5_PRINC_EXPIRE_TIME = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"    expires = %s\0A\00", align 1
@KADM5_PW_EXPIRATION = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"    password exp = %s\0A\00", align 1
@KADM5_LAST_PWD_CHANGE = common dso_local global i32 0, align 4
@KADM5_ATTRIBUTES = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"    attributes = %s\0A\00", align 1
@KADM5_MAX_LIFE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"for ever\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"    max life = %s\0A\00", align 1
@KADM5_MAX_RLIFE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [20 x i8] c"    max rlife = %s\0A\00", align 1
@KADM5_MOD_TIME = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [14 x i8] c"    mod time\0A\00", align 1
@KADM5_MOD_NAME = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"    mod name\0A\00", align 1
@KADM5_KVNO = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [15 x i8] c"    kvno = %d\0A\00", align 1
@KADM5_MKVNO = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [11 x i8] c"    mkvno\0A\00", align 1
@KADM5_AUX_ATTRIBUTES = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [20 x i8] c"    aux attributes\0A\00", align 1
@KADM5_POLICY = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [12 x i8] c"    policy\0A\00", align 1
@KADM5_POLICY_CLR = common dso_local global i32 0, align 4
@KADM5_LAST_SUCCESS = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [18 x i8] c"    last success\0A\00", align 1
@KADM5_LAST_FAILED = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [17 x i8] c"    last failed\0A\00", align 1
@KADM5_FAIL_AUTH_COUNT = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [21 x i8] c"    fail auth count\0A\00", align 1
@KADM5_KEY_DATA = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [14 x i8] c"    key data\0A\00", align 1
@KADM5_TL_DATA = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [13 x i8] c"    tl data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i32, i32, i32, i32*, i8*)* @print_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_entry(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [256 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_11__, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_9__, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i8* %6, i8** %14, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %22, align 4
  %28 = load i32*, i32** %13, align 8
  %29 = load i32, i32* @SEEK_CUR, align 4
  %30 = call i32 @krb5_storage_seek(i32* %28, i32 0, i32 %29)
  %31 = load i32, i32* %12, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %23, align 4
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %34 = call i32 @localtime(i32* %10)
  %35 = call i32 @strftime(i8* %33, i32 256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %11, align 4
  %37 = load i64, i64* @kadm_get, align 8
  %38 = trunc i64 %37 to i32
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %7
  %41 = load i32, i32* %11, align 4
  %42 = icmp sgt i32 %41, 129
  br i1 %42, label %43, label %50

43:                                               ; preds = %40, %7
  %44 = load i32, i32* %11, align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32*, i32** %13, align 8
  %47 = load i32, i32* %23, align 4
  %48 = load i32, i32* @SEEK_SET, align 4
  %49 = call i32 @krb5_storage_seek(i32* %46, i32 %47, i32 %48)
  br label %376

50:                                               ; preds = %40
  %51 = load i8**, i8*** @op_names, align 8
  %52 = load i32, i32* %11, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %58 = load i32, i32* %12, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %55, i32 %56, i8* %57, i32 %58)
  %60 = load i32, i32* %11, align 4
  switch i32 %60, label %369 [
    i32 131, label %61
    i32 128, label %74
    i32 132, label %113
    i32 130, label %137
    i32 129, label %368
  ]

61:                                               ; preds = %50
  %62 = load i32*, i32** %13, align 8
  %63 = call i32 @krb5_ret_principal(i32* %62, i32* %18)
  %64 = load i32, i32* %22, align 4
  %65 = load i32, i32* %18, align 4
  %66 = call i32 @krb5_unparse_name(i32 %64, i32 %65, i8** %19)
  %67 = load i8*, i8** %19, align 8
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %67)
  %69 = load i8*, i8** %19, align 8
  %70 = call i32 @free(i8* %69)
  %71 = load i32, i32* %22, align 4
  %72 = load i32, i32* %18, align 4
  %73 = call i32 @krb5_free_principal(i32 %71, i32 %72)
  br label %371

74:                                               ; preds = %50
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @krb5_data_alloc(%struct.TYPE_9__* %21, i32 %75)
  store i32 %76, i32* %24, align 4
  %77 = load i32, i32* %24, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* %22, align 4
  %81 = load i32, i32* %24, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @krb5_err(i32 %80, i32 1, i32 %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load i32*, i32** %13, align 8
  %86 = call i32 @krb5_ret_principal(i32* %85, i32* %18)
  %87 = load i32*, i32** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @krb5_storage_read(i32* %87, i32 %89, i32 %91)
  %93 = load i32, i32* %22, align 4
  %94 = call i32 @hdb_value2entry(i32 %93, %struct.TYPE_9__* %21, %struct.TYPE_11__* %17)
  %95 = load i32, i32* %22, align 4
  %96 = load i32, i32* %18, align 4
  %97 = call i32 @krb5_unparse_name(i32 %95, i32 %96, i8** %19)
  %98 = load i32, i32* %22, align 4
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @krb5_unparse_name(i32 %98, i32 %100, i8** %20)
  %102 = load i8*, i8** %19, align 8
  %103 = load i8*, i8** %20, align 8
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %102, i8* %103)
  %105 = load i8*, i8** %19, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load i8*, i8** %20, align 8
  %108 = call i32 @free(i8* %107)
  %109 = load i32, i32* %22, align 4
  %110 = load i32, i32* %18, align 4
  %111 = call i32 @krb5_free_principal(i32 %109, i32 %110)
  %112 = call i32 @free_hdb_entry(%struct.TYPE_11__* %17)
  br label %371

113:                                              ; preds = %50
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @krb5_data_alloc(%struct.TYPE_9__* %21, i32 %114)
  store i32 %115, i32* %24, align 4
  %116 = load i32, i32* %24, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load i32, i32* %22, align 4
  %120 = load i32, i32* %24, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @krb5_err(i32 %119, i32 1, i32 %120, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %118, %113
  %124 = load i32*, i32** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @krb5_storage_read(i32* %124, i32 %126, i32 %128)
  %130 = load i32, i32* %22, align 4
  %131 = call i32 @hdb_value2entry(i32 %130, %struct.TYPE_9__* %21, %struct.TYPE_11__* %17)
  store i32 %131, i32* %24, align 4
  %132 = load i32, i32* %24, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %123
  %135 = call i32 (...) @abort() #3
  unreachable

136:                                              ; preds = %123
  store i32 -1, i32* %16, align 4
  br label %163

137:                                              ; preds = %50
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @krb5_data_alloc(%struct.TYPE_9__* %21, i32 %138)
  store i32 %139, i32* %24, align 4
  %140 = load i32, i32* %24, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load i32, i32* %22, align 4
  %144 = load i32, i32* %24, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @krb5_err(i32 %143, i32 1, i32 %144, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %142, %137
  %148 = load i32*, i32** %13, align 8
  %149 = call i32 @krb5_ret_int32(i32* %148, i32* %16)
  %150 = load i32*, i32** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @krb5_storage_read(i32* %150, i32 %152, i32 %154)
  %156 = load i32, i32* %22, align 4
  %157 = call i32 @hdb_value2entry(i32 %156, %struct.TYPE_9__* %21, %struct.TYPE_11__* %17)
  store i32 %157, i32* %24, align 4
  %158 = load i32, i32* %24, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %147
  %161 = call i32 (...) @abort() #3
  unreachable

162:                                              ; preds = %147
  br label %163

163:                                              ; preds = %162, %136
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %163
  %168 = load i32, i32* %22, align 4
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @krb5_unparse_name(i32 %168, i32 %170, i8** %19)
  %172 = load i8*, i8** %19, align 8
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %172)
  %174 = load i8*, i8** %19, align 8
  %175 = call i32 @free(i8* %174)
  br label %176

176:                                              ; preds = %167, %163
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* @KADM5_PRINC_EXPIRE_TIME, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %197

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 5
  %183 = load i32*, i32** %182, align 8
  %184 = icmp eq i32* %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %187 = call i32 @strlcpy(i8* %186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 256)
  br label %194

188:                                              ; preds = %181
  %189 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 5
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @localtime(i32* %191)
  %193 = call i32 @strftime(i8* %189, i32 256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %192)
  br label %194

194:                                              ; preds = %188, %185
  %195 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %196 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* %195)
  br label %197

197:                                              ; preds = %194, %176
  %198 = load i32, i32* %16, align 4
  %199 = load i32, i32* @KADM5_PW_EXPIRATION, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %218

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 4
  %204 = load i32*, i32** %203, align 8
  %205 = icmp eq i32* %204, null
  br i1 %205, label %206, label %209

206:                                              ; preds = %202
  %207 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %208 = call i32 @strlcpy(i8* %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 256)
  br label %215

209:                                              ; preds = %202
  %210 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 4
  %212 = load i32*, i32** %211, align 8
  %213 = call i32 @localtime(i32* %212)
  %214 = call i32 @strftime(i8* %210, i32 256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %213)
  br label %215

215:                                              ; preds = %209, %206
  %216 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* %216)
  br label %218

218:                                              ; preds = %215, %197
  %219 = load i32, i32* %16, align 4
  %220 = load i32, i32* @KADM5_LAST_PWD_CHANGE, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  br label %224

224:                                              ; preds = %223, %218
  %225 = load i32, i32* %16, align 4
  %226 = load i32, i32* @KADM5_ATTRIBUTES, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %238

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @HDBFlags2int(i32 %231)
  %233 = call i32 (...) @asn1_HDBFlags_units()
  %234 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %235 = call i32 @unparse_flags(i32 %232, i32 %233, i8* %234, i32 256)
  %236 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %236)
  br label %238

238:                                              ; preds = %229, %224
  %239 = load i32, i32* %16, align 4
  %240 = load i32, i32* @KADM5_MAX_LIFE, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %259

243:                                              ; preds = %238
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %245 = load i32*, i32** %244, align 8
  %246 = icmp eq i32* %245, null
  br i1 %246, label %247, label %250

247:                                              ; preds = %243
  %248 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %249 = call i32 @strlcpy(i8* %248, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 256)
  br label %256

250:                                              ; preds = %243
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %252, align 4
  %254 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %255 = call i32 @unparse_time(i32 %253, i8* %254, i32 256)
  br label %256

256:                                              ; preds = %250, %247
  %257 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %258 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8* %257)
  br label %259

259:                                              ; preds = %256, %238
  %260 = load i32, i32* %16, align 4
  %261 = load i32, i32* @KADM5_MAX_RLIFE, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %280

264:                                              ; preds = %259
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %266 = load i32*, i32** %265, align 8
  %267 = icmp eq i32* %266, null
  br i1 %267, label %268, label %271

268:                                              ; preds = %264
  %269 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %270 = call i32 @strlcpy(i8* %269, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 256)
  br label %277

271:                                              ; preds = %264
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %273, align 4
  %275 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %276 = call i32 @unparse_time(i32 %274, i8* %275, i32 256)
  br label %277

277:                                              ; preds = %271, %268
  %278 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %279 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8* %278)
  br label %280

280:                                              ; preds = %277, %259
  %281 = load i32, i32* %16, align 4
  %282 = load i32, i32* @KADM5_MOD_TIME, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %280
  %286 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  br label %287

287:                                              ; preds = %285, %280
  %288 = load i32, i32* %16, align 4
  %289 = load i32, i32* @KADM5_MOD_NAME, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %287
  %293 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  br label %294

294:                                              ; preds = %292, %287
  %295 = load i32, i32* %16, align 4
  %296 = load i32, i32* @KADM5_KVNO, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %294
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 %301)
  br label %303

303:                                              ; preds = %299, %294
  %304 = load i32, i32* %16, align 4
  %305 = load i32, i32* @KADM5_MKVNO, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %303
  %309 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  br label %310

310:                                              ; preds = %308, %303
  %311 = load i32, i32* %16, align 4
  %312 = load i32, i32* @KADM5_AUX_ATTRIBUTES, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %310
  %316 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  br label %317

317:                                              ; preds = %315, %310
  %318 = load i32, i32* %16, align 4
  %319 = load i32, i32* @KADM5_POLICY, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %317
  %323 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  br label %324

324:                                              ; preds = %322, %317
  %325 = load i32, i32* %16, align 4
  %326 = load i32, i32* @KADM5_POLICY_CLR, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %324
  %330 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  br label %331

331:                                              ; preds = %329, %324
  %332 = load i32, i32* %16, align 4
  %333 = load i32, i32* @KADM5_LAST_SUCCESS, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %338

336:                                              ; preds = %331
  %337 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  br label %338

338:                                              ; preds = %336, %331
  %339 = load i32, i32* %16, align 4
  %340 = load i32, i32* @KADM5_LAST_FAILED, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %338
  %344 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0))
  br label %345

345:                                              ; preds = %343, %338
  %346 = load i32, i32* %16, align 4
  %347 = load i32, i32* @KADM5_FAIL_AUTH_COUNT, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %352

350:                                              ; preds = %345
  %351 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0))
  br label %352

352:                                              ; preds = %350, %345
  %353 = load i32, i32* %16, align 4
  %354 = load i32, i32* @KADM5_KEY_DATA, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %359

357:                                              ; preds = %352
  %358 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  br label %359

359:                                              ; preds = %357, %352
  %360 = load i32, i32* %16, align 4
  %361 = load i32, i32* @KADM5_TL_DATA, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %366

364:                                              ; preds = %359
  %365 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0))
  br label %366

366:                                              ; preds = %364, %359
  %367 = call i32 @free_hdb_entry(%struct.TYPE_11__* %17)
  br label %371

368:                                              ; preds = %50
  br label %371

369:                                              ; preds = %50
  %370 = call i32 (...) @abort() #3
  unreachable

371:                                              ; preds = %368, %366, %84, %61
  %372 = load i32*, i32** %13, align 8
  %373 = load i32, i32* %23, align 4
  %374 = load i32, i32* @SEEK_SET, align 4
  %375 = call i32 @krb5_storage_seek(i32* %372, i32 %373, i32 %374)
  br label %376

376:                                              ; preds = %371, %43
  ret void
}

declare dso_local i32 @krb5_storage_seek(i32*, i32, i32) #1

declare dso_local i32 @strftime(i8*, i32, i8*, i32) #1

declare dso_local i32 @localtime(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @krb5_ret_principal(i32*, i32*) #1

declare dso_local i32 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i32 @krb5_data_alloc(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @krb5_err(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @krb5_storage_read(i32*, i32, i32) #1

declare dso_local i32 @hdb_value2entry(i32, %struct.TYPE_9__*, %struct.TYPE_11__*) #1

declare dso_local i32 @free_hdb_entry(%struct.TYPE_11__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @krb5_ret_int32(i32*, i32*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @unparse_flags(i32, i32, i8*, i32) #1

declare dso_local i32 @HDBFlags2int(i32) #1

declare dso_local i32 @asn1_HDBFlags_units(...) #1

declare dso_local i32 @unparse_time(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
