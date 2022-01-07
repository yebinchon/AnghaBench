; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_parse_dispatch_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_parse_dispatch_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sftp_conn = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i64, i64 }
%struct.TYPE_10__ = type { i8**, i64 }

@PATH_MAX = common dso_local global i32 0, align 4
@GLOB_NOCHECK = common dso_local global i32 0, align 4
@interrupted = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Removing %s\0A\00", align 1
@SSH2_FILEXFER_ATTR_PERMISSIONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Can't change directory: Can't check target\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Can't change directory: \22%s\22 is not a directory\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Couldn't change local directory to \22%s\22: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Couldn't create local directory \22%s\22: %s\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Local umask: %03lo\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Changing mode on %s\0A\00", align 1
@SSH2_FILEXFER_ATTR_UIDGID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [48 x i8] c"Can't get current ownership of remote file \22%s\22\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Changing owner on %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Changing group on %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Remote working directory: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Couldn't get local cwd: %s\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Local working directory: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"SFTP protocol version %u\0A\00", align 1
@showprogress = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [24 x i8] c"Progress meter enabled\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Progress meter disabled\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"%d is not implemented\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sftp_conn*, i8*, i8**, i8*, i32)* @parse_dispatch_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_dispatch_command(%struct.sftp_conn* %0, i8* %1, i8** %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sftp_conn*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_11__, align 8
  %28 = alloca %struct.TYPE_11__*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_10__, align 8
  %33 = alloca i32, align 4
  store %struct.sftp_conn* %0, %struct.sftp_conn** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i64 0, i64* %26, align 8
  %34 = load i32, i32* @PATH_MAX, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %29, align 8
  %37 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %30, align 8
  store i32 0, i32* %31, align 4
  store i8* null, i8** %13, align 8
  store i8* null, i8** %12, align 8
  %38 = call i32 @parse_args(i8** %8, i32* %15, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, i64* %26, i8** %12, i8** %13)
  store i32 %38, i32* %24, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %41, %5
  %43 = call i32 @memset(%struct.TYPE_10__* %32, i32 0, i32 16)
  %44 = load i32, i32* %24, align 4
  switch i32 %44, label %544 [
    i32 0, label %45
    i32 -1, label %46
    i32 135, label %47
    i32 149, label %48
    i32 133, label %59
    i32 138, label %60
    i32 134, label %71
    i32 129, label %85
    i32 146, label %86
    i32 132, label %107
    i32 140, label %161
    i32 131, label %175
    i32 154, label %183
    i32 142, label %240
    i32 150, label %269
    i32 147, label %286
    i32 144, label %312
    i32 145, label %322
    i32 130, label %325
    i32 141, label %328
    i32 152, label %333
    i32 151, label %395
    i32 153, label %395
    i32 137, label %511
    i32 143, label %515
    i32 136, label %525
    i32 148, label %526
    i32 128, label %528
    i32 139, label %532
  ]

45:                                               ; preds = %42
  br label %547

46:                                               ; preds = %42
  store i32 -1, i32* %31, align 4
  br label %547

47:                                               ; preds = %42
  store i32 1, i32* %16, align 4
  br label %48

48:                                               ; preds = %42, %47
  %49 = load %struct.sftp_conn*, %struct.sftp_conn** %7, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = load i8**, i8*** %9, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* %21, align 4
  %55 = load i32, i32* %22, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %17, align 4
  %58 = call i32 @process_get(%struct.sftp_conn* %49, i8* %50, i8* %51, i8* %53, i32 %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %31, align 4
  br label %547

59:                                               ; preds = %42
  store i32 1, i32* %16, align 4
  br label %60

60:                                               ; preds = %42, %59
  %61 = load %struct.sftp_conn*, %struct.sftp_conn** %7, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = load i8**, i8*** %9, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %21, align 4
  %67 = load i32, i32* %22, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %17, align 4
  %70 = call i32 @process_put(%struct.sftp_conn* %61, i8* %62, i8* %63, i8* %65, i32 %66, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %31, align 4
  br label %547

71:                                               ; preds = %42
  %72 = load i8*, i8** %12, align 8
  %73 = load i8**, i8*** %9, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = call i8* @make_absolute(i8* %72, i8* %74)
  store i8* %75, i8** %12, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = load i8**, i8*** %9, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = call i8* @make_absolute(i8* %76, i8* %78)
  store i8* %79, i8** %13, align 8
  %80 = load %struct.sftp_conn*, %struct.sftp_conn** %7, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = load i32, i32* %20, align 4
  %84 = call i32 @do_rename(%struct.sftp_conn* %80, i8* %81, i8* %82, i32 %83)
  store i32 %84, i32* %31, align 4
  br label %547

85:                                               ; preds = %42
  store i32 1, i32* %23, align 4
  br label %86

86:                                               ; preds = %42, %85
  %87 = load i32, i32* %23, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = load i8*, i8** %12, align 8
  %91 = load i8**, i8*** %9, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = call i8* @make_absolute(i8* %90, i8* %92)
  store i8* %93, i8** %12, align 8
  br label %94

94:                                               ; preds = %89, %86
  %95 = load i8*, i8** %13, align 8
  %96 = load i8**, i8*** %9, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = call i8* @make_absolute(i8* %95, i8* %97)
  store i8* %98, i8** %13, align 8
  %99 = load i32, i32* %23, align 4
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 (%struct.sftp_conn*, i8*, i8*)* @do_symlink, i32 (%struct.sftp_conn*, i8*, i8*)* @do_hardlink
  %103 = load %struct.sftp_conn*, %struct.sftp_conn** %7, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = call i32 %102(%struct.sftp_conn* %103, i8* %104, i8* %105)
  store i32 %106, i32* %31, align 4
  br label %547

107:                                              ; preds = %42
  %108 = load i8*, i8** %12, align 8
  %109 = load i8**, i8*** %9, align 8
  %110 = load i8*, i8** %109, align 8
  %111 = call i8* @make_absolute(i8* %108, i8* %110)
  store i8* %111, i8** %12, align 8
  %112 = load %struct.sftp_conn*, %struct.sftp_conn** %7, align 8
  %113 = load i8*, i8** %12, align 8
  %114 = load i32, i32* @GLOB_NOCHECK, align 4
  %115 = call i32 @remote_glob(%struct.sftp_conn* %112, i8* %113, i32 %114, i32* null, %struct.TYPE_10__* %32)
  store i32 0, i32* %25, align 4
  br label %116

116:                                              ; preds = %157, %107
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %118 = load i8**, i8*** %117, align 8
  %119 = load i32, i32* %25, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %116
  %125 = load i32, i32* @interrupted, align 4
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  br label %128

128:                                              ; preds = %124, %116
  %129 = phi i1 [ false, %116 ], [ %127, %124 ]
  br i1 %129, label %130, label %160

130:                                              ; preds = %128
  %131 = load i32, i32* @quiet, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %141, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %135 = load i8**, i8*** %134, align 8
  %136 = load i32, i32* %25, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @mprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %133, %130
  %142 = load %struct.sftp_conn*, %struct.sftp_conn** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %144 = load i8**, i8*** %143, align 8
  %145 = load i32, i32* %25, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @do_rm(%struct.sftp_conn* %142, i8* %148)
  store i32 %149, i32* %31, align 4
  %150 = load i32, i32* %31, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %141
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  br label %160

156:                                              ; preds = %152, %141
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %25, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %25, align 4
  br label %116

160:                                              ; preds = %155, %128
  br label %547

161:                                              ; preds = %42
  %162 = load i8*, i8** %12, align 8
  %163 = load i8**, i8*** %9, align 8
  %164 = load i8*, i8** %163, align 8
  %165 = call i8* @make_absolute(i8* %162, i8* %164)
  store i8* %165, i8** %12, align 8
  %166 = call i32 @attrib_clear(%struct.TYPE_11__* %27)
  %167 = load i32, i32* @SSH2_FILEXFER_ATTR_PERMISSIONS, align 4
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %167
  store i32 %170, i32* %168, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  store i32 511, i32* %171, align 4
  %172 = load %struct.sftp_conn*, %struct.sftp_conn** %7, align 8
  %173 = load i8*, i8** %12, align 8
  %174 = call i32 @do_mkdir(%struct.sftp_conn* %172, i8* %173, %struct.TYPE_11__* %27, i32 1)
  store i32 %174, i32* %31, align 4
  br label %547

175:                                              ; preds = %42
  %176 = load i8*, i8** %12, align 8
  %177 = load i8**, i8*** %9, align 8
  %178 = load i8*, i8** %177, align 8
  %179 = call i8* @make_absolute(i8* %176, i8* %178)
  store i8* %179, i8** %12, align 8
  %180 = load %struct.sftp_conn*, %struct.sftp_conn** %7, align 8
  %181 = load i8*, i8** %12, align 8
  %182 = call i32 @do_rmdir(%struct.sftp_conn* %180, i8* %181)
  store i32 %182, i32* %31, align 4
  br label %547

183:                                              ; preds = %42
  %184 = load i8*, i8** %12, align 8
  %185 = icmp eq i8* %184, null
  br i1 %185, label %191, label %186

186:                                              ; preds = %183
  %187 = load i8*, i8** %12, align 8
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %186, %183
  %192 = load i8*, i8** %10, align 8
  %193 = call i8* @xstrdup(i8* %192)
  store i8* %193, i8** %12, align 8
  br label %194

194:                                              ; preds = %191, %186
  %195 = load i8*, i8** %12, align 8
  %196 = load i8**, i8*** %9, align 8
  %197 = load i8*, i8** %196, align 8
  %198 = call i8* @make_absolute(i8* %195, i8* %197)
  store i8* %198, i8** %12, align 8
  %199 = load %struct.sftp_conn*, %struct.sftp_conn** %7, align 8
  %200 = load i8*, i8** %12, align 8
  %201 = call i8* @do_realpath(%struct.sftp_conn* %199, i8* %200)
  store i8* %201, i8** %14, align 8
  %202 = icmp eq i8* %201, null
  br i1 %202, label %203, label %204

203:                                              ; preds = %194
  store i32 1, i32* %31, align 4
  br label %547

204:                                              ; preds = %194
  %205 = load %struct.sftp_conn*, %struct.sftp_conn** %7, align 8
  %206 = load i8*, i8** %14, align 8
  %207 = call %struct.TYPE_11__* @do_stat(%struct.sftp_conn* %205, i8* %206, i32 0)
  store %struct.TYPE_11__* %207, %struct.TYPE_11__** %28, align 8
  %208 = icmp eq %struct.TYPE_11__* %207, null
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load i8*, i8** %14, align 8
  %211 = call i32 @free(i8* %210)
  store i32 1, i32* %31, align 4
  br label %547

212:                                              ; preds = %204
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @SSH2_FILEXFER_ATTR_PERMISSIONS, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %212
  %220 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %221 = load i8*, i8** %14, align 8
  %222 = call i32 @free(i8* %221)
  store i32 1, i32* %31, align 4
  br label %547

223:                                              ; preds = %212
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @S_ISDIR(i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %234, label %229

229:                                              ; preds = %223
  %230 = load i8*, i8** %14, align 8
  %231 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %230)
  %232 = load i8*, i8** %14, align 8
  %233 = call i32 @free(i8* %232)
  store i32 1, i32* %31, align 4
  br label %547

234:                                              ; preds = %223
  %235 = load i8**, i8*** %9, align 8
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 @free(i8* %236)
  %238 = load i8*, i8** %14, align 8
  %239 = load i8**, i8*** %9, align 8
  store i8* %238, i8** %239, align 8
  br label %547

240:                                              ; preds = %42
  %241 = load i8*, i8** %12, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %251, label %243

243:                                              ; preds = %240
  %244 = load %struct.sftp_conn*, %struct.sftp_conn** %7, align 8
  %245 = load i8**, i8*** %9, align 8
  %246 = load i8*, i8** %245, align 8
  %247 = load i8**, i8*** %9, align 8
  %248 = load i8*, i8** %247, align 8
  %249 = load i32, i32* %20, align 4
  %250 = call i32 @do_ls_dir(%struct.sftp_conn* %244, i8* %246, i8* %248, i32 %249)
  br label %547

251:                                              ; preds = %240
  store i8* null, i8** %14, align 8
  %252 = load i8*, i8** %12, align 8
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp ne i32 %254, 47
  br i1 %255, label %256, label %259

256:                                              ; preds = %251
  %257 = load i8**, i8*** %9, align 8
  %258 = load i8*, i8** %257, align 8
  store i8* %258, i8** %14, align 8
  br label %259

259:                                              ; preds = %256, %251
  %260 = load i8*, i8** %12, align 8
  %261 = load i8**, i8*** %9, align 8
  %262 = load i8*, i8** %261, align 8
  %263 = call i8* @make_absolute(i8* %260, i8* %262)
  store i8* %263, i8** %12, align 8
  %264 = load %struct.sftp_conn*, %struct.sftp_conn** %7, align 8
  %265 = load i8*, i8** %12, align 8
  %266 = load i8*, i8** %14, align 8
  %267 = load i32, i32* %20, align 4
  %268 = call i32 @do_globbed_ls(%struct.sftp_conn* %264, i8* %265, i8* %266, i32 %267)
  store i32 %268, i32* %31, align 4
  br label %547

269:                                              ; preds = %42
  %270 = load i8*, i8** %12, align 8
  %271 = icmp eq i8* %270, null
  br i1 %271, label %272, label %276

272:                                              ; preds = %269
  %273 = load i8**, i8*** %9, align 8
  %274 = load i8*, i8** %273, align 8
  %275 = call i8* @xstrdup(i8* %274)
  store i8* %275, i8** %12, align 8
  br label %276

276:                                              ; preds = %272, %269
  %277 = load i8*, i8** %12, align 8
  %278 = load i8**, i8*** %9, align 8
  %279 = load i8*, i8** %278, align 8
  %280 = call i8* @make_absolute(i8* %277, i8* %279)
  store i8* %280, i8** %12, align 8
  %281 = load %struct.sftp_conn*, %struct.sftp_conn** %7, align 8
  %282 = load i8*, i8** %12, align 8
  %283 = load i32, i32* %18, align 4
  %284 = load i32, i32* %19, align 4
  %285 = call i32 @do_df(%struct.sftp_conn* %281, i8* %282, i32 %283, i32 %284)
  store i32 %285, i32* %31, align 4
  br label %547

286:                                              ; preds = %42
  %287 = load i8*, i8** %12, align 8
  %288 = icmp eq i8* %287, null
  br i1 %288, label %294, label %289

289:                                              ; preds = %286
  %290 = load i8*, i8** %12, align 8
  %291 = load i8, i8* %290, align 1
  %292 = sext i8 %291 to i32
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %289, %286
  %295 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %295, i8** %12, align 8
  br label %296

296:                                              ; preds = %294, %289
  %297 = load i8*, i8** %12, align 8
  %298 = call i32 (...) @getuid()
  %299 = call i8* @tilde_expand_filename(i8* %297, i32 %298)
  store i8* %299, i8** %14, align 8
  %300 = load i8*, i8** %12, align 8
  %301 = call i32 @free(i8* %300)
  %302 = load i8*, i8** %14, align 8
  store i8* %302, i8** %12, align 8
  %303 = load i8*, i8** %12, align 8
  %304 = call i32 @chdir(i8* %303)
  %305 = icmp eq i32 %304, -1
  br i1 %305, label %306, label %311

306:                                              ; preds = %296
  %307 = load i8*, i8** %12, align 8
  %308 = load i32, i32* @errno, align 4
  %309 = call i8* @strerror(i32 %308)
  %310 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %307, i8* %309)
  store i32 1, i32* %31, align 4
  br label %311

311:                                              ; preds = %306, %296
  br label %547

312:                                              ; preds = %42
  %313 = load i8*, i8** %12, align 8
  %314 = call i32 @mkdir(i8* %313, i32 511)
  %315 = icmp eq i32 %314, -1
  br i1 %315, label %316, label %321

316:                                              ; preds = %312
  %317 = load i8*, i8** %12, align 8
  %318 = load i32, i32* @errno, align 4
  %319 = call i8* @strerror(i32 %318)
  %320 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %317, i8* %319)
  store i32 1, i32* %31, align 4
  br label %321

321:                                              ; preds = %316, %312
  br label %547

322:                                              ; preds = %42
  %323 = load i8*, i8** %8, align 8
  %324 = call i32 @local_do_ls(i8* %323)
  br label %547

325:                                              ; preds = %42
  %326 = load i8*, i8** %8, align 8
  %327 = call i32 @local_do_shell(i8* %326)
  br label %547

328:                                              ; preds = %42
  %329 = load i64, i64* %26, align 8
  %330 = call i32 @umask(i64 %329)
  %331 = load i64, i64* %26, align 8
  %332 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 %331)
  br label %547

