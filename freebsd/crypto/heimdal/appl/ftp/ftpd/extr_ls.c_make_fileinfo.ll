; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ls.c_make_fileinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ls.c_make_fileinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileinfo = type { i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, %struct.stat }
%struct.stat = type { i32, i32, i64, i64, i64, i64, i32, i32, i32 }
%struct.passwd = type { i8* }
%struct.group = type { i8* }
%struct.tm = type { i32 }

@S_IXUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"--x\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-w-\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"-wx\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"r--\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"r-x\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"rw-\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"rwx\00", align 1
@__const.make_fileinfo.x = private unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)], align 16
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i64 0, align 8
@S_ISUID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@S_ISTXT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"%b %e  %Y\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"%b %e %H:%M\00", align 1
@LS_TYPE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"readlink(%s): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.fileinfo*, i32)* @make_fileinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_fileinfo(i32* %0, i8* %1, %struct.fileinfo* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fileinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat*, align 8
  %13 = alloca [8 x i8*], align 16
  %14 = alloca %struct.passwd*, align 8
  %15 = alloca %struct.group*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.tm*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.fileinfo* %2, %struct.fileinfo** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %21 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %22 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %21, i32 0, i32 12
  store %struct.stat* %22, %struct.stat** %12, align 8
  %23 = load %struct.stat*, %struct.stat** %12, align 8
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %27 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %26, i32 0, i32 11
  store i32 %25, i32* %27, align 8
  %28 = load %struct.stat*, %struct.stat** %12, align 8
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @block_convert(i32 %30)
  %32 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %33 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %32, i32 0, i32 10
  store i32 %31, i32* %33, align 4
  %34 = load %struct.stat*, %struct.stat** %12, align 8
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @S_ISDIR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %4
  %40 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %41 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  store i8 100, i8* %43, align 1
  store i32 47, i32* %11, align 4
  br label %133

44:                                               ; preds = %4
  %45 = load %struct.stat*, %struct.stat** %12, align 8
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @S_ISCHR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %52 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 99, i8* %54, align 1
  br label %132

