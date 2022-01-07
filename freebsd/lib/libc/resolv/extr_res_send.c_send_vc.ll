; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_send.c_send_vc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_send.c_send_vc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.sockaddr = type { i32 }
%struct.iovec = type { i32 }
%struct.sockaddr_storage = type { i32 }

@RES_F_VC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@highestFD = common dso_local global i64 0, align 8
@ENOTSOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"socket(vc)\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"connect/vc\00", align 1
@INT16SZ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"write failed\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"read failed\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@RES_DEBUG = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c";; response truncated\0A\00", align 1
@HFIXEDSZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c";; undersized: %d\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"read(vc)\00", align 1
@PACKETSZ = common dso_local global i32 0, align 4
@RES_PRF_REPLY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c";; old answer (unexpected):\0A\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_NOSIGPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32, i32*, i32, i32*, i32)* @send_vc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_vc(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca %struct.sockaddr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [2 x %struct.iovec], align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %struct.sockaddr_storage, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.iovec, align 4
  %31 = alloca %struct.iovec, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = bitcast i32* %35 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %16, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = bitcast i32* %37 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %17, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %40 = load i32, i32* %15, align 4
  %41 = call %struct.sockaddr* @get_nsaddr(%struct.TYPE_8__* %39, i32 %40)
  store %struct.sockaddr* %41, %struct.sockaddr** %18, align 8
  %42 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %43 = call i32 @get_salen(%struct.sockaddr* %42)
  store i32 %43, i32* %19, align 4
  store i32 0, i32* %21, align 4
  br label %44

44:                                               ; preds = %245, %7
  store i32 0, i32* %20, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %47, 0
  br i1 %48, label %49, label %78

49:                                               ; preds = %44
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @RES_F_VC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %49
  store i32 4, i32* %29, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = bitcast %struct.sockaddr_storage* %28 to %struct.sockaddr*
  %61 = call i64 @_getpeername(i64 %59, %struct.sockaddr* %60, i32* %29)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %56
  %64 = bitcast %struct.sockaddr_storage* %28 to %struct.sockaddr*
  %65 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %66 = call i32 @sock_eq(%struct.sockaddr* %64, %struct.sockaddr* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %63, %56
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %70 = call i32 @res_nclose(%struct.TYPE_8__* %69)
  %71 = load i32, i32* @RES_F_VC, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %68, %63
  br label %78

78:                                               ; preds = %77, %49, %44
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %78
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @RES_F_VC, align 4
  %88 = and i32 %86, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %161

90:                                               ; preds = %83, %78
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sge i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %97 = call i32 @res_nclose(%struct.TYPE_8__* %96)
  br label %98

98:                                               ; preds = %95, %90
  %99 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %100 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @SOCK_STREAM, align 4
  %103 = load i32, i32* @SOCK_CLOEXEC, align 4
  %104 = or i32 %102, %103
  %105 = call i64 @_socket(i32 %101, i32 %104, i32 0)
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @highestFD, align 8
  %112 = icmp sgt i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %98
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %115 = call i32 @res_nclose(%struct.TYPE_8__* %114)
  %116 = load i32, i32* @ENOTSOCK, align 4
  store i32 %116, i32* @errno, align 4
  br label %117

117:                                              ; preds = %113, %98
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %117
  %123 = load i32, i32* @errno, align 4
  switch i32 %123, label %129 [
    i32 128, label %124
    i32 129, label %124
    i32 130, label %124
  ]

124:                                              ; preds = %122, %122, %122
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %126 = load i32, i32* @stderr, align 4
  %127 = load i32, i32* @errno, align 4
  %128 = call i32 @Perror(%struct.TYPE_8__* %125, i32 %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %127)
  store i32 0, i32* %8, align 4
  br label %404

129:                                              ; preds = %122
  %130 = load i32, i32* @errno, align 4
  %131 = load i32*, i32** %14, align 8
  store i32 %130, i32* %131, align 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %133 = load i32, i32* @stderr, align 4
  %134 = load i32, i32* @errno, align 4
  %135 = call i32 @Perror(%struct.TYPE_8__* %132, i32 %133, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %134)
  store i32 -1, i32* %8, align 4
  br label %404

136:                                              ; preds = %117
  store i32 0, i32* @errno, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %141 = load i32, i32* %19, align 4
  %142 = call i64 @_connect(i64 %139, %struct.sockaddr* %140, i32 %141)
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %136
  %145 = load i32, i32* @errno, align 4
  %146 = load i32*, i32** %14, align 8
  store i32 %145, i32* %146, align 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %148 = load i32, i32* @stderr, align 4
  %149 = load i32, i32* @errno, align 4
  %150 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %151 = load i32, i32* %19, align 4
  %152 = call i32 @Aerror(%struct.TYPE_8__* %147, i32 %148, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %149, %struct.sockaddr* %150, i32 %151)
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %154 = call i32 @res_nclose(%struct.TYPE_8__* %153)
  store i32 0, i32* %8, align 4
  br label %404

155:                                              ; preds = %136
  %156 = load i32, i32* @RES_F_VC, align 4
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %155, %83
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @ns_put16(i32 %162, i32* %25)
  %164 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %24, i64 0, i64 0
  %165 = bitcast i32* %25 to i8*
  %166 = load i64, i64* @INT16SZ, align 8
  %167 = trunc i64 %166 to i32
  %168 = call i32 @evConsIovec(i8* %165, i32 %167)
  %169 = getelementptr inbounds %struct.iovec, %struct.iovec* %30, i32 0, i32 0
  store i32 %168, i32* %169, align 4
  %170 = bitcast %struct.iovec* %164 to i8*
  %171 = bitcast %struct.iovec* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %170, i8* align 4 %171, i64 4, i1 false)
  %172 = load i32*, i32** %10, align 8
  %173 = load i8*, i8** %27, align 8
  %174 = call i32 @DE_CONST(i32* %172, i8* %173)
  %175 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %24, i64 0, i64 1
  %176 = load i8*, i8** %27, align 8
  %177 = load i32, i32* %11, align 4
  %178 = call i32 @evConsIovec(i8* %176, i32 %177)
  %179 = getelementptr inbounds %struct.iovec, %struct.iovec* %31, i32 0, i32 0
  store i32 %178, i32* %179, align 4
  %180 = bitcast %struct.iovec* %175 to i8*
  %181 = bitcast %struct.iovec* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %180, i8* align 4 %181, i64 4, i1 false)
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %24, i64 0, i64 0
  %186 = call i64 @_writev(i64 %184, %struct.iovec* %185, i32 2)
  %187 = load i64, i64* @INT16SZ, align 8
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %187, %189
  %191 = icmp ne i64 %186, %190
  br i1 %191, label %192, label %201