333:                                              ; preds = %42
  %334 = load i8*, i8** %12, align 8
  %335 = load i8**, i8*** %9, align 8
  %336 = load i8*, i8** %335, align 8
  %337 = call i8* @make_absolute(i8* %334, i8* %336)
  store i8* %337, i8** %12, align 8
  %338 = call i32 @attrib_clear(%struct.TYPE_11__* %27)
  %339 = load i32, i32* @SSH2_FILEXFER_ATTR_PERMISSIONS, align 4
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = or i32 %341, %339
  store i32 %342, i32* %340, align 8
  %343 = load i64, i64* %26, align 8
  %344 = trunc i64 %343 to i32
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  store i32 %344, i32* %345, align 4
  %346 = load %struct.sftp_conn*, %struct.sftp_conn** %7, align 8
  %347 = load i8*, i8** %12, align 8
  %348 = load i32, i32* @GLOB_NOCHECK, align 4
  %349 = call i32 @remote_glob(%struct.sftp_conn* %346, i8* %347, i32 %348, i32* null, %struct.TYPE_10__* %32)
  store i32 0, i32* %25, align 4
  br label %350

350:                                              ; preds = %391, %333
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %352 = load i8**, i8*** %351, align 8
  %353 = load i32, i32* %25, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i8*, i8** %352, i64 %354
  %356 = load i8*, i8** %355, align 8
  %357 = icmp ne i8* %356, null
  br i1 %357, label %358, label %362

