; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_ftp.c_recvrequest.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_ftp.c_recvrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.stat = type { i32 }
%struct.timezone = type { i32 }

@recvrequest.bufsize = internal global i64 0, align 8
@recvrequest.buf = internal global i8* null, align 8
@HASHBYTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"RETR\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"local: %s \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"remote: %s\0A\00", align 1
@proxy = common dso_local global i64 0, align 8
@crflag = common dso_local global i32 0, align 4
@recvabort = common dso_local global i32 0, align 4
@cpend = common dso_local global i64 0, align 8
@data = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@code = common dso_local global i32 0, align 4
@abortrecv = common dso_local global i32* null, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"local: %s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@runique = common dso_local global i64 0, align 8
@curtype = common dso_local global i32 0, align 4
@type = common dso_local global i32 0, align 4
@restart_point = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"REST %ld\00", align 1
@CONTINUE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@PRELIM = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdout = common dso_local global i32* null, align 8
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@hash = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"netin\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"%s: short write\00", align 1
@EOF = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [51 x i8] c"WARNING! %d bare linefeeds received in ASCII mode\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"File may not have transferred correctly.\0A\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"received\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @recvrequest(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32 (i32*)*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.timeval, align 4
  %26 = alloca %struct.timeval, align 4
  %27 = alloca %struct.stat, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %22, align 4
  store i64 0, i64* %23, align 8
  %32 = load i64, i64* @HASHBYTES, align 8
  store i64 %32, i64* %24, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %20, align 4
  %37 = load i32, i32* %20, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %6
  %40 = load i64, i64* @verbose, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load i8*, i8** %8, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i8*, i8** %9, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %42, %39, %6
  %60 = load i64, i64* @proxy, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i32, i32* %20, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i8*, i8** %7, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @proxtrans(i8* %66, i8* %67, i8* %68)
  br label %684

70:                                               ; preds = %62, %59
  store i32 (i32*)* null, i32 (i32*)** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %71 = load i32, i32* @crflag, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %20, align 4
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %73, %70
  %77 = phi i1 [ false, %70 ], [ %75, %73 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %21, align 4
  %79 = load i32, i32* @recvabort, align 4
  %80 = call i64 @setjmp(i32 %79) #3
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %86, %82
  %84 = load i64, i64* @cpend, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 @getreply(i32 0)
  br label %83

88:                                               ; preds = %83
  %89 = load i32, i32* @data, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* @data, align 4
  %93 = call i32 @close(i32 %92)
  store i32 -1, i32* @data, align 4
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32*, i32** %16, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, i32* @SIGINT, align 4
  %99 = load i32*, i32** %16, align 8
  %100 = call i32* @signal(i32 %98, i32* %99)
  br label %101

101:                                              ; preds = %97, %94
  store i32 -1, i32* @code, align 4
  br label %684

102:                                              ; preds = %76
  %103 = load i32, i32* @SIGINT, align 4
  %104 = load i32*, i32** @abortrecv, align 8
  %105 = call i32* @signal(i32 %103, i32* %104)
  store i32* %105, i32** %16, align 8
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %102
  %109 = load i8*, i8** %8, align 8
  %110 = call i64 @strcmp(i8* %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %214

112:                                              ; preds = %108
  %113 = load i8*, i8** %8, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 124
  br i1 %116, label %117, label %214

117:                                              ; preds = %112, %102
  %118 = load i8*, i8** %8, align 8
  %119 = call i64 @access(i8* %118, i32 2)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %201

121:                                              ; preds = %117
  %122 = load i8*, i8** %8, align 8
  %123 = call i8* @strrchr(i8* %122, i8 signext 47)
  store i8* %123, i8** %28, align 8
  %124 = load i64, i64* @errno, align 8
  %125 = load i64, i64* @ENOENT, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %121
  %128 = load i64, i64* @errno, align 8
  %129 = load i64, i64* @EACCES, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = load i8*, i8** %8, align 8
  %133 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %132)
  %134 = load i32, i32* @SIGINT, align 4
  %135 = load i32*, i32** %16, align 8
  %136 = call i32* @signal(i32 %134, i32* %135)
  store i32 -1, i32* @code, align 4
  br label %684

137:                                              ; preds = %127, %121
  %138 = load i8*, i8** %28, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = load i8*, i8** %28, align 8
  store i8 0, i8* %141, align 1
  br label %142

142:                                              ; preds = %140, %137
  %143 = load i8*, i8** %28, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load i8*, i8** %8, align 8
  br label %148

147:                                              ; preds = %142
  br label %148

148:                                              ; preds = %147, %145
  %149 = phi i8* [ %146, %145 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %147 ]
  %150 = call i64 @access(i8* %149, i32 2)
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %19, align 4
  %152 = load i8*, i8** %28, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = load i8*, i8** %28, align 8
  store i8 47, i8* %155, align 1
  br label %156

156:                                              ; preds = %154, %148
  %157 = load i32, i32* %19, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load i8*, i8** %8, align 8
  %161 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %160)
  %162 = load i32, i32* @SIGINT, align 4
  %163 = load i32*, i32** %16, align 8
  %164 = call i32* @signal(i32 %162, i32* %163)
  store i32 -1, i32* @code, align 4
  br label %684

