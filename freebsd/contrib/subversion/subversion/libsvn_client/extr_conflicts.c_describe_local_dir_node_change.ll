; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_describe_local_dir_node_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_describe_local_dir_node_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@svn_wc_operation_update = common dso_local global i32 0, align 4
@svn_wc_operation_switch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"A directory containing uncommitted changes was found in the working copy.\00", align 1
@svn_wc_operation_merge = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [117 x i8] c"A directory which differs from the corresponding directory on the merge source branch was found in the working copy.\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"A directory which already occupies this path was found in the working copy.\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"An unversioned directory was found in the working copy.\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"A deleted directory was found in the working copy.\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"No such directory was found in the working copy.\00", align 1
@.str.6 = private unnamed_addr constant [144 x i8] c"No such directory was found in the merge target working copy.\0APerhaps the directory has been deleted or moved away in the repository's history?\00", align 1
@.str.7 = private unnamed_addr constant [102 x i8] c"A directory scheduled to be added to the repository in the next commit was found in the working copy.\00", align 1
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [94 x i8] c"The directory in the working copy had been moved away at the time this conflict was recorded.\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"The directory in the working copy was moved away to\0A'%s'.\00", align 1
@.str.10 = private unnamed_addr constant [74 x i8] c"The directory had been moved away at the time this conflict was recorded.\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"The directory was moved away to\0A'%s'.\00", align 1
@.str.12 = private unnamed_addr constant [72 x i8] c"A directory had been moved here at the time this conflict was recorded.\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"A directory was moved here from\0A'%s'.\00", align 1
@.str.14 = private unnamed_addr constant [58 x i8] c"A directory was moved here in the working copy from\0A'%s'.\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_14__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (i8**, %struct.TYPE_16__*, %struct.TYPE_15__*, i32*, i32*)* @describe_local_dir_node_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @describe_local_dir_node_change(i8** %0, %struct.TYPE_16__* %1, %struct.TYPE_15__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i8** %0, i8*** %7, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %22 = call i32 @svn_client_conflict_get_local_change(%struct.TYPE_16__* %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %24 = call i32 @svn_client_conflict_get_operation(%struct.TYPE_16__* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %12, align 4
  switch i32 %25, label %249 [
    i32 134, label %26
    i32 130, label %46
    i32 128, label %49
    i32 135, label %52
    i32 133, label %55
    i32 136, label %75
    i32 129, label %75
    i32 132, label %78
    i32 131, label %171
  ]

26:                                               ; preds = %5
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @svn_wc_operation_update, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @svn_wc_operation_switch, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %26
  %35 = call i8* @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %36 = load i8**, i8*** %7, align 8
  store i8* %35, i8** %36, align 8
  br label %45

37:                                               ; preds = %30
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @svn_wc_operation_merge, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = call i8* @_(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i8**, i8*** %7, align 8
  store i8* %42, i8** %43, align 8
  br label %44

44:                                               ; preds = %41, %37
  br label %45

45:                                               ; preds = %44, %34
  br label %249

46:                                               ; preds = %5
  %47 = call i8* @_(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i8**, i8*** %7, align 8
  store i8* %47, i8** %48, align 8
  br label %249

49:                                               ; preds = %5
  %50 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i8**, i8*** %7, align 8
  store i8* %50, i8** %51, align 8
  br label %249

52:                                               ; preds = %5
  %53 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i8**, i8*** %7, align 8
  store i8* %53, i8** %54, align 8
  br label %249

55:                                               ; preds = %5
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @svn_wc_operation_update, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @svn_wc_operation_switch, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59, %55
  %64 = call i8* @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %65 = load i8**, i8*** %7, align 8
  store i8* %64, i8** %65, align 8
  br label %74

66:                                               ; preds = %59
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @svn_wc_operation_merge, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = call i8* @_(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.6, i64 0, i64 0))
  %72 = load i8**, i8*** %7, align 8
  store i8* %71, i8** %72, align 8
  br label %73

73:                                               ; preds = %70, %66
  br label %74

74:                                               ; preds = %73, %63
  br label %249

75:                                               ; preds = %5, %5
  %76 = call i8* @_(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.7, i64 0, i64 0))
  %77 = load i8**, i8*** %7, align 8
  store i8* %76, i8** %77, align 8
  br label %249