358:                                              ; preds = %350
  %359 = load i32, i32* @interrupted, align 4
  %360 = icmp ne i32 %359, 0
  %361 = xor i1 %360, true
  br label %362

362:                                              ; preds = %358, %350
  %363 = phi i1 [ false, %350 ], [ %361, %358 ]
  br i1 %363, label %364, label %394

364:                                              ; preds = %362
  %365 = load i32, i32* @quiet, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %375, label %367

367:                                              ; preds = %364
  %368 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %369 = load i8**, i8*** %368, align 8
  %370 = load i32, i32* %25, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8*, i8** %369, i64 %371
  %373 = load i8*, i8** %372, align 8
  %374 = call i32 @mprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %373)
  br label %375

375:                                              ; preds = %367, %364
  %376 = load %struct.sftp_conn*, %struct.sftp_conn** %7, align 8
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %378 = load i8**, i8*** %377, align 8
  %379 = load i32, i32* %25, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i8*, i8** %378, i64 %380
  %382 = load i8*, i8** %381, align 8
  %383 = call i32 @do_setstat(%struct.sftp_conn* %376, i8* %382, %struct.TYPE_11__* %27)
  store i32 %383, i32* %31, align 4
  %384 = load i32, i32* %31, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %375
  %387 = load i32, i32* %11, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %390

