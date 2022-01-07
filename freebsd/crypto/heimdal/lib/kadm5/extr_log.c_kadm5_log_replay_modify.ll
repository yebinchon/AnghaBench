; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_log.c_kadm5_log_replay_modify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_log.c_kadm5_log_replay_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 (i32, %struct.TYPE_21__*, i32, %struct.TYPE_20__*)*, i64 (i32, %struct.TYPE_21__*, i32, i32, i32, %struct.TYPE_20__*)* }
%struct.TYPE_20__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32*, %struct.TYPE_17__, i32*, i32, i32*, i32*, i32, i32*, i32*, i32 }
%struct.TYPE_17__ = type { i64, i32* }
%struct.TYPE_18__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@HDB_F_DECRYPT = common dso_local global i32 0, align 4
@HDB_F_GET_ANY = common dso_local global i32 0, align 4
@HDB_F_ADMIN_DATA = common dso_local global i32 0, align 4
@KADM5_PRINC_EXPIRE_TIME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@KADM5_PW_EXPIRATION = common dso_local global i32 0, align 4
@KADM5_LAST_PWD_CHANGE = common dso_local global i32 0, align 4
@KADM5_ATTRIBUTES = common dso_local global i32 0, align 4
@KADM5_MAX_LIFE = common dso_local global i32 0, align 4
@KADM5_MOD_TIME = common dso_local global i32 0, align 4
@KADM5_MOD_NAME = common dso_local global i32 0, align 4
@KADM5_KVNO = common dso_local global i32 0, align 4
@KADM5_MKVNO = common dso_local global i32 0, align 4
@KADM5_AUX_ATTRIBUTES = common dso_local global i32 0, align 4
@KADM5_POLICY = common dso_local global i32 0, align 4
@KADM5_POLICY_CLR = common dso_local global i32 0, align 4
@KADM5_MAX_RLIFE = common dso_local global i32 0, align 4
@KADM5_LAST_SUCCESS = common dso_local global i32 0, align 4
@KADM5_LAST_FAILED = common dso_local global i32 0, align 4
@KADM5_FAIL_AUTH_COUNT = common dso_local global i32 0, align 4
@KADM5_KEY_DATA = common dso_local global i32 0, align 4
@KADM5_TL_DATA = common dso_local global i32 0, align 4
@HDB_F_REPLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, i32, i32, i32*)* @kadm5_log_replay_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kadm5_log_replay_modify(%struct.TYPE_19__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__, align 4
  %13 = alloca %struct.TYPE_20__, align 8
  %14 = alloca %struct.TYPE_20__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = call i32 @memset(%struct.TYPE_20__* %14, i32 0, i32 88)
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @krb5_ret_int32(i32* %19, i32* %11)
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 %21, 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @krb5_data_alloc(%struct.TYPE_18__* %12, i32 %23)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %4
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @krb5_set_error_message(i32 %30, i64 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* %10, align 8
  store i64 %33, i64* %5, align 8
  br label %555

34:                                               ; preds = %4
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @krb5_storage_read(i32* %35, i32 %37, i32 %38)
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %44 = call i64 @hdb_value2entry(i32 %42, %struct.TYPE_18__* %12, %struct.TYPE_16__* %43)
  store i64 %44, i64* %10, align 8
  %45 = call i32 @krb5_data_free(%struct.TYPE_18__* %12)
  %46 = load i64, i64* %10, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i64, i64* %10, align 8
  store i64 %49, i64* %5, align 8
  br label %555

50:                                               ; preds = %34
  %51 = call i32 @memset(%struct.TYPE_20__* %13, i32 0, i32 88)
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 1
  %56 = load i64 (i32, %struct.TYPE_21__*, i32, i32, i32, %struct.TYPE_20__*)*, i64 (i32, %struct.TYPE_21__*, i32, i32, i32, %struct.TYPE_20__*)** %55, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @HDB_F_DECRYPT, align 4
  %67 = load i32, i32* @HDB_F_GET_ANY, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @HDB_F_ADMIN_DATA, align 4
  %70 = or i32 %68, %69
  %71 = call i64 %56(i32 %59, %struct.TYPE_21__* %62, i32 %65, i32 %70, i32 0, %struct.TYPE_20__* %13)
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %10, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %50
  br label %545

75:                                               ; preds = %50
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @KADM5_PRINC_EXPIRE_TIME, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %119

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 8
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 8
  store i32* null, i32** %87, align 8
  br label %118

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 8
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %110

93:                                               ; preds = %88
  %94 = call i8* @malloc(i32 4)
  %95 = bitcast i8* %94 to i32*
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 8
  store i32* %95, i32** %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 8
  %100 = load i32*, i32** %99, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %93
  %103 = load i64, i64* @ENOMEM, align 8
  store i64 %103, i64* %10, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i64, i64* %10, align 8
  %108 = call i32 @krb5_set_error_message(i32 %106, i64 %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %545

109:                                              ; preds = %93
  br label %110

110:                                              ; preds = %109, %88
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 8
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 8
  %117 = load i32*, i32** %116, align 8
  store i32 %114, i32* %117, align 4
  br label %118

118:                                              ; preds = %110, %85
  br label %119

119:                                              ; preds = %118, %75
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* @KADM5_PW_EXPIRATION, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %163

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 7
  %127 = load i32*, i32** %126, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 7
  store i32* null, i32** %131, align 8
  br label %162

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 7
  %135 = load i32*, i32** %134, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %154

137:                                              ; preds = %132
  %138 = call i8* @malloc(i32 4)
  %139 = bitcast i8* %138 to i32*
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 7
  store i32* %139, i32** %141, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 7
  %144 = load i32*, i32** %143, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %153

146:                                              ; preds = %137
  %147 = load i64, i64* @ENOMEM, align 8
  store i64 %147, i64* %10, align 8
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i64, i64* %10, align 8
  %152 = call i32 @krb5_set_error_message(i32 %150, i64 %151, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %545

153:                                              ; preds = %137
  br label %154

154:                                              ; preds = %153, %132
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 7
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 7
  %161 = load i32*, i32** %160, align 8
  store i32 %158, i32* %161, align 4
  br label %162

162:                                              ; preds = %154, %129
  br label %163

163:                                              ; preds = %162, %119
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* @KADM5_LAST_PWD_CHANGE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = call i32 (...) @abort() #3
  unreachable

170:                                              ; preds = %163
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* @KADM5_ATTRIBUTES, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 6
  store i32 %178, i32* %180, align 8
  br label %181

181:                                              ; preds = %175, %170
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* @KADM5_MAX_LIFE, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %225

186:                                              ; preds = %181
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 5
  %189 = load i32*, i32** %188, align 8
  %190 = icmp eq i32* %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 5
  store i32* null, i32** %193, align 8
  br label %224

194:                                              ; preds = %186
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 5
  %197 = load i32*, i32** %196, align 8
  %198 = icmp eq i32* %197, null
  br i1 %198, label %199, label %216

199:                                              ; preds = %194
  %200 = call i8* @malloc(i32 4)
  %201 = bitcast i8* %200 to i32*
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 5
  store i32* %201, i32** %203, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 5
  %206 = load i32*, i32** %205, align 8
  %207 = icmp eq i32* %206, null
  br i1 %207, label %208, label %215

208:                                              ; preds = %199
  %209 = load i64, i64* @ENOMEM, align 8
  store i64 %209, i64* %10, align 8
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i64, i64* %10, align 8
  %214 = call i32 @krb5_set_error_message(i32 %212, i64 %213, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %545

215:                                              ; preds = %199
  br label %216

216:                                              ; preds = %215, %194
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 5
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %219, align 4
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 5
  %223 = load i32*, i32** %222, align 8
  store i32 %220, i32* %223, align 4
  br label %224

224:                                              ; preds = %216, %191
  br label %225

225:                                              ; preds = %224, %181
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* @KADM5_MOD_TIME, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %279

230:                                              ; preds = %225
  %231 = load i32, i32* %11, align 4
  %232 = load i32, i32* @KADM5_MOD_NAME, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %279

235:                                              ; preds = %230
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 4
  %238 = load i32*, i32** %237, align 8
  %239 = icmp eq i32* %238, null
  br i1 %239, label %240, label %257

240:                                              ; preds = %235
  %241 = call i8* @malloc(i32 4)
  %242 = bitcast i8* %241 to i32*
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 4
  store i32* %242, i32** %244, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 4
  %247 = load i32*, i32** %246, align 8
  %248 = icmp eq i32* %247, null
  br i1 %248, label %249, label %256

249:                                              ; preds = %240
  %250 = load i64, i64* @ENOMEM, align 8
  store i64 %250, i64* %10, align 8
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i64, i64* %10, align 8
  %255 = call i32 @krb5_set_error_message(i32 %253, i64 %254, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %545

256:                                              ; preds = %240
  br label %262

257:                                              ; preds = %235
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 4
  %260 = load i32*, i32** %259, align 8
  %261 = call i32 @free_Event(i32* %260)
  br label %262

262:                                              ; preds = %257, %256
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 4
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 4
  %268 = load i32*, i32** %267, align 8
  %269 = call i64 @copy_Event(i32* %265, i32* %268)
  store i64 %269, i64* %10, align 8
  %270 = load i64, i64* %10, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %262
  %273 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i64, i64* %10, align 8
  %277 = call i32 @krb5_set_error_message(i32 %275, i64 %276, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %545

278:                                              ; preds = %262
  br label %279

279:                                              ; preds = %278, %230, %225
  %280 = load i32, i32* %11, align 4
  %281 = load i32, i32* @KADM5_KVNO, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %279
  %285 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 3
  store i32 %287, i32* %289, align 8
  br label %290

290:                                              ; preds = %284, %279
  %291 = load i32, i32* %11, align 4
  %292 = load i32, i32* @KADM5_MKVNO, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %290
  %296 = call i32 (...) @abort() #3
  unreachable

297:                                              ; preds = %290
  %298 = load i32, i32* %11, align 4
  %299 = load i32, i32* @KADM5_AUX_ATTRIBUTES, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %297
  %303 = call i32 (...) @abort() #3
  unreachable

304:                                              ; preds = %297
  %305 = load i32, i32* %11, align 4
  %306 = load i32, i32* @KADM5_POLICY, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %304
  %310 = call i32 (...) @abort() #3
  unreachable

311:                                              ; preds = %304
  %312 = load i32, i32* %11, align 4
  %313 = load i32, i32* @KADM5_POLICY_CLR, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %311
  %317 = call i32 (...) @abort() #3
  unreachable

318:                                              ; preds = %311
  %319 = load i32, i32* %11, align 4
  %320 = load i32, i32* @KADM5_MAX_RLIFE, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %362

323:                                              ; preds = %318
  %324 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %324, i32 0, i32 2
  %326 = load i32*, i32** %325, align 8
  %327 = icmp eq i32* %326, null
  br i1 %327, label %328, label %331

328:                                              ; preds = %323
  %329 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %329, i32 0, i32 2
  store i32* null, i32** %330, align 8
  br label %361

331:                                              ; preds = %323
  %332 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i32 0, i32 2
  %334 = load i32*, i32** %333, align 8
  %335 = icmp eq i32* %334, null
  br i1 %335, label %336, label %353

336:                                              ; preds = %331
  %337 = call i8* @malloc(i32 4)
  %338 = bitcast i8* %337 to i32*
  %339 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i32 0, i32 2
  store i32* %338, i32** %340, align 8
  %341 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %341, i32 0, i32 2
  %343 = load i32*, i32** %342, align 8
  %344 = icmp eq i32* %343, null
  br i1 %344, label %345, label %352

345:                                              ; preds = %336
  %346 = load i64, i64* @ENOMEM, align 8
  store i64 %346, i64* %10, align 8
  %347 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load i64, i64* %10, align 8
  %351 = call i32 @krb5_set_error_message(i32 %349, i64 %350, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %545

352:                                              ; preds = %336
  br label %353

353:                                              ; preds = %352, %331
  %354 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %354, i32 0, i32 2
  %356 = load i32*, i32** %355, align 8
  %357 = load i32, i32* %356, align 4
  %358 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %358, i32 0, i32 2
  %360 = load i32*, i32** %359, align 8
  store i32 %357, i32* %360, align 4
  br label %361

361:                                              ; preds = %353, %328
  br label %362

362:                                              ; preds = %361, %318
  %363 = load i32, i32* %11, align 4
  %364 = load i32, i32* @KADM5_LAST_SUCCESS, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %369

367:                                              ; preds = %362
  %368 = call i32 (...) @abort() #3
  unreachable

369:                                              ; preds = %362
  %370 = load i32, i32* %11, align 4
  %371 = load i32, i32* @KADM5_LAST_FAILED, align 4
  %372 = and i32 %370, %371
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %376

374:                                              ; preds = %369
  %375 = call i32 (...) @abort() #3
  unreachable

376:                                              ; preds = %369
  %377 = load i32, i32* %11, align 4
  %378 = load i32, i32* @KADM5_FAIL_AUTH_COUNT, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %383

381:                                              ; preds = %376
  %382 = call i32 (...) @abort() #3
  unreachable

383:                                              ; preds = %376
  %384 = load i32, i32* %11, align 4
  %385 = load i32, i32* @KADM5_KEY_DATA, align 4
  %386 = and i32 %384, %385
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %477

388:                                              ; preds = %383
  store i64 0, i64* %16, align 8
  br label %389

389:                                              ; preds = %404, %388
  %390 = load i64, i64* %16, align 8
  %391 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %391, i32 0, i32 1
  %393 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = icmp ult i64 %390, %394
  br i1 %395, label %396, label %407

396:                                              ; preds = %389
  %397 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %398, i32 0, i32 1
  %400 = load i32*, i32** %399, align 8
  %401 = load i64, i64* %16, align 8
  %402 = getelementptr inbounds i32, i32* %400, i64 %401
  %403 = call i32 @free_Key(i32* %402)
  br label %404

404:                                              ; preds = %396
  %405 = load i64, i64* %16, align 8
  %406 = add i64 %405, 1
  store i64 %406, i64* %16, align 8
  br label %389

407:                                              ; preds = %389
  %408 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %408, i32 0, i32 1
  %410 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %409, i32 0, i32 1
  %411 = load i32*, i32** %410, align 8
  %412 = call i32 @free(i32* %411)
  %413 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %413, i32 0, i32 1
  %415 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %414, i32 0, i32 0
  %416 = load i64, i64* %415, align 8
  store i64 %416, i64* %15, align 8
  %417 = load i64, i64* %15, align 8
  %418 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %419, i32 0, i32 0
  store i64 %417, i64* %420, align 8
  %421 = load i32, i32* %8, align 4
  %422 = sext i32 %421 to i64
  %423 = mul i64 %422, 4
  %424 = trunc i64 %423 to i32
  %425 = call i8* @malloc(i32 %424)
  %426 = bitcast i8* %425 to i32*
  %427 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %427, i32 0, i32 1
  %429 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %428, i32 0, i32 1
  store i32* %426, i32** %429, align 8
  %430 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %431, i32 0, i32 1
  %433 = load i32*, i32** %432, align 8
  %434 = icmp eq i32* %433, null
  br i1 %434, label %435, label %442

435:                                              ; preds = %407
  %436 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %437 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  %439 = load i64, i64* @ENOMEM, align 8
  %440 = call i32 @krb5_set_error_message(i32 %438, i64 %439, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %441 = load i64, i64* @ENOMEM, align 8
  store i64 %441, i64* %5, align 8
  br label %555

442:                                              ; preds = %407
  store i64 0, i64* %16, align 8
  br label %443

443:                                              ; preds = %473, %442
  %444 = load i64, i64* %16, align 8
  %445 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %445, i32 0, i32 1
  %447 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %446, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = icmp ult i64 %444, %448
  br i1 %449, label %450, label %476

450:                                              ; preds = %443
  %451 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %451, i32 0, i32 1
  %453 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %452, i32 0, i32 1
  %454 = load i32*, i32** %453, align 8
  %455 = load i64, i64* %16, align 8
  %456 = getelementptr inbounds i32, i32* %454, i64 %455
  %457 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %457, i32 0, i32 1
  %459 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %458, i32 0, i32 1
  %460 = load i32*, i32** %459, align 8
  %461 = load i64, i64* %16, align 8
  %462 = getelementptr inbounds i32, i32* %460, i64 %461
  %463 = call i64 @copy_Key(i32* %456, i32* %462)
  store i64 %463, i64* %10, align 8
  %464 = load i64, i64* %10, align 8
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %472

466:                                              ; preds = %450
  %467 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %468 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = load i64, i64* %10, align 8
  %471 = call i32 @krb5_set_error_message(i32 %469, i64 %470, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %545

472:                                              ; preds = %450
  br label %473

473:                                              ; preds = %472
  %474 = load i64, i64* %16, align 8
  %475 = add i64 %474, 1
  store i64 %475, i64* %16, align 8
  br label %443

476:                                              ; preds = %443
  br label %477

477:                                              ; preds = %476, %383
  %478 = load i32, i32* %11, align 4
  %479 = load i32, i32* @KADM5_TL_DATA, align 4
  %480 = and i32 %478, %479
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %531

482:                                              ; preds = %477
  %483 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %484 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %483, i32 0, i32 0
  %485 = load i32*, i32** %484, align 8
  %486 = icmp ne i32* %485, null
  br i1 %486, label %487, label %531

487:                                              ; preds = %482
  %488 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %488, i32 0, i32 0
  %490 = load i32*, i32** %489, align 8
  store i32* %490, i32** %17, align 8
  %491 = call i32* @calloc(i32 1, i32 4)
  %492 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %493 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %492, i32 0, i32 0
  store i32* %491, i32** %493, align 8
  %494 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %495 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %494, i32 0, i32 0
  %496 = load i32*, i32** %495, align 8
  %497 = icmp eq i32* %496, null
  br i1 %497, label %498, label %499

498:                                              ; preds = %487
  br label %545

499:                                              ; preds = %487
  %500 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %501 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %500, i32 0, i32 0
  %502 = load i32*, i32** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %504 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %503, i32 0, i32 0
  %505 = load i32*, i32** %504, align 8
  %506 = call i64 @copy_HDB_extensions(i32* %502, i32* %505)
  store i64 %506, i64* %10, align 8
  %507 = load i64, i64* %10, align 8
  %508 = icmp ne i64 %507, 0
  br i1 %508, label %509, label %522

509:                                              ; preds = %499
  %510 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %511 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 8
  %513 = load i64, i64* %10, align 8
  %514 = call i32 @krb5_set_error_message(i32 %512, i64 %513, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %515 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %516 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %515, i32 0, i32 0
  %517 = load i32*, i32** %516, align 8
  %518 = call i32 @free(i32* %517)
  %519 = load i32*, i32** %17, align 8
  %520 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %521 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %520, i32 0, i32 0
  store i32* %519, i32** %521, align 8
  br label %545

522:                                              ; preds = %499
  %523 = load i32*, i32** %17, align 8
  %524 = icmp ne i32* %523, null
  br i1 %524, label %525, label %530

525:                                              ; preds = %522
  %526 = load i32*, i32** %17, align 8
  %527 = call i32 @free_HDB_extensions(i32* %526)
  %528 = load i32*, i32** %17, align 8
  %529 = call i32 @free(i32* %528)
  br label %530

530:                                              ; preds = %525, %522
  br label %531

531:                                              ; preds = %530, %482, %477
  %532 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %533 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %532, i32 0, i32 1
  %534 = load %struct.TYPE_21__*, %struct.TYPE_21__** %533, align 8
  %535 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %534, i32 0, i32 0
  %536 = load i64 (i32, %struct.TYPE_21__*, i32, %struct.TYPE_20__*)*, i64 (i32, %struct.TYPE_21__*, i32, %struct.TYPE_20__*)** %535, align 8
  %537 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %538 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 8
  %540 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %541 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %540, i32 0, i32 1
  %542 = load %struct.TYPE_21__*, %struct.TYPE_21__** %541, align 8
  %543 = load i32, i32* @HDB_F_REPLACE, align 4
  %544 = call i64 %536(i32 %539, %struct.TYPE_21__* %542, i32 %543, %struct.TYPE_20__* %13)
  store i64 %544, i64* %10, align 8
  br label %545

545:                                              ; preds = %531, %509, %498, %466, %345, %272, %249, %208, %146, %102, %74
  %546 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %547 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 8
  %549 = call i32 @hdb_free_entry(i32 %548, %struct.TYPE_20__* %13)
  %550 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %551 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 8
  %553 = call i32 @hdb_free_entry(i32 %552, %struct.TYPE_20__* %14)
  %554 = load i64, i64* %10, align 8
  store i64 %554, i64* %5, align 8
  br label %555

555:                                              ; preds = %545, %435, %48, %27
  %556 = load i64, i64* %5, align 8
  ret i64 %556
}

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @krb5_ret_int32(i32*, i32*) #1

declare dso_local i64 @krb5_data_alloc(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i8*) #1

declare dso_local i32 @krb5_storage_read(i32*, i32, i32) #1

declare dso_local i64 @hdb_value2entry(i32, %struct.TYPE_18__*, %struct.TYPE_16__*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_18__*) #1

declare dso_local i8* @malloc(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @free_Event(i32*) #1

declare dso_local i64 @copy_Event(i32*, i32*) #1

declare dso_local i32 @free_Key(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @copy_Key(i32*, i32*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i64 @copy_HDB_extensions(i32*, i32*) #1

declare dso_local i32 @free_HDB_extensions(i32*) #1

declare dso_local i32 @hdb_free_entry(i32, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