192:                                              ; preds = %161
  %193 = load i32, i32* @errno, align 4
  %194 = load i32*, i32** %14, align 8
  store i32 %193, i32* %194, align 4
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %196 = load i32, i32* @stderr, align 4
  %197 = load i32, i32* @errno, align 4
  %198 = call i32 @Perror(%struct.TYPE_8__* %195, i32 %196, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %197)
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %200 = call i32 @res_nclose(%struct.TYPE_8__* %199)
  store i32 0, i32* %8, align 4
  br label %404

201:                                              ; preds = %161
  br label %202

202:                                              ; preds = %399, %201
  %203 = load i32*, i32** %12, align 8
  store i32* %203, i32** %26, align 8
  %204 = load i64, i64* @INT16SZ, align 8
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %25, align 4
  br label %206

206:                                              ; preds = %225, %202
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i32*, i32** %26, align 8
  %211 = bitcast i32* %210 to i8*
  %212 = load i32, i32* %25, align 4
  %213 = call i32 @_read(i64 %209, i8* %211, i32 %212)
  store i32 %213, i32* %23, align 4
  %214 = icmp sgt i32 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %206
  %216 = load i32, i32* %23, align 4
  %217 = load i32*, i32** %26, align 8
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  store i32* %219, i32** %26, align 8
  %220 = load i32, i32* %23, align 4
  %221 = load i32, i32* %25, align 4
  %222 = sub nsw i32 %221, %220
  store i32 %222, i32* %25, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %215
  br label %226

225:                                              ; preds = %215
  br label %206

226:                                              ; preds = %224, %206
  %227 = load i32, i32* %23, align 4
  %228 = icmp sle i32 %227, 0
  br i1 %228, label %229, label %251

229:                                              ; preds = %226
  %230 = load i32, i32* @errno, align 4
  %231 = load i32*, i32** %14, align 8
  store i32 %230, i32* %231, align 4
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %233 = load i32, i32* @stderr, align 4
  %234 = load i32, i32* @errno, align 4
  %235 = call i32 @Perror(%struct.TYPE_8__* %232, i32 %233, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %234)
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %237 = call i32 @res_nclose(%struct.TYPE_8__* %236)
  %238 = load i32*, i32** %14, align 8
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @ECONNRESET, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %248

242:                                              ; preds = %229
  %243 = load i32, i32* %21, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %248, label %245

245:                                              ; preds = %242
  store i32 1, i32* %21, align 4
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %247 = call i32 @res_nclose(%struct.TYPE_8__* %246)
  br label %44