389:                                              ; preds = %386
  br label %394

390:                                              ; preds = %386, %375
  br label %391

391:                                              ; preds = %390
  %392 = load i32, i32* %25, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %25, align 4
  br label %350

394:                                              ; preds = %389, %362
  br label %547

395:                                              ; preds = %42, %42
  %396 = load i8*, i8** %12, align 8
  %397 = load i8**, i8*** %9, align 8
  %398 = load i8*, i8** %397, align 8
  %399 = call i8* @make_absolute(i8* %396, i8* %398)
  store i8* %399, i8** %12, align 8
  %400 = load %struct.sftp_conn*, %struct.sftp_conn** %7, align 8
  %401 = load i8*, i8** %12, align 8
  %402 = load i32, i32* @GLOB_NOCHECK, align 4
  %403 = call i32 @remote_glob(%struct.sftp_conn* %400, i8* %401, i32 %402, i32* null, %struct.TYPE_10__* %32)
  store i32 0, i32* %25, align 4
  br label %404

404:                                              ; preds = %507, %395
  %405 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %406 = load i8**, i8*** %405, align 8
  %407 = load i32, i32* %25, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i8*, i8** %406, i64 %408
  %410 = load i8*, i8** %409, align 8
  %411 = icmp ne i8* %410, null
  br i1 %411, label %412, label %416

