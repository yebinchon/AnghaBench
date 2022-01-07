; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_extractfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_extractfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timespec = type { i32, i32 }
%struct.entry = type { i32 }

@curfile = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@USING = common dso_local global i32 0, align 4
@IFMT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s: unknown file mode 0%o\0A\00", align 1
@FAIL = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"skipped socket %s\0A\00", align 1
@GOOD = common dso_local global i32 0, align 4
@mflag = common dso_local global i32 0, align 4
@EXTRACT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unextracted directory %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"extract file %s\0A\00", align 1
@lnkbuf = common dso_local global i8* null, align 8
@pathlen = common dso_local global i32 0, align 4
@xtrlnkfile = common dso_local global i32 0, align 4
@xtrattr = common dso_local global i32 0, align 4
@xtrlnkskip = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"%s: zero length symbolic link (ignored)\0A\00", align 1
@SYMLINK = common dso_local global i32 0, align 4
@SXA_LINK = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"extract fifo %s\0A\00", align 1
@Nflag = common dso_local global i32 0, align 4
@uflag = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"%s: cannot create fifo: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@xtrnull = common dso_local global i32 0, align 4
@SXA_FILE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"extract special file %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"%s: cannot create special file: %s\0A\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@ofile = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"%s: cannot create file: %s\0A\00", align 1
@xtrfile = common dso_local global i32 0, align 4
@xtrskip = common dso_local global i32 0, align 4
@SXA_FD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extractfile(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x %struct.timespec], align 16
  %10 = alloca [2 x %struct.timespec], align 16
  %11 = alloca %struct.entry*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 0), align 8
  %14 = load i32, i32* @USING, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 14), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 11), align 8
  %16 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %9, i64 0, i64 0
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 10), align 4
  %19 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %9, i64 0, i64 0
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 16
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 13), align 8
  %22 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %9, i64 0, i64 1
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 12), align 4
  %25 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %9, i64 0, i64 1
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 11), align 8
  %28 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %10, i64 0, i64 0
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 10), align 4
  %31 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %10, i64 0, i64 0
  %32 = getelementptr inbounds %struct.timespec, %struct.timespec* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 16
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 9), align 8
  %34 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %10, i64 0, i64 1
  %35 = getelementptr inbounds %struct.timespec, %struct.timespec* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 8), align 4
  %37 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %10, i64 0, i64 1
  %38 = getelementptr inbounds %struct.timespec, %struct.timespec* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 1), align 8
  store i32 %39, i32* %8, align 4
  %40 = call i64 (...) @getuid()
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %1
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 2), align 8
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %43, %1
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 7), align 8
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 3), align 8
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 6), align 4
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @IFMT, align 4
  %51 = and i32 %49, %50
  switch i32 %51, label %52 [
    i32 128, label %59
    i32 132, label %65
    i32 130, label %93
    i32 131, label %149
    i32 133, label %213
    i32 134, label %213
    i32 129, label %282
  ]

52:                                               ; preds = %45
  %53 = load i32, i32* @stderr, align 4
  %54 = load i8*, i8** %3, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %54, i32 %55)
  %57 = call i32 (...) @skipfile()
  %58 = load i32, i32* @FAIL, align 4
  store i32 %58, i32* %2, align 4
  br label %350

