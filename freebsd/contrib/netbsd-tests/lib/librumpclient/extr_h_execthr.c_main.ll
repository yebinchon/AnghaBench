; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/librumpclient/extr_h_execthr.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/librumpclient/extr_h_execthr.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc2 = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"execd: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"init execd\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"rumpclient_init finished.\0A\00", align 1
@canreturn = common dso_local global i32 0, align 4
@wrk = common dso_local global i32 0, align 4
@P2_0 = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"exec pthread_create\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"startup pthread_create finished.\0A\00", align 1
@P2_1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"startup pthread_join finished.\0A\00", align 1
@P1_0 = common dso_local global i32 0, align 4
@EBADF = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [24 x i8] c"post-exec cloexec works\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"startup rump_sys_read finished.\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"startup getproc finished.\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"invalid nlwps: %lld\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"making pipes...\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"pipe1\00", align 1
@P1_1 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [28 x i8] c"p1 assumptions failed %d %d\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"p2 assumptions failed\00", align 1
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"cloexec\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"making threads...\0A\00", align 1
@NTHR = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [20 x i8] c"pthread_create 1 %d\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"pthread_create 2 %d\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"waiting for threads to start...\0A\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"getproc finished.\0A\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"making some more threads start...\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"pthread_create 3 %d\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"calling exec...\0A\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"exec\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.kinfo_proc2, align 4
  %9 = alloca [3 x i8*], align 16
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [16 x i8], align 16
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i8**, i8*** %6, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @atoi(i8* %23)
  store i32 %24, i32* %16, align 4
  br label %26

