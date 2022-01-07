; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_install.c_install.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_install.c_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_ops = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 (%struct.preloaded_file*)* }
%struct.preloaded_file = type { i64 }

@install.buf = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"tftp\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"net0\00", align 1
@tftp_fsops = common dso_local global %struct.fs_ops zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"currdev\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"pxe0:\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"pxe0\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"disk1\00", align 1
@dosfs_fsops = common dso_local global %struct.fs_ops zeroinitializer, align 4
@servip = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@INADDR_NONE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"serverip\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"package name too long\00", align 1
@command_errmsg = common dso_local global i8* null, align 8
@CMD_ERROR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"install_package\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"cannot open package\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"vfs.root.mountfrom\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"/metatags\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [21 x i8] c"cannot load metatags\00", align 1
@inst_kernel = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"/kernel\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"cannot load kernel from package\00", align 1
@inst_loader_rc = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [11 x i8] c"/loader.rc\00", align 1
@inst_modules = common dso_local global i8** null, align 8
@.str.19 = private unnamed_addr constant [35 x i8] c"cannot load module(s) from package\00", align 1
@inst_rootfs = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [13 x i8] c"/install.iso\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"mfs_root\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [29 x i8] c"cannot load root file system\00", align 1
@file_formats = common dso_local global %struct.TYPE_5__** null, align 8
@.str.23 = private unnamed_addr constant [29 x i8] c"unable to start installation\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"%s (error %d)\00", align 1
@exclusive_file_system = common dso_local global i32* null, align 8
@.str.25 = private unnamed_addr constant [12 x i8] c"invalid URL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @install(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fs_ops*, align 8
  %5 = alloca %struct.preloaded_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @strstr(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %230

18:                                               ; preds = %1
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @strncasecmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  store %struct.fs_ops* @tftp_fsops, %struct.fs_ops** %4, align 8
  store i32 0, i32* %12, align 4
  br label %54

33:                                               ; preds = %27, %18
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @strncasecmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %36
  %42 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i8* %42, i8** %7, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  store %struct.fs_ops* null, %struct.fs_ops** %4, align 8
  br label %51

50:                                               ; preds = %45, %41
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  store %struct.fs_ops* @dosfs_fsops, %struct.fs_ops** %4, align 8
  br label %51

51:                                               ; preds = %50, %49
  store i32 1, i32* %12, align 4
  br label %53

52:                                               ; preds = %36, %33
  br label %230

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53, %32
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 3
  store i8* %56, i8** %6, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %230

62:                                               ; preds = %54
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 47
  br i1 %66, label %67, label %91

67:                                               ; preds = %62
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %230

71:                                               ; preds = %67
  %72 = load i8*, i8** %6, align 8
  %73 = call i8* @strchr(i8* %72, i8 signext 47)
  store i8* %73, i8** %3, align 8
  %74 = load i8*, i8** %3, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %230

77:                                               ; preds = %71
  %78 = load i8*, i8** %3, align 8
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** %6, align 8
  %80 = call i64 @inet_addr(i8* %79)
  store i64 %80, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @servip, i32 0, i32 0), align 8
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @servip, i32 0, i32 0), align 8
  %82 = load i32, i32* @INADDR_NONE, align 4
  %83 = call i64 @htonl(i32 %82)
  %84 = icmp eq i64 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %230

86:                                               ; preds = %77
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @servip, i32 0, i32 0), align 8
  %88 = call i8* @inet_ntoa(i64 %87)
  %89 = call i32 @setenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %88, i32 1)
  %90 = load i8*, i8** %3, align 8
  store i8 47, i8* %90, align 1
  br label %93

91:                                               ; preds = %62
  %92 = load i8*, i8** %6, align 8
  store i8* %92, i8** %3, align 8
  br label %93

93:                                               ; preds = %91, %86
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 @strlen(i8* %94)
  %96 = load i8*, i8** %3, align 8
  %97 = call i32 @strlen(i8* %96)
  %98 = add nsw i32 %95, %97
  %99 = add nsw i32 %98, 2
  %100 = sext i32 %99 to i64
  %101 = icmp ugt i64 %100, 256
  br i1 %101, label %102, label %104

102:                                              ; preds = %93
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8** @command_errmsg, align 8
  %103 = load i32, i32* @CMD_ERROR, align 4
  store i32 %103, i32* %2, align 4
  br label %232

104:                                              ; preds = %93
  %105 = load i8*, i8** %8, align 8
  %106 = load i8*, i8** %3, align 8
  %107 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @install.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %105, i8* %106)
  %108 = call i32 @setenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @install.buf, i64 0, i64 0), i32 1)
  %109 = load %struct.fs_ops*, %struct.fs_ops** %4, align 8
  %110 = call i32 @pkgfs_init(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @install.buf, i64 0, i64 0), %struct.fs_ops* %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8** @command_errmsg, align 8
  br label %223

114:                                              ; preds = %104
  %115 = call i32 (...) @unload()
  %116 = call i32 @unsetenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %117 = load i32, i32* @O_RDONLY, align 4
  %118 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, -1
  br i1 %120, label %121, label %130

121:                                              ; preds = %114
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @read_metatags(i32 %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @close(i32 %124)
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8** @command_errmsg, align 8
  br label %223

129:                                              ; preds = %121
  br label %130

130:                                              ; preds = %129, %114
  %131 = load i8*, i8** @inst_kernel, align 8
  %132 = icmp eq i8* %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  br label %136

134:                                              ; preds = %130
  %135 = load i8*, i8** @inst_kernel, align 8
  br label %136

136:                                              ; preds = %134, %133
  %137 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), %133 ], [ %135, %134 ]
  store i8* %137, i8** %6, align 8
  %138 = load i8*, i8** %6, align 8
  %139 = call i32 @mod_loadkld(i8* %138, i32 0, i32* null)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i8** @command_errmsg, align 8
  br label %223

