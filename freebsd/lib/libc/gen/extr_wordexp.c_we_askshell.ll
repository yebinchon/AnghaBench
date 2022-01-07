; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_wordexp.c_we_askshell.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_wordexp.c_we_askshell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i8**, i8* }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IFS\00", align 1
@O_CLOEXEC = common dso_local global i32 0, align 4
@WRDE_NOSPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@SIGCHLD = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@_PATH_BSHELL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@WRDE_UNDEF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"+u\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"IFS=$1;eval \22$2\22;freebsd_wordexp -f \22$3\22 ${4:+\22$4\22}\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@WRDE_SHOWERR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"exec 2>/dev/null\00", align 1
@WRDE_NOCMD = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@WRDE_SYNTAX = common dso_local global i32 0, align 4
@WRDE_CMDSUB = common dso_local global i32 0, align 4
@WRDE_BADVAL = common dso_local global i32 0, align 4
@WRDE_DOOFFS = common dso_local global i32 0, align 4
@WRDE_APPEND = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_3__*, i32)* @we_askshell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @we_askshell(i8* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca [13 x i8], align 1
  %11 = alloca [35 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8**, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %29 = load i32, i32* @errno, align 4
  store i32 %29, i32* %21, align 4
  %30 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %30, i8** %28, align 8
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %32 = load i32, i32* @O_CLOEXEC, align 4
  %33 = call i64 @pipe2(i32* %31, i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* @WRDE_NOSPACE, align 4
  store i32 %36, i32* %4, align 4
  br label %420

37:                                               ; preds = %3
  %38 = getelementptr inbounds [13 x i8], [13 x i8]* %10, i64 0, i64 0
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @snprintf(i8* %38, i32 13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %43 = load i32, i32* @O_CLOEXEC, align 4
  %44 = call i64 @pipe2(i32* %42, i32 %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @_close(i32 %48)
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @_close(i32 %51)
  %53 = load i32, i32* @WRDE_NOSPACE, align 4
  store i32 %53, i32* %4, align 4
  br label %420

54:                                               ; preds = %37
  %55 = call i32 @sigemptyset(i32* %26)
  %56 = load i32, i32* @SIGCHLD, align 4
  %57 = call i32 @sigaddset(i32* %26, i32 %56)
  %58 = load i32, i32* @SIG_BLOCK, align 4
  %59 = call i32 @__libc_sigprocmask(i32 %58, i32* %26, i32* %27)
  %60 = call i64 (...) @fork()
  store i64 %60, i64* %17, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %54
  %63 = load i32, i32* @errno, align 4
  store i32 %63, i32* %21, align 4
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @_close(i32 %65)
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @_close(i32 %68)
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @_close(i32 %71)
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @_close(i32 %74)
  %76 = load i32, i32* @SIG_SETMASK, align 4
  %77 = call i32 @__libc_sigprocmask(i32 %76, i32* %27, i32* null)
  %78 = load i32, i32* %21, align 4
  store i32 %78, i32* @errno, align 4
  %79 = load i32, i32* @WRDE_NOSPACE, align 4
  store i32 %79, i32* %4, align 4
  br label %420

80:                                               ; preds = %54
  %81 = load i64, i64* %17, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %143

83:                                               ; preds = %80
  %84 = load i32, i32* @SIG_SETMASK, align 4
  %85 = call i32 @__libc_sigprocmask(i32 %84, i32* %27, i32* null)
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @STDOUT_FILENO, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @STDOUT_FILENO, align 4
  %94 = call i64 @_dup2(i32 %92, i32 %93)
  br label %100

95:                                               ; preds = %83
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @F_SETFD, align 4
  %99 = call i64 @_fcntl(i32 %97, i32 %98, i32 0)
  br label %100

100:                                              ; preds = %95, %90
  %101 = phi i64 [ %94, %90 ], [ %99, %95 ]
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = call i32 @_exit(i32 1) #3
  unreachable

105:                                              ; preds = %100
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @F_SETFD, align 4
  %109 = call i64 @_fcntl(i32 %107, i32 %108, i32 0)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = call i32 @_exit(i32 1) #3
  unreachable

113:                                              ; preds = %105
  %114 = load i32, i32* @_PATH_BSHELL, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @WRDE_UNDEF, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %121 = load i8*, i8** %28, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %113
  %124 = load i8*, i8** %28, align 8
  br label %126

125:                                              ; preds = %113
  br label %126

126:                                              ; preds = %125, %123
  %127 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), %125 ]
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @WRDE_SHOWERR, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0)
  %134 = getelementptr inbounds [13 x i8], [13 x i8]* %10, i64 0, i64 0
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @WRDE_NOCMD, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %141 = call i32 @execl(i32 %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* %127, i8* %133, i8* %134, i8* %140, i8* null)
  %142 = call i32 @_exit(i32 1) #3
  unreachable

143:                                              ; preds = %80
  br label %144

144:                                              ; preds = %143
  %145 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @_close(i32 %146)
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @_close(i32 %149)
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = load i8*, i8** %5, align 8
  %154 = load i8*, i8** %5, align 8
  %155 = call i32 @strlen(i8* %154)
  %156 = call i32 @we_write_fully(i32 %152, i8* %153, i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %144
  %159 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @_close(i32 %160)
  %162 = load i32, i32* @WRDE_SYNTAX, align 4
  store i32 %162, i32* %20, align 4
  br label %319

163:                                              ; preds = %144
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @_close(i32 %165)
  %167 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds [35 x i8], [35 x i8]* %11, i64 0, i64 0
  %170 = call i64 @we_read_fully(i32 %168, i8* %169, i64 34)
  switch i64 %170, label %184 [
    i64 1, label %171
    i64 34, label %183
  ]

171:                                              ; preds = %163
  %172 = getelementptr inbounds [35 x i8], [35 x i8]* %11, i64 0, i64 0
  %173 = load i8, i8* %172, align 16
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 67
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = load i32, i32* @WRDE_CMDSUB, align 4
  br label %180

178:                                              ; preds = %171
  %179 = load i32, i32* @WRDE_BADVAL, align 4
  br label %180

180:                                              ; preds = %178, %176
  %181 = phi i32 [ %177, %176 ], [ %179, %178 ]
  store i32 %181, i32* %20, align 4
  %182 = load i32, i32* @errno, align 4
  store i32 %182, i32* %21, align 4
  br label %319

183:                                              ; preds = %163
  br label %187

184:                                              ; preds = %163
  %185 = load i32, i32* @WRDE_SYNTAX, align 4
  store i32 %185, i32* %20, align 4
  %186 = load i32, i32* @errno, align 4
  store i32 %186, i32* %21, align 4
  br label %319

187:                                              ; preds = %183
  %188 = getelementptr inbounds [35 x i8], [35 x i8]* %11, i64 0, i64 17
  store i8 0, i8* %188, align 1
  %189 = getelementptr inbounds [35 x i8], [35 x i8]* %11, i64 0, i64 0
  %190 = getelementptr inbounds i8, i8* %189, i64 1
  %191 = call i64 @strtol(i8* %190, i32* null, i32 16)
  store i64 %191, i64* %12, align 8
  %192 = getelementptr inbounds [35 x i8], [35 x i8]* %11, i64 0, i64 34
  store i8 0, i8* %192, align 2
  %193 = getelementptr inbounds [35 x i8], [35 x i8]* %11, i64 0, i64 0
  %194 = getelementptr inbounds i8, i8* %193, i64 18
  %195 = call i64 @strtol(i8* %194, i32* null, i32 16)
  %196 = load i64, i64* %12, align 8
  %197 = add nsw i64 %195, %196
  store i64 %197, i64* %13, align 8
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  store i64 %200, i64* %15, align 8
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  store i64 %203, i64* %16, align 8
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* @WRDE_DOOFFS, align 4
  %206 = load i32, i32* @WRDE_APPEND, align 4
  %207 = or i32 %205, %206
  %208 = and i32 %204, %207
  %209 = load i32, i32* @WRDE_DOOFFS, align 4
  %210 = load i32, i32* @WRDE_APPEND, align 4
  %211 = or i32 %209, %210
  %212 = icmp eq i32 %208, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %187
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* %16, align 8
  %218 = add i64 %217, %216
  store i64 %218, i64* %16, align 8
  br label %219

219:                                              ; preds = %213, %187
  %220 = load i64, i64* %12, align 8
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = add i64 %223, %220
  store i64 %224, i64* %222, align 8
  %225 = load i64, i64* %13, align 8
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = add i64 %228, %225
  store i64 %229, i64* %227, align 8
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 3
  %232 = load i8**, i8*** %231, align 8
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = add i64 %235, 1
  %237 = load i32, i32* %7, align 4
  %238 = load i32, i32* @WRDE_DOOFFS, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %219
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  br label %246

245:                                              ; preds = %219
  br label %246

246:                                              ; preds = %245, %241
  %247 = phi i64 [ %244, %241 ], [ 0, %245 ]
  %248 = add i64 %236, %247
  %249 = trunc i64 %248 to i32
  %250 = call i8** @reallocarray(i8** %232, i32 %249, i32 8)
  store i8** %250, i8*** %25, align 8
  %251 = icmp eq i8** %250, null
  br i1 %251, label %252, label %254

252:                                              ; preds = %246
  %253 = load i32, i32* @WRDE_NOSPACE, align 4
  store i32 %253, i32* %20, align 4
  br label %319

254:                                              ; preds = %246
  %255 = load i8**, i8*** %25, align 8
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 3
  store i8** %255, i8*** %257, align 8
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 4
  %260 = load i8*, i8** %259, align 8
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = call i8* @realloc(i8* %260, i64 %263)
  store i8* %264, i8** %24, align 8
  %265 = icmp eq i8* %264, null
  br i1 %265, label %266, label %268

266:                                              ; preds = %254
  %267 = load i32, i32* @WRDE_NOSPACE, align 4
  store i32 %267, i32* %20, align 4
  br label %319

268:                                              ; preds = %254
  store i64 0, i64* %14, align 8
  br label %269

269:                                              ; preds = %297, %268
  %270 = load i64, i64* %14, align 8
  %271 = load i64, i64* %16, align 8
  %272 = icmp ult i64 %270, %271
  br i1 %272, label %273, label %300

273:                                              ; preds = %269
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 3
  %276 = load i8**, i8*** %275, align 8
  %277 = load i64, i64* %14, align 8
  %278 = getelementptr inbounds i8*, i8** %276, i64 %277
  %279 = load i8*, i8** %278, align 8
  %280 = icmp ne i8* %279, null
  br i1 %280, label %281, label %296

281:                                              ; preds = %273
  %282 = load i8*, i8** %24, align 8
  %283 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 4
  %285 = load i8*, i8** %284, align 8
  %286 = ptrtoint i8* %282 to i64
  %287 = ptrtoint i8* %285 to i64
  %288 = sub i64 %286, %287
  %289 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i32 0, i32 3
  %291 = load i8**, i8*** %290, align 8
  %292 = load i64, i64* %14, align 8
  %293 = getelementptr inbounds i8*, i8** %291, i64 %292
  %294 = load i8*, i8** %293, align 8
  %295 = getelementptr inbounds i8, i8* %294, i64 %288
  store i8* %295, i8** %293, align 8
  br label %296

296:                                              ; preds = %281, %273
  br label %297

297:                                              ; preds = %296
  %298 = load i64, i64* %14, align 8
  %299 = add nsw i64 %298, 1
  store i64 %299, i64* %14, align 8
  br label %269

300:                                              ; preds = %269
  %301 = load i8*, i8** %24, align 8
  %302 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %302, i32 0, i32 4
  store i8* %301, i8** %303, align 8
  %304 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 4
  %308 = load i8*, i8** %307, align 8
  %309 = load i64, i64* %15, align 8
  %310 = getelementptr inbounds i8, i8* %308, i64 %309
  %311 = load i64, i64* %13, align 8
  %312 = call i64 @we_read_fully(i32 %305, i8* %310, i64 %311)
  %313 = load i64, i64* %13, align 8
  %314 = icmp ne i64 %312, %313
  br i1 %314, label %315, label %318

315:                                              ; preds = %300
  %316 = load i32, i32* @WRDE_NOSPACE, align 4
  store i32 %316, i32* %20, align 4
  %317 = load i32, i32* @errno, align 4
  store i32 %317, i32* %21, align 4
  br label %319

318:                                              ; preds = %300
  store i32 0, i32* %20, align 4
  br label %319

319:                                              ; preds = %318, %315, %266, %252, %184, %180, %158
  %320 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @_close(i32 %321)
  br label %323

323:                                              ; preds = %333, %319
  %324 = load i64, i64* %17, align 8
  %325 = call i64 @_waitpid(i64 %324, i32* %19, i32 0)
  store i64 %325, i64* %18, align 8
  br label %326

326:                                              ; preds = %323
  %327 = load i64, i64* %18, align 8
  %328 = icmp slt i64 %327, 0
  br i1 %328, label %329, label %333

329:                                              ; preds = %326
  %330 = load i32, i32* @errno, align 4
  %331 = load i32, i32* @EINTR, align 4
  %332 = icmp eq i32 %330, %331
  br label %333

333:                                              ; preds = %329, %326
  %334 = phi i1 [ false, %326 ], [ %332, %329 ]
  br i1 %334, label %323, label %335

335:                                              ; preds = %333
  %336 = load i32, i32* @SIG_SETMASK, align 4
  %337 = call i32 @__libc_sigprocmask(i32 %336, i32* %27, i32* null)
  %338 = load i32, i32* %20, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %335
  %341 = load i32, i32* %21, align 4
  store i32 %341, i32* @errno, align 4
  %342 = load i32, i32* %20, align 4
  store i32 %342, i32* %4, align 4
  br label %420

343:                                              ; preds = %335
  %344 = load i64, i64* %18, align 8
  %345 = icmp slt i64 %344, 0
  br i1 %345, label %354, label %346

346:                                              ; preds = %343
  %347 = load i32, i32* %19, align 4
  %348 = call i32 @WIFEXITED(i32 %347)
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %346
  %351 = load i32, i32* %19, align 4
  %352 = call i64 @WEXITSTATUS(i32 %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %356

354:                                              ; preds = %350, %346, %343
  %355 = load i32, i32* @WRDE_NOSPACE, align 4
  store i32 %355, i32* %4, align 4
  br label %420

356:                                              ; preds = %350
  %357 = load i64, i64* %16, align 8
  %358 = icmp eq i64 %357, 0
  br i1 %358, label %359, label %379

359:                                              ; preds = %356
  %360 = load i32, i32* %7, align 4
  %361 = load i32, i32* @WRDE_DOOFFS, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %379

364:                                              ; preds = %359
  br label %365

365:                                              ; preds = %371, %364
  %366 = load i64, i64* %16, align 8
  %367 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %367, i32 0, i32 2
  %369 = load i64, i64* %368, align 8
  %370 = icmp ult i64 %366, %369
  br i1 %370, label %371, label %378

371:                                              ; preds = %365
  %372 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %372, i32 0, i32 3
  %374 = load i8**, i8*** %373, align 8
  %375 = load i64, i64* %16, align 8
  %376 = add i64 %375, 1
  store i64 %376, i64* %16, align 8
  %377 = getelementptr inbounds i8*, i8** %374, i64 %375
  store i8* null, i8** %377, align 8
  br label %365

378:                                              ; preds = %365
  br label %379

379:                                              ; preds = %378, %359, %356
  %380 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %381 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %380, i32 0, i32 4
  %382 = load i8*, i8** %381, align 8
  %383 = load i64, i64* %15, align 8
  %384 = getelementptr inbounds i8, i8* %382, i64 %383
  store i8* %384, i8** %23, align 8
  br label %385

385:                                              ; preds = %403, %379
  %386 = load i64, i64* %12, align 8
  %387 = add nsw i64 %386, -1
  store i64 %387, i64* %12, align 8
  %388 = icmp ne i64 %386, 0
  br i1 %388, label %389, label %414

389:                                              ; preds = %385
  %390 = load i8*, i8** %23, align 8
  %391 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %391, i32 0, i32 3
  %393 = load i8**, i8*** %392, align 8
  %394 = load i64, i64* %16, align 8
  %395 = add i64 %394, 1
  store i64 %395, i64* %16, align 8
  %396 = getelementptr inbounds i8*, i8** %393, i64 %394
  store i8* %390, i8** %396, align 8
  %397 = load i8*, i8** %23, align 8
  %398 = load i64, i64* %13, align 8
  %399 = call i8* @memchr(i8* %397, i8 signext 0, i64 %398)
  store i8* %399, i8** %22, align 8
  %400 = icmp eq i8* %399, null
  br i1 %400, label %401, label %403

401:                                              ; preds = %389
  %402 = load i32, i32* @WRDE_NOSPACE, align 4
  store i32 %402, i32* %4, align 4
  br label %420

403:                                              ; preds = %389
  %404 = load i8*, i8** %22, align 8
  %405 = load i8*, i8** %23, align 8
  %406 = ptrtoint i8* %404 to i64
  %407 = ptrtoint i8* %405 to i64
  %408 = sub i64 %406, %407
  %409 = add nsw i64 %408, 1
  %410 = load i64, i64* %13, align 8
  %411 = sub nsw i64 %410, %409
  store i64 %411, i64* %13, align 8
  %412 = load i8*, i8** %22, align 8
  %413 = getelementptr inbounds i8, i8* %412, i64 1
  store i8* %413, i8** %23, align 8
  br label %385

414:                                              ; preds = %385
  %415 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %415, i32 0, i32 3
  %417 = load i8**, i8*** %416, align 8
  %418 = load i64, i64* %16, align 8
  %419 = getelementptr inbounds i8*, i8** %417, i64 %418
  store i8* null, i8** %419, align 8
  store i32 0, i32* %4, align 4
  br label %420

420:                                              ; preds = %414, %401, %354, %340, %62, %46, %35
  %421 = load i32, i32* %4, align 4
  ret i32 %421
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @pipe2(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @_close(i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @__libc_sigprocmask(i32, i32*, i32*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i64 @_dup2(i32, i32) #1

declare dso_local i64 @_fcntl(i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @execl(i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @we_write_fully(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @we_read_fully(i32, i8*, i64) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i8** @reallocarray(i8**, i32, i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i64 @_waitpid(i64, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