25:                                               ; preds = %3
  store i32 0, i32* %16, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %28 = load i32, i32* %16, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i32 @sprintf(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %16, align 4
  %32 = call i32 (i8*, ...) @SAY(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = call i32 (...) @rumpclient_init()
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %43

35:                                               ; preds = %26
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %42

40:                                               ; preds = %35
  %41 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %38
  br label %43

43:                                               ; preds = %42, %26
  %44 = call i32 (...) @rump_sys_getpid()
  store i32 %44, i32* %12, align 4
  %45 = call i32 (i8*, ...) @SAY(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %99

48:                                               ; preds = %43
  store i32 1, i32* @canreturn, align 4
  %49 = load i32, i32* @wrk, align 4
  %50 = load i32, i32* @P2_0, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = call i64 @pthread_create(i32* %13, i32* null, i32 %49, i8* %52)
  store i64 %53, i64* @errno, align 8
  %54 = load i64, i64* @errno, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %48
  %59 = call i32 (i8*, ...) @SAY(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  store i32 37, i32* %15, align 4
  %60 = load i32, i32* @P2_1, align 4
  %61 = call i32 @rump_sys_write(i32 %60, i32* %15, i32 4)
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @pthread_join(i32 %62, i32* null)
  %64 = call i32 (i8*, ...) @SAY(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %65 = load i32, i32* @P1_0, align 4
  %66 = call i32 @rump_sys_read(i32 %65, i32* %15, i32 4)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %73, label %69

69:                                               ; preds = %58
  %70 = load i64, i64* @errno, align 8
  %71 = load i64, i64* @EBADF, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69, %58
  %74 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %69
  %76 = call i32 (i8*, ...) @SAY(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @getproc(i32 %77, %struct.kinfo_proc2* %8)
  %79 = call i32 (i8*, ...) @SAY(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %80 = getelementptr inbounds %struct.kinfo_proc2, %struct.kinfo_proc2* %8, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 2
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.kinfo_proc2, %struct.kinfo_proc2* %8, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i64 %86)
  br label %88

88:                                               ; preds = %83, %75
  %89 = load i32, i32* %16, align 4
  %90 = icmp sgt i32 %89, 10
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = call i32 (i8*, ...) @SAY(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %93 = call i32 @exit(i32 0) #3
  unreachable

94:                                               ; preds = %88
  %95 = load i32, i32* @P2_0, align 4
  %96 = call i32 @rump_sys_close(i32 %95)
  %97 = load i32, i32* @P2_1, align 4
  %98 = call i32 @rump_sys_close(i32 %97)
  br label %99

99:                                               ; preds = %94, %43
  %100 = call i32 (i8*, ...) @SAY(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %102 = call i32 @rump_sys_pipe(i32* %101)
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %99
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @P1_0, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @P1_1, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %111, %106
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 %118, i32 %120)
  br label %122

122:                                              ; preds = %116, %111
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %124 = call i32 @rump_sys_pipe(i32* %123)
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %122
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @P2_0, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @P2_1, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %133, %128
  %139 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %133
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @F_SETFD, align 4
  %144 = load i32, i32* @FD_CLOEXEC, align 4
  %145 = call i32 @rump_sys_fcntl(i32 %142, i32 %143, i32 %144)
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %147, label %149

147:                                              ; preds = %140
  %148 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %140
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @F_SETFD, align 4
  %153 = load i32, i32* @FD_CLOEXEC, align 4
  %154 = call i32 @rump_sys_fcntl(i32 %151, i32 %152, i32 %153)
  %155 = icmp eq i32 %154, -1
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %149
  %159 = call i32 (i8*, ...) @SAY(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %160

160:                                              ; preds = %177, %158
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* @NTHR, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %180

164:                                              ; preds = %160
  %165 = load i32, i32* @wrk, align 4
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = inttoptr i64 %168 to i8*
  %170 = call i64 @pthread_create(i32* %13, i32* null, i32 %165, i8* %169)
  store i64 %170, i64* @errno, align 8
  %171 = load i64, i64* @errno, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %164
  %174 = load i32, i32* %15, align 4
  %175 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %173, %164
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %15, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %15, align 4
  br label %160

180:                                              ; preds = %160
  store i32 0, i32* %15, align 4
  br label %181

181:                                              ; preds = %198, %180
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* @NTHR, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %201

185:                                              ; preds = %181
  %186 = load i32, i32* @wrk, align 4
  %187 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = inttoptr i64 %189 to i8*
  %191 = call i64 @pthread_create(i32* %13, i32* null, i32 %186, i8* %190)
  store i64 %191, i64* @errno, align 8
  %192 = load i64, i64* @errno, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %185
  %195 = load i32, i32* %15, align 4
  %196 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 %195)
  br label %197

197:                                              ; preds = %194, %185
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %15, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %15, align 4
  br label %181

201:                                              ; preds = %181
  %202 = call i32 (i8*, ...) @SAY(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  br label %203

203:                                              ; preds = %214, %201
  %204 = load i32, i32* %12, align 4
  %205 = call i32 @getproc(i32 %204, %struct.kinfo_proc2* %8)
  %206 = call i32 (i8*, ...) @SAY(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0))
  %207 = getelementptr inbounds %struct.kinfo_proc2, %struct.kinfo_proc2* %8, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @NTHR, align 4
  %210 = mul nsw i32 2, %209
  %211 = add nsw i32 %210, 2
  %212 = icmp eq i32 %208, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %203
  br label %216

214:                                              ; preds = %203
  %215 = call i32 @usleep(i32 10000)
  br label %203

216:                                              ; preds = %213
  %217 = call i32 (i8*, ...) @SAY(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %218

218:                                              ; preds = %236, %216
  %219 = load i32, i32* %15, align 4
  %220 = load i32, i32* @NTHR, align 4
  %221 = mul nsw i32 3, %220
  %222 = icmp slt i32 %219, %221
  br i1 %222, label %223, label %239

223:                                              ; preds = %218
  %224 = load i32, i32* @wrk, align 4
  %225 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = sext i32 %226 to i64
  %228 = inttoptr i64 %227 to i8*
  %229 = call i64 @pthread_create(i32* %13, i32* null, i32 %224, i8* %228)
  store i64 %229, i64* @errno, align 8
  %230 = load i64, i64* @errno, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %223
  %233 = load i32, i32* %15, align 4
  %234 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i32 %233)
  br label %235

235:                                              ; preds = %232, %223
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %15, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %15, align 4
  br label %218

239:                                              ; preds = %218
  %240 = call i32 (i8*, ...) @SAY(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0))
  %241 = load i8**, i8*** %6, align 8
  %242 = getelementptr inbounds i8*, i8** %241, i64 0
  %243 = load i8*, i8** %242, align 8
  %244 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 0
  store i8* %243, i8** %244, align 16
  %245 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %246 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 1
  store i8* %245, i8** %246, align 8
  %247 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 2
  store i8* null, i8** %247, align 16
  %248 = load i8**, i8*** %6, align 8
  %249 = getelementptr inbounds i8*, i8** %248, i64 0
  %250 = load i8*, i8** %249, align 8
  %251 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 0
  %252 = load i8**, i8*** %7, align 8
  %253 = call i32 @rumpclient_exec(i8* %250, i8** %251, i8** %252)
  %254 = icmp eq i32 %253, -1
  br i1 %254, label %255, label %257

255:                                              ; preds = %239
  %256 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  br label %257

257:                                              ; preds = %255, %239
  %258 = load i32, i32* %4, align 4
  ret i32 %258
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @SAY(i8*, ...) #1

declare dso_local i32 @rumpclient_init(...) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @rump_sys_getpid(...) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i8*) #1

declare dso_local i32 @rump_sys_write(i32, i32*, i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @rump_sys_read(i32, i32*, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @getproc(i32, %struct.kinfo_proc2*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @rump_sys_close(i32) #1

declare dso_local i32 @rump_sys_pipe(i32*) #1

declare dso_local i32 @rump_sys_fcntl(i32, i32, i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @rumpclient_exec(i8*, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
