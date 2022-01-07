; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kpasswd/extr_kpasswdd.c_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kpasswd/extr_kpasswdd.c_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_22__*, %struct.TYPE_19__, %struct.TYPE_16__* }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_21__ = type { i32*, i64 }
%struct.sockaddr = type { i32 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Strange len: %ld != %ld\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Request is error packet (ap_req_len == 0)\00", align 1
@KRB5_KPASSWD_VERS_CHANGEPW = common dso_local global i64 0, align 8
@KRB5_KPASSWD_VERS_SETPW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Bad version (%d)\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Wrong program version\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"krb5_rd_req\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Authentication failed\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"kadmin\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"changepw\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"krb5_make_principal\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [35 x i8] c"client used not valid principal %s\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Bad request\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"server realm (%s) not same a client realm (%s)\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"initial flag not set\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"krb5_auth_con_setaddr(this)\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"krb5_rd_priv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i32, %struct.TYPE_20__**, %struct.TYPE_21__*, i64*, i32, %struct.sockaddr*, i32, i32*, i64, i32*)* @verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify(i32* %0, i32** %1, i32 %2, %struct.TYPE_20__** %3, %struct.TYPE_21__* %4, i64* %5, i32 %6, %struct.sockaddr* %7, i32 %8, i32* %9, i64 %10, i32* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_20__**, align 8
  %18 = alloca %struct.TYPE_21__*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.sockaddr*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.TYPE_21__, align 8
  %31 = alloca %struct.TYPE_21__, align 8
  %32 = alloca i32**, align 8
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca i8*, align 8
  store i32* %0, i32** %14, align 8
  store i32** %1, i32*** %15, align 8
  store i32 %2, i32* %16, align 4
  store %struct.TYPE_20__** %3, %struct.TYPE_20__*** %17, align 8
  store %struct.TYPE_21__* %4, %struct.TYPE_21__** %18, align 8
  store i64* %5, i64** %19, align 8
  store i32 %6, i32* %20, align 4
  store %struct.sockaddr* %7, %struct.sockaddr** %21, align 8
  store i32 %8, i32* %22, align 4
  store i32* %9, i32** %23, align 8
  store i64 %10, i64* %24, align 8
  store i32* %11, i32** %25, align 8
  %36 = load i32*, i32** %23, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 8
  %40 = load i32*, i32** %23, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %39, %42
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %27, align 8
  %45 = load i32*, i32** %23, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  %49 = load i32*, i32** %23, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %48, %51
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %28, align 8
  %54 = load i32*, i32** %23, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 8
  %58 = load i32*, i32** %23, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 5
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %57, %60
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %29, align 8
  %63 = load i64, i64* %27, align 8
  %64 = load i64, i64* %24, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %12
  %67 = load i32, i32* @context, align 4
  %68 = load i64, i64* %27, align 8
  %69 = load i64, i64* %24, align 8
  %70 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %68, i64 %69)
  store i32 1, i32* %13, align 4
  br label %305

71:                                               ; preds = %12
  %72 = load i64, i64* %29, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* @context, align 4
  %76 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %75, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %305