165:                                              ; preds = %156
  %166 = load i64, i64* @runique, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %185, label %168

168:                                              ; preds = %165
  %169 = load i64, i64* @errno, align 8
  %170 = load i64, i64* @EACCES, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %185

172:                                              ; preds = %168
  %173 = load i8*, i8** %8, align 8
  %174 = call i64 @chmod(i8* %173, i32 384)
  %175 = icmp slt i64 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %172
  %177 = load i8*, i8** %8, align 8
  %178 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %177)
  %179 = load i32, i32* @SIGINT, align 4
  %180 = load i32*, i32** %16, align 8
  %181 = call i32* @signal(i32 %179, i32* %180)
  %182 = load i32, i32* @SIGINT, align 4
  %183 = load i32*, i32** %16, align 8
  %184 = call i32* @signal(i32 %182, i32* %183)
  store i32 -1, i32* @code, align 4
  br label %684

185:                                              ; preds = %172, %168, %165
  %186 = load i64, i64* @runique, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %200

188:                                              ; preds = %185
  %189 = load i64, i64* @errno, align 8
  %190 = load i64, i64* @EACCES, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %200

192:                                              ; preds = %188
  %193 = load i8*, i8** %8, align 8
  %194 = call i8* @gunique(i8* %193)
  store i8* %194, i8** %8, align 8
  %195 = icmp eq i8* %194, null
  br i1 %195, label %196, label %200

196:                                              ; preds = %192
  %197 = load i32, i32* @SIGINT, align 4
  %198 = load i32*, i32** %16, align 8
  %199 = call i32* @signal(i32 %197, i32* %198)
  store i32 -1, i32* @code, align 4
  br label %684

200:                                              ; preds = %192, %188, %185
  br label %213

201:                                              ; preds = %117
  %202 = load i64, i64* @runique, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %201
  %205 = load i8*, i8** %8, align 8
  %206 = call i8* @gunique(i8* %205)
  store i8* %206, i8** %8, align 8
  %207 = icmp eq i8* %206, null
  br i1 %207, label %208, label %212

208:                                              ; preds = %204
  %209 = load i32, i32* @SIGINT, align 4
  %210 = load i32*, i32** %16, align 8
  %211 = call i32* @signal(i32 %209, i32* %210)
  store i32 -1, i32* @code, align 4
  br label %684

212:                                              ; preds = %204, %201
  br label %213

213:                                              ; preds = %212, %200
  br label %214

214:                                              ; preds = %213, %112, %108
  %215 = load i32, i32* %20, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %214
  %218 = load i32, i32* @curtype, align 4
  %219 = icmp ne i32 %218, 130
  br i1 %219, label %220, label %222

220:                                              ; preds = %217
  %221 = call i32 @changetype(i32 130, i32 0)
  br label %222

222:                                              ; preds = %220, %217
  br label %231

223:                                              ; preds = %214
  %224 = load i32, i32* @curtype, align 4
  %225 = load i32, i32* @type, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %223
  %228 = load i32, i32* @type, align 4
  %229 = call i32 @changetype(i32 %228, i32 0)
  br label %230

230:                                              ; preds = %227, %223
  br label %231

231:                                              ; preds = %230, %222
  %232 = call i64 (...) @initconn()
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %231
  %235 = load i32, i32* @SIGINT, align 4
  %236 = load i32*, i32** %16, align 8
  %237 = call i32* @signal(i32 %235, i32* %236)
  store i32 -1, i32* @code, align 4
  br label %684