59:                                               ; preds = %45
  %60 = load i32, i32* @stdout, align 4
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @vprintf(i32 %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  %63 = call i32 (...) @skipfile()
  %64 = load i32, i32* @GOOD, align 4
  store i32 %64, i32* %2, align 4
  br label %350

65:                                               ; preds = %45
  %66 = load i32, i32* @mflag, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %65
  %69 = load i8*, i8** %3, align 8
  %70 = call %struct.entry* @lookupname(i8* %69)
  store %struct.entry* %70, %struct.entry** %11, align 8
  %71 = load %struct.entry*, %struct.entry** %11, align 8
  %72 = icmp eq %struct.entry* %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %68
  %74 = load %struct.entry*, %struct.entry** %11, align 8
  %75 = getelementptr inbounds %struct.entry, %struct.entry* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @EXTRACT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73, %68
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %80, %73
  %84 = call i32 (...) @skipfile()
  %85 = load i32, i32* @GOOD, align 4
  store i32 %85, i32* %2, align 4
  br label %350

86:                                               ; preds = %65
  %87 = load i32, i32* @stdout, align 4
  %88 = load i8*, i8** %3, align 8
  %89 = call i32 @vprintf(i32 %87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %88)
  %90 = load i8*, i8** %3, align 8
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 5), align 8
  %92 = call i32 @genliteraldir(i8* %90, i32 %91)
  store i32 %92, i32* %2, align 4
  br label %350

