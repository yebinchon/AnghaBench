; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_filescan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_filescan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.mlink = type { i8*, i8*, i8*, i8*, i8*, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@use_all = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"./\00", align 1
@MANDOCLEVEL_BADARG = common dso_local global i64 0, align 8
@exitcode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"&lstat\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Not a regular file\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"&realpath\00", align 1
@OP_TEST = common dso_local global i64 0, align 8
@op = common dso_local global i64 0, align 8
@basedir = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"%s: outside base directory\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"&stat\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Filename too long\00", align 1
@FORM_NONE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"man/\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"/man/\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"man\00", align 1
@FORM_SRC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@FORM_CAT = common dso_local global i32 0, align 4
@HOMEBREWDIR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @filescan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filescan(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca %struct.mlink*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i32, i32* @PATH_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = load i32, i32* @use_all, align 4
  %15 = call i32 @assert(i32 %14)
  %16 = load i8*, i8** %2, align 8
  %17 = call i64 @strncmp(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %18 = icmp eq i64 0, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i8*, i8** %2, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  store i8* %21, i8** %2, align 8
  br label %22

22:                                               ; preds = %19, %1
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @lstat(i8* %23, %struct.stat* %5)
  %25 = icmp eq i32 -1, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i64, i64* @MANDOCLEVEL_BADARG, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* @exitcode, align 4
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 (i8*, i8*, ...) @say(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %251

31:                                               ; preds = %22
  %32 = load i32, i32* @S_IFREG, align 4
  %33 = load i32, i32* @S_IFLNK, align 4
  %34 = or i32 %32, %33
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %34, %36
  %38 = icmp eq i32 0, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load i64, i64* @MANDOCLEVEL_BADARG, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* @exitcode, align 4
  %42 = load i8*, i8** %2, align 8
  %43 = call i32 (i8*, i8*, ...) @say(i8* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %251

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44
  %46 = load i8*, i8** %2, align 8
  %47 = call i32* @realpath(i8* %46, i8* %13)
  %48 = icmp eq i32* null, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i64, i64* @MANDOCLEVEL_BADARG, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* @exitcode, align 4
  %52 = load i8*, i8** %2, align 8
  %53 = call i32 (i8*, i8*, ...) @say(i8* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %251

54:                                               ; preds = %45
  %55 = load i64, i64* @OP_TEST, align 8
  %56 = load i64, i64* @op, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i8* %13, i8** %8, align 8
  br label %73

59:                                               ; preds = %54
  %60 = load i8*, i8** @basedir, align 8
  %61 = call i8* @strstr(i8* %13, i8* %60)
  %62 = icmp eq i8* %61, %13
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i8*, i8** @basedir, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %13, i64 %66
  store i8* %67, i8** %8, align 8
  br label %72

68:                                               ; preds = %59
  %69 = load i64, i64* @MANDOCLEVEL_BADARG, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* @exitcode, align 4
  %71 = call i32 (i8*, i8*, ...) @say(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %13)
  store i32 1, i32* %9, align 4
  br label %251

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %58
  %74 = load i32, i32* @S_IFLNK, align 4
  %75 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %111

79:                                               ; preds = %73
  %80 = call i32 @stat(i8* %13, %struct.stat* %5)
  %81 = icmp eq i32 -1, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i64, i64* @MANDOCLEVEL_BADARG, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* @exitcode, align 4
  %85 = load i8*, i8** %2, align 8
  %86 = call i32 (i8*, i8*, ...) @say(i8* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %251

87:                                               ; preds = %79
  %88 = load i8*, i8** %2, align 8
  %89 = trunc i64 %11 to i32
  %90 = call i32 @strlcpy(i8* %13, i8* %88, i32 %89)
  %91 = sext i32 %90 to i64
  %92 = icmp uge i64 %91, %11
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i8*, i8** %2, align 8
  %95 = call i32 (i8*, i8*, ...) @say(i8* %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %251

96:                                               ; preds = %87
  store i8* %13, i8** %8, align 8
  %97 = load i64, i64* @OP_TEST, align 8
  %98 = load i64, i64* @op, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %96
  %101 = load i8*, i8** @basedir, align 8
  %102 = call i8* @strstr(i8* %13, i8* %101)
  %103 = icmp eq i8* %102, %13
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i8*, i8** @basedir, align 8
  %106 = call i32 @strlen(i8* %105)
  %107 = load i8*, i8** %8, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %8, align 8
  br label %110

110:                                              ; preds = %104, %100, %96
  br label %111

111:                                              ; preds = %110, %73
  %112 = call %struct.mlink* @mandoc_calloc(i32 1, i32 48)
  store %struct.mlink* %112, %struct.mlink** %6, align 8
  %113 = load i32, i32* @FORM_NONE, align 4
  %114 = load %struct.mlink*, %struct.mlink** %6, align 8
  %115 = getelementptr inbounds %struct.mlink, %struct.mlink* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 8
  %116 = load %struct.mlink*, %struct.mlink** %6, align 8
  %117 = getelementptr inbounds %struct.mlink, %struct.mlink* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @strlcpy(i8* %118, i8* %119, i32 8)
  %121 = sext i32 %120 to i64
  %122 = icmp uge i64 %121, 8
  br i1 %122, label %123, label %128

123:                                              ; preds = %111
  %124 = load i8*, i8** %8, align 8
  %125 = call i32 (i8*, i8*, ...) @say(i8* %124, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %126 = load %struct.mlink*, %struct.mlink** %6, align 8
  %127 = call i32 @free(%struct.mlink* %126)
  store i32 1, i32* %9, align 4
  br label %251

128:                                              ; preds = %111
  %129 = load i64, i64* @op, align 8
  %130 = load i64, i64* @OP_TEST, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %140, label %132

132:                                              ; preds = %128
  %133 = load i8*, i8** %8, align 8
  %134 = icmp eq i8* %133, %13
  br i1 %134, label %135, label %154

135:                                              ; preds = %132
  %136 = load i8*, i8** %8, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 47
  br i1 %139, label %140, label %154

140:                                              ; preds = %135, %128
  %141 = call i64 @strncmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = getelementptr inbounds i8, i8* %13, i64 4
  store i8* %144, i8** %8, align 8
  br label %153

145:                                              ; preds = %140
  %146 = call i8* @strstr(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  store i8* %146, i8** %8, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i8*, i8** %8, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 5
  store i8* %150, i8** %8, align 8
  br label %152

151:                                              ; preds = %145
  store i8* %13, i8** %8, align 8
  br label %152

152:                                              ; preds = %151, %148
  br label %153

153:                                              ; preds = %152, %143
  br label %154

154:                                              ; preds = %153, %135, %132
  %155 = load i8*, i8** %8, align 8
  %156 = call i8* @strchr(i8* %155, i8 signext 47)
  store i8* %156, i8** %7, align 8
  %157 = icmp ne i8* null, %156
  br i1 %157, label %158, label %203

158:                                              ; preds = %154
  %159 = load i8*, i8** %7, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %7, align 8
  store i8 0, i8* %159, align 1
  %161 = load i8*, i8** %8, align 8
  %162 = call i64 @strncmp(i8* %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 3)
  %163 = icmp eq i64 0, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %158
  %165 = load i32, i32* @FORM_SRC, align 4
  %166 = load %struct.mlink*, %struct.mlink** %6, align 8
  %167 = getelementptr inbounds %struct.mlink, %struct.mlink* %166, i32 0, i32 5
  store i32 %165, i32* %167, align 8
  %168 = load i8*, i8** %8, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 3
  %170 = load %struct.mlink*, %struct.mlink** %6, align 8
  %171 = getelementptr inbounds %struct.mlink, %struct.mlink* %170, i32 0, i32 1
  store i8* %169, i8** %171, align 8
  br label %185

172:                                              ; preds = %158
  %173 = load i8*, i8** %8, align 8
  %174 = call i64 @strncmp(i8* %173, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 3)
  %175 = icmp eq i64 0, %174
  br i1 %175, label %176, label %184

176:                                              ; preds = %172
  %177 = load i32, i32* @FORM_CAT, align 4
  %178 = load %struct.mlink*, %struct.mlink** %6, align 8
  %179 = getelementptr inbounds %struct.mlink, %struct.mlink* %178, i32 0, i32 5
  store i32 %177, i32* %179, align 8
  %180 = load i8*, i8** %8, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 3
  %182 = load %struct.mlink*, %struct.mlink** %6, align 8
  %183 = getelementptr inbounds %struct.mlink, %struct.mlink* %182, i32 0, i32 1
  store i8* %181, i8** %183, align 8
  br label %184

184:                                              ; preds = %176, %172
  br label %185

185:                                              ; preds = %184, %164
  %186 = load i8*, i8** %7, align 8
  store i8* %186, i8** %8, align 8
  %187 = load %struct.mlink*, %struct.mlink** %6, align 8
  %188 = getelementptr inbounds %struct.mlink, %struct.mlink* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = icmp ne i8* null, %189
  br i1 %190, label %191, label %202

191:                                              ; preds = %185
  %192 = load i8*, i8** %8, align 8
  %193 = call i8* @strchr(i8* %192, i8 signext 47)
  store i8* %193, i8** %7, align 8
  %194 = icmp ne i8* null, %193
  br i1 %194, label %195, label %202

195:                                              ; preds = %191
  %196 = load i8*, i8** %7, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %7, align 8
  store i8 0, i8* %196, align 1
  %198 = load i8*, i8** %8, align 8
  %199 = load %struct.mlink*, %struct.mlink** %6, align 8
  %200 = getelementptr inbounds %struct.mlink, %struct.mlink* %199, i32 0, i32 2
  store i8* %198, i8** %200, align 8
  %201 = load i8*, i8** %7, align 8
  store i8* %201, i8** %8, align 8
  br label %202

202:                                              ; preds = %195, %191, %185
  br label %203

203:                                              ; preds = %202, %154
  %204 = load i8*, i8** %8, align 8
  %205 = call i8* @strrchr(i8* %204, i8 signext 0)
  store i8* %205, i8** %7, align 8
  br label %206

206:                                              ; preds = %223, %203
  %207 = load i8*, i8** %7, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 -1
  store i8* %208, i8** %7, align 8
  %209 = load i8*, i8** %8, align 8
  %210 = icmp ugt i8* %207, %209
  br i1 %210, label %211, label %221

211:                                              ; preds = %206
  %212 = load i8*, i8** %7, align 8
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp ne i32 47, %214
  br i1 %215, label %216, label %221

216:                                              ; preds = %211
  %217 = load i8*, i8** %7, align 8
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp ne i32 46, %219
  br label %221

221:                                              ; preds = %216, %211, %206
  %222 = phi i1 [ false, %211 ], [ false, %206 ], [ %220, %216 ]
  br i1 %222, label %223, label %224

223:                                              ; preds = %221
  br label %206

224:                                              ; preds = %221
  %225 = load i8*, i8** %7, align 8
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 46, %227
  br i1 %228, label %229, label %235

229:                                              ; preds = %224
  %230 = load i8*, i8** %7, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %7, align 8
  store i8 0, i8* %230, align 1
  %232 = load i8*, i8** %7, align 8
  %233 = load %struct.mlink*, %struct.mlink** %6, align 8
  %234 = getelementptr inbounds %struct.mlink, %struct.mlink* %233, i32 0, i32 3
  store i8* %232, i8** %234, align 8
  br label %235

235:                                              ; preds = %229, %224
  %236 = load i8*, i8** %8, align 8
  %237 = load %struct.mlink*, %struct.mlink** %6, align 8
  %238 = getelementptr inbounds %struct.mlink, %struct.mlink* %237, i32 0, i32 4
  store i8* %236, i8** %238, align 8
  %239 = load i8*, i8** %8, align 8
  %240 = call i8* @strrchr(i8* %239, i8 signext 47)
  store i8* %240, i8** %7, align 8
  %241 = icmp ne i8* null, %240
  br i1 %241, label %242, label %248

242:                                              ; preds = %235
  %243 = load i8*, i8** %7, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 1
  %245 = load %struct.mlink*, %struct.mlink** %6, align 8
  %246 = getelementptr inbounds %struct.mlink, %struct.mlink* %245, i32 0, i32 4
  store i8* %244, i8** %246, align 8
  %247 = load i8*, i8** %7, align 8
  store i8 0, i8* %247, align 1
  br label %248

248:                                              ; preds = %242, %235
  %249 = load %struct.mlink*, %struct.mlink** %6, align 8
  %250 = call i32 @mlink_add(%struct.mlink* %249, %struct.stat* %5)
  store i32 0, i32* %9, align 4
  br label %251

251:                                              ; preds = %248, %123, %93, %82, %68, %49, %39, %26
  %252 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %252)
  %253 = load i32, i32* %9, align 4
  switch i32 %253, label %255 [
    i32 0, label %254
    i32 1, label %254
  ]

254:                                              ; preds = %251, %251
  ret void

255:                                              ; preds = %251
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @lstat(i8*, %struct.stat*) #2

declare dso_local i32 @say(i8*, i8*, ...) #2

declare dso_local i32* @realpath(i8*, i8*) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local %struct.mlink* @mandoc_calloc(i32, i32) #2

declare dso_local i32 @free(%struct.mlink*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @mlink_add(%struct.mlink*, %struct.stat*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
