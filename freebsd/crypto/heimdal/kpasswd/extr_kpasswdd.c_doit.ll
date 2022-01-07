; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kpasswd/extr_kpasswdd.c_doit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kpasswd/extr_kpasswdd.c_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"krb5_get_default_realms\00", align 1
@explicit_addresses = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"krb5_get_all_server_addrs\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@SOCK_DGRAM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"unknown address\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"bind(%s)\00", align 1
@FD_SETSIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"fd too large\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"No sockets!\00", align 1
@exit_flag = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@BUFSIZ = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"recvfrom\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doit(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr_storage, align 4
  %14 = alloca %struct.sockaddr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [128 x i8], align 16
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %25 = bitcast %struct.sockaddr_storage* %13 to %struct.sockaddr*
  store %struct.sockaddr* %25, %struct.sockaddr** %14, align 8
  %26 = load i32, i32* @context, align 4
  %27 = call i32 @krb5_get_default_realms(i32 %26, i32** %8)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load i32, i32* @context, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @krb5_err(i32 %31, i32 1, i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %30, %2
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @explicit_addresses, i32 0, i32 0), align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = bitcast %struct.TYPE_5__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 bitcast (%struct.TYPE_5__* @explicit_addresses to i8*), i64 16, i1 false)
  br label %49