143:                                              ; preds = %136
  %144 = load i8*, i8** @inst_loader_rc, align 8
  %145 = icmp eq i8* %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  br label %149

147:                                              ; preds = %143
  %148 = load i8*, i8** @inst_loader_rc, align 8
  br label %149

149:                                              ; preds = %147, %146
  %150 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), %146 ], [ %148, %147 ]
  store i8* %150, i8** %6, align 8
  %151 = load i8*, i8** %6, align 8
  %152 = load i32, i32* @O_RDONLY, align 4
  %153 = call i32 @open(i8* %151, i32 %152)
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %154, -1
  br i1 %155, label %156, label %166

156:                                              ; preds = %149
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @close(i32 %157)
  %159 = load i8*, i8** %6, align 8
  %160 = call i32 @inter_include(i8* %159)
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @CMD_ERROR, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  br label %223

165:                                              ; preds = %156
  br label %166

166:                                              ; preds = %165, %149
  store i32 0, i32* %11, align 4
  br label %167

167:                                              ; preds = %189, %166
  %168 = load i8**, i8*** @inst_modules, align 8
  %169 = icmp ne i8** %168, null
  br i1 %169, label %170, label %177

170:                                              ; preds = %167
  %171 = load i8**, i8*** @inst_modules, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = icmp ne i8* %175, null
  br label %177

177:                                              ; preds = %170, %167
  %178 = phi i1 [ false, %167 ], [ %176, %170 ]
  br i1 %178, label %179, label %192

179:                                              ; preds = %177
  %180 = load i8**, i8*** @inst_modules, align 8
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %180, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @mod_loadkld(i8* %184, i32 0, i32* null)
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %179
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i8** @command_errmsg, align 8
  br label %223

189:                                              ; preds = %179
  %190 = load i32, i32* %11, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %11, align 4
  br label %167

192:                                              ; preds = %177
  %193 = load i8*, i8** @inst_rootfs, align 8
  %194 = icmp eq i8* %193, null
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %198

196:                                              ; preds = %192
  %197 = load i8*, i8** @inst_rootfs, align 8
  br label %198

198:                                              ; preds = %196, %195
  %199 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), %195 ], [ %197, %196 ]
  store i8* %199, i8** %6, align 8
  %200 = load i8*, i8** %6, align 8
  %201 = call i32* @file_loadraw(i8* %200, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 1)
  %202 = icmp eq i32* %201, null
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load i32, i32* @errno, align 4
  store i32 %204, i32* %9, align 4
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i8** @command_errmsg, align 8
  br label %223

205:                                              ; preds = %198
  %206 = call i32 (...) @cleanup()
  %207 = call %struct.preloaded_file* @file_findfile(i32* null, i32* null)
  store %struct.preloaded_file* %207, %struct.preloaded_file** %5, align 8
  %208 = load %struct.preloaded_file*, %struct.preloaded_file** %5, align 8
  %209 = icmp ne %struct.preloaded_file* %208, null
  br i1 %209, label %210, label %221

210:                                              ; preds = %205
  %211 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @file_formats, align 8
  %212 = load %struct.preloaded_file*, %struct.preloaded_file** %5, align 8
  %213 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %211, i64 %214
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 0
  %218 = load i32 (%struct.preloaded_file*)*, i32 (%struct.preloaded_file*)** %217, align 8
  %219 = load %struct.preloaded_file*, %struct.preloaded_file** %5, align 8
  %220 = call i32 %218(%struct.preloaded_file* %219)
  br label %221

221:                                              ; preds = %210, %205
  %222 = load i32, i32* @CMD_ERROR, align 4
  store i32 %222, i32* %9, align 4
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i8** @command_errmsg, align 8
  br label %223

223:                                              ; preds = %221, %203, %188, %164, %142, %128, %113
  %224 = load i8*, i8** @command_errmsg, align 8
  %225 = load i32, i32* %9, align 4
  %226 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @install.buf, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8* %224, i32 %225)
  %227 = call i32 (...) @cleanup()
  %228 = call i32 (...) @unload()
  store i32* null, i32** @exclusive_file_system, align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @install.buf, i64 0, i64 0), i8** @command_errmsg, align 8
  %229 = load i32, i32* @CMD_ERROR, align 4
  store i32 %229, i32* %2, align 4
  br label %232

230:                                              ; preds = %85, %76, %70, %61, %52, %17
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i8** @command_errmsg, align 8
  %231 = load i32, i32* @CMD_ERROR, align 4
  store i32 %231, i32* %2, align 4
  br label %232

232:                                              ; preds = %230, %223, %102
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @inet_addr(i8*) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i8* @inet_ntoa(i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @pkgfs_init(i8*, %struct.fs_ops*) #1

declare dso_local i32 @unload(...) #1

declare dso_local i32 @unsetenv(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read_metatags(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @mod_loadkld(i8*, i32, i32*) #1

declare dso_local i32 @inter_include(i8*) #1

declare dso_local i32* @file_loadraw(i8*, i8*, i32) #1

declare dso_local i32 @cleanup(...) #1

declare dso_local %struct.preloaded_file* @file_findfile(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