93:                                               ; preds = %45
  %94 = load i8*, i8** @lnkbuf, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  store i8 0, i8* %95, align 1
  store i32 0, i32* @pathlen, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i8* @setupextattr(i32 %96)
  store i8* %97, i8** %12, align 8
  %98 = load i32, i32* @xtrlnkfile, align 4
  %99 = load i32, i32* @xtrattr, align 4
  %100 = load i32, i32* @xtrlnkskip, align 4
  %101 = call i32 @getfile(i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* @pathlen, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %93
  %105 = load i32, i32* @stdout, align 4
  %106 = load i8*, i8** %3, align 8
  %107 = call i32 @vprintf(i32 %105, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %106)
  %108 = load i32, i32* @GOOD, align 4
  store i32 %108, i32* %2, align 4
  br label %350

109:                                              ; preds = %93
  %110 = load i8*, i8** @lnkbuf, align 8
  %111 = load i8*, i8** %3, align 8
  %112 = load i32, i32* @SYMLINK, align 4
  %113 = call i32 @linkit(i8* %110, i8* %111, i32 %112)
  %114 = load i32, i32* @GOOD, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %147

116:                                              ; preds = %109
  %117 = load i32, i32* %8, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load i8*, i8** %3, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @SXA_LINK, align 4
  %124 = call i32 @set_extattr(i32 -1, i8* %120, i8* %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %119, %116
  %126 = load i8*, i8** %3, align 8
  %127 = load i64, i64* %5, align 8
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @lchown(i8* %126, i64 %127, i32 %128)
  %130 = load i8*, i8** %3, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @lchmod(i8* %130, i32 %131)
  %133 = load i32, i32* @AT_FDCWD, align 4
  %134 = load i8*, i8** %3, align 8
  %135 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %10, i64 0, i64 0
  %136 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %137 = call i32 @utimensat(i32 %133, i8* %134, %struct.timespec* %135, i32 %136)
  %138 = load i32, i32* @AT_FDCWD, align 4
  %139 = load i8*, i8** %3, align 8
  %140 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %9, i64 0, i64 0
  %141 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %142 = call i32 @utimensat(i32 %138, i8* %139, %struct.timespec* %140, i32 %141)
  %143 = load i8*, i8** %3, align 8
  %144 = load i32, i32* %4, align 4
  %145 = call i32 @lchflags(i8* %143, i32 %144)
  %146 = load i32, i32* @GOOD, align 4
  store i32 %146, i32* %2, align 4
  br label %350

147:                                              ; preds = %109
  %148 = load i32, i32* @FAIL, align 4
  store i32 %148, i32* %2, align 4
  br label %350

149:                                              ; preds = %45
  %150 = load i32, i32* @stdout, align 4
  %151 = load i8*, i8** %3, align 8
  %152 = call i32 @vprintf(i32 %150, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %151)
  %153 = load i32, i32* @Nflag, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = call i32 (...) @skipfile()
  %157 = load i32, i32* @GOOD, align 4
  store i32 %157, i32* %2, align 4
  br label %350

158:                                              ; preds = %149
  %159 = load i32, i32* @uflag, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i8*, i8** %3, align 8
  %163 = call i32 @unlink(i8* %162)
  br label %164

164:                                              ; preds = %161, %158
  %165 = load i8*, i8** %3, align 8
  %166 = call i32 @mkfifo(i8* %165, i32 384)
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %164
  %169 = load i32, i32* @stderr, align 4
  %170 = load i8*, i8** %3, align 8
  %171 = load i32, i32* @errno, align 4
  %172 = call i8* @strerror(i32 %171)
  %173 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %170, i8* %172)
  %174 = call i32 (...) @skipfile()
  %175 = load i32, i32* @FAIL, align 4
  store i32 %175, i32* %2, align 4
  br label %350

176:                                              ; preds = %164
  %177 = load i32, i32* %8, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = call i32 (...) @skipfile()
  br label %193

181:                                              ; preds = %176
  %182 = load i32, i32* %8, align 4
  %183 = call i8* @setupextattr(i32 %182)
  store i8* %183, i8** %12, align 8
  %184 = load i32, i32* @xtrnull, align 4
  %185 = load i32, i32* @xtrattr, align 4
  %186 = load i32, i32* @xtrnull, align 4
  %187 = call i32 @getfile(i32 %184, i32 %185, i32 %186)
  %188 = load i8*, i8** %3, align 8
  %189 = load i8*, i8** %12, align 8
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* @SXA_FILE, align 4
  %192 = call i32 @set_extattr(i32 -1, i8* %188, i8* %189, i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %181, %179
  %194 = load i8*, i8** %3, align 8
  %195 = load i64, i64* %5, align 8
  %196 = load i32, i32* %6, align 4
  %197 = call i32 @chown(i8* %194, i64 %195, i32 %196)
  %198 = load i8*, i8** %3, align 8
  %199 = load i32, i32* %7, align 4
  %200 = call i32 @chmod(i8* %198, i32 %199)
  %201 = load i32, i32* @AT_FDCWD, align 4
  %202 = load i8*, i8** %3, align 8
  %203 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %10, i64 0, i64 0
  %204 = call i32 @utimensat(i32 %201, i8* %202, %struct.timespec* %203, i32 0)
  %205 = load i32, i32* @AT_FDCWD, align 4
  %206 = load i8*, i8** %3, align 8
  %207 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %9, i64 0, i64 0
  %208 = call i32 @utimensat(i32 %205, i8* %206, %struct.timespec* %207, i32 0)
  %209 = load i8*, i8** %3, align 8
  %210 = load i32, i32* %4, align 4
  %211 = call i32 @chflags(i8* %209, i32 %210)
  %212 = load i32, i32* @GOOD, align 4
  store i32 %212, i32* %2, align 4
  br label %350

213:                                              ; preds = %45, %45
  %214 = load i32, i32* @stdout, align 4
  %215 = load i8*, i8** %3, align 8
  %216 = call i32 @vprintf(i32 %214, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %215)
  %217 = load i32, i32* @Nflag, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %213
  %220 = call i32 (...) @skipfile()
  %221 = load i32, i32* @GOOD, align 4
  store i32 %221, i32* %2, align 4
  br label %350

222:                                              ; preds = %213
  %223 = load i32, i32* @uflag, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load i8*, i8** %3, align 8
  %227 = call i32 @unlink(i8* %226)
  br label %228

228:                                              ; preds = %225, %222
  %229 = load i8*, i8** %3, align 8
  %230 = load i32, i32* %7, align 4
  %231 = and i32 %230, 135
  %232 = or i32 %231, 384
  %233 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 4), align 8
  %234 = trunc i64 %233 to i32
  %235 = call i32 @mknod(i8* %229, i32 %232, i32 %234)
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %245

237:                                              ; preds = %228
  %238 = load i32, i32* @stderr, align 4
  %239 = load i8*, i8** %3, align 8
  %240 = load i32, i32* @errno, align 4
  %241 = call i8* @strerror(i32 %240)
  %242 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %238, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8* %239, i8* %241)
  %243 = call i32 (...) @skipfile()
  %244 = load i32, i32* @FAIL, align 4
  store i32 %244, i32* %2, align 4
  br label %350