248:                                              ; preds = %242, %229
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %250 = call i32 @res_nclose(%struct.TYPE_8__* %249)
  store i32 0, i32* %8, align 4
  br label %404

251:                                              ; preds = %226
  %252 = load i32*, i32** %12, align 8
  %253 = call i32 @ns_get16(i32* %252)
  store i32 %253, i32* %22, align 4
  %254 = load i32, i32* %22, align 4
  %255 = load i32, i32* %13, align 4
  %256 = icmp sgt i32 %254, %255
  br i1 %256, label %257, label %266

257:                                              ; preds = %251
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @RES_DEBUG, align 4
  %262 = and i32 %260, %261
  %263 = load i32, i32* @stdout, align 4
  %264 = call i32 @Dprint(i32 %262, i32 ptrtoint ([23 x i8]* @.str.4 to i32))
  store i32 1, i32* %20, align 4
  %265 = load i32, i32* %13, align 4
  store i32 %265, i32* %25, align 4
  br label %268

266:                                              ; preds = %251
  %267 = load i32, i32* %22, align 4
  store i32 %267, i32* %25, align 4
  br label %268

268:                                              ; preds = %266, %257
  %269 = load i32, i32* %25, align 4
  %270 = load i32, i32* @HFIXEDSZ, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %285

272:                                              ; preds = %268
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @RES_DEBUG, align 4
  %277 = and i32 %275, %276
  %278 = load i32, i32* @stdout, align 4
  %279 = load i32, i32* %25, align 4
  %280 = call i32 @Dprint(i32 %277, i32 %279)
  %281 = load i32, i32* @EMSGSIZE, align 4
  %282 = load i32*, i32** %14, align 8
  store i32 %281, i32* %282, align 4
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %284 = call i32 @res_nclose(%struct.TYPE_8__* %283)
  store i32 0, i32* %8, align 4
  br label %404

285:                                              ; preds = %268
  %286 = load i32*, i32** %12, align 8
  store i32* %286, i32** %26, align 8
  br label %287

287:                                              ; preds = %301, %285
  %288 = load i32, i32* %25, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %299

290:                                              ; preds = %287
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i32*, i32** %26, align 8
  %295 = bitcast i32* %294 to i8*
  %296 = load i32, i32* %25, align 4
  %297 = call i32 @_read(i64 %293, i8* %295, i32 %296)
  store i32 %297, i32* %23, align 4
  %298 = icmp sgt i32 %297, 0
  br label %299

299:                                              ; preds = %290, %287
  %300 = phi i1 [ false, %287 ], [ %298, %290 ]
  br i1 %300, label %301, label %309

301:                                              ; preds = %299
  %302 = load i32, i32* %23, align 4
  %303 = load i32*, i32** %26, align 8
  %304 = sext i32 %302 to i64
  %305 = getelementptr inbounds i32, i32* %303, i64 %304
  store i32* %305, i32** %26, align 8
  %306 = load i32, i32* %23, align 4
  %307 = load i32, i32* %25, align 4
  %308 = sub nsw i32 %307, %306
  store i32 %308, i32* %25, align 4
  br label %287

309:                                              ; preds = %299
  %310 = load i32, i32* %23, align 4
  %311 = icmp sle i32 %310, 0
  br i1 %311, label %312, label %321

312:                                              ; preds = %309
  %313 = load i32, i32* @errno, align 4
  %314 = load i32*, i32** %14, align 8
  store i32 %313, i32* %314, align 4
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %316 = load i32, i32* @stderr, align 4
  %317 = load i32, i32* @errno, align 4
  %318 = call i32 @Perror(%struct.TYPE_8__* %315, i32 %316, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %317)
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %320 = call i32 @res_nclose(%struct.TYPE_8__* %319)
  store i32 0, i32* %8, align 4
  br label %404

321:                                              ; preds = %309
  %322 = load i32, i32* %20, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %365

324:                                              ; preds = %321
  %325 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i32 0, i32 0
  store i32 1, i32* %326, align 8
  %327 = load i32, i32* %22, align 4
  %328 = load i32, i32* %13, align 4
  %329 = sub nsw i32 %327, %328
  store i32 %329, i32* %25, align 4
  br label %330

330:                                              ; preds = %363, %324
  %331 = load i32, i32* %25, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %364