78:                                               ; preds = %5
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = call %struct.TYPE_14__* @svn_wc__node_was_moved_away(i8** %14, i32* null, i32 %81, i32 %84, i32* %85, i32* %86)
  store %struct.TYPE_14__* %87, %struct.TYPE_14__** %15, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %89 = icmp ne %struct.TYPE_14__* %88, null
  br i1 %89, label %90, label %103

90:                                               ; preds = %78
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  store i8* null, i8** %14, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %98 = call i32 @svn_error_clear(%struct.TYPE_14__* %97)
  br label %102

99:                                               ; preds = %90
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %101 = call %struct.TYPE_14__* @svn_error_trace(%struct.TYPE_14__* %100)
  store %struct.TYPE_14__* %101, %struct.TYPE_14__** %6, align 8
  br label %251

102:                                              ; preds = %96
  br label %103

103:                                              ; preds = %102, %78
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @svn_wc_operation_update, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @svn_wc_operation_switch, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %138

111:                                              ; preds = %107, %103
  %112 = load i8*, i8** %14, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = call i8* @_(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.8, i64 0, i64 0))
  %116 = load i8**, i8*** %7, align 8
  store i8* %115, i8** %116, align 8
  br label %137

117:                                              ; preds = %111
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %11, align 8
  %125 = load i32*, i32** %11, align 8
  %126 = call i32 @svn_wc__get_wcroot(i8** %16, i32 %120, i32 %123, i32* %124, i32* %125)
  %127 = call i32 @SVN_ERR(i32 %126)
  %128 = load i32*, i32** %10, align 8
  %129 = call i8* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i64 0, i64 0))
  %130 = load i8*, i8** %16, align 8
  %131 = load i8*, i8** %14, align 8
  %132 = call i32 @svn_dirent_skip_ancestor(i8* %130, i8* %131)
  %133 = load i32*, i32** %11, align 8
  %134 = call i32 @svn_dirent_local_style(i32 %132, i32* %133)
  %135 = call i8* @apr_psprintf(i32* %128, i8* %129, i32 %134)
  %136 = load i8**, i8*** %7, align 8
  store i8* %135, i8** %136, align 8
  br label %137

137:                                              ; preds = %117, %114
  br label %170

138:                                              ; preds = %107
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* @svn_wc_operation_merge, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %169

142:                                              ; preds = %138
  %143 = load i8*, i8** %14, align 8
  %144 = icmp eq i8* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = call i8* @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.10, i64 0, i64 0))
  %147 = load i8**, i8*** %7, align 8
  store i8* %146, i8** %147, align 8
  br label %168

148:                                              ; preds = %142
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %11, align 8
  %156 = load i32*, i32** %11, align 8
  %157 = call i32 @svn_wc__get_wcroot(i8** %17, i32 %151, i32 %154, i32* %155, i32* %156)
  %158 = call i32 @SVN_ERR(i32 %157)
  %159 = load i32*, i32** %10, align 8
  %160 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  %161 = load i8*, i8** %17, align 8
  %162 = load i8*, i8** %14, align 8
  %163 = call i32 @svn_dirent_skip_ancestor(i8* %161, i8* %162)
  %164 = load i32*, i32** %11, align 8
  %165 = call i32 @svn_dirent_local_style(i32 %163, i32* %164)
  %166 = call i8* @apr_psprintf(i32* %159, i8* %160, i32 %165)
  %167 = load i8**, i8*** %7, align 8
  store i8* %166, i8** %167, align 8
  br label %168

168:                                              ; preds = %148, %145
  br label %169

169:                                              ; preds = %168, %138
  br label %170

170:                                              ; preds = %169, %137
  br label %249