238:                                              ; preds = %231
  %239 = load i32, i32* @recvabort, align 4
  %240 = call i64 @setjmp(i32 %239) #3
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %238
  br label %632

243:                                              ; preds = %238
  %244 = load i32, i32* %20, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %256

246:                                              ; preds = %243
  %247 = load i32, i32* @restart_point, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %246
  %250 = load i32, i32* @restart_point, align 4
  %251 = sext i32 %250 to i64
  %252 = call i64 (i8*, ...) @command(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64 %251)
  %253 = load i64, i64* @CONTINUE, align 8
  %254 = icmp ne i64 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %249
  br label %684

256:                                              ; preds = %249, %246, %243
  %257 = load i8*, i8** %9, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %270

259:                                              ; preds = %256
  %260 = load i8*, i8** %7, align 8
  %261 = load i8*, i8** %9, align 8
  %262 = call i64 (i8*, ...) @command(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %260, i8* %261)
  %263 = load i64, i64* @PRELIM, align 8
  %264 = icmp ne i64 %262, %263
  br i1 %264, label %265, label %269

265:                                              ; preds = %259
  %266 = load i32, i32* @SIGINT, align 4
  %267 = load i32*, i32** %16, align 8
  %268 = call i32* @signal(i32 %266, i32* %267)
  br label %684

269:                                              ; preds = %259
  br label %280

270:                                              ; preds = %256
  %271 = load i8*, i8** %7, align 8
  %272 = call i64 (i8*, ...) @command(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %271)
  %273 = load i64, i64* @PRELIM, align 8
  %274 = icmp ne i64 %272, %273
  br i1 %274, label %275, label %279

275:                                              ; preds = %270
  %276 = load i32, i32* @SIGINT, align 4
  %277 = load i32*, i32** %16, align 8
  %278 = call i32* @signal(i32 %276, i32* %277)
  br label %684

279:                                              ; preds = %270
  br label %280

