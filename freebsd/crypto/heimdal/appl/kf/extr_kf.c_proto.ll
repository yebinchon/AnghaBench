; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/kf/extr_kf.c_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/kf/extr_kf.c_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i64, i8* }
%struct.TYPE_21__ = type { %struct.TYPE_16__, i32, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"krb5_auth_con_init\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"krb5_auth_con_setaddr\00", align 1
@KRB5_NT_SRV_HST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"krb5_sname_to_principal\00", align 1
@KF_VERSION_1 = common dso_local global i32 0, align 4
@AP_OPTS_MUTUAL_REQUIRED = common dso_local global i32 0, align 4
@AP_OPTS_USE_SUBKEY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"krb5_sendauth\00", align 1
@ccache_name = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@remote_name = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"krb5_write_message\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"krb5_cc_default\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"krb5_cc_get_principal\00", align 1
@KRB5_TGS_NAME = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"krb5_make_principal\00", align 1
@forwardable = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"krb5_get_forwarded_creds\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"krb5_mk_priv\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"returned string is too long, truncating\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i8*, i64)* @proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proto(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_20__, align 8
  %16 = alloca %struct.TYPE_20__, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_21__, align 8
  %19 = alloca %struct.TYPE_19__, align 8
  %20 = alloca %struct.TYPE_18__*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %21 = load i32, i32* @context, align 4
  %22 = call i64 @krb5_auth_con_init(i32 %21, i32* %12)
  store i64 %22, i64* %13, align 8
  %23 = load i64, i64* %13, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load i32, i32* @context, align 4
  %27 = load i64, i64* %13, align 8
  %28 = call i32 @krb5_warn(i32 %26, i64 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %250

29:                                               ; preds = %5
  %30 = load i32, i32* @context, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i64 @krb5_auth_con_setaddrs_from_fd(i32 %30, i32 %31, i32* %7)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i32, i32* @context, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @krb5_auth_con_free(i32 %36, i32 %37)
  %39 = load i32, i32* @context, align 4
  %40 = load i64, i64* %13, align 8
  %41 = call i32 @krb5_warn(i32 %39, i64 %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %250

42:                                               ; preds = %29
  %43 = load i32, i32* @context, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* @KRB5_NT_SRV_HST, align 4
  %47 = call i64 @krb5_sname_to_principal(i32 %43, i8* %44, i8* %45, i32 %46, %struct.TYPE_18__** %14)
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %13, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load i32, i32* @context, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @krb5_auth_con_free(i32 %51, i32 %52)
  %54 = load i32, i32* @context, align 4
  %55 = load i64, i64* %13, align 8
  %56 = call i32 @krb5_warn(i32 %54, i64 %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %250

57:                                               ; preds = %42
  %58 = load i32, i32* @context, align 4
  %59 = load i32, i32* @KF_VERSION_1, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %61 = load i32, i32* @AP_OPTS_MUTUAL_REQUIRED, align 4
  %62 = load i32, i32* @AP_OPTS_USE_SUBKEY, align 4
  %63 = or i32 %61, %62
  %64 = call i64 @krb5_sendauth(i32 %58, i32* %12, i32* %7, i32 %59, i32* null, %struct.TYPE_18__* %60, i32 %63, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null)
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %13, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %57
  %68 = load i32, i32* @context, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @krb5_auth_con_free(i32 %68, i32 %69)
  %71 = load i32, i32* @context, align 4
  %72 = load i64, i64* %13, align 8
  %73 = call i32 @krb5_warn(i32 %71, i64 %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %250

74:                                               ; preds = %57
  %75 = load i8*, i8** @ccache_name, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** @ccache_name, align 8
  br label %78

78:                                               ; preds = %77, %74
  %79 = load i8*, i8** @remote_name, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  store i8* %79, i8** %80, align 8
  %81 = load i8*, i8** @remote_name, align 8
  %82 = call i8* @strlen(i8* %81)
  %83 = getelementptr i8, i8* %82, i64 1
  %84 = ptrtoint i8* %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  store i64 %84, i64* %85, align 8
  %86 = load i32, i32* @context, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i64 @krb5_write_priv_message(i32 %86, i32 %87, i32* %7, %struct.TYPE_20__* %16)
  store i64 %88, i64* %13, align 8
  %89 = load i64, i64* %13, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %78
  %92 = load i32, i32* @context, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @krb5_auth_con_free(i32 %92, i32 %93)
  %95 = load i32, i32* @context, align 4
  %96 = load i64, i64* %13, align 8
  %97 = call i32 @krb5_warn(i32 %95, i64 %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %250

98:                                               ; preds = %78
  %99 = load i8*, i8** @ccache_name, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  store i8* %99, i8** %100, align 8
  %101 = load i8*, i8** @ccache_name, align 8
  %102 = call i8* @strlen(i8* %101)
  %103 = getelementptr i8, i8* %102, i64 1
  %104 = ptrtoint i8* %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  store i64 %104, i64* %105, align 8
  %106 = load i32, i32* @context, align 4
  %107 = load i32, i32* %12, align 4
  %108 = call i64 @krb5_write_priv_message(i32 %106, i32 %107, i32* %7, %struct.TYPE_20__* %16)
  store i64 %108, i64* %13, align 8
  %109 = load i64, i64* %13, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %98
  %112 = load i32, i32* @context, align 4
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @krb5_auth_con_free(i32 %112, i32 %113)
  %115 = load i32, i32* @context, align 4
  %116 = load i64, i64* %13, align 8
  %117 = call i32 @krb5_warn(i32 %115, i64 %116, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %250

118:                                              ; preds = %98
  %119 = call i32 @memset(%struct.TYPE_21__* %18, i32 0, i32 24)
  %120 = load i32, i32* @context, align 4
  %121 = call i64 @krb5_cc_default(i32 %120, i32* %17)
  store i64 %121, i64* %13, align 8
  %122 = load i64, i64* %13, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load i32, i32* @context, align 4
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @krb5_auth_con_free(i32 %125, i32 %126)
  %128 = load i32, i32* @context, align 4
  %129 = load i64, i64* %13, align 8
  %130 = call i32 @krb5_warn(i32 %128, i64 %129, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %250

131:                                              ; preds = %118
  %132 = load i32, i32* @context, align 4
  %133 = load i32, i32* %17, align 4
  %134 = call i64 @krb5_cc_get_principal(i32 %132, i32 %133, %struct.TYPE_18__** %20)
  store i64 %134, i64* %13, align 8
  %135 = load i64, i64* %13, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = load i32, i32* @context, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @krb5_auth_con_free(i32 %138, i32 %139)
  %141 = load i32, i32* @context, align 4
  %142 = load i64, i64* %13, align 8
  %143 = call i32 @krb5_warn(i32 %141, i64 %142, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %250

144:                                              ; preds = %131
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 2
  store %struct.TYPE_18__* %145, %struct.TYPE_18__** %146, align 8
  %147 = load i32, i32* @context, align 4
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 1
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @KRB5_TGS_NAME, align 4
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @krb5_make_principal(i32 %147, i32* %148, i32 %151, i32 %152, i32 %155, i32* null)
  store i64 %156, i64* %13, align 8
  %157 = load i64, i64* %13, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %144
  %160 = load i32, i32* @context, align 4
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @krb5_auth_con_free(i32 %160, i32 %161)
  %163 = load i32, i32* @context, align 4
  %164 = load i64, i64* %13, align 8
  %165 = call i32 @krb5_warn(i32 %163, i64 %164, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %250

166:                                              ; preds = %144
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  store i64 0, i64* %168, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  store i64 0, i64* %169, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  store i32 1, i32* %171, align 8
  %172 = load i32, i32* @forwardable, align 4
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* @context, align 4
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %17, align 4
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i8*, i8** %8, align 8
  %181 = call i64 @krb5_get_forwarded_creds(i32 %175, i32 %176, i32 %177, i64 %179, i8* %180, %struct.TYPE_21__* %18, %struct.TYPE_20__* %15)
  store i64 %181, i64* %13, align 8
  %182 = load i64, i64* %13, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %166
  %185 = load i32, i32* @context, align 4
  %186 = load i32, i32* %12, align 4
  %187 = call i32 @krb5_auth_con_free(i32 %185, i32 %186)
  %188 = load i32, i32* @context, align 4
  %189 = load i64, i64* %13, align 8
  %190 = call i32 @krb5_warn(i32 %188, i64 %189, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %250

191:                                              ; preds = %166
  %192 = load i32, i32* @context, align 4
  %193 = load i32, i32* %12, align 4
  %194 = call i64 @krb5_write_priv_message(i32 %192, i32 %193, i32* %7, %struct.TYPE_20__* %15)
  store i64 %194, i64* %13, align 8
  %195 = load i64, i64* %13, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %191
  %198 = load i32, i32* @context, align 4
  %199 = load i32, i32* %12, align 4
  %200 = call i32 @krb5_auth_con_free(i32 %198, i32 %199)
  %201 = load i32, i32* @context, align 4
  %202 = load i64, i64* %13, align 8
  %203 = call i32 @krb5_warn(i32 %201, i64 %202, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %250

204:                                              ; preds = %191
  %205 = call i32 @krb5_data_free(%struct.TYPE_20__* %15)
  %206 = load i32, i32* @context, align 4
  %207 = load i32, i32* %12, align 4
  %208 = call i64 @krb5_read_priv_message(i32 %206, i32 %207, i32* %7, %struct.TYPE_20__* %15)
  store i64 %208, i64* %13, align 8
  %209 = load i32, i32* @context, align 4
  %210 = load i32, i32* %12, align 4
  %211 = call i32 @krb5_auth_con_free(i32 %209, i32 %210)
  %212 = load i64, i64* %13, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %204
  %215 = load i32, i32* @context, align 4
  %216 = load i64, i64* %13, align 8
  %217 = call i32 @krb5_warn(i32 %215, i64 %216, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %250

218:                                              ; preds = %204
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* %11, align 8
  %222 = icmp uge i64 %220, %221
  br i1 %222, label %223, label %235

223:                                              ; preds = %218
  %224 = load i32, i32* @context, align 4
  %225 = call i32 @krb5_warnx(i32 %224, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %226 = load i8*, i8** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 1
  %228 = load i8*, i8** %227, align 8
  %229 = load i64, i64* %11, align 8
  %230 = call i32 @memcpy(i8* %226, i8* %228, i64 %229)
  %231 = load i8*, i8** %10, align 8
  %232 = load i64, i64* %11, align 8
  %233 = sub i64 %232, 1
  %234 = getelementptr inbounds i8, i8* %231, i64 %233
  store i8 0, i8* %234, align 1
  br label %246

235:                                              ; preds = %218
  %236 = load i8*, i8** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 1
  %238 = load i8*, i8** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @memcpy(i8* %236, i8* %238, i64 %240)
  %242 = load i8*, i8** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = getelementptr inbounds i8, i8* %242, i64 %244
  store i8 0, i8* %245, align 1
  br label %246

246:                                              ; preds = %235, %223
  %247 = call i32 @krb5_data_free(%struct.TYPE_20__* %15)
  %248 = load i8*, i8** %10, align 8
  %249 = call i32 @strcmp(i8* %248, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  store i32 %249, i32* %6, align 4
  br label %250

250:                                              ; preds = %246, %214, %197, %184, %159, %137, %124, %111, %91, %67, %50, %35, %25
  %251 = load i32, i32* %6, align 4
  ret i32 %251
}

declare dso_local i64 @krb5_auth_con_init(i32, i32*) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

declare dso_local i64 @krb5_auth_con_setaddrs_from_fd(i32, i32, i32*) #1

declare dso_local i32 @krb5_auth_con_free(i32, i32) #1

declare dso_local i64 @krb5_sname_to_principal(i32, i8*, i8*, i32, %struct.TYPE_18__**) #1

declare dso_local i64 @krb5_sendauth(i32, i32*, i32*, i32, i32*, %struct.TYPE_18__*, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i64 @krb5_write_priv_message(i32, i32, i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i64 @krb5_cc_default(i32, i32*) #1

declare dso_local i64 @krb5_cc_get_principal(i32, i32, %struct.TYPE_18__**) #1

declare dso_local i64 @krb5_make_principal(i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i64 @krb5_get_forwarded_creds(i32, i32, i32, i64, i8*, %struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_20__*) #1

declare dso_local i64 @krb5_read_priv_message(i32, i32, i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @krb5_warnx(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
