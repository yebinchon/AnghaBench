; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_init_c.c_kadm_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_init_c.c_kadm_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i32*, i32*, i64, i32, i32, i32, i32, i32, i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, i64, i32, %struct.addrinfo* }

@rk_INVALID_SOCKET = common dso_local global i64 0, align 8
@NI_MAXSERV = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@KADM5_BAD_SERVER_NAME = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"connect(%s)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to contact %s\00", align 1
@KADM5_FAILURE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@KADM5_ADMIN_SERVICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@KADMIN_APPL_VERSION = common dso_local global i32 0, align 4
@AP_OPTS_MUTUAL_REQUIRED = common dso_local global i32 0, align 4
@KADM5_CONFIG_REALM = common dso_local global i32 0, align 4
@KRB5_SENDAUTH_BADAPPLVERS = common dso_local global i64 0, align 8
@KADMIN_OLD_APPL_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*)* @kadm_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kadm_connect(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.addrinfo, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %21 = load i64, i64* @rk_INVALID_SOCKET, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i32, i32* @NI_MAXSERV, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %12, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %17, align 4
  %29 = call i32 @memset(%struct.addrinfo* %10, i32 0, i32 48)
  %30 = load i32, i32* @SOCK_STREAM, align 4
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @IPPROTO_TCP, align 4
  %33 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 2
  store i32 %32, i32* %33, align 8
  %34 = trunc i64 %23 to i32
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ntohs(i32 %37)
  %39 = call i32 @snprintf(i8* %25, i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %14, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = call i8* @strchr(i8* %43, i8 signext 47)
  store i8* %44, i8** %15, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %1
  %48 = load i8*, i8** %15, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %49, i8** %14, align 8
  br label %50

50:                                               ; preds = %47, %1
  %51 = load i8*, i8** %14, align 8
  %52 = call i32 @getaddrinfo(i8* %51, i8* %25, %struct.addrinfo* %10, %struct.addrinfo** %8)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* %17, align 4
  %57 = call i32 @krb5_clear_error_message(i32 %56)
  %58 = load i64, i64* @KADM5_BAD_SERVER_NAME, align 8
  store i64 %58, i64* %2, align 8
  store i32 1, i32* %18, align 4
  br label %321

59:                                               ; preds = %50
  %60 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  store %struct.addrinfo* %60, %struct.addrinfo** %9, align 8
  br label %61

61:                                               ; preds = %98, %59
  %62 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %63 = icmp ne %struct.addrinfo* %62, null
  br i1 %63, label %64, label %102

64:                                               ; preds = %61
  %65 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %66 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %69 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %72 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @socket(i32 %67, i32 %70, i32 %73)
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %7, align 8
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  br label %98

78:                                               ; preds = %64
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %81 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %84 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @connect(i64 %79, i32 %82, i32 %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %78
  %89 = load i32, i32* %17, align 4
  %90 = call i32 @krb5_clear_error_message(i32 %89)
  %91 = load i32, i32* %17, align 4
  %92 = load i64, i64* @errno, align 8
  %93 = load i8*, i8** %14, align 8
  %94 = call i32 @krb5_warn(i32 %91, i64 %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %93)
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @rk_closesocket(i64 %95)
  br label %98

97:                                               ; preds = %78
  br label %102

98:                                               ; preds = %88, %77
  %99 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %100 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %99, i32 0, i32 7
  %101 = load %struct.addrinfo*, %struct.addrinfo** %100, align 8
  store %struct.addrinfo* %101, %struct.addrinfo** %9, align 8
  br label %61

102:                                              ; preds = %97, %61
  %103 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %104 = icmp eq %struct.addrinfo* %103, null
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %107 = call i32 @freeaddrinfo(%struct.addrinfo* %106)
  %108 = load i32, i32* %17, align 4
  %109 = call i32 @krb5_clear_error_message(i32 %108)
  %110 = load i32, i32* %17, align 4
  %111 = load i8*, i8** %14, align 8
  %112 = call i32 @krb5_warnx(i32 %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %111)
  %113 = load i64, i64* @KADM5_FAILURE, align 8
  store i64 %113, i64* %2, align 8
  store i32 1, i32* %18, align 4
  br label %321

114:                                              ; preds = %102
  %115 = load i32, i32* %17, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 8
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = call i64 @_kadm5_c_get_cred_cache(i32 %115, i32 %118, i32 %121, i32* null, i32 %124, i32 %127, i32* %130, i32* %6)
  store i64 %131, i64* %4, align 8
  %132 = load i64, i64* %4, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %114
  %135 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %136 = call i32 @freeaddrinfo(%struct.addrinfo* %135)
  %137 = load i64, i64* %7, align 8
  %138 = call i32 @rk_closesocket(i64 %137)
  %139 = load i64, i64* %4, align 8
  store i64 %139, i64* %2, align 8
  store i32 1, i32* %18, align 4
  br label %321

140:                                              ; preds = %114
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load i32, i32* @KADM5_ADMIN_SERVICE, align 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = call i32 (i8**, i8*, i32, ...) @asprintf(i8** %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %146, i64 %149)
  br label %154

151:                                              ; preds = %140
  %152 = load i32, i32* @KADM5_ADMIN_SERVICE, align 4
  %153 = call i32 (i8**, i8*, i32, ...) @asprintf(i8** %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %151, %145
  %155 = load i8*, i8** %16, align 8
  %156 = icmp eq i8* %155, null
  br i1 %156, label %157, label %165

157:                                              ; preds = %154
  %158 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %159 = call i32 @freeaddrinfo(%struct.addrinfo* %158)
  %160 = load i64, i64* %7, align 8
  %161 = call i32 @rk_closesocket(i64 %160)
  %162 = load i32, i32* %17, align 4
  %163 = call i32 @krb5_clear_error_message(i32 %162)
  %164 = load i64, i64* @ENOMEM, align 8
  store i64 %164, i64* %2, align 8
  store i32 1, i32* %18, align 4
  br label %321

165:                                              ; preds = %154
  %166 = load i32, i32* %17, align 4
  %167 = load i8*, i8** %16, align 8
  %168 = call i64 @krb5_parse_name(i32 %166, i8* %167, i32* %5)
  store i64 %168, i64* %4, align 8
  %169 = load i8*, i8** %16, align 8
  %170 = call i32 @free(i8* %169)
  %171 = load i64, i64* %4, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %188

173:                                              ; preds = %165
  %174 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %175 = call i32 @freeaddrinfo(%struct.addrinfo* %174)
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = icmp eq i32* %178, null
  br i1 %179, label %180, label %184

180:                                              ; preds = %173
  %181 = load i32, i32* %17, align 4
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @krb5_cc_close(i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %180, %173
  %185 = load i64, i64* %7, align 8
  %186 = call i32 @rk_closesocket(i64 %185)
  %187 = load i64, i64* %4, align 8
  store i64 %187, i64* %2, align 8
  store i32 1, i32* %18, align 4
  br label %321

188:                                              ; preds = %165
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 3
  store i32* null, i32** %190, align 8
  %191 = load i32, i32* %17, align 4
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 3
  %194 = load i32, i32* @KADMIN_APPL_VERSION, align 4
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* @AP_OPTS_MUTUAL_REQUIRED, align 4
  %197 = load i32, i32* %6, align 4
  %198 = call i64 @krb5_sendauth(i32 %191, i32** %193, i64* %7, i32 %194, i32* null, i32 %195, i32 %196, i32* null, i32* null, i32 %197, i32* null, i32* null, i32* null)
  store i64 %198, i64* %4, align 8
  %199 = load i64, i64* %4, align 8
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %243

201:                                              ; preds = %188
  %202 = call i32 @memset(%struct.addrinfo* %20, i32 0, i32 48)
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 4
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %201
  %208 = load i32, i32* @KADM5_CONFIG_REALM, align 4
  %209 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 6
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %210, %208
  store i32 %211, i32* %209, align 8
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 5
  store i64 %214, i64* %215, align 8
  br label %216

216:                                              ; preds = %207, %201
  %217 = load i32, i32* %17, align 4
  %218 = call i64 @_kadm5_marshal_params(i32 %217, %struct.addrinfo* %20, i32* %19)
  store i64 %218, i64* %4, align 8
  %219 = load i32, i32* %17, align 4
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 3
  %222 = load i32*, i32** %221, align 8
  %223 = call i64 @krb5_write_priv_message(i32 %219, i32* %222, i64* %7, i32* %19)
  store i64 %223, i64* %4, align 8
  %224 = call i32 @krb5_data_free(i32* %19)
  %225 = load i64, i64* %4, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %242

227:                                              ; preds = %216
  %228 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %229 = call i32 @freeaddrinfo(%struct.addrinfo* %228)
  %230 = load i64, i64* %7, align 8
  %231 = call i32 @rk_closesocket(i64 %230)
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 2
  %234 = load i32*, i32** %233, align 8
  %235 = icmp eq i32* %234, null
  br i1 %235, label %236, label %240

236:                                              ; preds = %227
  %237 = load i32, i32* %17, align 4
  %238 = load i32, i32* %6, align 4
  %239 = call i32 @krb5_cc_close(i32 %237, i32 %238)
  br label %240

240:                                              ; preds = %236, %227
  %241 = load i64, i64* %4, align 8
  store i64 %241, i64* %2, align 8
  store i32 1, i32* %18, align 4
  br label %321

242:                                              ; preds = %216
  br label %296

243:                                              ; preds = %188
  %244 = load i64, i64* %4, align 8
  %245 = load i64, i64* @KRB5_SENDAUTH_BADAPPLVERS, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %295

247:                                              ; preds = %243
  %248 = load i64, i64* %7, align 8
  %249 = call i32 @rk_closesocket(i64 %248)
  %250 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %251 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %254 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %257 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = call i64 @socket(i32 %252, i32 %255, i32 %258)
  store i64 %259, i64* %7, align 8
  %260 = load i64, i64* %7, align 8
  %261 = icmp slt i64 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %247
  %263 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %264 = call i32 @freeaddrinfo(%struct.addrinfo* %263)
  %265 = load i32, i32* %17, align 4
  %266 = call i32 @krb5_clear_error_message(i32 %265)
  %267 = load i64, i64* @errno, align 8
  store i64 %267, i64* %2, align 8
  store i32 1, i32* %18, align 4
  br label %321

268:                                              ; preds = %247
  %269 = load i64, i64* %7, align 8
  %270 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %271 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %274 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = call i64 @connect(i64 %269, i32 %272, i32 %275)
  %277 = icmp slt i64 %276, 0
  br i1 %277, label %278, label %286

278:                                              ; preds = %268
  %279 = load i64, i64* %7, align 8
  %280 = call i32 @rk_closesocket(i64 %279)
  %281 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %282 = call i32 @freeaddrinfo(%struct.addrinfo* %281)
  %283 = load i32, i32* %17, align 4
  %284 = call i32 @krb5_clear_error_message(i32 %283)
  %285 = load i64, i64* @errno, align 8
  store i64 %285, i64* %2, align 8
  store i32 1, i32* %18, align 4
  br label %321

286:                                              ; preds = %268
  %287 = load i32, i32* %17, align 4
  %288 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 3
  %290 = load i32, i32* @KADMIN_OLD_APPL_VERSION, align 4
  %291 = load i32, i32* %5, align 4
  %292 = load i32, i32* @AP_OPTS_MUTUAL_REQUIRED, align 4
  %293 = load i32, i32* %6, align 4
  %294 = call i64 @krb5_sendauth(i32 %287, i32** %289, i64* %7, i32 %290, i32* null, i32 %291, i32 %292, i32* null, i32* null, i32 %293, i32* null, i32* null, i32* null)
  store i64 %294, i64* %4, align 8
  br label %295

295:                                              ; preds = %286, %243
  br label %296

296:                                              ; preds = %295, %242
  %297 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %298 = call i32 @freeaddrinfo(%struct.addrinfo* %297)
  %299 = load i64, i64* %4, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %296
  %302 = load i64, i64* %7, align 8
  %303 = call i32 @rk_closesocket(i64 %302)
  %304 = load i64, i64* %4, align 8
  store i64 %304, i64* %2, align 8
  store i32 1, i32* %18, align 4
  br label %321

305:                                              ; preds = %296
  %306 = load i32, i32* %17, align 4
  %307 = load i32, i32* %5, align 4
  %308 = call i32 @krb5_free_principal(i32 %306, i32 %307)
  %309 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i32 0, i32 2
  %311 = load i32*, i32** %310, align 8
  %312 = icmp eq i32* %311, null
  br i1 %312, label %313, label %317

313:                                              ; preds = %305
  %314 = load i32, i32* %17, align 4
  %315 = load i32, i32* %6, align 4
  %316 = call i32 @krb5_cc_close(i32 %314, i32 %315)
  br label %317

317:                                              ; preds = %313, %305
  %318 = load i64, i64* %7, align 8
  %319 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 1
  store i64 %318, i64* %320, align 8
  store i64 0, i64* %2, align 8
  store i32 1, i32* %18, align 4
  br label %321

321:                                              ; preds = %317, %301, %278, %262, %240, %184, %157, %134, %105, %55
  %322 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %322)
  %323 = load i64, i64* %2, align 8
  ret i64 %323
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @krb5_clear_error_message(i32) #2

declare dso_local i64 @socket(i32, i32, i32) #2

declare dso_local i64 @connect(i64, i32, i32) #2

declare dso_local i32 @krb5_warn(i32, i64, i8*, i8*) #2

declare dso_local i32 @rk_closesocket(i64) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

declare dso_local i32 @krb5_warnx(i32, i8*, i8*) #2

declare dso_local i64 @_kadm5_c_get_cred_cache(i32, i32, i32, i32*, i32, i32, i32*, i32*) #2

declare dso_local i32 @asprintf(i8**, i8*, i32, ...) #2

declare dso_local i64 @krb5_parse_name(i32, i8*, i32*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @krb5_cc_close(i32, i32) #2

declare dso_local i64 @krb5_sendauth(i32, i32**, i64*, i32, i32*, i32, i32, i32*, i32*, i32, i32*, i32*, i32*) #2

declare dso_local i64 @_kadm5_marshal_params(i32, %struct.addrinfo*, i32*) #2

declare dso_local i64 @krb5_write_priv_message(i32, i32*, i64*, i32*) #2

declare dso_local i32 @krb5_data_free(i32*) #2

declare dso_local i32 @krb5_free_principal(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