280:                                              ; preds = %279, %269
  %281 = call i32* @dataconn(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i32* %281, i32** %14, align 8
  %282 = load i32*, i32** %14, align 8
  %283 = icmp eq i32* %282, null
  br i1 %283, label %284, label %285

284:                                              ; preds = %280
  br label %632

285:                                              ; preds = %280
  %286 = load i32*, i32** %14, align 8
  %287 = call i32 @fileno(i32* %286)
  %288 = call i32 @set_buffer_size(i32 %287, i32 1)
  %289 = load i32, i32* %12, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %297

291:                                              ; preds = %285
  %292 = load i8*, i8** %8, align 8
  %293 = call i64 @strcmp(i8* %292, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %291
  %296 = load i32*, i32** @stdout, align 8
  store i32* %296, i32** %13, align 8
  br label %330

297:                                              ; preds = %291, %285
  %298 = load i32, i32* %12, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %319

300:                                              ; preds = %297
  %301 = load i8*, i8** %8, align 8
  %302 = load i8, i8* %301, align 1
  %303 = sext i8 %302 to i32
  %304 = icmp eq i32 %303, 124
  br i1 %304, label %305, label %319

305:                                              ; preds = %300
  %306 = load i32, i32* @SIGPIPE, align 4
  %307 = load i32*, i32** @SIG_IGN, align 8
  %308 = call i32* @signal(i32 %306, i32* %307)
  store i32* %308, i32** %17, align 8
  %309 = load i8*, i8** %8, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 1
  %311 = call i32* @popen(i8* %310, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i32* %311, i32** %13, align 8
  %312 = load i32*, i32** %13, align 8
  %313 = icmp eq i32* %312, null
  br i1 %313, label %314, label %318

314:                                              ; preds = %305
  %315 = load i8*, i8** %8, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 1
  %317 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %316)
  br label %632

318:                                              ; preds = %305
  store i32 (i32*)* @pclose, i32 (i32*)** %15, align 8
  br label %329

319:                                              ; preds = %300, %297
  %320 = load i8*, i8** %8, align 8
  %321 = load i8*, i8** %10, align 8
  %322 = call i32* @fopen(i8* %320, i8* %321)
  store i32* %322, i32** %13, align 8
  %323 = load i32*, i32** %13, align 8
  %324 = icmp eq i32* %323, null
  br i1 %324, label %325, label %328

325:                                              ; preds = %319
  %326 = load i8*, i8** %8, align 8
  %327 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %326)
  br label %632

328:                                              ; preds = %319
  store i32 (i32*)* @fclose, i32 (i32*)** %15, align 8
  br label %329

329:                                              ; preds = %328, %318
  br label %330

330:                                              ; preds = %329, %295
  %331 = load i8*, i8** @recvrequest.buf, align 8
  %332 = load i32*, i32** %13, align 8
  %333 = call i32 @fileno(i32* %332)
  %334 = call i64 @fstat(i32 %333, %struct.stat* %27)
  %335 = icmp sge i64 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %330
  br label %338

337:                                              ; preds = %330
  br label %338

338:                                              ; preds = %337, %336
  %339 = phi %struct.stat* [ %27, %336 ], [ null, %337 ]
  %340 = call i8* @alloc_buffer(i8* %331, i64* @recvrequest.bufsize, %struct.stat* %339)
  store i8* %340, i8** @recvrequest.buf, align 8
  %341 = load i8*, i8** @recvrequest.buf, align 8
  %342 = icmp eq i8* %341, null
  br i1 %342, label %343, label %344

343:                                              ; preds = %338
  br label %632

344:                                              ; preds = %338
  %345 = call i32 @gettimeofday(%struct.timeval* %25, %struct.timezone* null)
  %346 = load i32, i32* @curtype, align 4
  switch i32 %346, label %601 [
    i32 129, label %347
    i32 128, label %347
    i32 130, label %446
  ]

347:                                              ; preds = %344, %344
  %348 = load i32, i32* @restart_point, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %367

350:                                              ; preds = %347
  %351 = load i32*, i32** %13, align 8
  %352 = call i32 @fileno(i32* %351)
  %353 = load i32, i32* @restart_point, align 4
  %354 = load i32, i32* @SEEK_SET, align 4
  %355 = call i32 @lseek(i32 %352, i32 %353, i32 %354)
  %356 = icmp slt i32 %355, 0
  br i1 %356, label %357, label %367

357:                                              ; preds = %350
  %358 = load i8*, i8** %8, align 8
  %359 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %358)
  %360 = load i32 (i32*)*, i32 (i32*)** %15, align 8
  %361 = icmp ne i32 (i32*)* %360, null
  br i1 %361, label %362, label %366

362:                                              ; preds = %357
  %363 = load i32 (i32*)*, i32 (i32*)** %15, align 8
  %364 = load i32*, i32** %13, align 8
  %365 = call i32 %363(i32* %364)
  br label %366

366:                                              ; preds = %362, %357
  br label %684

367:                                              ; preds = %350, %347
  store i32 0, i32* %19, align 4
  store i64 0, i64* @errno, align 8
  br label %368

368:                                              ; preds = %404, %367
  %369 = load i32*, i32** %14, align 8
  %370 = call i32 @fileno(i32* %369)
  %371 = load i8*, i8** @recvrequest.buf, align 8
  %372 = load i64, i64* @recvrequest.bufsize, align 8
  %373 = call i32 @sec_read(i32 %370, i8* %371, i64 %372)
  store i32 %373, i32* %18, align 4
  %374 = icmp sgt i32 %373, 0
  br i1 %374, label %375, label %405

375:                                              ; preds = %368
  %376 = load i32*, i32** %13, align 8
  %377 = call i32 @fileno(i32* %376)
  %378 = load i8*, i8** @recvrequest.buf, align 8
  %379 = load i32, i32* %18, align 4
  %380 = call i32 @write(i32 %377, i8* %378, i32 %379)
  store i32 %380, i32* %19, align 4
  %381 = load i32, i32* %18, align 4
  %382 = icmp ne i32 %380, %381
  br i1 %382, label %383, label %384

383:                                              ; preds = %375
  br label %405

384:                                              ; preds = %375
  %385 = load i32, i32* %18, align 4
  %386 = sext i32 %385 to i64
  %387 = load i64, i64* %23, align 8
  %388 = add nsw i64 %387, %386
  store i64 %388, i64* %23, align 8
  %389 = load i32, i32* @hash, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %404