171:                                              ; preds = %5
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %11, align 8
  %179 = load i32*, i32** %11, align 8
  %180 = call i32 @svn_wc__node_was_moved_here(i8** %18, i32* null, i32 %174, i32 %177, i32* %178, i32* %179)
  %181 = call i32 @SVN_ERR(i32 %180)
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* @svn_wc_operation_update, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %189, label %185

185:                                              ; preds = %171
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* @svn_wc_operation_switch, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %216

189:                                              ; preds = %185, %171
  %190 = load i8*, i8** %18, align 8
  %191 = icmp eq i8* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = call i8* @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.12, i64 0, i64 0))
  %194 = load i8**, i8*** %7, align 8
  store i8* %193, i8** %194, align 8
  br label %215

195:                                              ; preds = %189
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %11, align 8
  %203 = load i32*, i32** %11, align 8
  %204 = call i32 @svn_wc__get_wcroot(i8** %19, i32 %198, i32 %201, i32* %202, i32* %203)
  %205 = call i32 @SVN_ERR(i32 %204)
  %206 = load i32*, i32** %10, align 8
  %207 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  %208 = load i8*, i8** %19, align 8
  %209 = load i8*, i8** %18, align 8
  %210 = call i32 @svn_dirent_skip_ancestor(i8* %208, i8* %209)
  %211 = load i32*, i32** %11, align 8
  %212 = call i32 @svn_dirent_local_style(i32 %210, i32* %211)
  %213 = call i8* @apr_psprintf(i32* %206, i8* %207, i32 %212)
  %214 = load i8**, i8*** %7, align 8
  store i8* %213, i8** %214, align 8
  br label %215

215:                                              ; preds = %195, %192
  br label %248

216:                                              ; preds = %185
  %217 = load i32, i32* %13, align 4
  %218 = load i32, i32* @svn_wc_operation_merge, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %247

220:                                              ; preds = %216
  %221 = load i8*, i8** %18, align 8
  %222 = icmp eq i8* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = call i8* @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.12, i64 0, i64 0))
  %225 = load i8**, i8*** %7, align 8
  store i8* %224, i8** %225, align 8
  br label %246

226:                                              ; preds = %220
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32*, i32** %11, align 8
  %234 = load i32*, i32** %11, align 8
  %235 = call i32 @svn_wc__get_wcroot(i8** %20, i32 %229, i32 %232, i32* %233, i32* %234)
  %236 = call i32 @SVN_ERR(i32 %235)
  %237 = load i32*, i32** %10, align 8
  %238 = call i8* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.14, i64 0, i64 0))
  %239 = load i8*, i8** %20, align 8
  %240 = load i8*, i8** %18, align 8
  %241 = call i32 @svn_dirent_skip_ancestor(i8* %239, i8* %240)
  %242 = load i32*, i32** %11, align 8
  %243 = call i32 @svn_dirent_local_style(i32 %241, i32* %242)
  %244 = call i8* @apr_psprintf(i32* %237, i8* %238, i32 %243)
  %245 = load i8**, i8*** %7, align 8
  store i8* %244, i8** %245, align 8
  br label %246

246:                                              ; preds = %226, %223
  br label %247

247:                                              ; preds = %246, %216
  br label %248

248:                                              ; preds = %247, %215
  br label %249

249:                                              ; preds = %248, %5, %170, %75, %74, %52, %49, %46, %45
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_14__* %250, %struct.TYPE_14__** %6, align 8
  br label %251

251:                                              ; preds = %249, %99
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  ret %struct.TYPE_14__* %252
}

declare dso_local i32 @svn_client_conflict_get_local_change(%struct.TYPE_16__*) #1

declare dso_local i32 @svn_client_conflict_get_operation(%struct.TYPE_16__*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local %struct.TYPE_14__* @svn_wc__node_was_moved_away(i8**, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @svn_error_trace(%struct.TYPE_14__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__get_wcroot(i8**, i32, i32, i32*, i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i32) #1

declare dso_local i32 @svn_dirent_local_style(i32, i32*) #1

declare dso_local i32 @svn_dirent_skip_ancestor(i8*, i8*) #1

declare dso_local i32 @svn_wc__node_was_moved_here(i8**, i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