333:                                              ; preds = %330
  %334 = load i32, i32* @PACKETSZ, align 4
  %335 = zext i32 %334 to i64
  %336 = call i8* @llvm.stacksave()
  store i8* %336, i8** %32, align 8
  %337 = alloca i8, i64 %335, align 16
  store i64 %335, i64* %33, align 8
  %338 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = load i32, i32* %25, align 4
  %342 = sext i32 %341 to i64
  %343 = icmp ugt i64 %342, %335
  br i1 %343, label %344, label %345

344:                                              ; preds = %333
  br label %348

345:                                              ; preds = %333
  %346 = load i32, i32* %25, align 4
  %347 = sext i32 %346 to i64
  br label %348

348:                                              ; preds = %345, %344
  %349 = phi i64 [ %335, %344 ], [ %347, %345 ]
  %350 = trunc i64 %349 to i32
  %351 = call i32 @_read(i64 %340, i8* %337, i32 %350)
  store i32 %351, i32* %23, align 4
  %352 = load i32, i32* %23, align 4
  %353 = icmp sgt i32 %352, 0
  br i1 %353, label %354, label %358

354:                                              ; preds = %348
  %355 = load i32, i32* %23, align 4
  %356 = load i32, i32* %25, align 4
  %357 = sub nsw i32 %356, %355
  store i32 %357, i32* %25, align 4
  br label %359

358:                                              ; preds = %348
  store i32 10, i32* %34, align 4
  br label %360

359:                                              ; preds = %354
  store i32 0, i32* %34, align 4
  br label %360

360:                                              ; preds = %359, %358
  %361 = load i8*, i8** %32, align 8
  call void @llvm.stackrestore(i8* %361)
  %362 = load i32, i32* %34, align 4
  switch i32 %362, label %406 [
    i32 0, label %363
    i32 10, label %364
  ]

363:                                              ; preds = %360
  br label %330

364:                                              ; preds = %360, %330
  br label %365

365:                                              ; preds = %364, %321
  %366 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %370 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %369, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = icmp ne i64 %368, %371
  br i1 %372, label %373, label %402

373:                                              ; preds = %365
  %374 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %375 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* @RES_DEBUG, align 4
  %378 = and i32 %376, %377
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %387, label %380

380:                                              ; preds = %373
  %381 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 3
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* @RES_PRF_REPLY, align 4
  %385 = and i32 %383, %384
  %386 = icmp ne i32 %385, 0
  br label %387

387:                                              ; preds = %380, %373
  %388 = phi i1 [ true, %373 ], [ %386, %380 ]
  %389 = zext i1 %388 to i32
  %390 = load i32, i32* @stdout, align 4
  %391 = load i32*, i32** %12, align 8
  %392 = load i32, i32* %22, align 4
  %393 = load i32, i32* %13, align 4
  %394 = icmp sgt i32 %392, %393
  br i1 %394, label %395, label %397

395:                                              ; preds = %387
  %396 = load i32, i32* %13, align 4
  br label %399

397:                                              ; preds = %387
  %398 = load i32, i32* %22, align 4
  br label %399

399:                                              ; preds = %397, %395
  %400 = phi i32 [ %396, %395 ], [ %398, %397 ]
  %401 = call i32 @DprintQ(i32 %389, i32 ptrtoint ([29 x i8]* @.str.7 to i32), i32* %391, i32 %400)
  br label %202

402:                                              ; preds = %365
  %403 = load i32, i32* %22, align 4
  store i32 %403, i32* %8, align 4
  br label %404

404:                                              ; preds = %402, %312, %272, %248, %192, %144, %129, %124
  %405 = load i32, i32* %8, align 4
  ret i32 %405

406:                                              ; preds = %360
  unreachable
}

declare dso_local %struct.sockaddr* @get_nsaddr(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @get_salen(%struct.sockaddr*) #1

declare dso_local i64 @_getpeername(i64, %struct.sockaddr*, i32*) #1

declare dso_local i32 @sock_eq(%struct.sockaddr*, %struct.sockaddr*) #1

declare dso_local i32 @res_nclose(%struct.TYPE_8__*) #1

declare dso_local i64 @_socket(i32, i32, i32) #1

declare dso_local i32 @Perror(%struct.TYPE_8__*, i32, i8*, i32) #1

declare dso_local i64 @_connect(i64, %struct.sockaddr*, i32) #1

declare dso_local i32 @Aerror(%struct.TYPE_8__*, i32, i8*, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @ns_put16(i32, i32*) #1

declare dso_local i32 @evConsIovec(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DE_CONST(i32*, i8*) #1

declare dso_local i64 @_writev(i64, %struct.iovec*, i32) #1

declare dso_local i32 @_read(i64, i8*, i32) #1

declare dso_local i32 @ns_get16(i32*) #1

declare dso_local i32 @Dprint(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @DprintQ(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