412:                                              ; preds = %404
  %413 = load i32, i32* @interrupted, align 4
  %414 = icmp ne i32 %413, 0
  %415 = xor i1 %414, true
  br label %416

416:                                              ; preds = %412, %404
  %417 = phi i1 [ false, %404 ], [ %415, %412 ]
  br i1 %417, label %418, label %510

418:                                              ; preds = %416
  %419 = load %struct.sftp_conn*, %struct.sftp_conn** %7, align 8
  %420 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %421 = load i8**, i8*** %420, align 8
  %422 = load i32, i32* %25, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i8*, i8** %421, i64 %423
  %425 = load i8*, i8** %424, align 8
  %426 = call %struct.TYPE_11__* @do_stat(%struct.sftp_conn* %419, i8* %425, i32 0)
  store %struct.TYPE_11__* %426, %struct.TYPE_11__** %28, align 8
  %427 = icmp ne %struct.TYPE_11__* %426, null
  br i1 %427, label %433, label %428

428:                                              ; preds = %418
  %429 = load i32, i32* %11, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %432

431:                                              ; preds = %428
  store i32 -1, i32* %31, align 4
  br label %510

432:                                              ; preds = %428
  br label %507

433:                                              ; preds = %418
  %434 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %435 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = load i32, i32* @SSH2_FILEXFER_ATTR_UIDGID, align 4
  %438 = and i32 %436, %437
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %452, label %440