39:                                               ; preds = %34
  %40 = load i32, i32* @context, align 4
  %41 = call i32 @krb5_get_all_server_addrs(i32 %40, %struct.TYPE_5__* %9)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @context, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @krb5_err(i32 %45, i32 1, i32 %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %44, %39
  br label %49

49:                                               ; preds = %48, %37
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = zext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = call i32* @malloc(i32 %55)
  store i32* %56, i32** %6, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i32, i32* @context, align 4
  %61 = call i32 @krb5_errx(i32 %60, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %49
  store i32 -1, i32* %7, align 4
  %63 = call i32 @FD_ZERO(i32* %12)
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %147, %62
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %150

68:                                               ; preds = %64
  store i32 4, i32* %15, align 4
  %69 = load i32, i32* @context, align 4
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @krb5_addr2sockaddr(i32 %69, i32* %74, %struct.sockaddr* %75, i32* %15, i32 %76)
  %78 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %79 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @SOCK_DGRAM, align 4
  %82 = call i32 @socket(i32 %80, i32 %81, i32 0)
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %11, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %11, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %68
  %94 = load i32, i32* @context, align 4
  %95 = load i32, i32* @errno, align 4
  %96 = call i32 @krb5_err(i32 %94, i32 1, i32 %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %97

97:                                               ; preds = %93, %68
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %11, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %104 = load i32, i32* %15, align 4
  %105 = call i64 @bind(i32 %102, %struct.sockaddr* %103, i32 %104)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %97
  %108 = load i32, i32* @errno, align 4
  store i32 %108, i32* %18, align 4
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %115 = call i32 @krb5_print_address(i32* %113, i8* %114, i32 128, i64* %17)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %107
  %119 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %120 = call i32 @strlcpy(i8* %119, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 128)
  br label %121

121:                                              ; preds = %118, %107
  %122 = load i32, i32* @context, align 4
  %123 = load i32, i32* %18, align 4
  %124 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %125 = call i32 @krb5_warn(i32 %122, i32 %123, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %124)
  br label %147

126:                                              ; preds = %97
  %127 = load i32, i32* %7, align 4
  %128 = load i32*, i32** %6, align 8
  %129 = load i32, i32* %11, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @max(i32 %127, i32 %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @FD_SETSIZE, align 4
  %136 = icmp sge i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %126
  %138 = load i32, i32* @context, align 4
  %139 = call i32 @krb5_errx(i32 %138, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %126
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* %11, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @FD_SET(i32 %145, i32* %12)
  br label %147

147:                                              ; preds = %140, %121
  %148 = load i32, i32* %11, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %11, align 4
  br label %64

150:                                              ; preds = %64
  %151 = load i32, i32* %7, align 4
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32, i32* @context, align 4
  %155 = call i32 @krb5_errx(i32 %154, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %150
  br label %157

157:                                              ; preds = %241, %171, %156
  %158 = load i64, i64* @exit_flag, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %242

160:                                              ; preds = %157
  %161 = load i32, i32* %12, align 4
  store i32 %161, i32* %20, align 4
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, 1
  %164 = call i64 @select(i32 %163, i32* %20, i32* null, i32* null, i32* null)
  store i64 %164, i64* %19, align 8
  %165 = load i64, i64* %19, align 8
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %160
  %168 = load i32, i32* @errno, align 4
  %169 = load i32, i32* @EINTR, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  br label %157

172:                                              ; preds = %167
  %173 = load i32, i32* @context, align 4
  %174 = load i32, i32* @errno, align 4
  %175 = call i32 @krb5_err(i32 %173, i32 1, i32 %174, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %176

176:                                              ; preds = %172
  br label %177

177:                                              ; preds = %176, %160
  store i32 0, i32* %11, align 4
  br label %178

178:                                              ; preds = %238, %177
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp ult i32 %179, %180
  br i1 %181, label %182, label %241

182:                                              ; preds = %178
  %183 = load i32*, i32** %6, align 8
  %184 = load i32, i32* %11, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i64 @FD_ISSET(i32 %187, i32* %20)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %237

190:                                              ; preds = %182
  %191 = load i32, i32* @BUFSIZ, align 4
  %192 = zext i32 %191 to i64
  %193 = call i8* @llvm.stacksave()
  store i8* %193, i8** %21, align 8
  %194 = alloca i32, i64 %192, align 16
  store i64 %192, i64* %22, align 8
  store i32 4, i32* %23, align 4
  %195 = load i32*, i32** %6, align 8
  %196 = load i32, i32* %11, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = mul nuw i64 4, %192
  %201 = trunc i64 %200 to i32
  %202 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %203 = call i64 @recvfrom(i32 %199, i32* %194, i32 %201, i32 0, %struct.sockaddr* %202, i32* %23)
  store i64 %203, i64* %19, align 8
  %204 = load i64, i64* %19, align 8
  %205 = icmp slt i64 %204, 0
  br i1 %205, label %206, label %216

206:                                              ; preds = %190
  %207 = load i32, i32* @errno, align 4
  %208 = load i32, i32* @EINTR, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  store i32 7, i32* %24, align 4
  br label %233

211:                                              ; preds = %206
  %212 = load i32, i32* @context, align 4
  %213 = load i32, i32* @errno, align 4
  %214 = call i32 @krb5_err(i32 %212, i32 1, i32 %213, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %215

215:                                              ; preds = %211
  br label %216

216:                                              ; preds = %215, %190
  %217 = load i32*, i32** %8, align 8
  %218 = load i32, i32* %3, align 4
  %219 = load i32*, i32** %6, align 8
  %220 = load i32, i32* %11, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %11, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %230 = load i32, i32* %23, align 4
  %231 = load i64, i64* %19, align 8
  %232 = call i32 @process(i32* %217, i32 %218, i32 %223, i32* %228, %struct.sockaddr* %229, i32 %230, i32* %194, i64 %231)
  store i32 0, i32* %24, align 4
  br label %233

233:                                              ; preds = %216, %210
  %234 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %234)
  %235 = load i32, i32* %24, align 4
  switch i32 %235, label %267 [
    i32 0, label %236
    i32 7, label %241
  ]

236:                                              ; preds = %233
  br label %237

237:                                              ; preds = %236, %182
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %11, align 4
  %240 = add i32 %239, 1
  store i32 %240, i32* %11, align 4
  br label %178

241:                                              ; preds = %233, %178
  br label %157

242:                                              ; preds = %157
  store i32 0, i32* %11, align 4
  br label %243

243:                                              ; preds = %254, %242
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* %10, align 4
  %246 = icmp ult i32 %244, %245
  br i1 %246, label %247, label %257

247:                                              ; preds = %243
  %248 = load i32*, i32** %6, align 8
  %249 = load i32, i32* %11, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @close(i32 %252)
  br label %254

254:                                              ; preds = %247
  %255 = load i32, i32* %11, align 4
  %256 = add i32 %255, 1
  store i32 %256, i32* %11, align 4
  br label %243

257:                                              ; preds = %243
  %258 = load i32*, i32** %6, align 8
  %259 = call i32 @free(i32* %258)
  %260 = load i32, i32* @context, align 4
  %261 = call i32 @krb5_free_addresses(i32 %260, %struct.TYPE_5__* %9)
  %262 = load i32, i32* @context, align 4
  %263 = load i32*, i32** %8, align 8
  %264 = call i32 @krb5_free_host_realm(i32 %262, i32* %263)
  %265 = load i32, i32* @context, align 4
  %266 = call i32 @krb5_free_context(i32 %265)
  ret i32 0

267:                                              ; preds = %233
  unreachable
}

declare dso_local i32 @krb5_get_default_realms(i32, i32**) #1

declare dso_local i32 @krb5_err(i32, i32, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @krb5_get_all_server_addrs(i32, %struct.TYPE_5__*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @krb5_addr2sockaddr(i32, i32*, %struct.sockaddr*, i32*, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @krb5_print_address(i32*, i8*, i32, i64*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @krb5_warn(i32, i32, i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i64 @select(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i64 @recvfrom(i32, i32*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @process(i32*, i32, i32, i32*, %struct.sockaddr*, i32, i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @krb5_free_addresses(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @krb5_free_host_realm(i32, i32*) #1

declare dso_local i32 @krb5_free_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