391:                                              ; preds = %384
  br label %392

392:                                              ; preds = %396, %391
  %393 = load i64, i64* %23, align 8
  %394 = load i64, i64* %24, align 8
  %395 = icmp sge i64 %393, %394
  br i1 %395, label %396, label %401

396:                                              ; preds = %392
  %397 = call i32 @putchar(i8 signext 35)
  %398 = load i64, i64* @HASHBYTES, align 8
  %399 = load i64, i64* %24, align 8
  %400 = add nsw i64 %399, %398
  store i64 %400, i64* %24, align 8
  br label %392

401:                                              ; preds = %392
  %402 = load i32*, i32** @stdout, align 8
  %403 = call i32 @fflush(i32* %402)
  br label %404

404:                                              ; preds = %401, %384
  br label %368

405:                                              ; preds = %383, %368
  %406 = load i32, i32* @hash, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %421

408:                                              ; preds = %405
  %409 = load i64, i64* %23, align 8
  %410 = icmp sgt i64 %409, 0
  br i1 %410, label %411, label %421

411:                                              ; preds = %408
  %412 = load i64, i64* %23, align 8
  %413 = load i64, i64* @HASHBYTES, align 8
  %414 = icmp slt i64 %412, %413
  br i1 %414, label %415, label %417

415:                                              ; preds = %411
  %416 = call i32 @putchar(i8 signext 35)
  br label %417

417:                                              ; preds = %415, %411
  %418 = call i32 @putchar(i8 signext 10)
  %419 = load i32*, i32** @stdout, align 8
  %420 = call i32 @fflush(i32* %419)
  br label %421

421:                                              ; preds = %417, %408, %405
  %422 = load i32, i32* %18, align 4
  %423 = icmp slt i32 %422, 0
  br i1 %423, label %424, label %431

424:                                              ; preds = %421
  %425 = load i64, i64* @errno, align 8
  %426 = load i64, i64* @EPIPE, align 8
  %427 = icmp ne i64 %425, %426
  br i1 %427, label %428, label %430

428:                                              ; preds = %424
  %429 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %430

430:                                              ; preds = %428, %424
  store i64 -1, i64* %23, align 8
  br label %431

431:                                              ; preds = %430, %421
  %432 = load i32, i32* %19, align 4
  %433 = load i32, i32* %18, align 4
  %434 = icmp slt i32 %432, %433
  br i1 %434, label %435, label %445

435:                                              ; preds = %431
  %436 = load i32, i32* %19, align 4
  %437 = icmp slt i32 %436, 0
  br i1 %437, label %438, label %441

438:                                              ; preds = %435
  %439 = load i8*, i8** %8, align 8
  %440 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %439)
  br label %444

441:                                              ; preds = %435
  %442 = load i8*, i8** %8, align 8
  %443 = call i32 @warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* %442)
  br label %444

444:                                              ; preds = %441, %438
  br label %445

445:                                              ; preds = %444, %431
  br label %601

446:                                              ; preds = %344
  %447 = load i32, i32* @restart_point, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %492

449:                                              ; preds = %446
  %450 = load i32*, i32** %13, align 8
  %451 = load i32, i32* @SEEK_SET, align 4
  %452 = call i32 @fseek(i32* %450, i64 0, i32 %451)
  %453 = icmp slt i32 %452, 0
  br i1 %453, label %454, label %455

454:                                              ; preds = %449
  br label %481

455:                                              ; preds = %449
  %456 = load i32, i32* @restart_point, align 4
  store i32 %456, i32* %30, align 4
  store i32 0, i32* %29, align 4
  br label %457

457:                                              ; preds = %474, %455
  %458 = load i32, i32* %29, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %29, align 4
  %460 = load i32, i32* %30, align 4
  %461 = icmp slt i32 %458, %460
  br i1 %461, label %462, label %475

462:                                              ; preds = %457
  %463 = load i32*, i32** %13, align 8
  %464 = call i32 @sec_getc(i32* %463)
  store i32 %464, i32* %31, align 4
  %465 = load i32, i32* @EOF, align 4
  %466 = icmp eq i32 %464, %465
  br i1 %466, label %467, label %468

467:                                              ; preds = %462
  br label %481

468:                                              ; preds = %462
  %469 = load i32, i32* %31, align 4
  %470 = icmp eq i32 %469, 10
  br i1 %470, label %471, label %474

