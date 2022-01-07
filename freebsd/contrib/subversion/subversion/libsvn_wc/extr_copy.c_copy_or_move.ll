; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_copy.c_copy_or_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_copy.c_copy_or_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64 }
%struct.TYPE_24__ = type { i32* }

@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_ENTRY_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"'%s' is not under version control\00", align 1
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Deleted node '%s' can't be copied.\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"The node '%s' was not found.\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"'%s' is the root of a working copy and cannot be moved\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"'%s' represents the repository root and cannot be moved\00", align 1
@svn_wc__db_status_added = common dso_local global i32 0, align 4
@SVN_ERR_WC_INVALID_SCHEDULE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [72 x i8] c"Cannot copy to '%s', as it is not from repository '%s'; it is from '%s'\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"Cannot copy to '%s' as it is scheduled for deletion\00", align 1
@SVN_ERR_ENTRY_EXISTS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [55 x i8] c"'%s' is already under version control but is excluded.\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"'%s' is already under version control\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"There is already a versioned item '%s'\00", align 1
@svn_node_none = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [38 x i8] c"'%s' already exists and is in the way\00", align 1
@FALSE = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@svn_node_symlink = common dso_local global i64 0, align 8
@svn_wc__db_status_normal = common dso_local global i32 0, align 4
@SVN_ERR_WC_MIXED_REVISIONS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [73 x i8] c"Cannot move mixed-revision subtree '%s' [%ld:%ld]; try updating it first\00", align 1
@SVN_ERR_CANCELLED = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_25__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_25__* (i32*, %struct.TYPE_24__*, i8*, i8*, i32, i32, i32, i32, i8*, i32, i8*, i32*)* @copy_or_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_25__* @copy_or_move(i32* %0, %struct.TYPE_24__* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8, i32 %9, i8* %10, i32* %11) #0 {
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_24__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca %struct.TYPE_25__*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i8*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i8*, align 8
  %42 = alloca i8*, align 8
  %43 = alloca i8*, align 8
  %44 = alloca i32, align 4
  %45 = alloca i64, align 8
  %46 = alloca i8*, align 8
  %47 = alloca i8*, align 8
  store i32* %0, i32** %14, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %15, align 8
  store i8* %2, i8** %16, align 8
  store i8* %3, i8** %17, align 8
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i8* %8, i8** %22, align 8
  store i32 %9, i32* %23, align 4
  store i8* %10, i8** %24, align 8
  store i32* %11, i32** %25, align 8
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %26, align 8
  %51 = load i8*, i8** %16, align 8
  %52 = call i32 @svn_dirent_is_absolute(i8* %51)
  %53 = call i32 @SVN_ERR_ASSERT(i32 %52)
  %54 = load i8*, i8** %17, align 8
  %55 = call i32 @svn_dirent_is_absolute(i8* %54)
  %56 = call i32 @SVN_ERR_ASSERT(i32 %55)
  %57 = load i8*, i8** %17, align 8
  %58 = load i32*, i32** %25, align 8
  %59 = call i8* @svn_dirent_dirname(i8* %57, i32* %58)
  store i8* %59, i8** %28, align 8
  %60 = load i32*, i32** %26, align 8
  %61 = load i8*, i8** %16, align 8
  %62 = load i32*, i32** %25, align 8
  %63 = load i32*, i32** %25, align 8
  %64 = call %struct.TYPE_25__* @svn_wc__db_read_info(i32* %34, i64* %27, i32* null, i8** %43, i8** %39, i8** %41, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %36, i32* %37, i32* null, i32* %29, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %60, i8* %61, i32* %62, i32* %63)
  store %struct.TYPE_25__* %64, %struct.TYPE_25__** %35, align 8
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %66 = icmp ne %struct.TYPE_25__* %65, null
  br i1 %66, label %67, label %83

