; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_low_level.c_read_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_low_level.c_read_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i32*, i32, i8*, i32, i8*, i8*, i32, i32, i32* }
%struct.TYPE_9__ = type { i64, i8* }

@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Invalid changes line in rev-file\00", align 1
@svn_node_unknown = common dso_local global i32 0, align 4
@SVN_FS_FS__KIND_FILE = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@SVN_FS_FS__KIND_DIR = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i32 0, align 4
@ACTION_MODIFY = common dso_local global i32 0, align 4
@svn_fs_path_change_modify = common dso_local global i32 0, align 4
@ACTION_ADD = common dso_local global i32 0, align 4
@svn_fs_path_change_add = common dso_local global i32 0, align 4
@ACTION_DELETE = common dso_local global i32 0, align 4
@svn_fs_path_change_delete = common dso_local global i32 0, align 4
@ACTION_REPLACE = common dso_local global i32 0, align 4
@svn_fs_path_change_replace = common dso_local global i32 0, align 4
@ACTION_RESET = common dso_local global i32 0, align 4
@svn_fs_path_change_reset = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Invalid change kind in rev file\00", align 1
@FLAG_TRUE = common dso_local global i32 0, align 4
@FLAG_FALSE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"Invalid text-mod flag in rev-file\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Invalid prop-mod flag in rev-file\00", align 1
@svn_tristate_unknown = common dso_local global i32 0, align 4
@svn_tristate_true = common dso_local global i32 0, align 4
@svn_tristate_false = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"Invalid mergeinfo-mod flag in rev-file\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Invalid path in changes line\00", align 1
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"Invalid copy-from path in changes line\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__**, i32*, i32*, i32*)* @read_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_change(%struct.TYPE_11__** %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i8*, i8** @TRUE, align 8
  store i8* %17, i8** %11, align 8
  %18 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %18, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @svn_stream_readline(i32* %19, %struct.TYPE_9__** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %11, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25, %4
  %31 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %31, i32** %5, align 8
  br label %326

32:                                               ; preds = %25
  %33 = load i32*, i32** %8, align 8
  %34 = call %struct.TYPE_11__* @apr_pcalloc(i32* %33, i32 80)
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %12, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %16, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %14, align 8
  %40 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %14)
  store i8* %40, i8** %13, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %45 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32* @svn_error_create(i32 %44, i32* null, i32 %45)
  store i32* %46, i32** %5, align 8
  br label %326

47:                                               ; preds = %32
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 8
  %50 = load i8*, i8** %13, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @svn_fs_fs__id_parse(i32** %49, i8* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 8
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %60 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %61 = call i32* @svn_error_create(i32 %59, i32* null, i32 %60)
  store i32* %61, i32** %5, align 8
  br label %326

62:                                               ; preds = %47
  %63 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %14)
  store i8* %63, i8** %13, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %68 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %69 = call i32* @svn_error_create(i32 %67, i32* null, i32 %68)
  store i32* %69, i32** %5, align 8
  br label %326

70:                                               ; preds = %62
  %71 = load i32, i32* @svn_node_unknown, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 4
  %74 = load i8*, i8** %13, align 8
  %75 = call i8* @strchr(i8* %74, i8 signext 45)
  store i8* %75, i8** %15, align 8
  %76 = load i8*, i8** %15, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %105