471:                                              ; preds = %468
  %472 = load i32, i32* %29, align 4
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %29, align 4
  br label %474

474:                                              ; preds = %471, %468
  br label %457

475:                                              ; preds = %457
  %476 = load i32*, i32** %13, align 8
  %477 = load i32, i32* @SEEK_CUR, align 4
  %478 = call i32 @fseek(i32* %476, i64 0, i32 %477)
  %479 = icmp slt i32 %478, 0
  br i1 %479, label %480, label %491

480:                                              ; preds = %475
  br label %481

481:                                              ; preds = %480, %467, %454
  %482 = load i8*, i8** %8, align 8
  %483 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %482)
  %484 = load i32 (i32*)*, i32 (i32*)** %15, align 8
  %485 = icmp ne i32 (i32*)* %484, null
  br i1 %485, label %486, label %490

486:                                              ; preds = %481
  %487 = load i32 (i32*)*, i32 (i32*)** %15, align 8
  %488 = load i32*, i32** %13, align 8
  %489 = call i32 %487(i32* %488)
  br label %490

490:                                              ; preds = %486, %481
  br label %684

491:                                              ; preds = %475
  br label %492

492:                                              ; preds = %491, %446
  br label %493

493:                                              ; preds = %560, %492
  %494 = load i32*, i32** %14, align 8
  %495 = call i32 @sec_getc(i32* %494)
  store i32 %495, i32* %18, align 4
  %496 = load i32, i32* @EOF, align 4
  %497 = icmp ne i32 %495, %496
  br i1 %497, label %498, label %561

498:                                              ; preds = %493
  %499 = load i32, i32* %18, align 4
  %500 = icmp eq i32 %499, 10
  br i1 %500, label %501, label %504

501:                                              ; preds = %498
  %502 = load i32, i32* %22, align 4
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %22, align 4
  br label %504

504:                                              ; preds = %501, %498
  br label %505

505:                                              ; preds = %553, %504
  %506 = load i32, i32* %18, align 4
  %507 = icmp eq i32 %506, 13
  br i1 %507, label %508, label %554

508:                                              ; preds = %505
  br label %509

509:                                              ; preds = %518, %508
  %510 = load i32, i32* @hash, align 4
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %516

512:                                              ; preds = %509
  %513 = load i64, i64* %23, align 8
  %514 = load i64, i64* %24, align 8
  %515 = icmp sge i64 %513, %514
  br label %516

516:                                              ; preds = %512, %509
  %517 = phi i1 [ false, %509 ], [ %515, %512 ]
  br i1 %517, label %518, label %525

518:                                              ; preds = %516
  %519 = call i32 @putchar(i8 signext 35)
  %520 = load i32*, i32** @stdout, align 8
  %521 = call i32 @fflush(i32* %520)
  %522 = load i64, i64* @HASHBYTES, align 8
  %523 = load i64, i64* %24, align 8
  %524 = add nsw i64 %523, %522
  store i64 %524, i64* %24, align 8
  br label %509

525:                                              ; preds = %516
  %526 = load i64, i64* %23, align 8
  %527 = add nsw i64 %526, 1
  store i64 %527, i64* %23, align 8
  %528 = load i32*, i32** %14, align 8
  %529 = call i32 @sec_getc(i32* %528)
  store i32 %529, i32* %18, align 4
  %530 = icmp ne i32 %529, 10
  br i1 %530, label %534, label %531

531:                                              ; preds = %525
  %532 = load i32, i32* %21, align 4
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %534, label %553

534:                                              ; preds = %531, %525
  %535 = load i32*, i32** %13, align 8
  %536 = call i32 @ferror(i32* %535)
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %539

538:                                              ; preds = %534
  br label %562

539:                                              ; preds = %534
  %540 = load i32*, i32** %13, align 8
  %541 = call i32 @putc(i32 13, i32* %540)
  %542 = load i32, i32* %18, align 4
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %544, label %547

544:                                              ; preds = %539
  %545 = load i64, i64* %23, align 8
  %546 = add nsw i64 %545, 1
  store i64 %546, i64* %23, align 8
  br label %560