67:                                               ; preds = %12
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %75 = call i32 @svn_error_clear(%struct.TYPE_25__* %74)
  %76 = load i32, i32* @SVN_ERR_ENTRY_NOT_FOUND, align 4
  %77 = sext i32 %76 to i64
  %78 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %79 = load i8*, i8** %16, align 8
  %80 = load i32*, i32** %25, align 8
  %81 = call i32 @svn_dirent_local_style(i8* %79, i32* %80)
  %82 = call %struct.TYPE_25__* (i64, i32*, i32, i32, ...) @svn_error_createf(i64 %77, i32* null, i32 %78, i32 %81)
  store %struct.TYPE_25__* %82, %struct.TYPE_25__** %13, align 8
  br label %483

83:                                               ; preds = %67, %12
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %85 = call i32 @SVN_ERR(%struct.TYPE_25__* %84)
  br label %86

86:                                               ; preds = %83
  %87 = load i32*, i32** %26, align 8
  %88 = load i8*, i8** %16, align 8
  %89 = load i32*, i32** %25, align 8
  %90 = load i32*, i32** %25, align 8
  %91 = call %struct.TYPE_25__* @svn_wc__db_get_wcroot(i8** %31, i32* %87, i8* %88, i32* %89, i32* %90)
  %92 = call i32 @SVN_ERR(%struct.TYPE_25__* %91)
  %93 = load i32, i32* %34, align 4
  switch i32 %93, label %109 [
    i32 131, label %94
    i32 130, label %102
    i32 128, label %102
    i32 129, label %102
  ]

94:                                               ; preds = %86
  %95 = load i32, i32* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 4
  %96 = sext i32 %95 to i64
  %97 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i8*, i8** %16, align 8
  %99 = load i32*, i32** %25, align 8
  %100 = call i32 @svn_dirent_local_style(i8* %98, i32* %99)
  %101 = call %struct.TYPE_25__* (i64, i32*, i32, i32, ...) @svn_error_createf(i64 %96, i32* null, i32 %97, i32 %100)
  store %struct.TYPE_25__* %101, %struct.TYPE_25__** %13, align 8
  br label %483

102:                                              ; preds = %86, %86, %86
  %103 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %104 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i8*, i8** %16, align 8
  %106 = load i32*, i32** %25, align 8
  %107 = call i32 @svn_dirent_local_style(i8* %105, i32* %106)
  %108 = call %struct.TYPE_25__* (i64, i32*, i32, i32, ...) @svn_error_createf(i64 %103, i32* null, i32 %104, i32 %107)
  store %struct.TYPE_25__* %108, %struct.TYPE_25__** %13, align 8
  br label %483