77:                                               ; preds = %71
  %78 = load i64, i64* %28, align 8
  %79 = load i64, i64* @KRB5_KPASSWD_VERS_CHANGEPW, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = load i64, i64* %28, align 8
  %83 = load i64, i64* @KRB5_KPASSWD_VERS_SETPW, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load i32, i32* @context, align 4
  %87 = load i64, i64* %28, align 8
  %88 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %86, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %87)
  %89 = load i32, i32* %20, align 4
  %90 = load %struct.sockaddr*, %struct.sockaddr** %21, align 8
  %91 = load i32, i32* %22, align 4
  %92 = call i32 @reply_error(i32* null, i32 %89, %struct.sockaddr* %90, i32 %91, i64 0, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %305

93:                                               ; preds = %81, %77
  %94 = load i64, i64* %28, align 8
  %95 = load i64*, i64** %19, align 8
  store i64 %94, i64* %95, align 8
  %96 = load i32*, i32** %23, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 6
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  store i32* %97, i32** %98, align 8
  %99 = load i64, i64* %29, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 1
  store i64 %99, i64* %100, align 8
  %101 = load i32, i32* @context, align 4
  %102 = load i32*, i32** %14, align 8
  %103 = load i32, i32* %16, align 4
  %104 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %17, align 8
  %105 = call i64 @krb5_rd_req(i32 %101, i32* %102, %struct.TYPE_21__* %30, i32* null, i32 %103, i32* null, %struct.TYPE_20__** %104)
  store i64 %105, i64* %26, align 8
  %106 = load i64, i64* %26, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %93
  %109 = load i32, i32* @context, align 4
  %110 = load i64, i64* %26, align 8
  %111 = call i32 @krb5_warn(i32 %109, i64 %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %112 = load i32, i32* %20, align 4
  %113 = load %struct.sockaddr*, %struct.sockaddr** %21, align 8
  %114 = load i32, i32* %22, align 4
  %115 = load i64, i64* %26, align 8
  %116 = call i32 @reply_error(i32* null, i32 %112, %struct.sockaddr* %113, i32 %114, i64 %115, i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %305

117:                                              ; preds = %93
  %118 = load i32**, i32*** %15, align 8
  store i32** %118, i32*** %32, align 8
  br label %119

119:                                              ; preds = %150, %117
  %120 = load i32**, i32*** %32, align 8
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %153

123:                                              ; preds = %119
  %124 = load i32, i32* @context, align 4
  %125 = load i32**, i32*** %32, align 8
  %126 = load i32*, i32** %125, align 8
  %127 = call i64 @krb5_make_principal(i32 %124, i32* %33, i32* %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* null)
  store i64 %127, i64* %26, align 8
  %128 = load i64, i64* %26, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  %131 = load i32, i32* @context, align 4
  %132 = load i64, i64* %26, align 8
  %133 = call i32 @krb5_err(i32 %131, i32 1, i64 %132, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %134

134:                                              ; preds = %130, %123
  %135 = load i32, i32* @context, align 4
  %136 = load i32, i32* %33, align 4
  %137 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %17, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %139, align 8
  %141 = call i64 @krb5_principal_compare(i32 %135, i32 %136, %struct.TYPE_22__* %140)
  store i64 %141, i64* %34, align 8
  %142 = load i32, i32* @context, align 4
  %143 = load i32, i32* %33, align 4
  %144 = call i32 @krb5_free_principal(i32 %142, i32 %143)
  %145 = load i64, i64* %34, align 8
  %146 = load i64, i64* @TRUE, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %134
  br label %153

149:                                              ; preds = %134
  br label %150

150:                                              ; preds = %149
  %151 = load i32**, i32*** %32, align 8
  %152 = getelementptr inbounds i32*, i32** %151, i32 1
  store i32** %152, i32*** %32, align 8
  br label %119

153:                                              ; preds = %148, %119
  %154 = load i32**, i32*** %32, align 8
  %155 = load i32*, i32** %154, align 8
  %156 = icmp eq i32* %155, null
  br i1 %156, label %157, label %174

157:                                              ; preds = %153
  %158 = load i32, i32* @context, align 4
  %159 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %17, align 8
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %161, align 8
  %163 = call i32 @krb5_unparse_name(i32 %158, %struct.TYPE_22__* %162, i8** %35)
  %164 = load i32, i32* @context, align 4
  %165 = load i8*, i8** %35, align 8
  %166 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %164, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i8* %165)
  %167 = load i8*, i8** %35, align 8
  %168 = call i32 @free(i8* %167)
  %169 = load i32, i32* %20, align 4
  %170 = load %struct.sockaddr*, %struct.sockaddr** %21, align 8
  %171 = load i32, i32* %22, align 4
  %172 = load i64, i64* %26, align 8
  %173 = call i32 @reply_error(i32* null, i32 %169, %struct.sockaddr* %170, i32 %171, i64 %172, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %300

174:                                              ; preds = %153
  %175 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %17, align 8
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %17, align 8
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @strcmp(i32* %180, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %215

189:                                              ; preds = %174
  %190 = load i32, i32* @context, align 4
  %191 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %17, align 8
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %17, align 8
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %190, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i32* %196, i32 %202)
  %204 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %17, align 8
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %20, align 4
  %211 = load %struct.sockaddr*, %struct.sockaddr** %21, align 8
  %212 = load i32, i32* %22, align 4
  %213 = load i64, i64* %26, align 8
  %214 = call i32 @reply_error(i32* %209, i32 %210, %struct.sockaddr* %211, i32 %212, i64 %213, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %300

215:                                              ; preds = %174
  %216 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %17, align 8
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %237, label %223

223:                                              ; preds = %215
  %224 = load i32, i32* @context, align 4
  %225 = call i32 (i32, i8*, ...) @krb5_warnx(i32 %224, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %226 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %17, align 8
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %20, align 4
  %233 = load %struct.sockaddr*, %struct.sockaddr** %21, align 8
  %234 = load i32, i32* %22, align 4
  %235 = load i64, i64* %26, align 8
  %236 = call i32 @reply_error(i32* %231, i32 %232, %struct.sockaddr* %233, i32 %234, i64 %235, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %300

237:                                              ; preds = %215
  %238 = load i32*, i32** %23, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 6
  %240 = load i64, i64* %29, align 8
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  store i32* %241, i32** %242, align 8
  %243 = load i64, i64* %24, align 8
  %244 = sub i64 %243, 6
  %245 = load i64, i64* %29, align 8
  %246 = sub i64 %244, %245
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 1
  store i64 %246, i64* %247, align 8
  %248 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %17, align 8
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %251, align 8
  %253 = icmp ne %struct.TYPE_18__* %252, null
  br i1 %253, label %254, label %276

254:                                              ; preds = %237
  %255 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %17, align 8
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_18__*, %struct.TYPE_18__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = icmp sgt i64 %261, 0
  br i1 %262, label %263, label %276

263:                                              ; preds = %254
  %264 = load i32, i32* @context, align 4
  %265 = load i32*, i32** %14, align 8
  %266 = load i32, i32* %265, align 4
  %267 = load i32*, i32** %25, align 8
  %268 = call i64 @krb5_auth_con_setaddrs(i32 %264, i32 %266, i32* null, i32* %267)
  store i64 %268, i64* %26, align 8
  %269 = load i64, i64* %26, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %263
  %272 = load i32, i32* @context, align 4
  %273 = load i64, i64* %26, align 8
  %274 = call i32 @krb5_warn(i32 %272, i64 %273, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  br label %300

275:                                              ; preds = %263
  br label %276

276:                                              ; preds = %275, %254, %237
  %277 = load i32, i32* @context, align 4
  %278 = load i32*, i32** %14, align 8
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %281 = call i64 @krb5_rd_priv(i32 %277, i32 %279, %struct.TYPE_21__* %31, %struct.TYPE_21__* %280, i32* null)
  store i64 %281, i64* %26, align 8
  %282 = load i64, i64* %26, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %299

284:                                              ; preds = %276
  %285 = load i32, i32* @context, align 4
  %286 = load i64, i64* %26, align 8
  %287 = call i32 @krb5_warn(i32 %285, i64 %286, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %288 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %17, align 8
  %289 = load %struct.TYPE_20__*, %struct.TYPE_20__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_22__*, %struct.TYPE_22__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %291, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %20, align 4
  %295 = load %struct.sockaddr*, %struct.sockaddr** %21, align 8
  %296 = load i32, i32* %22, align 4
  %297 = load i64, i64* %26, align 8
  %298 = call i32 @reply_error(i32* %293, i32 %294, %struct.sockaddr* %295, i32 %296, i64 %297, i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %300

299:                                              ; preds = %276
  store i32 0, i32* %13, align 4
  br label %305

300:                                              ; preds = %284, %271, %223, %189, %157
  %301 = load i32, i32* @context, align 4
  %302 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %17, align 8
  %303 = load %struct.TYPE_20__*, %struct.TYPE_20__** %302, align 8
  %304 = call i32 @krb5_free_ticket(i32 %301, %struct.TYPE_20__* %303)
  store %struct.TYPE_20__** null, %struct.TYPE_20__*** %17, align 8
  store i32 1, i32* %13, align 4
  br label %305

305:                                              ; preds = %300, %299, %108, %85, %74, %66
  %306 = load i32, i32* %13, align 4
  ret i32 %306
}

declare dso_local i32 @krb5_warnx(i32, i8*, ...) #1

declare dso_local i32 @reply_error(i32*, i32, %struct.sockaddr*, i32, i64, i32, i8*) #1

declare dso_local i64 @krb5_rd_req(i32, i32*, %struct.TYPE_21__*, i32*, i32, i32*, %struct.TYPE_20__**) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

declare dso_local i64 @krb5_make_principal(i32, i32*, i32*, i8*, i8*, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @krb5_principal_compare(i32, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i32 @krb5_unparse_name(i32, %struct.TYPE_22__*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strcmp(i32*, i32) #1

declare dso_local i64 @krb5_auth_con_setaddrs(i32, i32, i32*, i32*) #1

declare dso_local i64 @krb5_rd_priv(i32, i32, %struct.TYPE_21__*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @krb5_free_ticket(i32, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