440:                                              ; preds = %433
  %441 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %442 = load i8**, i8*** %441, align 8
  %443 = load i32, i32* %25, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i8*, i8** %442, i64 %444
  %446 = load i8*, i8** %445, align 8
  %447 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8* %446)
  %448 = load i32, i32* %11, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %451

450:                                              ; preds = %440
  store i32 -1, i32* %31, align 4
  br label %510

451:                                              ; preds = %440
  br label %507

452:                                              ; preds = %433
  %453 = load i32, i32* @SSH2_FILEXFER_ATTR_UIDGID, align 4
  %454 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %455 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = and i32 %456, %453
  store i32 %457, i32* %455, align 8
  %458 = load i32, i32* %24, align 4
  %459 = icmp eq i32 %458, 151
  br i1 %459, label %460, label %475

460:                                              ; preds = %452
  %461 = load i32, i32* @quiet, align 4
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %471, label %463

463:                                              ; preds = %460
  %464 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %465 = load i8**, i8*** %464, align 8
  %466 = load i32, i32* %25, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i8*, i8** %465, i64 %467
  %469 = load i8*, i8** %468, align 8
  %470 = call i32 @mprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %469)
  br label %471

471:                                              ; preds = %463, %460
  %472 = load i64, i64* %26, align 8
  %473 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %474 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %473, i32 0, i32 2
  store i64 %472, i64* %474, align 8
  br label %490

