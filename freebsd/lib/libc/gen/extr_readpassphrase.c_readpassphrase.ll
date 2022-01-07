; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_readpassphrase.c_readpassphrase.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_readpassphrase.c_readpassphrase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i64* }
%struct.sigaction = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@NSIG = common dso_local global i32 0, align 4
@signo = common dso_local global i64* null, align 8
@RPP_STDIN = common dso_local global i32 0, align 4
@_PATH_TTY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@RPP_REQUIRE_TTY = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@RPP_ECHO_ON = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ECHONL = common dso_local global i32 0, align 4
@VSTATUS = common dso_local global i64 0, align 8
@_POSIX_VDISABLE = common dso_local global i64 0, align 8
@TCSAFLUSH = common dso_local global i32 0, align 4
@TCSASOFT = common dso_local global i32 0, align 4
@handler = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i64 0, align 8
@SIGHUP = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i64 0, align 8
@SIGPIPE = common dso_local global i64 0, align 8
@SIGQUIT = common dso_local global i64 0, align 8
@SIGTERM = common dso_local global i64 0, align 8
@RPP_SEVENBIT = common dso_local global i32 0, align 4
@RPP_FORCELOWER = common dso_local global i32 0, align 4
@RPP_FORCEUPPER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @readpassphrase(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.termios, align 8
  %21 = alloca %struct.termios, align 8
  %22 = alloca %struct.sigaction, align 8
  %23 = alloca %struct.sigaction, align 8
  %24 = alloca %struct.sigaction, align 8
  %25 = alloca %struct.sigaction, align 8
  %26 = alloca %struct.sigaction, align 8
  %27 = alloca %struct.sigaction, align 8
  %28 = alloca %struct.sigaction, align 8
  %29 = alloca %struct.sigaction, align 8
  %30 = alloca %struct.sigaction, align 8
  %31 = alloca %struct.sigaction, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* @errno, align 4
  store i8* null, i8** %5, align 8
  br label %320

36:                                               ; preds = %4
  br label %37

37:                                               ; preds = %306, %36
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %47, %37
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @NSIG, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i64*, i64** @signo, align 8
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %14, align 4
  br label %38

50:                                               ; preds = %38
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @RPP_STDIN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %75, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @_PATH_TTY, align 4
  %57 = load i32, i32* @O_RDWR, align 4
  %58 = load i32, i32* @O_CLOEXEC, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @_open(i32 %56, i32 %59)
  store i32 %60, i32* %12, align 4
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %73

63:                                               ; preds = %55
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @RPP_REQUIRE_TTY, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @ENOTTY, align 4
  store i32 %69, i32* @errno, align 4
  store i8* null, i8** %5, align 8
  br label %320

70:                                               ; preds = %63
  %71 = load i32, i32* @STDIN_FILENO, align 4
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* @STDERR_FILENO, align 4
  store i32 %72, i32* %12, align 4
  br label %74

73:                                               ; preds = %55
  store i32 1, i32* %16, align 4
  br label %74

74:                                               ; preds = %73, %70
  br label %78

75:                                               ; preds = %50
  %76 = load i32, i32* @STDIN_FILENO, align 4
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* @STDERR_FILENO, align 4
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %75, %74
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %119

81:                                               ; preds = %78
  %82 = load i32, i32* %11, align 4
  %83 = call i64 @tcgetattr(i32 %82, %struct.termios* %21)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %119

85:                                               ; preds = %81
  %86 = call i32 @memcpy(%struct.termios* %20, %struct.termios* %21, i32 16)
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @RPP_ECHO_ON, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* @ECHO, align 4
  %93 = load i32, i32* @ECHONL, align 4
  %94 = or i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = getelementptr inbounds %struct.termios, %struct.termios* %20, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %95
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %91, %85
  %100 = getelementptr inbounds %struct.termios, %struct.termios* %20, i32 0, i32 1
  %101 = load i64*, i64** %100, align 8
  %102 = load i64, i64* @VSTATUS, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @_POSIX_VDISABLE, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %99
  %108 = load i64, i64* @_POSIX_VDISABLE, align 8
  %109 = getelementptr inbounds %struct.termios, %struct.termios* %20, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* @VSTATUS, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  store i64 %108, i64* %112, align 8
  br label %113

113:                                              ; preds = %107, %99
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @TCSAFLUSH, align 4
  %116 = load i32, i32* @TCSASOFT, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @tcsetattr(i32 %114, i32 %117, %struct.termios* %20)
  br label %130

119:                                              ; preds = %81, %78
  %120 = call i32 @memset(%struct.termios* %20, i32 0, i32 16)
  %121 = load i32, i32* @ECHO, align 4
  %122 = getelementptr inbounds %struct.termios, %struct.termios* %20, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %121
  store i32 %124, i32* %122, align 8
  %125 = call i32 @memset(%struct.termios* %21, i32 0, i32 16)
  %126 = load i32, i32* @ECHO, align 4
  %127 = getelementptr inbounds %struct.termios, %struct.termios* %21, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %126
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %119, %113
  %131 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %22, i32 0, i32 2
  %132 = call i32 @sigemptyset(i32* %131)
  %133 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %22, i32 0, i32 1
  store i64 0, i64* %133, align 8
  %134 = load i32, i32* @handler, align 4
  %135 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %22, i32 0, i32 0
  store i32 %134, i32* %135, align 8
  %136 = load i64, i64* @SIGALRM, align 8
  %137 = call i32 @__libc_sigaction(i64 %136, %struct.sigaction* %22, %struct.sigaction* %23)
  %138 = load i64, i64* @SIGHUP, align 8
  %139 = call i32 @__libc_sigaction(i64 %138, %struct.sigaction* %22, %struct.sigaction* %25)
  %140 = load i64, i64* @SIGINT, align 8
  %141 = call i32 @__libc_sigaction(i64 %140, %struct.sigaction* %22, %struct.sigaction* %24)
  %142 = load i64, i64* @SIGPIPE, align 8
  %143 = call i32 @__libc_sigaction(i64 %142, %struct.sigaction* %22, %struct.sigaction* %31)
  %144 = load i64, i64* @SIGQUIT, align 8
  %145 = call i32 @__libc_sigaction(i64 %144, %struct.sigaction* %22, %struct.sigaction* %26)
  %146 = load i64, i64* @SIGTERM, align 8
  %147 = call i32 @__libc_sigaction(i64 %146, %struct.sigaction* %22, %struct.sigaction* %27)
  %148 = call i32 @__libc_sigaction(i64 130, %struct.sigaction* %22, %struct.sigaction* %28)
  %149 = call i32 @__libc_sigaction(i64 129, %struct.sigaction* %22, %struct.sigaction* %29)
  %150 = call i32 @__libc_sigaction(i64 128, %struct.sigaction* %22, %struct.sigaction* %30)
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @RPP_STDIN, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %130
  %156 = load i32, i32* %12, align 4
  %157 = load i8*, i8** %6, align 8
  %158 = load i8*, i8** %6, align 8
  %159 = call i32 @strlen(i8* %158)
  %160 = call i32 @_write(i32 %156, i8* %157, i32 %159)
  br label %161

161:                                              ; preds = %155, %130
  %162 = load i8*, i8** %7, align 8
  %163 = load i64, i64* %8, align 8
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  %165 = getelementptr inbounds i8, i8* %164, i64 -1
  store i8* %165, i8** %19, align 8
  %166 = load i8*, i8** %7, align 8
  store i8* %166, i8** %18, align 8
  br label %167

167:                                              ; preds = %222, %161
  %168 = load i32, i32* %11, align 4
  %169 = call i32 @_read(i32 %168, i8* %17, i32 1)
  store i32 %169, i32* %10, align 4
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %179

171:                                              ; preds = %167
  %172 = load i8, i8* %17, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 10
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = load i8, i8* %17, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp ne i32 %177, 13
  br label %179

179:                                              ; preds = %175, %171, %167
  %180 = phi i1 [ false, %171 ], [ false, %167 ], [ %178, %175 ]
  br i1 %180, label %181, label %223

181:                                              ; preds = %179
  %182 = load i8*, i8** %18, align 8
  %183 = load i8*, i8** %19, align 8
  %184 = icmp ult i8* %182, %183
  br i1 %184, label %185, label %222

185:                                              ; preds = %181
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* @RPP_SEVENBIT, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load i8, i8* %17, align 1
  %192 = sext i8 %191 to i32
  %193 = and i32 %192, 127
  %194 = trunc i32 %193 to i8
  store i8 %194, i8* %17, align 1
  br label %195

195:                                              ; preds = %190, %185
  %196 = load i8, i8* %17, align 1
  %197 = call i64 @isalpha(i8 zeroext %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %218

199:                                              ; preds = %195
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* @RPP_FORCELOWER, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %199
  %205 = load i8, i8* %17, align 1
  %206 = call i64 @tolower(i8 zeroext %205)
  %207 = trunc i64 %206 to i8
  store i8 %207, i8* %17, align 1
  br label %208

208:                                              ; preds = %204, %199
  %209 = load i32, i32* %9, align 4
  %210 = load i32, i32* @RPP_FORCEUPPER, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %208
  %214 = load i8, i8* %17, align 1
  %215 = call i64 @toupper(i8 zeroext %214)
  %216 = trunc i64 %215 to i8
  store i8 %216, i8* %17, align 1
  br label %217

217:                                              ; preds = %213, %208
  br label %218

218:                                              ; preds = %217, %195
  %219 = load i8, i8* %17, align 1
  %220 = load i8*, i8** %18, align 8
  %221 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %221, i8** %18, align 8
  store i8 %219, i8* %220, align 1
  br label %222

222:                                              ; preds = %218, %181
  br label %167

223:                                              ; preds = %179
  %224 = load i8*, i8** %18, align 8
  store i8 0, i8* %224, align 1
  %225 = load i32, i32* @errno, align 4
  store i32 %225, i32* %13, align 4
  %226 = getelementptr inbounds %struct.termios, %struct.termios* %20, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @ECHO, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %234, label %231

231:                                              ; preds = %223
  %232 = load i32, i32* %12, align 4
  %233 = call i32 @_write(i32 %232, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %234

234:                                              ; preds = %231, %223
  %235 = call i64 @memcmp(%struct.termios* %20, %struct.termios* %21, i32 16)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %259

237:                                              ; preds = %234
  br label %238

238:                                              ; preds = %257, %237
  %239 = load i32, i32* %11, align 4
  %240 = load i32, i32* @TCSAFLUSH, align 4
  %241 = load i32, i32* @TCSASOFT, align 4
  %242 = or i32 %240, %241
  %243 = call i32 @tcsetattr(i32 %239, i32 %242, %struct.termios* %21)
  %244 = icmp eq i32 %243, -1
  br i1 %244, label %245, label %255

245:                                              ; preds = %238
  %246 = load i32, i32* @errno, align 4
  %247 = load i32, i32* @EINTR, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %255

249:                                              ; preds = %245
  %250 = load i64*, i64** @signo, align 8
  %251 = getelementptr inbounds i64, i64* %250, i64 128
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  %254 = xor i1 %253, true
  br label %255

255:                                              ; preds = %249, %245, %238
  %256 = phi i1 [ false, %245 ], [ false, %238 ], [ %254, %249 ]
  br i1 %256, label %257, label %258

257:                                              ; preds = %255
  br label %238

258:                                              ; preds = %255
  br label %259

259:                                              ; preds = %258, %234
  %260 = load i64, i64* @SIGALRM, align 8
  %261 = call i32 @__libc_sigaction(i64 %260, %struct.sigaction* %23, %struct.sigaction* null)
  %262 = load i64, i64* @SIGHUP, align 8
  %263 = call i32 @__libc_sigaction(i64 %262, %struct.sigaction* %25, %struct.sigaction* null)
  %264 = load i64, i64* @SIGINT, align 8
  %265 = call i32 @__libc_sigaction(i64 %264, %struct.sigaction* %24, %struct.sigaction* null)
  %266 = load i64, i64* @SIGQUIT, align 8
  %267 = call i32 @__libc_sigaction(i64 %266, %struct.sigaction* %26, %struct.sigaction* null)
  %268 = load i64, i64* @SIGPIPE, align 8
  %269 = call i32 @__libc_sigaction(i64 %268, %struct.sigaction* %31, %struct.sigaction* null)
  %270 = load i64, i64* @SIGTERM, align 8
  %271 = call i32 @__libc_sigaction(i64 %270, %struct.sigaction* %27, %struct.sigaction* null)
  %272 = call i32 @__libc_sigaction(i64 130, %struct.sigaction* %28, %struct.sigaction* null)
  %273 = call i32 @__libc_sigaction(i64 129, %struct.sigaction* %29, %struct.sigaction* null)
  %274 = call i32 @__libc_sigaction(i64 128, %struct.sigaction* %30, %struct.sigaction* null)
  %275 = load i32, i32* %16, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %259
  %278 = load i32, i32* %11, align 4
  %279 = call i32 @_close(i32 %278)
  br label %280

280:                                              ; preds = %277, %259
  store i32 0, i32* %14, align 4
  br label %281

281:                                              ; preds = %300, %280
  %282 = load i32, i32* %14, align 4
  %283 = load i32, i32* @NSIG, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %303

285:                                              ; preds = %281
  %286 = load i64*, i64** @signo, align 8
  %287 = load i32, i32* %14, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i64, i64* %286, i64 %288
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %299

292:                                              ; preds = %285
  %293 = call i32 (...) @getpid()
  %294 = load i32, i32* %14, align 4
  %295 = call i32 @kill(i32 %293, i32 %294)
  %296 = load i32, i32* %14, align 4
  switch i32 %296, label %298 [
    i32 130, label %297
    i32 129, label %297
    i32 128, label %297
  ]

297:                                              ; preds = %292, %292, %292
  store i32 1, i32* %15, align 4
  br label %298

298:                                              ; preds = %297, %292
  br label %299

299:                                              ; preds = %298, %285
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %14, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %14, align 4
  br label %281

303:                                              ; preds = %281
  %304 = load i32, i32* %15, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %303
  br label %37

307:                                              ; preds = %303
  %308 = load i32, i32* %13, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %307
  %311 = load i32, i32* %13, align 4
  store i32 %311, i32* @errno, align 4
  br label %312

312:                                              ; preds = %310, %307
  %313 = load i32, i32* %10, align 4
  %314 = icmp eq i32 %313, -1
  br i1 %314, label %315, label %316

315:                                              ; preds = %312
  br label %318

316:                                              ; preds = %312
  %317 = load i8*, i8** %7, align 8
  br label %318

318:                                              ; preds = %316, %315
  %319 = phi i8* [ null, %315 ], [ %317, %316 ]
  store i8* %319, i8** %5, align 8
  br label %320

320:                                              ; preds = %318, %68, %34
  %321 = load i8*, i8** %5, align 8
  ret i8* %321
}

declare dso_local i32 @_open(i32, i32) #1

declare dso_local i64 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @memcpy(%struct.termios*, %struct.termios*, i32) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @memset(%struct.termios*, i32, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @__libc_sigaction(i64, %struct.sigaction*, %struct.sigaction*) #1

declare dso_local i32 @_write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @_read(i32, i8*, i32) #1

declare dso_local i64 @isalpha(i8 zeroext) #1

declare dso_local i64 @tolower(i8 zeroext) #1

declare dso_local i64 @toupper(i8 zeroext) #1

declare dso_local i64 @memcmp(%struct.termios*, %struct.termios*, i32) #1

declare dso_local i32 @_close(i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @getpid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