547:                                              ; preds = %539
  %548 = load i32, i32* %18, align 4
  %549 = load i32, i32* @EOF, align 4
  %550 = icmp eq i32 %548, %549
  br i1 %550, label %551, label %552

551:                                              ; preds = %547
  br label %560

552:                                              ; preds = %547
  br label %553

553:                                              ; preds = %552, %531
  br label %505

554:                                              ; preds = %505
  %555 = load i32, i32* %18, align 4
  %556 = load i32*, i32** %13, align 8
  %557 = call i32 @putc(i32 %555, i32* %556)
  %558 = load i64, i64* %23, align 8
  %559 = add nsw i64 %558, 1
  store i64 %559, i64* %23, align 8
  br label %560

560:                                              ; preds = %554, %551, %544
  br label %493

561:                                              ; preds = %493
  br label %562

562:                                              ; preds = %561, %538
  %563 = load i32, i32* %22, align 4
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %565, label %569

565:                                              ; preds = %562
  %566 = load i32, i32* %22, align 4
  %567 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i32 %566)
  %568 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0))
  br label %569

569:                                              ; preds = %565, %562
  %570 = load i32, i32* @hash, align 4
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %582

572:                                              ; preds = %569
  %573 = load i64, i64* %23, align 8
  %574 = load i64, i64* %24, align 8
  %575 = icmp slt i64 %573, %574
  br i1 %575, label %576, label %578

576:                                              ; preds = %572
  %577 = call i32 @putchar(i8 signext 35)
  br label %578

578:                                              ; preds = %576, %572
  %579 = call i32 @putchar(i8 signext 10)
  %580 = load i32*, i32** @stdout, align 8
  %581 = call i32 @fflush(i32* %580)
  br label %582

582:                                              ; preds = %578, %569
  %583 = load i32*, i32** %14, align 8
  %584 = call i32 @ferror(i32* %583)
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %593

586:                                              ; preds = %582
  %587 = load i64, i64* @errno, align 8
  %588 = load i64, i64* @EPIPE, align 8
  %589 = icmp ne i64 %587, %588
  br i1 %589, label %590, label %592

590:                                              ; preds = %586
  %591 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %592

592:                                              ; preds = %590, %586
  store i64 -1, i64* %23, align 8
  br label %593

593:                                              ; preds = %592, %582
  %594 = load i32*, i32** %13, align 8
  %595 = call i32 @ferror(i32* %594)
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %597, label %600

597:                                              ; preds = %593
  %598 = load i8*, i8** %8, align 8
  %599 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %598)
  br label %600

600:                                              ; preds = %597, %593
  br label %601

601:                                              ; preds = %344, %600, %445
  %602 = load i32 (i32*)*, i32 (i32*)** %15, align 8
  %603 = icmp ne i32 (i32*)* %602, null
  br i1 %603, label %604, label %608

604:                                              ; preds = %601
  %605 = load i32 (i32*)*, i32 (i32*)** %15, align 8
  %606 = load i32*, i32** %13, align 8
  %607 = call i32 %605(i32* %606)
  br label %608

608:                                              ; preds = %604, %601
  %609 = load i32, i32* @SIGINT, align 4
  %610 = load i32*, i32** %16, align 8
  %611 = call i32* @signal(i32 %609, i32* %610)
  %612 = load i32*, i32** %17, align 8
  %613 = icmp ne i32* %612, null
  br i1 %613, label %614, label %618

614:                                              ; preds = %608
  %615 = load i32, i32* @SIGPIPE, align 4
  %616 = load i32*, i32** %17, align 8
  %617 = call i32* @signal(i32 %615, i32* %616)
  br label %618

618:                                              ; preds = %614, %608
  %619 = load i32*, i32** %14, align 8
  %620 = call i32 @fclose(i32* %619)
  %621 = call i32 @gettimeofday(%struct.timeval* %26, %struct.timezone* null)
  %622 = call i32 @getreply(i32 0)
  %623 = load i64, i64* %23, align 8
  %624 = icmp sgt i64 %623, 0
  br i1 %624, label %625, label %631

625:                                              ; preds = %618
  %626 = load i32, i32* %20, align 4
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %628, label %631

628:                                              ; preds = %625
  %629 = load i64, i64* %23, align 8
  %630 = call i32 @ptransfer(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i64 %629, %struct.timeval* %25, %struct.timeval* %26)
  br label %631