245:                                              ; preds = %228
  %246 = load i32, i32* %8, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  %249 = call i32 (...) @skipfile()
  br label %262

250:                                              ; preds = %245
  %251 = load i32, i32* %8, align 4
  %252 = call i8* @setupextattr(i32 %251)
  store i8* %252, i8** %12, align 8
  %253 = load i32, i32* @xtrnull, align 4
  %254 = load i32, i32* @xtrattr, align 4
  %255 = load i32, i32* @xtrnull, align 4
  %256 = call i32 @getfile(i32 %253, i32 %254, i32 %255)
  %257 = load i8*, i8** %3, align 8
  %258 = load i8*, i8** %12, align 8
  %259 = load i32, i32* %8, align 4
  %260 = load i32, i32* @SXA_FILE, align 4
  %261 = call i32 @set_extattr(i32 -1, i8* %257, i8* %258, i32 %259, i32 %260)
  br label %262

262:                                              ; preds = %250, %248
  %263 = load i8*, i8** %3, align 8
  %264 = load i64, i64* %5, align 8
  %265 = load i32, i32* %6, align 4
  %266 = call i32 @chown(i8* %263, i64 %264, i32 %265)
  %267 = load i8*, i8** %3, align 8
  %268 = load i32, i32* %7, align 4
  %269 = call i32 @chmod(i8* %267, i32 %268)
  %270 = load i32, i32* @AT_FDCWD, align 4
  %271 = load i8*, i8** %3, align 8
  %272 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %10, i64 0, i64 0
  %273 = call i32 @utimensat(i32 %270, i8* %271, %struct.timespec* %272, i32 0)
  %274 = load i32, i32* @AT_FDCWD, align 4
  %275 = load i8*, i8** %3, align 8
  %276 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %9, i64 0, i64 0
  %277 = call i32 @utimensat(i32 %274, i8* %275, %struct.timespec* %276, i32 0)
  %278 = load i8*, i8** %3, align 8
  %279 = load i32, i32* %4, align 4
  %280 = call i32 @chflags(i8* %278, i32 %279)
  %281 = load i32, i32* @GOOD, align 4
  store i32 %281, i32* %2, align 4
  br label %350

282:                                              ; preds = %45
  %283 = load i32, i32* @stdout, align 4
  %284 = load i8*, i8** %3, align 8
  %285 = call i32 @vprintf(i32 %283, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %284)
  %286 = load i32, i32* @Nflag, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %282
  %289 = call i32 (...) @skipfile()
  %290 = load i32, i32* @GOOD, align 4
  store i32 %290, i32* %2, align 4
  br label %350

291:                                              ; preds = %282
  %292 = load i32, i32* @uflag, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %291
  %295 = load i8*, i8** %3, align 8
  %296 = call i32 @unlink(i8* %295)
  br label %297

297:                                              ; preds = %294, %291
  %298 = load i8*, i8** %3, align 8
  %299 = load i32, i32* @O_WRONLY, align 4
  %300 = load i32, i32* @O_CREAT, align 4
  %301 = or i32 %299, %300
  %302 = load i32, i32* @O_TRUNC, align 4
  %303 = or i32 %301, %302
  %304 = call i32 @open(i8* %298, i32 %303, i32 384)
  store i32 %304, i32* @ofile, align 4
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %306, label %314

306:                                              ; preds = %297
  %307 = load i32, i32* @stderr, align 4
  %308 = load i8*, i8** %3, align 8
  %309 = load i32, i32* @errno, align 4
  %310 = call i8* @strerror(i32 %309)
  %311 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %307, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* %308, i8* %310)
  %312 = call i32 (...) @skipfile()
  %313 = load i32, i32* @FAIL, align 4
  store i32 %313, i32* %2, align 4
  br label %350