109:                                              ; preds = %86
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %19, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = load i8*, i8** %16, align 8
  %115 = load i8*, i8** %31, align 8
  %116 = call i64 @strcmp(i8* %114, i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 4
  %120 = sext i32 %119 to i64
  %121 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %122 = load i8*, i8** %16, align 8
  %123 = load i32*, i32** %25, align 8
  %124 = call i32 @svn_dirent_local_style(i8* %122, i32* %123)
  %125 = call %struct.TYPE_25__* (i64, i32*, i32, i32, ...) @svn_error_createf(i64 %120, i32* null, i32 %121, i32 %124)
  store %struct.TYPE_25__* %125, %struct.TYPE_25__** %13, align 8
  br label %483

126:                                              ; preds = %113, %110
  %127 = load i32, i32* %19, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %145

129:                                              ; preds = %126
  %130 = load i8*, i8** %43, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %145

132:                                              ; preds = %129
  %133 = load i8*, i8** %43, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 0
  %135 = load i8, i8* %134, align 1
  %136 = icmp ne i8 %135, 0
  br i1 %136, label %145, label %137

137:                                              ; preds = %132
  %138 = load i32, i32* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 4
  %139 = sext i32 %138 to i64
  %140 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  %141 = load i8*, i8** %16, align 8
  %142 = load i32*, i32** %25, align 8
  %143 = call i32 @svn_dirent_local_style(i8* %141, i32* %142)
  %144 = call %struct.TYPE_25__* (i64, i32*, i32, i32, ...) @svn_error_createf(i64 %139, i32* null, i32 %140, i32 %143)
  store %struct.TYPE_25__* %144, %struct.TYPE_25__** %13, align 8
  br label %483

145:                                              ; preds = %132, %129, %126
  %146 = load i32*, i32** %26, align 8
  %147 = load i8*, i8** %28, align 8
  %148 = load i32*, i32** %25, align 8
  %149 = load i32*, i32** %25, align 8
  %150 = call %struct.TYPE_25__* @svn_wc__db_read_info(i32* %38, i64* null, i32* null, i8** null, i8** %40, i8** %42, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %146, i8* %147, i32* %148, i32* %149)
  store %struct.TYPE_25__* %150, %struct.TYPE_25__** %35, align 8
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %152 = icmp ne %struct.TYPE_25__* %151, null
  br i1 %152, label %153, label %169

153:                                              ; preds = %145
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %169

159:                                              ; preds = %153
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %161 = call i32 @svn_error_clear(%struct.TYPE_25__* %160)
  %162 = load i32, i32* @SVN_ERR_ENTRY_NOT_FOUND, align 4
  %163 = sext i32 %162 to i64
  %164 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %165 = load i8*, i8** %28, align 8
  %166 = load i32*, i32** %25, align 8
  %167 = call i32 @svn_dirent_local_style(i8* %165, i32* %166)
  %168 = call %struct.TYPE_25__* (i64, i32*, i32, i32, ...) @svn_error_createf(i64 %163, i32* null, i32 %164, i32 %167)
  store %struct.TYPE_25__* %168, %struct.TYPE_25__** %13, align 8
  br label %483

169:                                              ; preds = %153, %145
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %171 = call i32 @SVN_ERR(%struct.TYPE_25__* %170)
  br label %172

172:                                              ; preds = %169
  %173 = load i32*, i32** %26, align 8
  %174 = load i8*, i8** %28, align 8
  %175 = load i32*, i32** %25, align 8
  %176 = load i32*, i32** %25, align 8
  %177 = call %struct.TYPE_25__* @svn_wc__db_get_wcroot(i8** %32, i32* %173, i8* %174, i32* %175, i32* %176)
  %178 = call i32 @SVN_ERR(%struct.TYPE_25__* %177)
  %179 = load i8*, i8** %39, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %200, label %181

181:                                              ; preds = %172
  %182 = load i32, i32* %34, align 4
  %183 = load i32, i32* @svn_wc__db_status_added, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %181
  %186 = load i32*, i32** %26, align 8
  %187 = load i8*, i8** %16, align 8
  %188 = load i32*, i32** %25, align 8
  %189 = load i32*, i32** %25, align 8
  %190 = call %struct.TYPE_25__* @svn_wc__db_scan_addition(i32* null, i32* null, i32* null, i8** %39, i8** %41, i32* null, i32* null, i32* null, i32* null, i32* %186, i8* %187, i32* %188, i32* %189)
  %191 = call i32 @SVN_ERR(%struct.TYPE_25__* %190)
  br label %199

192:                                              ; preds = %181
  %193 = load i32*, i32** %26, align 8
  %194 = load i8*, i8** %16, align 8
  %195 = load i32*, i32** %25, align 8
  %196 = load i32*, i32** %25, align 8
  %197 = call %struct.TYPE_25__* @svn_wc__db_base_get_info(i32* null, i32* null, i32* null, i32* null, i8** %39, i8** %41, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %193, i8* %194, i32* %195, i32* %196)
  %198 = call i32 @SVN_ERR(%struct.TYPE_25__* %197)
  br label %199

199:                                              ; preds = %192, %185
  br label %200

200:                                              ; preds = %199, %172
  %201 = load i8*, i8** %40, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %222, label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %38, align 4
  %205 = load i32, i32* @svn_wc__db_status_added, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %214

207:                                              ; preds = %203
  %208 = load i32*, i32** %26, align 8
  %209 = load i8*, i8** %28, align 8
  %210 = load i32*, i32** %25, align 8
  %211 = load i32*, i32** %25, align 8
  %212 = call %struct.TYPE_25__* @svn_wc__db_scan_addition(i32* null, i32* null, i32* null, i8** %40, i8** %42, i32* null, i32* null, i32* null, i32* null, i32* %208, i8* %209, i32* %210, i32* %211)
  %213 = call i32 @SVN_ERR(%struct.TYPE_25__* %212)
  br label %221

214:                                              ; preds = %203
  %215 = load i32*, i32** %26, align 8
  %216 = load i8*, i8** %28, align 8
  %217 = load i32*, i32** %25, align 8
  %218 = load i32*, i32** %25, align 8
  %219 = call %struct.TYPE_25__* @svn_wc__db_base_get_info(i32* null, i32* null, i32* null, i32* null, i8** %40, i8** %42, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %215, i8* %216, i32* %217, i32* %218)
  %220 = call i32 @SVN_ERR(%struct.TYPE_25__* %219)
  br label %221

221:                                              ; preds = %214, %207
  br label %222

222:                                              ; preds = %221, %200
  %223 = load i8*, i8** %39, align 8
  %224 = load i8*, i8** %40, align 8
  %225 = call i64 @strcmp(i8* %223, i8* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %232, label %227

227:                                              ; preds = %222
  %228 = load i8*, i8** %41, align 8
  %229 = load i8*, i8** %42, align 8
  %230 = call i64 @strcmp(i8* %228, i8* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %242

232:                                              ; preds = %227, %222
  %233 = load i32, i32* @SVN_ERR_WC_INVALID_SCHEDULE, align 4
  %234 = sext i32 %233 to i64
  %235 = call i32 @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0))
  %236 = load i8*, i8** %17, align 8
  %237 = load i32*, i32** %25, align 8
  %238 = call i32 @svn_dirent_local_style(i8* %236, i32* %237)
  %239 = load i8*, i8** %39, align 8
  %240 = load i8*, i8** %40, align 8
  %241 = call %struct.TYPE_25__* (i64, i32*, i32, i32, ...) @svn_error_createf(i64 %234, i32* null, i32 %235, i32 %238, i8* %239, i8* %240)
  store %struct.TYPE_25__* %241, %struct.TYPE_25__** %13, align 8
  br label %483

242:                                              ; preds = %227
  %243 = load i32, i32* %38, align 4
  %244 = icmp eq i32 %243, 131
  br i1 %244, label %245, label %253

245:                                              ; preds = %242
  %246 = load i32, i32* @SVN_ERR_WC_INVALID_SCHEDULE, align 4
  %247 = sext i32 %246 to i64
  %248 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %249 = load i8*, i8** %17, align 8
  %250 = load i32*, i32** %25, align 8
  %251 = call i32 @svn_dirent_local_style(i8* %249, i32* %250)
  %252 = call %struct.TYPE_25__* (i64, i32*, i32, i32, ...) @svn_error_createf(i64 %247, i32* null, i32 %248, i32 %251)
  store %struct.TYPE_25__* %252, %struct.TYPE_25__** %13, align 8
  br label %483

253:                                              ; preds = %242
  %254 = load i32*, i32** %26, align 8
  %255 = load i8*, i8** %17, align 8
  %256 = load i32*, i32** %25, align 8
  %257 = load i32*, i32** %25, align 8
  %258 = call %struct.TYPE_25__* @svn_wc__db_read_info(i32* %44, i64* null, i32* null, i8** null, i8** null, i8** null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %254, i8* %255, i32* %256, i32* %257)
  store %struct.TYPE_25__* %258, %struct.TYPE_25__** %35, align 8
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %260 = icmp ne %struct.TYPE_25__* %259, null
  br i1 %260, label %261, label %270

261:                                              ; preds = %253
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %266 = icmp ne i64 %264, %265
  br i1 %266, label %267, label %270

267:                                              ; preds = %261
  %268 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %269 = call %struct.TYPE_25__* @svn_error_trace(%struct.TYPE_25__* %268)
  store %struct.TYPE_25__* %269, %struct.TYPE_25__** %13, align 8
  br label %483

270:                                              ; preds = %261, %253
  %271 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %272 = call i32 @svn_error_clear(%struct.TYPE_25__* %271)
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %274 = icmp ne %struct.TYPE_25__* %273, null
  br i1 %274, label %307, label %275

275:                                              ; preds = %270
  %276 = load i32, i32* %44, align 4
  switch i32 %276, label %294 [
    i32 130, label %277
    i32 128, label %285
    i32 131, label %293
    i32 129, label %293
  ]

277:                                              ; preds = %275
  %278 = load i32, i32* @SVN_ERR_ENTRY_EXISTS, align 4
  %279 = sext i32 %278 to i64
  %280 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  %281 = load i8*, i8** %17, align 8
  %282 = load i32*, i32** %25, align 8
  %283 = call i32 @svn_dirent_local_style(i8* %281, i32* %282)
  %284 = call %struct.TYPE_25__* (i64, i32*, i32, i32, ...) @svn_error_createf(i64 %279, i32* null, i32 %280, i32 %283)
  store %struct.TYPE_25__* %284, %struct.TYPE_25__** %13, align 8
  br label %483

285:                                              ; preds = %275
  %286 = load i32, i32* @SVN_ERR_ENTRY_EXISTS, align 4
  %287 = sext i32 %286 to i64
  %288 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %289 = load i8*, i8** %17, align 8
  %290 = load i32*, i32** %25, align 8
  %291 = call i32 @svn_dirent_local_style(i8* %289, i32* %290)
  %292 = call %struct.TYPE_25__* (i64, i32*, i32, i32, ...) @svn_error_createf(i64 %287, i32* null, i32 %288, i32 %291)
  store %struct.TYPE_25__* %292, %struct.TYPE_25__** %13, align 8
  br label %483

293:                                              ; preds = %275, %275
  br label %306

294:                                              ; preds = %275
  %295 = load i32, i32* %18, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %305, label %297

297:                                              ; preds = %294
  %298 = load i32, i32* @SVN_ERR_ENTRY_EXISTS, align 4
  %299 = sext i32 %298 to i64
  %300 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %301 = load i8*, i8** %17, align 8
  %302 = load i32*, i32** %25, align 8
  %303 = call i32 @svn_dirent_local_style(i8* %301, i32* %302)
  %304 = call %struct.TYPE_25__* (i64, i32*, i32, i32, ...) @svn_error_createf(i64 %299, i32* null, i32 %300, i32 %303)
  store %struct.TYPE_25__* %304, %struct.TYPE_25__** %13, align 8
  br label %483

305:                                              ; preds = %294
  br label %306

306:                                              ; preds = %305, %293
  br label %307

307:                                              ; preds = %306, %270
  %308 = load i32, i32* %18, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %327, label %310

310:                                              ; preds = %307
  %311 = load i8*, i8** %17, align 8
  %312 = load i32*, i32** %25, align 8
  %313 = call %struct.TYPE_25__* @svn_io_check_path(i8* %311, i64* %45, i32* %312)
  %314 = call i32 @SVN_ERR(%struct.TYPE_25__* %313)
  %315 = load i64, i64* %45, align 8
  %316 = load i64, i64* @svn_node_none, align 8
  %317 = icmp ne i64 %315, %316
  br i1 %317, label %318, label %326

318:                                              ; preds = %310
  %319 = load i32, i32* @SVN_ERR_ENTRY_EXISTS, align 4
  %320 = sext i32 %319 to i64
  %321 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  %322 = load i8*, i8** %17, align 8
  %323 = load i32*, i32** %25, align 8
  %324 = call i32 @svn_dirent_local_style(i8* %322, i32* %323)
  %325 = call %struct.TYPE_25__* (i64, i32*, i32, i32, ...) @svn_error_createf(i64 %320, i32* null, i32 %321, i32 %324)
  store %struct.TYPE_25__* %325, %struct.TYPE_25__** %13, align 8
  br label %483

326:                                              ; preds = %310
  br label %327

327:                                              ; preds = %326, %307
  %328 = load i32*, i32** %26, align 8
  %329 = load i8*, i8** %28, align 8
  %330 = load i32*, i32** %25, align 8
  %331 = load i32*, i32** %25, align 8
  %332 = call %struct.TYPE_25__* @svn_wc__db_temp_wcroot_tempdir(i8** %30, i32* %328, i8* %329, i32* %330, i32* %331)
  %333 = call i32 @SVN_ERR(%struct.TYPE_25__* %332)
  %334 = load i8*, i8** %31, align 8
  %335 = load i8*, i8** %32, align 8
  %336 = call i64 @strcmp(i8* %334, i8* %335)
  %337 = icmp eq i64 %336, 0
  %338 = zext i1 %337 to i32
  store i32 %338, i32* %33, align 4
  %339 = load i32, i32* %19, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %352

341:                                              ; preds = %327
  %342 = load i32, i32* %33, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %352, label %344

344:                                              ; preds = %341
  %345 = load i32*, i32** %14, align 8
  %346 = icmp ne i32* %345, null
  br i1 %346, label %347, label %350

347:                                              ; preds = %344
  %348 = load i32, i32* @FALSE, align 4
  %349 = load i32*, i32** %14, align 8
  store i32 %348, i32* %349, align 4
  br label %350

350:                                              ; preds = %347, %344
  %351 = load i32, i32* @FALSE, align 4
  store i32 %351, i32* %19, align 4
  br label %352

352:                                              ; preds = %350, %341, %327
  %353 = load i32, i32* %33, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %364, label %355

355:                                              ; preds = %352
  %356 = load i32*, i32** %26, align 8
  %357 = load i8*, i8** %16, align 8
  %358 = load i8*, i8** %32, align 8
  %359 = load i32, i32* %21, align 4
  %360 = load i8*, i8** %22, align 8
  %361 = load i32*, i32** %25, align 8
  %362 = call %struct.TYPE_25__* @svn_wc__db_pristine_transfer(i32* %356, i8* %357, i8* %358, i32 %359, i8* %360, i32* %361)
  %363 = call i32 @SVN_ERR(%struct.TYPE_25__* %362)
  br label %364

364:                                              ; preds = %355, %352
  %365 = load i64, i64* %27, align 8
  %366 = load i64, i64* @svn_node_file, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %372, label %368

368:                                              ; preds = %364
  %369 = load i64, i64* %27, align 8
  %370 = load i64, i64* @svn_node_symlink, align 8
  %371 = icmp eq i64 %369, %370
  br i1 %371, label %372, label %389

372:                                              ; preds = %368, %364
  %373 = load i32*, i32** %26, align 8
  %374 = load i8*, i8** %16, align 8
  %375 = load i8*, i8** %17, align 8
  %376 = load i8*, i8** %17, align 8
  %377 = load i8*, i8** %30, align 8
  %378 = load i32, i32* %18, align 4
  %379 = load i32, i32* %29, align 4
  %380 = load i32, i32* %19, align 4
  %381 = load i32, i32* %36, align 4
  %382 = load i32, i32* %37, align 4
  %383 = load i32, i32* %21, align 4
  %384 = load i8*, i8** %22, align 8
  %385 = load i32, i32* %23, align 4
  %386 = load i8*, i8** %24, align 8
  %387 = load i32*, i32** %25, align 8
  %388 = call %struct.TYPE_25__* @copy_versioned_file(i32* %373, i8* %374, i8* %375, i8* %376, i8* %377, i32 %378, i32 %379, i32 %380, i32* null, i32 %381, i32 %382, i32 %383, i8* %384, i32 %385, i8* %386, i32* %387)
  store %struct.TYPE_25__* %388, %struct.TYPE_25__** %35, align 8
  br label %450

389:                                              ; preds = %368
  %390 = load i32, i32* %19, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %436

392:                                              ; preds = %389
  %393 = load i32, i32* %34, align 4
  %394 = load i32, i32* @svn_wc__db_status_normal, align 4
  %395 = icmp eq i32 %393, %394
  br i1 %395, label %396, label %436

396:                                              ; preds = %392
  %397 = load i32*, i32** %26, align 8
  %398 = load i8*, i8** %16, align 8
  %399 = load i32, i32* @FALSE, align 4
  %400 = load i32*, i32** %25, align 8
  %401 = call %struct.TYPE_25__* @svn_wc__db_min_max_revisions(i8** %46, i8** %47, i32* %397, i8* %398, i32 %399, i32* %400)
  %402 = call i32 @SVN_ERR(%struct.TYPE_25__* %401)
  %403 = load i8*, i8** %46, align 8
  %404 = call i64 @SVN_IS_VALID_REVNUM(i8* %403)
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %435

406:                                              ; preds = %396
  %407 = load i8*, i8** %47, align 8
  %408 = call i64 @SVN_IS_VALID_REVNUM(i8* %407)
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %435

410:                                              ; preds = %406
  %411 = load i8*, i8** %46, align 8
  %412 = load i8*, i8** %47, align 8
  %413 = icmp ne i8* %411, %412
  br i1 %413, label %414, label %435

414:                                              ; preds = %410
  %415 = load i32, i32* %20, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %427, label %417

417:                                              ; preds = %414
  %418 = load i32, i32* @SVN_ERR_WC_MIXED_REVISIONS, align 4
  %419 = sext i32 %418 to i64
  %420 = call i32 @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.11, i64 0, i64 0))
  %421 = load i8*, i8** %16, align 8
  %422 = load i32*, i32** %25, align 8
  %423 = call i32 @svn_dirent_local_style(i8* %421, i32* %422)
  %424 = load i8*, i8** %46, align 8
  %425 = load i8*, i8** %47, align 8
  %426 = call %struct.TYPE_25__* (i64, i32*, i32, i32, ...) @svn_error_createf(i64 %419, i32* null, i32 %420, i32 %423, i8* %424, i8* %425)
  store %struct.TYPE_25__* %426, %struct.TYPE_25__** %13, align 8
  br label %483

