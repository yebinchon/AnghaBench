; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_low_level.c_read_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_low_level.c_read_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32, i8*, %struct.TYPE_7__, i32, i8*, i8*, i32, i32 }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_8__ = type { i64, i8* }

@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Invalid changes line in rev-file\00", align 1
@svn_node_unknown = common dso_local global i32 0, align 4
@SVN_FS_X__KIND_FILE = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@SVN_FS_X__KIND_DIR = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i32 0, align 4
@ACTION_MODIFY = common dso_local global i32 0, align 4
@svn_fs_path_change_modify = common dso_local global i32 0, align 4
@ACTION_ADD = common dso_local global i32 0, align 4
@svn_fs_path_change_add = common dso_local global i32 0, align 4
@ACTION_DELETE = common dso_local global i32 0, align 4
@svn_fs_path_change_delete = common dso_local global i32 0, align 4
@ACTION_REPLACE = common dso_local global i32 0, align 4
@svn_fs_path_change_replace = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Invalid change kind in rev file\00", align 1
@FLAG_TRUE = common dso_local global i32 0, align 4
@FLAG_FALSE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"Invalid text-mod flag in rev-file\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Invalid prop-mod flag in rev-file\00", align 1
@svn_tristate_true = common dso_local global i32 0, align 4
@svn_tristate_false = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"Invalid mergeinfo-mod flag in rev-file\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Invalid path in changes line\00", align 1
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"Invalid copy-from path in changes line\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__**, i32*, i32*, i32*)* @read_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_change(%struct.TYPE_9__** %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i8*, i8** @TRUE, align 8
  store i8* %16, i8** %11, align 8
  %17 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %17, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @svn_stream_readline(i32* %18, %struct.TYPE_8__** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %11, i32* %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24, %4
  %30 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %30, i32** %5, align 8
  br label %288

31:                                               ; preds = %24
  %32 = load i32*, i32** %8, align 8
  %33 = call %struct.TYPE_9__* @apr_pcalloc(i32* %32, i32 72)
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %12, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %14, align 8
  %37 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %14)
  store i8* %37, i8** %13, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %42 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32* @svn_error_create(i32 %41, i32* null, i32 %42)
  store i32* %43, i32** %5, align 8
  br label %288

44:                                               ; preds = %31
  %45 = load i32, i32* @svn_node_unknown, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 4
  %48 = load i8*, i8** %13, align 8
  %49 = call i8* @strchr(i8* %48, i8 signext 45)
  store i8* %49, i8** %15, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %79

