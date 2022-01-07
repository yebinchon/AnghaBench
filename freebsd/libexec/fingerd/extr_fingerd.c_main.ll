; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/fingerd/extr_fingerd.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/fingerd/extr_fingerd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@_PATH_FINGER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"fingerd\00", align 1
@LOG_PID = common dso_local global i32 0, align 4
@LOG_CONS = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4
@opterr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"dklp:s\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"illegal option -- %c\00", align 1
@optopt = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NOPUSH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"setsockopt(TCP_NOPUSH) failed: %m\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"getpeername: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"FINGERD_REMOTE_HOST\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"malloc: %s\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"strdup: %s\00", align 1
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"query from %s: `%s'\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-k\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"must provide username\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"forwarding service denied\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"pipe: %s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [18 x i8] c": cannot execute\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"fork: %s\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"fdopen: %s\00", align 1
@EOF = common dso_local global i32 0, align 4
@ENTRIES = common dso_local global i32 0, align 4
@MSG = common dso_local global i8* null, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sockaddr_storage, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %18 = alloca [51 x i8*], align 16
  %19 = alloca i8**, align 8
  %20 = alloca [1024 x i8], align 16
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %27 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %22, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %23, align 8
  %31 = load i8*, i8** @_PATH_FINGER, align 8
  store i8* %31, i8** %21, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  %32 = load i32, i32* @LOG_PID, align 4
  %33 = load i32, i32* @LOG_CONS, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @LOG_DAEMON, align 4
  %36 = call i32 @openlog(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  store i64 0, i64* @opterr, align 8
  br label %37

37:                                               ; preds = %54, %2
  %38 = load i32, i32* %4, align 4
  %39 = load i8**, i8*** %5, align 8
  %40 = call i32 @getopt(i32 %38, i8** %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %40, i32* %7, align 4
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  switch i32 %43, label %51 [
    i32 100, label %44
    i32 107, label %45
    i32 108, label %46
    i32 112, label %47
    i32 115, label %49
    i32 63, label %50
  ]

44:                                               ; preds = %42
  store i32 1, i32* %12, align 4
  br label %54

45:                                               ; preds = %42
  store i32 1, i32* %13, align 4
  br label %54

46:                                               ; preds = %42
  store i32 1, i32* %14, align 4
  br label %54

47:                                               ; preds = %42
  %48 = load i8*, i8** @optarg, align 8
  store i8* %48, i8** %21, align 8
  store i32 1, i32* %15, align 4
  br label %54

49:                                               ; preds = %42
  store i32 1, i32* %16, align 4
  br label %54

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %42, %50
  %52 = load i32, i32* @optopt, align 4
  %53 = call i32 (i8*, ...) @logerr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %49, %47, %46, %45, %44
  br label %37

55:                                               ; preds = %37
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %55
  store i32 1, i32* %24, align 4
  %59 = load i32, i32* @STDOUT_FILENO, align 4
  %60 = load i32, i32* @IPPROTO_TCP, align 4
  %61 = load i32, i32* @TCP_NOPUSH, align 4
  %62 = call i64 @setsockopt(i32 %59, i32 %60, i32 %61, i32* %24, i32 4)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = call i32 (i8*, ...) @logerr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %58
  br label %67

67:                                               ; preds = %66, %55
  %68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %69 = load i32, i32* @stdin, align 4
  %70 = call i32 @fgets(i8* %68, i32 1024, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = call i32 @exit(i32 1) #5
  unreachable

74:                                               ; preds = %67
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %104, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %80, %77
  store i32 4, i32* %10, align 4
  %84 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  %85 = call i64 @getpeername(i32 0, %struct.sockaddr* %84, i32* %10)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* @errno, align 4
  %89 = call i32 @strerror(i32 %88)
  %90 = call i32 (i8*, ...) @logerr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %87, %83
  %92 = sub i64 %28, 1
  %93 = trunc i64 %92 to i32
  %94 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @realhostname_sa(i8* %30, i32 %93, %struct.sockaddr* %94, i32 %95)
  %97 = sub i64 %28, 1
  %98 = getelementptr inbounds i8, i8* %30, i64 %97
  store i8 0, i8* %98, align 1
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = call i32 @setenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %30, i32 1)
  br label %103

103:                                              ; preds = %101, %91
  br label %104

104:                                              ; preds = %103, %80, %74
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %160

107:                                              ; preds = %104
  %108 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %109 = call i8* @memchr(i8* %108, i32 0, i32 1024)
  store i8* %109, i8** %26, align 8
  %110 = load i8*, i8** %26, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %125

112:                                              ; preds = %107
  %113 = call i8* @malloc(i32 1025)
  store i8* %113, i8** %25, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i32, i32* @errno, align 4
  %117 = call i32 @strerror(i32 %116)
  %118 = call i32 (i8*, ...) @logerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %115, %112
  %120 = load i8*, i8** %25, align 8
  %121 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %122 = call i32 @memcpy(i8* %120, i8* %121, i32 1024)
  %123 = load i8*, i8** %25, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1024
  store i8 0, i8* %124, align 1
  br label %134

125:                                              ; preds = %107
  %126 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  %127 = call i8* @strdup(i8* %126)
  store i8* %127, i8** %25, align 8
  %128 = icmp eq i8* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i32, i32* @errno, align 4
  %131 = call i32 @strerror(i32 %130)
  %132 = call i32 (i8*, ...) @logerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %129, %125
  br label %134

134:                                              ; preds = %133, %119
  %135 = load i8*, i8** %25, align 8
  store i8* %135, i8** %26, align 8
  br label %136

136:                                              ; preds = %153, %134
  %137 = load i8*, i8** %26, align 8
  %138 = load i8, i8* %137, align 1
  %139 = icmp ne i8 %138, 0
  br i1 %139, label %140, label %156

140:                                              ; preds = %136
  %141 = load i8*, i8** %26, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 10
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = load i8*, i8** %26, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 13
  br i1 %149, label %150, label %152

150:                                              ; preds = %145, %140
  %151 = load i8*, i8** %26, align 8
  store i8 32, i8* %151, align 1
  br label %152

152:                                              ; preds = %150, %145
  br label %153

153:                                              ; preds = %152
  %154 = load i8*, i8** %26, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %26, align 8
  br label %136

156:                                              ; preds = %136
  %157 = load i32, i32* @LOG_NOTICE, align 4
  %158 = load i8*, i8** %25, align 8
  %159 = call i32 @syslog(i32 %157, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %30, i8* %158)
  br label %160

160:                                              ; preds = %156, %104
  %161 = getelementptr inbounds [51 x i8*], [51 x i8*]* %18, i64 0, i64 2
  store i8** %161, i8*** %19, align 8
  %162 = getelementptr inbounds [51 x i8*], [51 x i8*]* %18, i64 0, i64 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %162, align 8
  %163 = load i32, i32* %13, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i8**, i8*** %19, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i32 -1
  store i8** %167, i8*** %19, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %166, align 8
  br label %168

168:                                              ; preds = %165, %160
  %169 = getelementptr inbounds [1024 x i8], [1024 x i8]* %20, i64 0, i64 0
  store i8* %169, i8** %8, align 8
  %170 = getelementptr inbounds [51 x i8*], [51 x i8*]* %18, i64 0, i64 4
  store i8** %170, i8*** %17, align 8
  br label %171

171:                                              ; preds = %233, %168
  %172 = load i8*, i8** %8, align 8
  %173 = call i8* @strtok(i8* %172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %174 = load i8**, i8*** %17, align 8
  store i8* %173, i8** %174, align 8
  %175 = load i8**, i8*** %17, align 8
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %189, label %178

178:                                              ; preds = %171
  %179 = load i32, i32* %16, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %178
  %182 = load i8**, i8*** %17, align 8
  %183 = getelementptr inbounds [51 x i8*], [51 x i8*]* %18, i64 0, i64 4
  %184 = icmp eq i8** %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %187 = call i32 @exit(i32 1) #5
  unreachable

188:                                              ; preds = %181, %178
  br label %234

189:                                              ; preds = %171
  %190 = load i32, i32* %16, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %189
  %193 = load i8**, i8*** %17, align 8
  %194 = load i8*, i8** %193, align 8
  %195 = call i64 @strchr(i8* %194, i8 signext 64)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = call i32 @puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  %199 = call i32 @exit(i32 1) #5
  unreachable

200:                                              ; preds = %192, %189
  %201 = load i8**, i8*** %17, align 8
  %202 = load i8*, i8** %201, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 0
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp eq i32 %205, 47
  br i1 %206, label %207, label %224

207:                                              ; preds = %200
  %208 = load i8**, i8*** %17, align 8
  %209 = load i8*, i8** %208, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 1
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp eq i32 %212, 87
  br i1 %213, label %221, label %214

214:                                              ; preds = %207
  %215 = load i8**, i8*** %17, align 8
  %216 = load i8*, i8** %215, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 1
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 119
  br i1 %220, label %221, label %224

221:                                              ; preds = %214, %207
  %222 = load i8**, i8*** %19, align 8
  %223 = getelementptr inbounds i8*, i8** %222, i32 -1
  store i8** %223, i8*** %19, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8** %222, align 8
  br label %233

224:                                              ; preds = %214, %200
  %225 = load i8**, i8*** %17, align 8
  %226 = getelementptr inbounds i8*, i8** %225, i32 1
  store i8** %226, i8*** %17, align 8
  %227 = getelementptr inbounds [51 x i8*], [51 x i8*]* %18, i64 0, i64 0
  %228 = getelementptr inbounds i8*, i8** %227, i64 50
  %229 = icmp eq i8** %226, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %224
  %231 = load i8**, i8*** %17, align 8
  store i8* null, i8** %231, align 8
  br label %234

232:                                              ; preds = %224
  br label %233

233:                                              ; preds = %232, %221
  store i8* null, i8** %8, align 8
  br label %171

234:                                              ; preds = %230, %188
  %235 = load i8*, i8** %21, align 8
  %236 = call i8* @strrchr(i8* %235, i8 signext 47)
  store i8* %236, i8** %8, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %238, label %242

238:                                              ; preds = %234
  %239 = load i8*, i8** %8, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %8, align 8
  %241 = load i8**, i8*** %19, align 8
  store i8* %240, i8** %241, align 8
  br label %245

242:                                              ; preds = %234
  %243 = load i8*, i8** %21, align 8
  %244 = load i8**, i8*** %19, align 8
  store i8* %243, i8** %244, align 8
  br label %245

245:                                              ; preds = %242, %238
  %246 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %247 = call i64 @pipe(i32* %246)
  %248 = icmp slt i64 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %245
  %250 = load i32, i32* @errno, align 4
  %251 = call i32 @strerror(i32 %250)
  %252 = call i32 (i8*, ...) @logerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %251)
  br label %253

253:                                              ; preds = %249, %245
  %254 = load i32, i32* %12, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %276

256:                                              ; preds = %253
  %257 = load i32, i32* @stderr, align 4
  %258 = load i8*, i8** %21, align 8
  %259 = call i32 (i32, i8*, ...) @fprintf(i32 %257, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* %258)
  %260 = load i8**, i8*** %19, align 8
  store i8** %260, i8*** %17, align 8
  br label %261

261:                                              ; preds = %270, %256
  %262 = load i8**, i8*** %17, align 8
  %263 = load i8*, i8** %262, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %265, label %273

265:                                              ; preds = %261
  %266 = load i32, i32* @stderr, align 4
  %267 = load i8**, i8*** %17, align 8
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 (i32, i8*, ...) @fprintf(i32 %266, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* %268)
  br label %270

270:                                              ; preds = %265
  %271 = load i8**, i8*** %17, align 8
  %272 = getelementptr inbounds i8*, i8** %271, i32 1
  store i8** %272, i8*** %17, align 8
  br label %261

273:                                              ; preds = %261
  %274 = load i32, i32* @stderr, align 4
  %275 = call i32 (i32, i8*, ...) @fprintf(i32 %274, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  br label %276

276:                                              ; preds = %273, %253
  %277 = call i32 @vfork() #6
  switch i32 %277, label %314 [
    i32 0, label %278
    i32 -1, label %310
  ]

278:                                              ; preds = %276
  %279 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @close(i32 %280)
  %282 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @STDOUT_FILENO, align 4
  %285 = icmp ne i32 %283, %284
  br i1 %285, label %286, label %294

286:                                              ; preds = %278
  %287 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @STDOUT_FILENO, align 4
  %290 = call i32 @dup2(i32 %288, i32 %289)
  %291 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @close(i32 %292)
  br label %294

294:                                              ; preds = %286, %278
  %295 = load i32, i32* @STDOUT_FILENO, align 4
  %296 = load i32, i32* @STDERR_FILENO, align 4
  %297 = call i32 @dup2(i32 %295, i32 %296)
  %298 = load i8*, i8** %21, align 8
  %299 = load i8**, i8*** %19, align 8
  %300 = call i32 @execv(i8* %298, i8** %299)
  %301 = load i32, i32* @STDERR_FILENO, align 4
  %302 = load i8*, i8** %21, align 8
  %303 = load i8*, i8** %21, align 8
  %304 = call i32 @strlen(i8* %303)
  %305 = call i32 @write(i32 %301, i8* %302, i32 %304)
  %306 = load i32, i32* @STDERR_FILENO, align 4
  %307 = call i32 @strlen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  %308 = call i32 @write(i32 %306, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i32 %307)
  %309 = call i32 @_exit(i32 1) #5
  unreachable

310:                                              ; preds = %276
  %311 = load i32, i32* @errno, align 4
  %312 = call i32 @strerror(i32 %311)
  %313 = call i32 (i8*, ...) @logerr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i32 %312)
  br label %314

314:                                              ; preds = %310, %276
  %315 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @close(i32 %316)
  %318 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %319 = load i32, i32* %318, align 4
  %320 = call i32* @fdopen(i32 %319, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  store i32* %320, i32** %6, align 8
  %321 = icmp ne i32* %320, null
  br i1 %321, label %326, label %322

322:                                              ; preds = %314
  %323 = load i32, i32* @errno, align 4
  %324 = call i32 @strerror(i32 %323)
  %325 = call i32 (i8*, ...) @logerr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 %324)
  br label %326

326:                                              ; preds = %322, %314
  br label %327

327:                                              ; preds = %337, %326
  %328 = load i32*, i32** %6, align 8
  %329 = call i32 @getc(i32* %328)
  store i32 %329, i32* %7, align 4
  %330 = load i32, i32* @EOF, align 4
  %331 = icmp ne i32 %329, %330
  br i1 %331, label %332, label %340

332:                                              ; preds = %327
  %333 = load i32, i32* %7, align 4
  %334 = icmp eq i32 %333, 10
  br i1 %334, label %335, label %337

335:                                              ; preds = %332
  %336 = call i32 @putchar(i32 13)
  br label %337

337:                                              ; preds = %335, %332
  %338 = load i32, i32* %7, align 4
  %339 = call i32 @putchar(i32 %338)
  br label %327

340:                                              ; preds = %327
  %341 = call i32 @exit(i32 0) #5
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @openlog(i8*, i32, i32) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @logerr(i8*, ...) #2

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #2

declare dso_local i32 @fgets(i8*, i32, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @getpeername(i32, %struct.sockaddr*, i32*) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @realhostname_sa(i8*, i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @setenv(i8*, i8*, i32) #2

declare dso_local i8* @memchr(i8*, i32, i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @syslog(i32, i8*, i8*, i8*) #2

declare dso_local i8* @strtok(i8*, i8*) #2

declare dso_local i32 @puts(i8*) #2

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @pipe(i32*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

; Function Attrs: returns_twice
declare dso_local i32 @vfork() #4

declare dso_local i32 @close(i32) #2

declare dso_local i32 @dup2(i32, i32) #2

declare dso_local i32 @execv(i8*, i8**) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

declare dso_local i32* @fdopen(i32, i8*) #2

declare dso_local i32 @getc(i32*) #2

declare dso_local i32 @putchar(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