427:                                              ; preds = %414
  %428 = load i32, i32* @FALSE, align 4
  store i32 %428, i32* %19, align 4
  %429 = load i32*, i32** %14, align 8
  %430 = icmp ne i32* %429, null
  br i1 %430, label %431, label %434

431:                                              ; preds = %427
  %432 = load i32, i32* @FALSE, align 4
  %433 = load i32*, i32** %14, align 8
  store i32 %432, i32* %433, align 4
  br label %434

434:                                              ; preds = %431, %427
  br label %435

435:                                              ; preds = %434, %410, %406, %396
  br label %436

436:                                              ; preds = %435, %392, %389
  %437 = load i32*, i32** %26, align 8
  %438 = load i8*, i8** %16, align 8
  %439 = load i8*, i8** %17, align 8
  %440 = load i8*, i8** %17, align 8
  %441 = load i8*, i8** %30, align 8
  %442 = load i32, i32* %18, align 4
  %443 = load i32, i32* %19, align 4
  %444 = load i32, i32* %21, align 4
  %445 = load i8*, i8** %22, align 8
  %446 = load i32, i32* %23, align 4
  %447 = load i8*, i8** %24, align 8
  %448 = load i32*, i32** %25, align 8
  %449 = call %struct.TYPE_25__* @copy_versioned_dir(i32* %437, i8* %438, i8* %439, i8* %440, i8* %441, i32 %442, i32 %443, i32* null, i32 %444, i8* %445, i32 %446, i8* %447, i32* %448)
  store %struct.TYPE_25__* %449, %struct.TYPE_25__** %35, align 8
  br label %450