52:                                               ; preds = %44
  %53 = load i8*, i8** %15, align 8
  store i8 0, i8* %53, align 1
  %54 = load i8*, i8** %15, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %15, align 8
  %56 = load i8*, i8** %15, align 8
  %57 = load i32, i32* @SVN_FS_X__KIND_FILE, align 4
  %58 = call i64 @strcmp(i8* %56, i32 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i32, i32* @svn_node_file, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 4
  br label %78

64:                                               ; preds = %52
  %65 = load i8*, i8** %15, align 8
  %66 = load i32, i32* @SVN_FS_X__KIND_DIR, align 4
  %67 = call i64 @strcmp(i8* %65, i32 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @svn_node_dir, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 4
  br label %77

73:                                               ; preds = %64
  %74 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %75 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %76 = call i32* @svn_error_create(i32 %74, i32* null, i32 %75)
  store i32* %76, i32** %5, align 8
  br label %288

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %60
  br label %79

79:                                               ; preds = %78, %44
  %80 = load i8*, i8** %13, align 8
  %81 = load i32, i32* @ACTION_MODIFY, align 4
  %82 = call i64 @strcmp(i8* %80, i32 %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @svn_fs_path_change_modify, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 8
  br label %122

88:                                               ; preds = %79
  %89 = load i8*, i8** %13, align 8
  %90 = load i32, i32* @ACTION_ADD, align 4
  %91 = call i64 @strcmp(i8* %89, i32 %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @svn_fs_path_change_add, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 7
  store i32 %94, i32* %96, align 8
  br label %121

97:                                               ; preds = %88
  %98 = load i8*, i8** %13, align 8
  %99 = load i32, i32* @ACTION_DELETE, align 4
  %100 = call i64 @strcmp(i8* %98, i32 %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i32, i32* @svn_fs_path_change_delete, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 7
  store i32 %103, i32* %105, align 8
  br label %120

106:                                              ; preds = %97
  %107 = load i8*, i8** %13, align 8
  %108 = load i32, i32* @ACTION_REPLACE, align 4
  %109 = call i64 @strcmp(i8* %107, i32 %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @svn_fs_path_change_replace, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 7
  store i32 %112, i32* %114, align 8
  br label %119

115:                                              ; preds = %106
  %116 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %117 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %118 = call i32* @svn_error_create(i32 %116, i32* null, i32 %117)
  store i32* %118, i32** %5, align 8
  br label %288

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119, %102
  br label %121

121:                                              ; preds = %120, %93
  br label %122

122:                                              ; preds = %121, %84
  %123 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %14)
  store i8* %123, i8** %13, align 8
  %124 = load i8*, i8** %13, align 8
  %125 = icmp eq i8* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %128 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %129 = call i32* @svn_error_create(i32 %127, i32* null, i32 %128)
  store i32* %129, i32** %5, align 8
  br label %288

130:                                              ; preds = %122
  %131 = load i8*, i8** %13, align 8
  %132 = load i32, i32* @FLAG_TRUE, align 4
  %133 = call i64 @strcmp(i8* %131, i32 %132)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load i8*, i8** @TRUE, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 6
  store i8* %136, i8** %138, align 8
  br label %153

139:                                              ; preds = %130
  %140 = load i8*, i8** %13, align 8
  %141 = load i32, i32* @FLAG_FALSE, align 4
  %142 = call i64 @strcmp(i8* %140, i32 %141)
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load i8*, i8** @FALSE, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 6
  store i8* %145, i8** %147, align 8
  br label %152

148:                                              ; preds = %139
  %149 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %150 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %151 = call i32* @svn_error_create(i32 %149, i32* null, i32 %150)
  store i32* %151, i32** %5, align 8
  br label %288

152:                                              ; preds = %144
  br label %153

153:                                              ; preds = %152, %135
  %154 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %14)
  store i8* %154, i8** %13, align 8
  %155 = load i8*, i8** %13, align 8
  %156 = icmp eq i8* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %159 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %160 = call i32* @svn_error_create(i32 %158, i32* null, i32 %159)
  store i32* %160, i32** %5, align 8
  br label %288

161:                                              ; preds = %153
  %162 = load i8*, i8** %13, align 8
  %163 = load i32, i32* @FLAG_TRUE, align 4
  %164 = call i64 @strcmp(i8* %162, i32 %163)
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %161
  %167 = load i8*, i8** @TRUE, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 5
  store i8* %167, i8** %169, align 8
  br label %184

170:                                              ; preds = %161
  %171 = load i8*, i8** %13, align 8
  %172 = load i32, i32* @FLAG_FALSE, align 4
  %173 = call i64 @strcmp(i8* %171, i32 %172)
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %170
  %176 = load i8*, i8** @FALSE, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 5
  store i8* %176, i8** %178, align 8
  br label %183

179:                                              ; preds = %170
  %180 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %181 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %182 = call i32* @svn_error_create(i32 %180, i32* null, i32 %181)
  store i32* %182, i32** %5, align 8
  br label %288

183:                                              ; preds = %175
  br label %184

184:                                              ; preds = %183, %166
  %185 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %14)
  store i8* %185, i8** %13, align 8
  %186 = load i8*, i8** %13, align 8
  %187 = icmp eq i8* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %190 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %191 = call i32* @svn_error_create(i32 %189, i32* null, i32 %190)
  store i32* %191, i32** %5, align 8
  br label %288

192:                                              ; preds = %184
  %193 = load i8*, i8** %13, align 8
  %194 = load i32, i32* @FLAG_TRUE, align 4
  %195 = call i64 @strcmp(i8* %193, i32 %194)
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %192
  %198 = load i32, i32* @svn_tristate_true, align 4
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 4
  store i32 %198, i32* %200, align 8
  br label %215

201:                                              ; preds = %192
  %202 = load i8*, i8** %13, align 8
  %203 = load i32, i32* @FLAG_FALSE, align 4
  %204 = call i64 @strcmp(i8* %202, i32 %203)
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %201
  %207 = load i32, i32* @svn_tristate_false, align 4
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 4
  store i32 %207, i32* %209, align 8
  br label %214

210:                                              ; preds = %201
  %211 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %212 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %213 = call i32* @svn_error_create(i32 %211, i32* null, i32 %212)
  store i32* %213, i32** %5, align 8
  br label %288

214:                                              ; preds = %206
  br label %215

215:                                              ; preds = %214, %197
  %216 = load i8*, i8** %14, align 8
  %217 = call i32 @svn_fspath__is_canonical(i8* %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %215
  %220 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %221 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %222 = call i32* @svn_error_create(i32 %220, i32* null, i32 %221)
  store i32* %222, i32** %5, align 8
  br label %288

223:                                              ; preds = %215
  %224 = load i32*, i32** %8, align 8
  %225 = load i8*, i8** %14, align 8
  %226 = load i8*, i8** %14, align 8
  %227 = call i32 @strlen(i8* %226)
  %228 = call i8* @apr_pstrmemdup(i32* %224, i8* %225, i32 %227)
  %229 = load i32*, i32** %8, align 8
  %230 = call i8* @auto_unescape_path(i8* %228, i32* %229)
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  store i8* %230, i8** %233, align 8
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  %237 = load i8*, i8** %236, align 8
  %238 = call i32 @strlen(i8* %237)
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 1
  store i32 %238, i32* %241, align 8
  %242 = load i32*, i32** %7, align 8
  %243 = load i32*, i32** %8, align 8
  %244 = call i32 @svn_stream_readline(i32* %242, %struct.TYPE_8__** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %11, i32* %243)
  %245 = call i32 @SVN_ERR(i32 %244)
  %246 = load i8*, i8** @TRUE, align 8
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 2
  store i8* %246, i8** %248, align 8
  %249 = load i8*, i8** %11, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %256, label %251

251:                                              ; preds = %223
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %262

256:                                              ; preds = %251, %223
  %257 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 8
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 0
  store i32* null, i32** %261, align 8
  br label %284

262:                                              ; preds = %251
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 1
  %265 = load i8*, i8** %264, align 8
  store i8* %265, i8** %14, align 8
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 1
  %268 = call i32 @parse_revnum(i32* %267, i8** %14)
  %269 = call i32 @SVN_ERR(i32 %268)
  %270 = load i8*, i8** %14, align 8
  %271 = call i32 @svn_fspath__is_canonical(i8* %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %277, label %273

273:                                              ; preds = %262
  %274 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %275 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %276 = call i32* @svn_error_create(i32 %274, i32* null, i32 %275)
  store i32* %276, i32** %5, align 8
  br label %288

277:                                              ; preds = %262
  %278 = load i8*, i8** %14, align 8
  %279 = load i32*, i32** %8, align 8
  %280 = call i8* @auto_unescape_path(i8* %278, i32* %279)
  %281 = bitcast i8* %280 to i32*
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 0
  store i32* %281, i32** %283, align 8
  br label %284

284:                                              ; preds = %277, %256
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %286 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  store %struct.TYPE_9__* %285, %struct.TYPE_9__** %286, align 8
  %287 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %287, i32** %5, align 8
  br label %288

288:                                              ; preds = %284, %273, %219, %210, %188, %179, %157, %148, %126, %115, %73, %40, %29
  %289 = load i32*, i32** %5, align 8
  ret i32* %289
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_readline(i32*, %struct.TYPE_8__**, i8*, i8**, i32*) #1

declare dso_local %struct.TYPE_9__* @apr_pcalloc(i32*, i32) #1

declare dso_local i8* @svn_cstring_tokenize(i8*, i8**) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @svn_fspath__is_canonical(i8*) #1

declare dso_local i8* @auto_unescape_path(i8*, i32*) #1

declare dso_local i8* @apr_pstrmemdup(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @parse_revnum(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