475:                                              ; preds = %452
  %476 = load i32, i32* @quiet, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %486, label %478

478:                                              ; preds = %475
  %479 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %480 = load i8**, i8*** %479, align 8
  %481 = load i32, i32* %25, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i8*, i8** %480, i64 %482
  %484 = load i8*, i8** %483, align 8
  %485 = call i32 @mprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %484)
  br label %486

486:                                              ; preds = %478, %475
  %487 = load i64, i64* %26, align 8
  %488 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %489 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %488, i32 0, i32 3
  store i64 %487, i64* %489, align 8
  br label %490

490:                                              ; preds = %486, %471
  %491 = load %struct.sftp_conn*, %struct.sftp_conn** %7, align 8
  %492 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %493 = load i8**, i8*** %492, align 8
  %494 = load i32, i32* %25, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i8*, i8** %493, i64 %495
  %497 = load i8*, i8** %496, align 8
  %498 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %499 = call i32 @do_setstat(%struct.sftp_conn* %491, i8* %497, %struct.TYPE_11__* %498)
  store i32 %499, i32* %31, align 4
  %500 = load i32, i32* %31, align 4
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %506

502:                                              ; preds = %490
  %503 = load i32, i32* %11, align 4
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %506

505:                                              ; preds = %502
  br label %510

506:                                              ; preds = %502, %490
  br label %507

507:                                              ; preds = %506, %451, %432
  %508 = load i32, i32* %25, align 4
  %509 = add nsw i32 %508, 1
  store i32 %509, i32* %25, align 4
  br label %404

510:                                              ; preds = %505, %450, %431, %416
  br label %547

511:                                              ; preds = %42
  %512 = load i8**, i8*** %9, align 8
  %513 = load i8*, i8** %512, align 8
  %514 = call i32 @mprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i8* %513)
  br label %547

515:                                              ; preds = %42
  %516 = trunc i64 %35 to i32
  %517 = call i32 @getcwd(i8* %37, i32 %516)
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %523, label %519

519:                                              ; preds = %515
  %520 = load i32, i32* @errno, align 4
  %521 = call i8* @strerror(i32 %520)
  %522 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %521)
  store i32 -1, i32* %31, align 4
  br label %547

523:                                              ; preds = %515
  %524 = call i32 @mprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i8* %37)
  br label %547

525:                                              ; preds = %42
  br label %547

526:                                              ; preds = %42
  %527 = call i32 (...) @help()
  br label %547

528:                                              ; preds = %42
  %529 = load %struct.sftp_conn*, %struct.sftp_conn** %7, align 8
  %530 = call i32 @sftp_proto_version(%struct.sftp_conn* %529)
  %531 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %530)
  br label %547

532:                                              ; preds = %42
  %533 = load i32, i32* @showprogress, align 4
  %534 = icmp ne i32 %533, 0
  %535 = xor i1 %534, true
  %536 = zext i1 %535 to i32
  store i32 %536, i32* @showprogress, align 4
  %537 = load i32, i32* @showprogress, align 4
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %541

539:                                              ; preds = %532
  %540 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  br label %543

541:                                              ; preds = %532
  %542 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  br label %543

543:                                              ; preds = %541, %539
  br label %547

544:                                              ; preds = %42
  %545 = load i32, i32* %24, align 4
  %546 = call i32 @fatal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 %545)
  br label %547

547:                                              ; preds = %544, %543, %528, %526, %525, %523, %519, %511, %510, %394, %328, %325, %322, %321, %311, %276, %259, %243, %234, %229, %219, %209, %203, %175, %161, %160, %94, %71, %60, %48, %46, %45
  %548 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %549 = load i64, i64* %548, align 8
  %550 = icmp ne i64 %549, 0
  br i1 %550, label %551, label %553