55:                                               ; preds = %44
  %56 = load %struct.stat*, %struct.stat** %12, align 8
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @S_ISBLK(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %63 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  store i8 98, i8* %65, align 1
  br label %131

66:                                               ; preds = %55
  %67 = load %struct.stat*, %struct.stat** %12, align 8
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @S_ISREG(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %66
  %73 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %74 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  store i8 45, i8* %76, align 1
  %77 = load %struct.stat*, %struct.stat** %12, align 8
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @S_IXUSR, align 4
  %81 = load i32, i32* @S_IXGRP, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @S_IXOTH, align 4
  %84 = or i32 %82, %83
  %85 = and i32 %79, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %72
  store i32 42, i32* %11, align 4
  br label %88

88:                                               ; preds = %87, %72
  br label %130

89:                                               ; preds = %66
  %90 = load %struct.stat*, %struct.stat** %12, align 8
  %91 = getelementptr inbounds %struct.stat, %struct.stat* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @S_ISFIFO(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %97 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  store i8 112, i8* %99, align 1
  store i32 124, i32* %11, align 4
  br label %129

100:                                              ; preds = %89
  %101 = load %struct.stat*, %struct.stat** %12, align 8
  %102 = getelementptr inbounds %struct.stat, %struct.stat* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @S_ISLNK(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %108 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 0
  store i8 108, i8* %110, align 1
  store i32 64, i32* %11, align 4
  br label %128

111:                                              ; preds = %100
  %112 = load %struct.stat*, %struct.stat** %12, align 8
  %113 = getelementptr inbounds %struct.stat, %struct.stat* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @S_ISSOCK(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %119 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  store i8 115, i8* %121, align 1
  store i32 61, i32* %11, align 4
  br label %127

122:                                              ; preds = %111
  %123 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %124 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  store i8 63, i8* %126, align 1
  br label %127

127:                                              ; preds = %122, %117
  br label %128

128:                                              ; preds = %127, %106
  br label %129

129:                                              ; preds = %128, %95
  br label %130

130:                                              ; preds = %129, %88
  br label %131

131:                                              ; preds = %130, %61
  br label %132

132:                                              ; preds = %131, %50
  br label %133

133:                                              ; preds = %132, %39
  %134 = bitcast [8 x i8*]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %134, i8* align 16 bitcast ([8 x i8*]* @__const.make_fileinfo.x to i8*), i64 64, i1 false)
  %135 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %136 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 1
  %139 = load %struct.stat*, %struct.stat** %12, align 8
  %140 = getelementptr inbounds %struct.stat, %struct.stat* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @S_IRWXU, align 4
  %143 = and i32 %141, %142
  %144 = ashr i32 %143, 6
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [8 x i8*], [8 x i8*]* %13, i64 0, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @strcpy(i8* %138, i8* %147)
  %149 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %150 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 4
  %153 = load %struct.stat*, %struct.stat** %12, align 8
  %154 = getelementptr inbounds %struct.stat, %struct.stat* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @S_IRWXG, align 4
  %157 = and i32 %155, %156
  %158 = ashr i32 %157, 3
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [8 x i8*], [8 x i8*]* %13, i64 0, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @strcpy(i8* %152, i8* %161)
  %163 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %164 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 7
  %167 = load %struct.stat*, %struct.stat** %12, align 8
  %168 = getelementptr inbounds %struct.stat, %struct.stat* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = load i64, i64* @S_IRWXO, align 8
  %172 = and i64 %170, %171
  %173 = lshr i64 %172, 0
  %174 = getelementptr inbounds [8 x i8*], [8 x i8*]* %13, i64 0, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @strcpy(i8* %166, i8* %175)
  %177 = load %struct.stat*, %struct.stat** %12, align 8
  %178 = getelementptr inbounds %struct.stat, %struct.stat* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @S_ISUID, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %201

183:                                              ; preds = %133
  %184 = load %struct.stat*, %struct.stat** %12, align 8
  %185 = getelementptr inbounds %struct.stat, %struct.stat* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @S_IXUSR, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %183
  %191 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %192 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 3
  store i8 115, i8* %194, align 1
  br label %200

195:                                              ; preds = %183
  %196 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %197 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 3
  store i8 83, i8* %199, align 1
  br label %200

200:                                              ; preds = %195, %190
  br label %201

201:                                              ; preds = %200, %133
  %202 = load %struct.stat*, %struct.stat** %12, align 8
  %203 = getelementptr inbounds %struct.stat, %struct.stat* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @S_ISGID, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %226

208:                                              ; preds = %201
  %209 = load %struct.stat*, %struct.stat** %12, align 8
  %210 = getelementptr inbounds %struct.stat, %struct.stat* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @S_IXGRP, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %208
  %216 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %217 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 6
  store i8 115, i8* %219, align 1
  br label %225

220:                                              ; preds = %208
  %221 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %222 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 6
  store i8 83, i8* %224, align 1
  br label %225

225:                                              ; preds = %220, %215
  br label %226

226:                                              ; preds = %225, %201
  %227 = load %struct.stat*, %struct.stat** %12, align 8
  %228 = getelementptr inbounds %struct.stat, %struct.stat* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @S_ISTXT, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %251

233:                                              ; preds = %226
  %234 = load %struct.stat*, %struct.stat** %12, align 8
  %235 = getelementptr inbounds %struct.stat, %struct.stat* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @S_IXOTH, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %233
  %241 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %242 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %241, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 9
  store i8 116, i8* %244, align 1
  br label %250

245:                                              ; preds = %233
  %246 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %247 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 9
  store i8 84, i8* %249, align 1
  br label %250

250:                                              ; preds = %245, %240
  br label %251

251:                                              ; preds = %250, %226
  %252 = load %struct.stat*, %struct.stat** %12, align 8
  %253 = getelementptr inbounds %struct.stat, %struct.stat* %252, i32 0, i32 6
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %256 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %255, i32 0, i32 9
  store i32 %254, i32* %256, align 8
  %257 = load %struct.stat*, %struct.stat** %12, align 8
  %258 = getelementptr inbounds %struct.stat, %struct.stat* %257, i32 0, i32 5
  %259 = load i64, i64* %258, align 8
  %260 = call %struct.passwd* @getpwuid(i64 %259)
  store %struct.passwd* %260, %struct.passwd** %14, align 8
  %261 = load %struct.passwd*, %struct.passwd** %14, align 8
  %262 = icmp eq %struct.passwd* %261, null
  br i1 %262, label %263, label %276

263:                                              ; preds = %251
  %264 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %265 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %264, i32 0, i32 8
  %266 = load %struct.stat*, %struct.stat** %12, align 8
  %267 = getelementptr inbounds %struct.stat, %struct.stat* %266, i32 0, i32 5
  %268 = load i64, i64* %267, align 8
  %269 = trunc i64 %268 to i32
  %270 = call i32 (i32**, i8*, ...) @asprintf(i32** %265, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %269)
  %271 = icmp eq i32 %270, -1
  br i1 %271, label %272, label %275

272:                                              ; preds = %263
  %273 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %274 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %273, i32 0, i32 8
  store i32* null, i32** %274, align 8
  br label %275

275:                                              ; preds = %272, %263
  br label %284

276:                                              ; preds = %251
  %277 = load %struct.passwd*, %struct.passwd** %14, align 8
  %278 = getelementptr inbounds %struct.passwd, %struct.passwd* %277, i32 0, i32 0
  %279 = load i8*, i8** %278, align 8
  %280 = call i8* @strdup(i8* %279)
  %281 = bitcast i8* %280 to i32*
  %282 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %283 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %282, i32 0, i32 8
  store i32* %281, i32** %283, align 8
  br label %284

284:                                              ; preds = %276, %275
  %285 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %286 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %285, i32 0, i32 8
  %287 = load i32*, i32** %286, align 8
  %288 = icmp eq i32* %287, null
  br i1 %288, label %289, label %292

289:                                              ; preds = %284
  %290 = load i32, i32* @LOG_ERR, align 4
  %291 = call i32 @syslog(i32 %290, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %502

292:                                              ; preds = %284
  %293 = load %struct.stat*, %struct.stat** %12, align 8
  %294 = getelementptr inbounds %struct.stat, %struct.stat* %293, i32 0, i32 4
  %295 = load i64, i64* %294, align 8
  %296 = call %struct.group* @getgrgid(i64 %295)
  store %struct.group* %296, %struct.group** %15, align 8
  %297 = load %struct.group*, %struct.group** %15, align 8
  %298 = icmp eq %struct.group* %297, null
  br i1 %298, label %299, label %312

299:                                              ; preds = %292
  %300 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %301 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %300, i32 0, i32 7
  %302 = load %struct.stat*, %struct.stat** %12, align 8
  %303 = getelementptr inbounds %struct.stat, %struct.stat* %302, i32 0, i32 4
  %304 = load i64, i64* %303, align 8
  %305 = trunc i64 %304 to i32
  %306 = call i32 (i32**, i8*, ...) @asprintf(i32** %301, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %305)
  %307 = icmp eq i32 %306, -1
  br i1 %307, label %308, label %311

308:                                              ; preds = %299
  %309 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %310 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %309, i32 0, i32 7
  store i32* null, i32** %310, align 8
  br label %311

311:                                              ; preds = %308, %299
  br label %320

312:                                              ; preds = %292
  %313 = load %struct.group*, %struct.group** %15, align 8
  %314 = getelementptr inbounds %struct.group, %struct.group* %313, i32 0, i32 0
  %315 = load i8*, i8** %314, align 8
  %316 = call i8* @strdup(i8* %315)
  %317 = bitcast i8* %316 to i32*
  %318 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %319 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %318, i32 0, i32 7
  store i32* %317, i32** %319, align 8
  br label %320

320:                                              ; preds = %312, %311
  %321 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %322 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %321, i32 0, i32 7
  %323 = load i32*, i32** %322, align 8
  %324 = icmp eq i32* %323, null
  br i1 %324, label %325, label %328

325:                                              ; preds = %320
  %326 = load i32, i32* @LOG_ERR, align 4
  %327 = call i32 @syslog(i32 %326, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %502

328:                                              ; preds = %320
  %329 = load %struct.stat*, %struct.stat** %12, align 8
  %330 = getelementptr inbounds %struct.stat, %struct.stat* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = call i64 @S_ISCHR(i32 %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %340, label %334

334:                                              ; preds = %328
  %335 = load %struct.stat*, %struct.stat** %12, align 8
  %336 = getelementptr inbounds %struct.stat, %struct.stat* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = call i64 @S_ISBLK(i32 %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %374

340:                                              ; preds = %334, %328
  %341 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %342 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %341, i32 0, i32 6
  %343 = load %struct.stat*, %struct.stat** %12, align 8
  %344 = getelementptr inbounds %struct.stat, %struct.stat* %343, i32 0, i32 3
  %345 = load i64, i64* %344, align 8
  %346 = trunc i64 %345 to i32
  %347 = call i32 (i32**, i8*, ...) @asprintf(i32** %342, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %346)
  %348 = icmp eq i32 %347, -1
  br i1 %348, label %349, label %352

349:                                              ; preds = %340
  %350 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %351 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %350, i32 0, i32 6
  store i32* null, i32** %351, align 8
  br label %352

352:                                              ; preds = %349, %340
  %353 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %354 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %353, i32 0, i32 5
  %355 = call i32 (i32**, i8*, ...) @asprintf(i32** %354, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %356 = icmp eq i32 %355, -1
  br i1 %356, label %357, label %360

357:                                              ; preds = %352
  %358 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %359 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %358, i32 0, i32 5
  store i32* null, i32** %359, align 8
  br label %360

360:                                              ; preds = %357, %352
  %361 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %362 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %361, i32 0, i32 6
  %363 = load i32*, i32** %362, align 8
  %364 = icmp eq i32* %363, null
  br i1 %364, label %370, label %365

365:                                              ; preds = %360
  %366 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %367 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %366, i32 0, i32 5
  %368 = load i32*, i32** %367, align 8
  %369 = icmp eq i32* %368, null
  br i1 %369, label %370, label %373

370:                                              ; preds = %365, %360
  %371 = load i32, i32* @LOG_ERR, align 4
  %372 = call i32 @syslog(i32 %371, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %502

373:                                              ; preds = %365
  br label %386

374:                                              ; preds = %334
  %375 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %376 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %375, i32 0, i32 4
  %377 = load %struct.stat*, %struct.stat** %12, align 8
  %378 = getelementptr inbounds %struct.stat, %struct.stat* %377, i32 0, i32 2
  %379 = load i64, i64* %378, align 8
  %380 = call i32 (i32**, i8*, ...) @asprintf(i32** %376, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 %379)
  %381 = icmp eq i32 %380, -1
  br i1 %381, label %382, label %385

382:                                              ; preds = %374
  %383 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %384 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %383, i32 0, i32 4
  store i32* null, i32** %384, align 8
  br label %385

385:                                              ; preds = %382, %374
  br label %386

386:                                              ; preds = %385, %373
  %387 = call i32 @time(i32* null)
  store i32 %387, i32* %16, align 4
  %388 = load %struct.stat*, %struct.stat** %12, align 8
  %389 = getelementptr inbounds %struct.stat, %struct.stat* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  store i32 %390, i32* %17, align 4
  %391 = call %struct.tm* @localtime(i32* %17)
  store %struct.tm* %391, %struct.tm** %18, align 8
  %392 = load i32, i32* %16, align 4
  %393 = load i32, i32* %17, align 4
  %394 = sub nsw i32 %392, %393
  %395 = icmp sgt i32 %394, 15552000
  br i1 %395, label %401, label %396

396:                                              ; preds = %386
  %397 = load i32, i32* %17, align 4
  %398 = load i32, i32* %16, align 4
  %399 = sub nsw i32 %397, %398
  %400 = icmp sgt i32 %399, 15552000
  br i1 %400, label %401, label %405

401:                                              ; preds = %396, %386
  %402 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %403 = load %struct.tm*, %struct.tm** %18, align 8
  %404 = call i32 @strftime(i8* %402, i32 128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), %struct.tm* %403)
  br label %409

405:                                              ; preds = %396
  %406 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %407 = load %struct.tm*, %struct.tm** %18, align 8
  %408 = call i32 @strftime(i8* %406, i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), %struct.tm* %407)
  br label %409

409:                                              ; preds = %405, %401
  %410 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %411 = call i8* @strdup(i8* %410)
  %412 = bitcast i8* %411 to i32*
  %413 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %414 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %413, i32 0, i32 3
  store i32* %412, i32** %414, align 8
  %415 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %416 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %415, i32 0, i32 3
  %417 = load i32*, i32** %416, align 8
  %418 = icmp eq i32* %417, null
  br i1 %418, label %419, label %422

419:                                              ; preds = %409
  %420 = load i32, i32* @LOG_ERR, align 4
  %421 = call i32 @syslog(i32 %420, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %502

422:                                              ; preds = %409
  %423 = load i8*, i8** %7, align 8
  %424 = call i8* @strrchr(i8* %423, i8 signext 47)
  store i8* %424, i8** %19, align 8
  %425 = load i8*, i8** %19, align 8
  %426 = icmp ne i8* %425, null
  br i1 %426, label %427, label %430

427:                                              ; preds = %422
  %428 = load i8*, i8** %19, align 8
  %429 = getelementptr inbounds i8, i8* %428, i32 1
  store i8* %429, i8** %19, align 8
  br label %432

430:                                              ; preds = %422
  %431 = load i8*, i8** %7, align 8
  store i8* %431, i8** %19, align 8
  br label %432

432:                                              ; preds = %430, %427
  %433 = load i32, i32* %9, align 4
  %434 = load i32, i32* @LS_TYPE, align 4
  %435 = and i32 %433, %434
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %451

437:                                              ; preds = %432
  %438 = load i32, i32* %11, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %451

440:                                              ; preds = %437
  %441 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %442 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %441, i32 0, i32 2
  %443 = load i8*, i8** %19, align 8
  %444 = load i32, i32* %11, align 4
  %445 = call i32 (i32**, i8*, ...) @asprintf(i32** %442, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %443, i32 %444)
  %446 = icmp eq i32 %445, -1
  br i1 %446, label %447, label %450

447:                                              ; preds = %440
  %448 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %449 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %448, i32 0, i32 2
  store i32* null, i32** %449, align 8
  br label %450

450:                                              ; preds = %447, %440
  br label %457

451:                                              ; preds = %437, %432
  %452 = load i8*, i8** %19, align 8
  %453 = call i8* @strdup(i8* %452)
  %454 = bitcast i8* %453 to i32*
  %455 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %456 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %455, i32 0, i32 2
  store i32* %454, i32** %456, align 8
  br label %457

457:                                              ; preds = %451, %450
  %458 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %459 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %458, i32 0, i32 2
  %460 = load i32*, i32** %459, align 8
  %461 = icmp eq i32* %460, null
  br i1 %461, label %462, label %465

462:                                              ; preds = %457
  %463 = load i32, i32* @LOG_ERR, align 4
  %464 = call i32 @syslog(i32 %463, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %502

465:                                              ; preds = %457
  %466 = load %struct.stat*, %struct.stat** %12, align 8
  %467 = getelementptr inbounds %struct.stat, %struct.stat* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = call i64 @S_ISLNK(i32 %468)
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %501

471:                                              ; preds = %465
  %472 = load i8*, i8** %7, align 8
  %473 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %474 = call i32 @readlink(i8* %472, i8* %473, i32 127)
  store i32 %474, i32* %20, align 4
  %475 = load i32, i32* %20, align 4
  %476 = icmp sge i32 %475, 0
  br i1 %476, label %477, label %494

477:                                              ; preds = %471
  %478 = load i32, i32* %20, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 %479
  store i8 0, i8* %480, align 1
  %481 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %482 = call i8* @strdup(i8* %481)
  %483 = bitcast i8* %482 to i32*
  %484 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %485 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %484, i32 0, i32 1
  store i32* %483, i32** %485, align 8
  %486 = load %struct.fileinfo*, %struct.fileinfo** %8, align 8
  %487 = getelementptr inbounds %struct.fileinfo, %struct.fileinfo* %486, i32 0, i32 1
  %488 = load i32*, i32** %487, align 8
  %489 = icmp eq i32* %488, null
  br i1 %489, label %490, label %493

490:                                              ; preds = %477
  %491 = load i32, i32* @LOG_ERR, align 4
  %492 = call i32 @syslog(i32 %491, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %502

493:                                              ; preds = %477
  br label %500

494:                                              ; preds = %471
  %495 = load i32*, i32** %6, align 8
  %496 = load i8*, i8** %7, align 8
  %497 = load i32, i32* @errno, align 4
  %498 = call i32 @strerror(i32 %497)
  %499 = call i32 @sec_fprintf2(i32* %495, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* %496, i32 %498)
  br label %500

500:                                              ; preds = %494, %493
  br label %501

501:                                              ; preds = %500, %465
  store i32 0, i32* %5, align 4
  br label %502

502:                                              ; preds = %501, %490, %462, %419, %370, %325, %289
  %503 = load i32, i32* %5, align 4
  ret i32 %503
}

declare dso_local i32 @block_convert(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.passwd* @getpwuid(i64) #1

declare dso_local i32 @asprintf(i32**, i8*, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local %struct.group* @getgrgid(i64) #1

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @readlink(i8*, i8*, i32) #1

declare dso_local i32 @sec_fprintf2(i32*, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
