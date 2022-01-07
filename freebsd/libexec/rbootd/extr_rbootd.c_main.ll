; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_rbootd.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_rbootd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }

@stdin = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@stderr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"adi:\00", align 1
@BootAny = common dso_local global i64 0, align 8
@DebugFlg = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@IntfName = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@ConfigFile = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"too many config files (`%s' ignored)\00", align 1
@DfltConfig = common dso_local global i8* null, align 8
@DbgFp = common dso_local global i32* null, align 8
@SIGUSR1 = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"can't detach from terminal\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"rbootd\00", align 1
@LOG_PID = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"restarted (??)\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"restarted (%s)\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@MyHost = common dso_local global i8* null, align 8
@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"gethostname: %m\00", align 1
@MyPid = common dso_local global i64 0, align 8
@PidFile = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"fopen: failed (%s)\00", align 1
@BootDir = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"chdir: %m (%s)\00", align 1
@RmpConns = common dso_local global i32* null, align 8
@RMP_TIMEOUT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [11 x i8] c"select: %m\00", align 1
@DIR_RCVD = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"%s: boot packet ignored\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.timeval, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %21 = call i32 (...) @getdtablesize()
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %45, %2
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load i32, i32* %11, align 4
  %28 = load i32*, i32** @stdin, align 8
  %29 = call i32 @fileno(i32* %28)
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load i32, i32* %11, align 4
  %33 = load i32*, i32** @stdout, align 8
  %34 = call i32 @fileno(i32* %33)
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load i32, i32* %11, align 4
  %38 = load i32*, i32** @stderr, align 8
  %39 = call i32 @fileno(i32* %38)
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @close(i32 %42)
  br label %44

44:                                               ; preds = %41, %36, %31, %26
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %22

48:                                               ; preds = %22
  br label %49