551:                                              ; preds = %547
  %552 = call i32 @globfree(%struct.TYPE_10__* %32)
  br label %553

553:                                              ; preds = %551, %547
  %554 = load i8*, i8** %12, align 8
  %555 = call i32 @free(i8* %554)
  %556 = load i8*, i8** %13, align 8
  %557 = call i32 @free(i8* %556)
  %558 = load i32, i32* %11, align 4
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %564

560:                                              ; preds = %553
  %561 = load i32, i32* %31, align 4
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %564

563:                                              ; preds = %560
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %33, align 4
  br label %570

564:                                              ; preds = %560, %553
  %565 = load i32, i32* %24, align 4
  %566 = icmp eq i32 %565, 136
  br i1 %566, label %567, label %568

567:                                              ; preds = %564
  store i32 1, i32* %6, align 4
  store i32 1, i32* %33, align 4
  br label %570

568:                                              ; preds = %564
  br label %569

569:                                              ; preds = %568
  store i32 0, i32* %6, align 4
  store i32 1, i32* %33, align 4
  br label %570

570:                                              ; preds = %569, %567, %563
  %571 = load i8*, i8** %29, align 8
  call void @llvm.stackrestore(i8* %571)
  %572 = load i32, i32* %6, align 4
  ret i32 %572
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @parse_args(i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i8**, i8**) #2

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @process_get(%struct.sftp_conn*, i8*, i8*, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @process_put(%struct.sftp_conn*, i8*, i8*, i8*, i32, i32, i32, i32) #2

declare dso_local i8* @make_absolute(i8*, i8*) #2

declare dso_local i32 @do_rename(%struct.sftp_conn*, i8*, i8*, i32) #2

declare dso_local i32 @do_symlink(%struct.sftp_conn*, i8*, i8*) #2

declare dso_local i32 @do_hardlink(%struct.sftp_conn*, i8*, i8*) #2

declare dso_local i32 @remote_glob(%struct.sftp_conn*, i8*, i32, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @mprintf(i8*, i8*) #2

declare dso_local i32 @do_rm(%struct.sftp_conn*, i8*) #2

declare dso_local i32 @attrib_clear(%struct.TYPE_11__*) #2

declare dso_local i32 @do_mkdir(%struct.sftp_conn*, i8*, %struct.TYPE_11__*, i32) #2

declare dso_local i32 @do_rmdir(%struct.sftp_conn*, i8*) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i8* @do_realpath(%struct.sftp_conn*, i8*) #2

declare dso_local %struct.TYPE_11__* @do_stat(%struct.sftp_conn*, i8*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @error(i8*, ...) #2

declare dso_local i32 @S_ISDIR(i32) #2

declare dso_local i32 @do_ls_dir(%struct.sftp_conn*, i8*, i8*, i32) #2

declare dso_local i32 @do_globbed_ls(%struct.sftp_conn*, i8*, i8*, i32) #2

declare dso_local i32 @do_df(%struct.sftp_conn*, i8*, i32, i32) #2

declare dso_local i8* @tilde_expand_filename(i8*, i32) #2

declare dso_local i32 @getuid(...) #2

declare dso_local i32 @chdir(i8*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @mkdir(i8*, i32) #2

declare dso_local i32 @local_do_ls(i8*) #2

declare dso_local i32 @local_do_shell(i8*) #2

declare dso_local i32 @umask(i64) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @do_setstat(%struct.sftp_conn*, i8*, %struct.TYPE_11__*) #2

declare dso_local i32 @getcwd(i8*, i32) #2

declare dso_local i32 @help(...) #2

declare dso_local i32 @sftp_proto_version(%struct.sftp_conn*) #2

declare dso_local i32 @fatal(i8*, i32) #2

declare dso_local i32 @globfree(%struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