78:                                               ; preds = %70
  %79 = load i8*, i8** %15, align 8
  store i8 0, i8* %79, align 1
  %80 = load i8*, i8** %15, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %15, align 8
  %82 = load i8*, i8** %15, align 8
  %83 = load i32, i32* @SVN_FS_FS__KIND_FILE, align 4
  %84 = call i64 @strcmp(i8* %82, i32 %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load i32, i32* @svn_node_file, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 7
  store i32 %87, i32* %89, align 4
  br label %104

90:                                               ; preds = %78
  %91 = load i8*, i8** %15, align 8
  %92 = load i32, i32* @SVN_FS_FS__KIND_DIR, align 4
  %93 = call i64 @strcmp(i8* %91, i32 %92)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* @svn_node_dir, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 4
  br label %103

99:                                               ; preds = %90
  %100 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %101 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %102 = call i32* @svn_error_create(i32 %100, i32* null, i32 %101)
  store i32* %102, i32** %5, align 8
  br label %326

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %86
  br label %105

105:                                              ; preds = %104, %70
  %106 = load i8*, i8** %13, align 8
  %107 = load i32, i32* @ACTION_MODIFY, align 4
  %108 = call i64 @strcmp(i8* %106, i32 %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i32, i32* @svn_fs_path_change_modify, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 6
  store i32 %111, i32* %113, align 8
  br label %158

114:                                              ; preds = %105
  %115 = load i8*, i8** %13, align 8
  %116 = load i32, i32* @ACTION_ADD, align 4
  %117 = call i64 @strcmp(i8* %115, i32 %116)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* @svn_fs_path_change_add, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 6
  store i32 %120, i32* %122, align 8
  br label %157

123:                                              ; preds = %114
  %124 = load i8*, i8** %13, align 8
  %125 = load i32, i32* @ACTION_DELETE, align 4
  %126 = call i64 @strcmp(i8* %124, i32 %125)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i32, i32* @svn_fs_path_change_delete, align 4
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 6
  store i32 %129, i32* %131, align 8
  br label %156

132:                                              ; preds = %123
  %133 = load i8*, i8** %13, align 8
  %134 = load i32, i32* @ACTION_REPLACE, align 4
  %135 = call i64 @strcmp(i8* %133, i32 %134)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load i32, i32* @svn_fs_path_change_replace, align 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 6
  store i32 %138, i32* %140, align 8
  br label %155

141:                                              ; preds = %132
  %142 = load i8*, i8** %13, align 8
  %143 = load i32, i32* @ACTION_RESET, align 4
  %144 = call i64 @strcmp(i8* %142, i32 %143)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load i32, i32* @svn_fs_path_change_reset, align 4
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 6
  store i32 %147, i32* %149, align 8
  br label %154

150:                                              ; preds = %141
  %151 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %152 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %153 = call i32* @svn_error_create(i32 %151, i32* null, i32 %152)
  store i32* %153, i32** %5, align 8
  br label %326

154:                                              ; preds = %146
  br label %155

155:                                              ; preds = %154, %137
  br label %156

156:                                              ; preds = %155, %128
  br label %157

157:                                              ; preds = %156, %119
  br label %158

158:                                              ; preds = %157, %110
  %159 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %14)
  store i8* %159, i8** %13, align 8
  %160 = load i8*, i8** %13, align 8
  %161 = icmp eq i8* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %164 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %165 = call i32* @svn_error_create(i32 %163, i32* null, i32 %164)
  store i32* %165, i32** %5, align 8
  br label %326

166:                                              ; preds = %158
  %167 = load i8*, i8** %13, align 8
  %168 = load i32, i32* @FLAG_TRUE, align 4
  %169 = call i64 @strcmp(i8* %167, i32 %168)
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load i8*, i8** @TRUE, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 5
  store i8* %172, i8** %174, align 8
  br label %189

175:                                              ; preds = %166
  %176 = load i8*, i8** %13, align 8
  %177 = load i32, i32* @FLAG_FALSE, align 4
  %178 = call i64 @strcmp(i8* %176, i32 %177)
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %175
  %181 = load i8*, i8** @FALSE, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 5
  store i8* %181, i8** %183, align 8
  br label %188

184:                                              ; preds = %175
  %185 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %186 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %187 = call i32* @svn_error_create(i32 %185, i32* null, i32 %186)
  store i32* %187, i32** %5, align 8
  br label %326

188:                                              ; preds = %180
  br label %189

189:                                              ; preds = %188, %171
  %190 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %14)
  store i8* %190, i8** %13, align 8
  %191 = load i8*, i8** %13, align 8
  %192 = icmp eq i8* %191, null
  br i1 %192, label %193, label %197

193:                                              ; preds = %189
  %194 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %195 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %196 = call i32* @svn_error_create(i32 %194, i32* null, i32 %195)
  store i32* %196, i32** %5, align 8
  br label %326

197:                                              ; preds = %189
  %198 = load i8*, i8** %13, align 8
  %199 = load i32, i32* @FLAG_TRUE, align 4
  %200 = call i64 @strcmp(i8* %198, i32 %199)
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = load i8*, i8** @TRUE, align 8
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 4
  store i8* %203, i8** %205, align 8
  br label %220

206:                                              ; preds = %197
  %207 = load i8*, i8** %13, align 8
  %208 = load i32, i32* @FLAG_FALSE, align 4
  %209 = call i64 @strcmp(i8* %207, i32 %208)
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %206
  %212 = load i8*, i8** @FALSE, align 8
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 4
  store i8* %212, i8** %214, align 8
  br label %219

215:                                              ; preds = %206
  %216 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %217 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %218 = call i32* @svn_error_create(i32 %216, i32* null, i32 %217)
  store i32* %218, i32** %5, align 8
  br label %326

219:                                              ; preds = %211
  br label %220

220:                                              ; preds = %219, %202
  %221 = load i32, i32* @svn_tristate_unknown, align 4
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 3
  store i32 %221, i32* %223, align 8
  %224 = load i8*, i8** %14, align 8
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp ne i32 %226, 47
  br i1 %227, label %228, label %260