450:                                              ; preds = %436, %372
  %451 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %452 = icmp ne %struct.TYPE_25__* %451, null
  br i1 %452, label %453, label %461

453:                                              ; preds = %450
  %454 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %455 = load i32, i32* @SVN_ERR_CANCELLED, align 4
  %456 = call i64 @svn_error_find_cause(%struct.TYPE_25__* %454, i32 %455)
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %461

458:                                              ; preds = %453
  %459 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %460 = call %struct.TYPE_25__* @svn_error_trace(%struct.TYPE_25__* %459)
  store %struct.TYPE_25__* %460, %struct.TYPE_25__** %13, align 8
  br label %483

461:                                              ; preds = %453, %450
  %462 = load i32, i32* %19, align 4
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %472

464:                                              ; preds = %461
  %465 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %466 = load i32*, i32** %26, align 8
  %467 = load i8*, i8** %17, align 8
  %468 = load i8*, i8** %16, align 8
  %469 = load i32*, i32** %25, align 8
  %470 = call i32 @svn_wc__db_op_handle_move_back(i32* null, i32* %466, i8* %467, i8* %468, i32* null, i32* %469)
  %471 = call %struct.TYPE_25__* @svn_error_compose_create(%struct.TYPE_25__* %465, i32 %470)
  store %struct.TYPE_25__* %471, %struct.TYPE_25__** %35, align 8
  br label %472