49:                                               ; preds = %66, %48
  %50 = load i32, i32* %4, align 4
  %51 = load i8**, i8*** %5, align 8
  %52 = call i32 @getopt(i32 %50, i8** %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %52, i32* %6, align 4
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  switch i32 %55, label %64 [
    i32 97, label %56
    i32 100, label %59
    i32 105, label %62
  ]

56:                                               ; preds = %54
  %57 = load i64, i64* @BootAny, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* @BootAny, align 8
  br label %66

59:                                               ; preds = %54
  %60 = load i64, i64* @DebugFlg, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* @DebugFlg, align 8
  br label %66

62:                                               ; preds = %54
  %63 = load i8*, i8** @optarg, align 8
  store i8* %63, i8** @IntfName, align 8
  br label %66

64:                                               ; preds = %54
  %65 = call i32 (...) @usage()
  br label %66

66:                                               ; preds = %64, %62, %59, %56
  br label %49

67:                                               ; preds = %49
  br label %68

68:                                               ; preds = %89, %67
  %69 = load i32, i32* @optind, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %68
  %73 = load i8*, i8** @ConfigFile, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i8**, i8*** %5, align 8
  %77 = load i32, i32* @optind, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** @ConfigFile, align 8
  br label %88

81:                                               ; preds = %72
  %82 = load i8**, i8*** %5, align 8
  %83 = load i32, i32* @optind, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %81, %75
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* @optind, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* @optind, align 4
  br label %68

92:                                               ; preds = %68
  %93 = load i8*, i8** @ConfigFile, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i8*, i8** @DfltConfig, align 8
  store i8* %96, i8** @ConfigFile, align 8
  br label %97

97:                                               ; preds = %95, %92
  %98 = load i64, i64* @DebugFlg, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load i32*, i32** @stdout, align 8
  store i32* %101, i32** @DbgFp, align 8
  %102 = load i32, i32* @SIGUSR1, align 4
  %103 = call i32 @signal(i32 %102, i32 (i32)* @SIG_IGN)
  %104 = load i32, i32* @SIGUSR2, align 4
  %105 = call i32 @signal(i32 %104, i32 (i32)* @SIG_IGN)
  %106 = load i32*, i32** @stderr, align 8
  %107 = call i32 @fclose(i32* %106)
  br label %118

108:                                              ; preds = %97
  %109 = call i64 @daemon(i32 0, i32 0)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = call i32 @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %108
  %114 = load i32, i32* @SIGUSR1, align 4
  %115 = call i32 @signal(i32 %114, i32 (i32)* @DebugOn)
  %116 = load i32, i32* @SIGUSR2, align 4
  %117 = call i32 @signal(i32 %116, i32 (i32)* @DebugOff)
  br label %118

118:                                              ; preds = %113, %100
  %119 = load i32, i32* @LOG_PID, align 4
  %120 = load i32, i32* @LOG_DAEMON, align 4
  %121 = call i32 @openlog(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %119, i32 %120)
  %122 = load i8*, i8** @IntfName, align 8
  %123 = icmp eq i8* %122, null
  br i1 %123, label %124, label %135

124:                                              ; preds = %118
  %125 = call i8* @BpfGetIntfName(i8** %13)
  store i8* %125, i8** @IntfName, align 8
  %126 = icmp eq i8* %125, null
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load i32, i32* @LOG_NOTICE, align 4
  %129 = call i32 (i32, i8*, ...) @syslog(i32 %128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %130 = load i32, i32* @LOG_ERR, align 4
  %131 = load i8*, i8** %13, align 8
  %132 = call i32 (i32, i8*, ...) @syslog(i32 %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %131)
  %133 = call i32 @Exit(i32 0)
  br label %134

134:                                              ; preds = %127, %124
  br label %135

135:                                              ; preds = %134, %118
  %136 = load i32, i32* @LOG_NOTICE, align 4
  %137 = load i8*, i8** @IntfName, align 8
  %138 = call i32 (i32, i8*, ...) @syslog(i32 %136, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %137)
  %139 = load i32, i32* @SIGHUP, align 4
  %140 = call i32 @signal(i32 %139, i32 (i32)* @ReConfig)
  %141 = load i32, i32* @SIGINT, align 4
  %142 = call i32 @signal(i32 %141, i32 (i32)* @Exit)
  %143 = load i32, i32* @SIGTERM, align 4
  %144 = call i32 @signal(i32 %143, i32 (i32)* @Exit)
  %145 = load i8*, i8** @MyHost, align 8
  %146 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %147 = sub nsw i32 %146, 1
  %148 = call i64 @gethostname(i8* %145, i32 %147)
  %149 = icmp slt i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %135
  %151 = load i32, i32* @LOG_ERR, align 4
  %152 = call i32 (i32, i8*, ...) @syslog(i32 %151, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %153 = call i32 @Exit(i32 0)
  br label %154

154:                                              ; preds = %150, %135
  %155 = load i8*, i8** @MyHost, align 8
  %156 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  store i8 0, i8* %159, align 1
  %160 = call i64 (...) @getpid()
  store i64 %160, i64* @MyPid, align 8
  %161 = load i8*, i8** @PidFile, align 8
  %162 = call i32* @fopen(i8* %161, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32* %162, i32** %14, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %171

164:                                              ; preds = %154
  %165 = load i32*, i32** %14, align 8
  %166 = load i64, i64* @MyPid, align 8
  %167 = trunc i64 %166 to i32
  %168 = call i32 @fprintf(i32* %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %167)
  %169 = load i32*, i32** %14, align 8
  %170 = call i32 @fclose(i32* %169)
  br label %175

171:                                              ; preds = %154
  %172 = load i32, i32* @LOG_WARNING, align 4
  %173 = load i8*, i8** @PidFile, align 8
  %174 = call i32 (i32, i8*, ...) @syslog(i32 %172, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %173)
  br label %175

175:                                              ; preds = %171, %164
  %176 = load i8*, i8** @BootDir, align 8
  %177 = call i64 @chdir(i8* %176)
  %178 = icmp slt i64 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  %180 = load i32, i32* @LOG_ERR, align 4
  %181 = load i8*, i8** @BootDir, align 8
  %182 = call i32 (i32, i8*, ...) @syslog(i32 %180, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* %181)
  %183 = call i32 @Exit(i32 0)
  br label %184

184:                                              ; preds = %179, %175
  %185 = load i32, i32* @SIGHUP, align 4
  %186 = call i32 @sigmask(i32 %185)
  %187 = call i32 @sigblock(i32 %186)
  store i32 %187, i32* %8, align 4
  %188 = call i64 (...) @GetBootFiles()
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = call i32 @Exit(i32 0)
  br label %192

192:                                              ; preds = %190, %184
  %193 = call i64 (...) @ParseConfig()
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = call i32 @Exit(i32 0)
  br label %197

197:                                              ; preds = %195, %192
  %198 = call i32 (...) @BpfOpen()
  store i32 %198, i32* %7, align 4
  %199 = load i32, i32* %8, align 4
  %200 = call i32 @sigsetmask(i32 %199)
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %9, align 4
  %203 = call i32 @FD_ZERO(i32* %10)
  %204 = load i32, i32* %7, align 4
  %205 = call i32 @FD_SET(i32 %204, i32* %10)
  br label %206

206:                                              ; preds = %275, %234, %226, %197
  %207 = load i32, i32* %10, align 4
  store i32 %207, i32* %16, align 4
  %208 = load i32*, i32** @RmpConns, align 8
  %209 = icmp eq i32* %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %206
  %211 = load i32, i32* %9, align 4
  %212 = call i32 @select(i32 %211, i32* %16, i32* null, i32* null, %struct.timeval* null)
  store i32 %212, i32* %17, align 4
  br label %219

213:                                              ; preds = %206
  %214 = load i32, i32* @RMP_TIMEOUT, align 4
  %215 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  store i32 %214, i32* %215, align 8
  %216 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  store i64 0, i64* %216, align 8
  %217 = load i32, i32* %9, align 4
  %218 = call i32 @select(i32 %217, i32* %16, i32* null, i32* null, %struct.timeval* %15)
  store i32 %218, i32* %17, align 4
  br label %219

219:                                              ; preds = %213, %210
  %220 = load i32, i32* %17, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %219
  %223 = load i64, i64* @errno, align 8
  %224 = load i64, i64* @EINTR, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  br label %206

227:                                              ; preds = %222
  %228 = load i32, i32* @LOG_ERR, align 4
  %229 = call i32 (i32, i8*, ...) @syslog(i32 %228, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %230 = call i32 @Exit(i32 0)
  br label %237

231:                                              ; preds = %219
  %232 = load i32, i32* %17, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %231
  %235 = call i32 (...) @DoTimeout()
  br label %206

236:                                              ; preds = %231
  br label %237

237:                                              ; preds = %236, %227
  %238 = load i32, i32* %7, align 4
  %239 = call i64 @FD_ISSET(i32 %238, i32* %16)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %275

241:                                              ; preds = %237
  store i32 1, i32* %20, align 4
  br label %242

242:                                              ; preds = %269, %262, %241
  %243 = load i32, i32* %20, align 4
  %244 = call i64 @BpfRead(i32* %18, i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %274

246:                                              ; preds = %242
  store i32 0, i32* %20, align 4
  %247 = load i32*, i32** @DbgFp, align 8
  %248 = icmp ne i32* %247, null
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load i32, i32* @DIR_RCVD, align 4
  %251 = call i32 @DispPkt(i32* %18, i32 %250)
  br label %252

252:                                              ; preds = %249, %246
  %253 = load i32, i32* @SIGHUP, align 4
  %254 = call i32 @sigmask(i32 %253)
  %255 = call i32 @sigblock(i32 %254)
  store i32 %255, i32* %8, align 4
  %256 = load i64, i64* @BootAny, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %252
  store i32* null, i32** %19, align 8
  br label %269

259:                                              ; preds = %252
  %260 = call i32* (i32*, ...) bitcast (i32* (...)* @FindClient to i32* (i32*, ...)*)(i32* %18)
  store i32* %260, i32** %19, align 8
  %261 = icmp eq i32* %260, null
  br i1 %261, label %262, label %268

262:                                              ; preds = %259
  %263 = load i32, i32* @LOG_INFO, align 4
  %264 = call i8* @EnetStr(i32* %18)
  %265 = call i32 (i32, i8*, ...) @syslog(i32 %263, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8* %264)
  %266 = load i32, i32* %8, align 4
  %267 = call i32 @sigsetmask(i32 %266)
  br label %242

268:                                              ; preds = %259
  br label %269

269:                                              ; preds = %268, %258
  %270 = load i32*, i32** %19, align 8
  %271 = call i32 @ProcessPacket(i32* %18, i32* %270)
  %272 = load i32, i32* %8, align 4
  %273 = call i32 @sigsetmask(i32 %272)
  br label %242

274:                                              ; preds = %242
  br label %275

275:                                              ; preds = %274, %237
  br label %206
}

declare dso_local i32 @getdtablesize(...) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @signal(i32, i32 (i32)*) #1

declare dso_local i32 @SIG_IGN(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @daemon(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @DebugOn(i32) #1

declare dso_local i32 @DebugOff(i32) #1

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i8* @BpfGetIntfName(i8**) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @Exit(i32) #1

declare dso_local i32 @ReConfig(i32) #1

declare dso_local i64 @gethostname(i8*, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32 @sigblock(i32) #1

declare dso_local i32 @sigmask(i32) #1

declare dso_local i64 @GetBootFiles(...) #1

declare dso_local i64 @ParseConfig(...) #1

declare dso_local i32 @BpfOpen(...) #1

declare dso_local i32 @sigsetmask(i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @DoTimeout(...) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i64 @BpfRead(i32*, i32) #1

declare dso_local i32 @DispPkt(i32*, i32) #1

declare dso_local i32* @FindClient(...) #1

declare dso_local i8* @EnetStr(i32*) #1

declare dso_local i32 @ProcessPacket(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