314:                                              ; preds = %297
  %315 = load i32, i32* %8, align 4
  %316 = call i8* @setupextattr(i32 %315)
  store i8* %316, i8** %12, align 8
  %317 = load i32, i32* @xtrfile, align 4
  %318 = load i32, i32* @xtrattr, align 4
  %319 = load i32, i32* @xtrskip, align 4
  %320 = call i32 @getfile(i32 %317, i32 %318, i32 %319)
  %321 = load i32, i32* %8, align 4
  %322 = icmp sgt i32 %321, 0
  br i1 %322, label %323, label %330

323:                                              ; preds = %314
  %324 = load i32, i32* @ofile, align 4
  %325 = load i8*, i8** %3, align 8
  %326 = load i8*, i8** %12, align 8
  %327 = load i32, i32* %8, align 4
  %328 = load i32, i32* @SXA_FD, align 4
  %329 = call i32 @set_extattr(i32 %324, i8* %325, i8* %326, i32 %327, i32 %328)
  br label %330

330:                                              ; preds = %323, %314
  %331 = load i32, i32* @ofile, align 4
  %332 = load i64, i64* %5, align 8
  %333 = load i32, i32* %6, align 4
  %334 = call i32 @fchown(i32 %331, i64 %332, i32 %333)
  %335 = load i32, i32* @ofile, align 4
  %336 = load i32, i32* %7, align 4
  %337 = call i32 @fchmod(i32 %335, i32 %336)
  %338 = load i32, i32* @ofile, align 4
  %339 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %10, i64 0, i64 0
  %340 = call i32 @futimens(i32 %338, %struct.timespec* %339)
  %341 = load i32, i32* @ofile, align 4
  %342 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %9, i64 0, i64 0
  %343 = call i32 @futimens(i32 %341, %struct.timespec* %342)
  %344 = load i32, i32* @ofile, align 4
  %345 = load i32, i32* %4, align 4
  %346 = call i32 @fchflags(i32 %344, i32 %345)
  %347 = load i32, i32* @ofile, align 4
  %348 = call i32 @close(i32 %347)
  %349 = load i32, i32* @GOOD, align 4
  store i32 %349, i32* %2, align 4
  br label %350

350:                                              ; preds = %330, %306, %288, %262, %237, %219, %193, %168, %155, %147, %125, %104, %86, %83, %59, %52
  %351 = load i32, i32* %2, align 4
  ret i32 %351
}

declare dso_local i64 @getuid(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @skipfile(...) #1

declare dso_local i32 @vprintf(i32, i8*, i8*) #1

declare dso_local %struct.entry* @lookupname(i8*) #1

declare dso_local i32 @panic(i8*, i8*) #1

declare dso_local i32 @genliteraldir(i8*, i32) #1

declare dso_local i8* @setupextattr(i32) #1

declare dso_local i32 @getfile(i32, i32, i32) #1

declare dso_local i32 @linkit(i8*, i8*, i32) #1

declare dso_local i32 @set_extattr(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @lchown(i8*, i64, i32) #1

declare dso_local i32 @lchmod(i8*, i32) #1

declare dso_local i32 @utimensat(i32, i8*, %struct.timespec*, i32) #1

declare dso_local i32 @lchflags(i8*, i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @mkfifo(i8*, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @chown(i8*, i64, i32) #1

declare dso_local i32 @chmod(i8*, i32) #1

declare dso_local i32 @chflags(i8*, i32) #1

declare dso_local i32 @mknod(i8*, i32, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @fchown(i32, i64, i32) #1

declare dso_local i32 @fchmod(i32, i32) #1

declare dso_local i32 @futimens(i32, %struct.timespec*) #1

declare dso_local i32 @fchflags(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