631:                                              ; preds = %628, %625, %618
  br label %684

632:                                              ; preds = %343, %325, %314, %284, %242
  %633 = load i32*, i32** %17, align 8
  %634 = icmp ne i32* %633, null
  br i1 %634, label %635, label %639

635:                                              ; preds = %632
  %636 = load i32, i32* @SIGPIPE, align 4
  %637 = load i32*, i32** %16, align 8
  %638 = call i32* @signal(i32 %636, i32* %637)
  br label %639

639:                                              ; preds = %635, %632
  %640 = load i32, i32* @SIGINT, align 4
  %641 = load i32*, i32** @SIG_IGN, align 8
  %642 = call i32* @signal(i32 %640, i32* %641)
  %643 = load i64, i64* @cpend, align 8
  %644 = icmp ne i64 %643, 0
  br i1 %644, label %649, label %645

645:                                              ; preds = %639
  store i32 -1, i32* @code, align 4
  %646 = load i32, i32* @SIGINT, align 4
  %647 = load i32*, i32** %16, align 8
  %648 = call i32* @signal(i32 %646, i32* %647)
  br label %684

649:                                              ; preds = %639
  %650 = load i32*, i32** %14, align 8
  %651 = call i32 @abort_remote(i32* %650)
  store i32 -1, i32* @code, align 4
  %652 = load i32, i32* @data, align 4
  %653 = icmp sge i32 %652, 0
  br i1 %653, label %654, label %657

654:                                              ; preds = %649
  %655 = load i32, i32* @data, align 4
  %656 = call i32 @close(i32 %655)
  store i32 -1, i32* @data, align 4
  br label %657

657:                                              ; preds = %654, %649
  %658 = load i32 (i32*)*, i32 (i32*)** %15, align 8
  %659 = icmp ne i32 (i32*)* %658, null
  br i1 %659, label %660, label %667

660:                                              ; preds = %657
  %661 = load i32*, i32** %13, align 8
  %662 = icmp ne i32* %661, null
  br i1 %662, label %663, label %667

663:                                              ; preds = %660
  %664 = load i32 (i32*)*, i32 (i32*)** %15, align 8
  %665 = load i32*, i32** %13, align 8
  %666 = call i32 %664(i32* %665)
  br label %667

667:                                              ; preds = %663, %660, %657
  %668 = load i32*, i32** %14, align 8
  %669 = icmp ne i32* %668, null
  br i1 %669, label %670, label %673

670:                                              ; preds = %667
  %671 = load i32*, i32** %14, align 8
  %672 = call i32 @fclose(i32* %671)
  br label %673

673:                                              ; preds = %670, %667
  %674 = call i32 @gettimeofday(%struct.timeval* %26, %struct.timezone* null)
  %675 = load i64, i64* %23, align 8
  %676 = icmp sgt i64 %675, 0
  br i1 %676, label %677, label %680

677:                                              ; preds = %673
  %678 = load i64, i64* %23, align 8
  %679 = call i32 @ptransfer(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i64 %678, %struct.timeval* %25, %struct.timeval* %26)
  br label %680

680:                                              ; preds = %677, %673
  %681 = load i32, i32* @SIGINT, align 4
  %682 = load i32*, i32** %16, align 8
  %683 = call i32* @signal(i32 %681, i32* %682)
  br label %684

684:                                              ; preds = %680, %645, %631, %490, %366, %275, %265, %255, %234, %208, %196, %176, %159, %131, %101, %65
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @proxtrans(i8*, i8*, i8*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @getreply(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32* @signal(i32, i32*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i64 @chmod(i8*, i32) #1

declare dso_local i8* @gunique(i8*) #1

declare dso_local i32 @changetype(i32, i32) #1

declare dso_local i64 @initconn(...) #1

declare dso_local i64 @command(i8*, ...) #1

declare dso_local i32* @dataconn(i8*) #1

declare dso_local i32 @set_buffer_size(i32, i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i32 @pclose(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @alloc_buffer(i8*, i64*, %struct.stat*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @sec_read(i32, i8*, i64) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i32 @sec_getc(i32*) #1

declare dso_local i32 @ferror(i32*) #1

declare dso_local i32 @putc(i32, i32*) #1

declare dso_local i32 @ptransfer(i8*, i64, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @abort_remote(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