228:                                              ; preds = %220
  %229 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %14)
  store i8* %229, i8** %13, align 8
  %230 = load i8*, i8** %13, align 8
  %231 = icmp eq i8* %230, null
  br i1 %231, label %232, label %236

232:                                              ; preds = %228
  %233 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %234 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %235 = call i32* @svn_error_create(i32 %233, i32* null, i32 %234)
  store i32* %235, i32** %5, align 8
  br label %326

236:                                              ; preds = %228
  %237 = load i8*, i8** %13, align 8
  %238 = load i32, i32* @FLAG_TRUE, align 4
  %239 = call i64 @strcmp(i8* %237, i32 %238)
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %236
  %242 = load i32, i32* @svn_tristate_true, align 4
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 3
  store i32 %242, i32* %244, align 8
  br label %259

245:                                              ; preds = %236
  %246 = load i8*, i8** %13, align 8
  %247 = load i32, i32* @FLAG_FALSE, align 4
  %248 = call i64 @strcmp(i8* %246, i32 %247)
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %245
  %251 = load i32, i32* @svn_tristate_false, align 4
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 3
  store i32 %251, i32* %253, align 8
  br label %258

254:                                              ; preds = %245
  %255 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %256 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %257 = call i32* @svn_error_create(i32 %255, i32* null, i32 %256)
  store i32* %257, i32** %5, align 8
  br label %326

258:                                              ; preds = %250
  br label %259

259:                                              ; preds = %258, %241
  br label %260

260:                                              ; preds = %259, %220
  %261 = load i8*, i8** %14, align 8
  %262 = call i32 @svn_fspath__is_canonical(i8* %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %268, label %264

264:                                              ; preds = %260
  %265 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %266 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %267 = call i32* @svn_error_create(i32 %265, i32* null, i32 %266)
  store i32* %267, i32** %5, align 8
  br label %326

268:                                              ; preds = %260
  %269 = load i8*, i8** %14, align 8
  %270 = call i32 @strlen(i8* %269)
  %271 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 1
  store i32 %270, i32* %273, align 8
  %274 = load i32*, i32** %8, align 8
  %275 = load i8*, i8** %14, align 8
  %276 = call i8* @apr_pstrdup(i32* %274, i8* %275)
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 0
  store i8* %276, i8** %279, align 8
  %280 = load i32*, i32** %7, align 8
  %281 = load i32*, i32** %9, align 8
  %282 = call i32 @svn_stream_readline(i32* %280, %struct.TYPE_9__** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %11, i32* %281)
  %283 = call i32 @SVN_ERR(i32 %282)
  %284 = load i8*, i8** @TRUE, align 8
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 2
  store i8* %284, i8** %286, align 8
  %287 = load i8*, i8** %11, align 8
  %288 = icmp ne i8* %287, null
  br i1 %288, label %294, label %289

289:                                              ; preds = %268
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %294, label %300

294:                                              ; preds = %289, %268
  %295 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 1
  store i32 %295, i32* %297, align 8
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 0
  store i32* null, i32** %299, align 8
  br label %322

300:                                              ; preds = %289
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 1
  %303 = load i8*, i8** %302, align 8
  store i8* %303, i8** %14, align 8
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 1
  %306 = call i32 @parse_revnum(i32* %305, i8** %14)
  %307 = call i32 @SVN_ERR(i32 %306)
  %308 = load i8*, i8** %14, align 8
  %309 = call i32 @svn_fspath__is_canonical(i8* %308)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %315, label %311

311:                                              ; preds = %300
  %312 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %313 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %314 = call i32* @svn_error_create(i32 %312, i32* null, i32 %313)
  store i32* %314, i32** %5, align 8
  br label %326

315:                                              ; preds = %300
  %316 = load i32*, i32** %8, align 8
  %317 = load i8*, i8** %14, align 8
  %318 = call i8* @apr_pstrdup(i32* %316, i8* %317)
  %319 = bitcast i8* %318 to i32*
  %320 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 0
  store i32* %319, i32** %321, align 8
  br label %322

322:                                              ; preds = %315, %294
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %324 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* %323, %struct.TYPE_11__** %324, align 8
  %325 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %325, i32** %5, align 8
  br label %326

326:                                              ; preds = %322, %311, %264, %254, %232, %215, %193, %184, %162, %150, %99, %66, %58, %43, %30
  %327 = load i32*, i32** %5, align 8
  ret i32* %327
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_readline(i32*, %struct.TYPE_9__**, i8*, i8**, i32*) #1

declare dso_local %struct.TYPE_11__* @apr_pcalloc(i32*, i32) #1

declare dso_local i8* @svn_cstring_tokenize(i8*, i8**) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_fs__id_parse(i32**, i8*, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @svn_fspath__is_canonical(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @parse_revnum(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