472:                                              ; preds = %464, %461
  %473 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %474 = load i32*, i32** %26, align 8
  %475 = load i8*, i8** %17, align 8
  %476 = load i32, i32* %21, align 4
  %477 = load i8*, i8** %22, align 8
  %478 = load i32*, i32** %25, align 8
  %479 = call i32 @svn_wc__wq_run(i32* %474, i8* %475, i32 %476, i8* %477, i32* %478)
  %480 = call %struct.TYPE_25__* @svn_error_compose_create(%struct.TYPE_25__* %473, i32 %479)
  %481 = call i32 @SVN_ERR(%struct.TYPE_25__* %480)
  %482 = load %struct.TYPE_25__*, %struct.TYPE_25__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_25__* %482, %struct.TYPE_25__** %13, align 8
  br label %483

483:                                              ; preds = %472, %458, %417, %318, %297, %285, %277, %267, %245, %232, %159, %137, %118, %102, %94, %73
  %484 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  ret %struct.TYPE_25__* %484
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local %struct.TYPE_25__* @svn_wc__db_read_info(i32*, i64*, i32*, i8**, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @svn_error_createf(i64, i32*, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @svn_wc__db_get_wcroot(i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_25__* @svn_wc__db_scan_addition(i32*, i32*, i32*, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_25__* @svn_wc__db_base_get_info(i32*, i32*, i32*, i32*, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_25__* @svn_error_trace(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local %struct.TYPE_25__* @svn_wc__db_temp_wcroot_tempdir(i8**, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_25__* @svn_wc__db_pristine_transfer(i32*, i8*, i8*, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_25__* @copy_versioned_file(i32*, i8*, i8*, i8*, i8*, i32, i32, i32, i32*, i32, i32, i32, i8*, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_25__* @svn_wc__db_min_max_revisions(i8**, i8**, i32*, i8*, i32, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i8*) #1

declare dso_local %struct.TYPE_25__* @copy_versioned_dir(i32*, i8*, i8*, i8*, i8*, i32, i32, i32*, i32, i8*, i32, i8*, i32*) #1

declare dso_local i64 @svn_error_find_cause(%struct.TYPE_25__*, i32) #1

declare dso_local %struct.TYPE_25__* @svn_error_compose_create(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @svn_wc__db_op_handle_move_back(i32*, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__wq_run(i32*, i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
