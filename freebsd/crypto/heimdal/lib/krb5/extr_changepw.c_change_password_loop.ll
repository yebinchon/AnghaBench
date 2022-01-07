; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_changepw.c_change_password_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_changepw.c_change_password_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.kpwd_proc = type { i32, i32 (i32, i32**, %struct.TYPE_14__*, %struct.TYPE_12__*, i32, i64, i8*, i32)*, i32 (i32, i32*, i32, i64, i32*, i32*, i32*, i32)* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo* }
%struct.timeval = type { i32, i64 }

@KRB5_AUTH_CONTEXT_DO_SEQUENCE = common dso_local global i32 0, align 4
@KRB5_KRBHST_CHANGEPW = common dso_local global i32 0, align 4
@SUPPORT_UDP = common dso_local global i32 0, align 4
@SUPPORT_TCP = common dso_local global i32 0, align 4
@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@KRB5_AUTH_CONTEXT_GENERATE_LOCAL_ADDR = common dso_local global i32 0, align 4
@FD_SETSIZE = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"fd %d too large\00", align 1
@rk_SOCK_ERRNO = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@KRB5KRB_AP_ERR_MUT_FAIL = common dso_local global i32 0, align 4
@KRB5_KDC_UNREACH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Unable to reach any changepw server  in realm %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"realm\00", align 1
@KRB5_KPASSWD_HARDERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_14__*, %struct.TYPE_12__*, i8*, i32*, i32*, i32*, %struct.kpwd_proc*)* @change_password_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_password_loop(i32 %0, %struct.TYPE_14__* %1, %struct.TYPE_12__* %2, i8* %3, i32* %4, i32* %5, i32* %6, %struct.kpwd_proc* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.kpwd_proc*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_13__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca %struct.addrinfo*, align 8
  %27 = alloca %struct.addrinfo*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.timeval, align 8
  store i32 %0, i32* %10, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store %struct.kpwd_proc* %7, %struct.kpwd_proc** %17, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i32 0, i32* %24, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %33 = icmp ne %struct.TYPE_12__* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %25, align 8
  br label %44

38:                                               ; preds = %8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %25, align 8
  br label %44

44:                                               ; preds = %38, %34
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @krb5_auth_con_init(i32 %45, i32** %19)
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %18, align 4
  store i32 %50, i32* %9, align 4
  br label %291

51:                                               ; preds = %44
  %52 = load i32, i32* %10, align 4
  %53 = load i32*, i32** %19, align 8
  %54 = load i32, i32* @KRB5_AUTH_CONTEXT_DO_SEQUENCE, align 4
  %55 = call i32 @krb5_auth_con_setflags(i32 %52, i32* %53, i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = load i64, i64* %25, align 8
  %58 = load i32, i32* @KRB5_KRBHST_CHANGEPW, align 4
  %59 = call i32 @krb5_krbhst_init(i32 %56, i64 %57, i32 %58, i32** %20)
  store i32 %59, i32* %18, align 4
  %60 = load i32, i32* %18, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %271

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %269, %103, %96, %94, %85, %63
  %65 = load i32, i32* %24, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = load i32*, i32** %20, align 8
  %70 = call i32 @krb5_krbhst_next(i32 %68, i32* %69, %struct.TYPE_13__** %21)
  store i32 %70, i32* %18, align 4
  %71 = icmp eq i32 %70, 0
  br label %72

72:                                               ; preds = %67, %64
  %73 = phi i1 [ false, %64 ], [ %71, %67 ]
  br i1 %73, label %74, label %270

74:                                               ; preds = %72
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %96 [
    i32 128, label %78
    i32 129, label %87
  ]

78:                                               ; preds = %74
  %79 = load %struct.kpwd_proc*, %struct.kpwd_proc** %17, align 8
  %80 = getelementptr inbounds %struct.kpwd_proc, %struct.kpwd_proc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @SUPPORT_UDP, align 4
  %83 = and i32 %81, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %64

86:                                               ; preds = %78
  store i32 0, i32* %28, align 4
  br label %97

87:                                               ; preds = %74
  %88 = load %struct.kpwd_proc*, %struct.kpwd_proc** %17, align 8
  %89 = getelementptr inbounds %struct.kpwd_proc, %struct.kpwd_proc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @SUPPORT_TCP, align 4
  %92 = and i32 %90, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %64

95:                                               ; preds = %87
  store i32 1, i32* %28, align 4
  br label %97

96:                                               ; preds = %74
  br label %64

97:                                               ; preds = %95, %86
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %100 = call i32 @krb5_krbhst_get_addrinfo(i32 %98, %struct.TYPE_13__* %99, %struct.addrinfo** %26)
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %18, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %64

104:                                              ; preds = %97
  %105 = load %struct.addrinfo*, %struct.addrinfo** %26, align 8
  store %struct.addrinfo* %105, %struct.addrinfo** %27, align 8
  br label %106

106:                                              ; preds = %265, %104
  %107 = load i32, i32* %24, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load %struct.addrinfo*, %struct.addrinfo** %27, align 8
  %111 = icmp ne %struct.addrinfo* %110, null
  br label %112

112:                                              ; preds = %109, %106
  %113 = phi i1 [ false, %106 ], [ %111, %109 ]
  br i1 %113, label %114, label %269

114:                                              ; preds = %112
  store i32 0, i32* %29, align 4
  %115 = load %struct.addrinfo*, %struct.addrinfo** %27, align 8
  %116 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.addrinfo*, %struct.addrinfo** %27, align 8
  %119 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @SOCK_CLOEXEC, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.addrinfo*, %struct.addrinfo** %27, align 8
  %124 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @socket(i32 %117, i32 %122, i32 %125)
  store i64 %126, i64* %22, align 8
  %127 = load i64, i64* %22, align 8
  %128 = call i64 @rk_IS_BAD_SOCKET(i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %114
  br label %265

131:                                              ; preds = %114
  %132 = load i64, i64* %22, align 8
  %133 = call i32 @rk_cloexec(i64 %132)
  %134 = load i64, i64* %22, align 8
  %135 = load %struct.addrinfo*, %struct.addrinfo** %27, align 8
  %136 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.addrinfo*, %struct.addrinfo** %27, align 8
  %139 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @connect(i64 %134, i32 %137, i32 %140)
  store i32 %141, i32* %18, align 4
  %142 = load i32, i32* %18, align 4
  %143 = call i64 @rk_IS_SOCKET_ERROR(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %131
  %146 = load i64, i64* %22, align 8
  %147 = call i32 @rk_closesocket(i64 %146)
  br label %271

148:                                              ; preds = %131
  %149 = load i32, i32* %10, align 4
  %150 = load i32*, i32** %19, align 8
  %151 = load i64, i64* %22, align 8
  %152 = load i32, i32* @KRB5_AUTH_CONTEXT_GENERATE_LOCAL_ADDR, align 4
  %153 = call i32 @krb5_auth_con_genaddrs(i32 %149, i32* %150, i64 %151, i32 %152)
  store i32 %153, i32* %18, align 4
  %154 = load i32, i32* %18, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %148
  %157 = load i64, i64* %22, align 8
  %158 = call i32 @rk_closesocket(i64 %157)
  br label %271

159:                                              ; preds = %148
  store i32 0, i32* %23, align 4
  br label %160

160:                                              ; preds = %259, %159
  %161 = load i32, i32* %24, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %23, align 4
  %165 = icmp ult i32 %164, 5
  br label %166

166:                                              ; preds = %163, %160
  %167 = phi i1 [ false, %160 ], [ %165, %163 ]
  br i1 %167, label %168, label %262

168:                                              ; preds = %166
  %169 = load i32, i32* %29, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %191, label %171

171:                                              ; preds = %168
  store i32 0, i32* %29, align 4
  %172 = load %struct.kpwd_proc*, %struct.kpwd_proc** %17, align 8
  %173 = getelementptr inbounds %struct.kpwd_proc, %struct.kpwd_proc* %172, i32 0, i32 1
  %174 = load i32 (i32, i32**, %struct.TYPE_14__*, %struct.TYPE_12__*, i32, i64, i8*, i32)*, i32 (i32, i32**, %struct.TYPE_14__*, %struct.TYPE_12__*, i32, i64, i8*, i32)** %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %178 = load i32, i32* %28, align 4
  %179 = load i64, i64* %22, align 8
  %180 = load i8*, i8** %13, align 8
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 %174(i32 %175, i32** %19, %struct.TYPE_14__* %176, %struct.TYPE_12__* %177, i32 %178, i64 %179, i8* %180, i32 %183)
  store i32 %184, i32* %18, align 4
  %185 = load i32, i32* %18, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %171
  %188 = load i64, i64* %22, align 8
  %189 = call i32 @rk_closesocket(i64 %188)
  br label %271

190:                                              ; preds = %171
  br label %191

191:                                              ; preds = %190, %168
  %192 = load i64, i64* %22, align 8
  %193 = load i64, i64* @FD_SETSIZE, align 8
  %194 = icmp sge i64 %192, %193
  br i1 %194, label %195, label %203

195:                                              ; preds = %191
  %196 = load i32, i32* @ERANGE, align 4
  store i32 %196, i32* %18, align 4
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %18, align 4
  %199 = load i64, i64* %22, align 8
  %200 = call i32 @krb5_set_error_message(i32 %197, i32 %198, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %199)
  %201 = load i64, i64* %22, align 8
  %202 = call i32 @rk_closesocket(i64 %201)
  br label %271

203:                                              ; preds = %191
  %204 = call i32 @FD_ZERO(i32* %30)
  %205 = load i64, i64* %22, align 8
  %206 = call i32 @FD_SET(i64 %205, i32* %30)
  %207 = getelementptr inbounds %struct.timeval, %struct.timeval* %31, i32 0, i32 1
  store i64 0, i64* %207, align 8
  %208 = load i32, i32* %23, align 4
  %209 = shl i32 1, %208
  %210 = add nsw i32 1, %209
  %211 = getelementptr inbounds %struct.timeval, %struct.timeval* %31, i32 0, i32 0
  store i32 %210, i32* %211, align 8
  %212 = load i64, i64* %22, align 8
  %213 = add nsw i64 %212, 1
  %214 = call i32 @select(i64 %213, i32* %30, i32* null, i32* null, %struct.timeval* %31)
  store i32 %214, i32* %18, align 4
  %215 = load i32, i32* %18, align 4
  %216 = call i64 @rk_IS_SOCKET_ERROR(i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %203
  %219 = load i64, i64* @rk_SOCK_ERRNO, align 8
  %220 = load i64, i64* @EINTR, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %218
  %223 = load i64, i64* %22, align 8
  %224 = call i32 @rk_closesocket(i64 %223)
  br label %271

225:                                              ; preds = %218, %203
  %226 = load i32, i32* %18, align 4
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %228, label %256

228:                                              ; preds = %225
  %229 = load %struct.kpwd_proc*, %struct.kpwd_proc** %17, align 8
  %230 = getelementptr inbounds %struct.kpwd_proc, %struct.kpwd_proc* %229, i32 0, i32 2
  %231 = load i32 (i32, i32*, i32, i64, i32*, i32*, i32*, i32)*, i32 (i32, i32*, i32, i64, i32*, i32*, i32*, i32)** %230, align 8
  %232 = load i32, i32* %10, align 4
  %233 = load i32*, i32** %19, align 8
  %234 = load i32, i32* %28, align 4
  %235 = load i64, i64* %22, align 8
  %236 = load i32*, i32** %14, align 8
  %237 = load i32*, i32** %15, align 8
  %238 = load i32*, i32** %16, align 8
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 %231(i32 %232, i32* %233, i32 %234, i64 %235, i32* %236, i32* %237, i32* %238, i32 %241)
  store i32 %242, i32* %18, align 4
  %243 = load i32, i32* %18, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %228
  store i32 1, i32* %24, align 4
  br label %255

246:                                              ; preds = %228
  %247 = load i32, i32* %23, align 4
  %248 = icmp ugt i32 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %246
  %250 = load i32, i32* %18, align 4
  %251 = load i32, i32* @KRB5KRB_AP_ERR_MUT_FAIL, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %249
  store i32 1, i32* %29, align 4
  br label %254

254:                                              ; preds = %253, %249, %246
  br label %255

255:                                              ; preds = %254, %245
  br label %258

256:                                              ; preds = %225
  %257 = load i32, i32* @KRB5_KDC_UNREACH, align 4
  store i32 %257, i32* %18, align 4
  br label %258

258:                                              ; preds = %256, %255
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %23, align 4
  %261 = add i32 %260, 1
  store i32 %261, i32* %23, align 4
  br label %160

262:                                              ; preds = %166
  %263 = load i64, i64* %22, align 8
  %264 = call i32 @rk_closesocket(i64 %263)
  br label %265

265:                                              ; preds = %262, %130
  %266 = load %struct.addrinfo*, %struct.addrinfo** %27, align 8
  %267 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %266, i32 0, i32 5
  %268 = load %struct.addrinfo*, %struct.addrinfo** %267, align 8
  store %struct.addrinfo* %268, %struct.addrinfo** %27, align 8
  br label %106

269:                                              ; preds = %112
  br label %64

270:                                              ; preds = %72
  br label %271

271:                                              ; preds = %270, %222, %195, %187, %156, %145, %62
  %272 = load i32, i32* %10, align 4
  %273 = load i32*, i32** %20, align 8
  %274 = call i32 @krb5_krbhst_free(i32 %272, i32* %273)
  %275 = load i32, i32* %10, align 4
  %276 = load i32*, i32** %19, align 8
  %277 = call i32 @krb5_auth_con_free(i32 %275, i32* %276)
  %278 = load i32, i32* %18, align 4
  %279 = load i32, i32* @KRB5_KDC_UNREACH, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %289

281:                                              ; preds = %271
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* %18, align 4
  %284 = call i8* @N_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %285 = load i64, i64* %25, align 8
  %286 = call i32 @krb5_set_error_message(i32 %282, i32 %283, i8* %284, i64 %285)
  %287 = load i32, i32* @KRB5_KPASSWD_HARDERROR, align 4
  %288 = load i32*, i32** %14, align 8
  store i32 %287, i32* %288, align 4
  br label %289

289:                                              ; preds = %281, %271
  %290 = load i32, i32* %18, align 4
  store i32 %290, i32* %9, align 4
  br label %291

291:                                              ; preds = %289, %49
  %292 = load i32, i32* %9, align 4
  ret i32 %292
}

declare dso_local i32 @krb5_auth_con_init(i32, i32**) #1

declare dso_local i32 @krb5_auth_con_setflags(i32, i32*, i32) #1

declare dso_local i32 @krb5_krbhst_init(i32, i64, i32, i32**) #1

declare dso_local i32 @krb5_krbhst_next(i32, i32*, %struct.TYPE_13__**) #1

declare dso_local i32 @krb5_krbhst_get_addrinfo(i32, %struct.TYPE_13__*, %struct.addrinfo**) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i64 @rk_IS_BAD_SOCKET(i64) #1

declare dso_local i32 @rk_cloexec(i64) #1

declare dso_local i32 @connect(i64, i32, i32) #1

declare dso_local i64 @rk_IS_SOCKET_ERROR(i32) #1

declare dso_local i32 @rk_closesocket(i64) #1

declare dso_local i32 @krb5_auth_con_genaddrs(i32, i32*, i64, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*, i64) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @krb5_krbhst_free(i32, i32*) #1

declare dso_local i32 @krb5_auth_con_free(i32, i32*) #1

declare dso_local i8* @N_(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
