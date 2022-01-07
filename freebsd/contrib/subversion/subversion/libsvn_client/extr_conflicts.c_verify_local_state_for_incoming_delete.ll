; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_verify_local_state_for_incoming_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_verify_local_state_for_incoming_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.conflict_tree_incoming_delete_details* }
%struct.conflict_tree_incoming_delete_details = type { i64, i64, i8* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@svn_wc_operation_update = common dso_local global i64 0, align 8
@svn_wc_operation_switch = common dso_local global i64 0, align 8
@SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [110 x i8] c"Conflict resolution option '%d' requires details for tree conflict at '%s' to be fetched from the repository.\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [90 x i8] c"Cannot resolve tree conflict on '%s' (expected a copied item, but the item is not a copy)\00", align 1
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [74 x i8] c"Could not find the revision in which '%s' was deleted from the repository\00", align 1
@.str.3 = private unnamed_addr constant [132 x i8] c"Cannot resolve tree conflict on '%s' (expected an item copied from a revision smaller than r%ld, but the item was copied from r%ld)\00", align 1
@.str.4 = private unnamed_addr constant [131 x i8] c"Cannot resolve tree conflict on '%s' (expected an item copied from a revision larger than r%ld, but the item was copied from r%ld)\00", align 1
@.str.5 = private unnamed_addr constant [130 x i8] c"Cannot resolve tree conflict on '%s' (expected an item copied from '^/%s' or from '^/%s' but the item was copied from '^/%s@%ld')\00", align 1
@.str.6 = private unnamed_addr constant [116 x i8] c"Cannot resolve tree conflict on '%s' (expected an item copied from '^/%s', but the item was copied from '^/%s@%ld')\00", align 1
@svn_wc_operation_merge = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [78 x i8] c"Cannot resolve tree conflict on '%s' (expected node kind '%s' but found '%s')\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_11__*, i32*)* @verify_local_state_for_incoming_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @verify_local_state_for_incoming_delete(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, %struct.TYPE_11__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.conflict_tree_incoming_delete_details*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = call i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_12__* %21)
  store i8* %22, i8** %10, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @svn_wc__get_wcroot(i8** %11, i32 %25, i8* %26, i32* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = call i64 @svn_client_conflict_get_operation(%struct.TYPE_12__* %31)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* @svn_wc_operation_update, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %4
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @svn_wc_operation_switch, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %230

40:                                               ; preds = %36, %4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %42, align 8
  store %struct.conflict_tree_incoming_delete_details* %43, %struct.conflict_tree_incoming_delete_details** %13, align 8
  %44 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %13, align 8
  %45 = icmp eq %struct.conflict_tree_incoming_delete_details* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %48 = call i32 @_(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @svn_dirent_local_style(i8* %52, i32* %53)
  %55 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %47, i32* null, i32 %48, i32 %51, i32 %54)
  store i32* %55, i32** %5, align 8
  br label %263

56:                                               ; preds = %40
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = load i32, i32* @FALSE, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @svn_wc__node_get_origin(i32* %14, i64* %15, i8** %16, i32* null, i32* null, i32* null, i32* null, i32 %59, i8* %60, i32 %61, i32* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %56
  %69 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %70 = call i32 @_(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i8*, i8** %11, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @svn_dirent_skip_ancestor(i8* %71, i32 %74)
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @svn_dirent_local_style(i8* %75, i32* %76)
  %78 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %69, i32* null, i32 %70, i32 %77)
  store i32* %78, i32** %5, align 8
  br label %263

79:                                               ; preds = %56
  %80 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %13, align 8
  %81 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %79
  %86 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %13, align 8
  %87 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %85
  %92 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %93 = call i32 @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i8*, i8** %11, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i8* @svn_dirent_skip_ancestor(i8* %94, i32 %97)
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @svn_dirent_local_style(i8* %98, i32* %99)
  %101 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %92, i32* null, i32 %93, i32 %100)
  store i32* %101, i32** %5, align 8
  br label %263

102:                                              ; preds = %85, %79
  %103 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %13, align 8
  %104 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %129

108:                                              ; preds = %102
  %109 = load i64, i64* %15, align 8
  %110 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %13, align 8
  %111 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp sge i64 %109, %112
  br i1 %113, label %114, label %129

114:                                              ; preds = %108
  %115 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %116 = call i32 @_(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.3, i64 0, i64 0))
  %117 = load i8*, i8** %11, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i8* @svn_dirent_skip_ancestor(i8* %117, i32 %120)
  %122 = load i32*, i32** %9, align 8
  %123 = call i32 @svn_dirent_local_style(i8* %121, i32* %122)
  %124 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %13, align 8
  %125 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %15, align 8
  %128 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %115, i32* null, i32 %116, i32 %123, i64 %126, i64 %127)
  store i32* %128, i32** %5, align 8
  br label %263

129:                                              ; preds = %108, %102
  %130 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %13, align 8
  %131 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %156

135:                                              ; preds = %129
  %136 = load i64, i64* %15, align 8
  %137 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %13, align 8
  %138 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp slt i64 %136, %139
  br i1 %140, label %141, label %156

141:                                              ; preds = %135
  %142 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %143 = call i32 @_(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.4, i64 0, i64 0))
  %144 = load i8*, i8** %11, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i8* @svn_dirent_skip_ancestor(i8* %144, i32 %147)
  %149 = load i32*, i32** %9, align 8
  %150 = call i32 @svn_dirent_local_style(i8* %148, i32* %149)
  %151 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %13, align 8
  %152 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %15, align 8
  %155 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %142, i32* null, i32 %143, i32 %150, i64 %153, i64 %154)
  store i32* %155, i32** %5, align 8
  br label %263

156:                                              ; preds = %135, %129
  %157 = load i64, i64* %12, align 8
  %158 = load i64, i64* @svn_wc_operation_update, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %195

160:                                              ; preds = %156
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %162 = load i32*, i32** %9, align 8
  %163 = load i32*, i32** %9, align 8
  %164 = call i32 @svn_client_conflict_get_incoming_old_repos_location(i8** %17, i32* null, i32* null, %struct.TYPE_12__* %161, i32* %162, i32* %163)
  %165 = call i32 @SVN_ERR(i32 %164)
  %166 = load i8*, i8** %16, align 8
  %167 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %13, align 8
  %168 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %167, i32 0, i32 2
  %169 = load i8*, i8** %168, align 8
  %170 = call i64 @strcmp(i8* %166, i8* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %194

172:                                              ; preds = %160
  %173 = load i8*, i8** %16, align 8
  %174 = load i8*, i8** %17, align 8
  %175 = call i64 @strcmp(i8* %173, i8* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %194

177:                                              ; preds = %172
  %178 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %179 = call i32 @_(i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.5, i64 0, i64 0))
  %180 = load i8*, i8** %11, align 8
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i8* @svn_dirent_skip_ancestor(i8* %180, i32 %183)
  %185 = load i32*, i32** %9, align 8
  %186 = call i32 @svn_dirent_local_style(i8* %184, i32* %185)
  %187 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %13, align 8
  %188 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %187, i32 0, i32 2
  %189 = load i8*, i8** %188, align 8
  %190 = load i8*, i8** %17, align 8
  %191 = load i8*, i8** %16, align 8
  %192 = load i64, i64* %15, align 8
  %193 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %178, i32* null, i32 %179, i32 %186, i8* %189, i8* %190, i8* %191, i64 %192)
  store i32* %193, i32** %5, align 8
  br label %263

194:                                              ; preds = %172, %160
  br label %225

195:                                              ; preds = %156
  %196 = load i64, i64* %12, align 8
  %197 = load i64, i64* @svn_wc_operation_switch, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %224

199:                                              ; preds = %195
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %201 = load i32*, i32** %9, align 8
  %202 = load i32*, i32** %9, align 8
  %203 = call i32 @svn_client_conflict_get_incoming_old_repos_location(i8** %18, i32* null, i32* null, %struct.TYPE_12__* %200, i32* %201, i32* %202)
  %204 = call i32 @SVN_ERR(i32 %203)
  %205 = load i8*, i8** %16, align 8
  %206 = load i8*, i8** %18, align 8
  %207 = call i64 @strcmp(i8* %205, i8* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %223

209:                                              ; preds = %199
  %210 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %211 = call i32 @_(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0))
  %212 = load i8*, i8** %11, align 8
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i8* @svn_dirent_skip_ancestor(i8* %212, i32 %215)
  %217 = load i32*, i32** %9, align 8
  %218 = call i32 @svn_dirent_local_style(i8* %216, i32* %217)
  %219 = load i8*, i8** %18, align 8
  %220 = load i8*, i8** %16, align 8
  %221 = load i64, i64* %15, align 8
  %222 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %210, i32* null, i32 %211, i32 %218, i8* %219, i8* %220, i64 %221)
  store i32* %222, i32** %5, align 8
  br label %263

223:                                              ; preds = %199
  br label %224

224:                                              ; preds = %223, %195
  br label %225

225:                                              ; preds = %224, %194
  br label %226

226:                                              ; preds = %225
  br label %227

227:                                              ; preds = %226
  br label %228

228:                                              ; preds = %227
  br label %229

229:                                              ; preds = %228
  br label %261

230:                                              ; preds = %36
  %231 = load i64, i64* %12, align 8
  %232 = load i64, i64* @svn_wc_operation_merge, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %260

234:                                              ; preds = %230
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %236 = call i64 @svn_client_conflict_tree_get_victim_node_kind(%struct.TYPE_12__* %235)
  store i64 %236, i64* %19, align 8
  %237 = load i8*, i8** %10, align 8
  %238 = load i32*, i32** %9, align 8
  %239 = call i32 @svn_io_check_path(i8* %237, i64* %20, i32* %238)
  %240 = call i32 @SVN_ERR(i32 %239)
  %241 = load i64, i64* %19, align 8
  %242 = load i64, i64* %20, align 8
  %243 = icmp ne i64 %241, %242
  br i1 %243, label %244, label %259

244:                                              ; preds = %234
  %245 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %246 = call i32 @_(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.7, i64 0, i64 0))
  %247 = load i8*, i8** %11, align 8
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i8* @svn_dirent_skip_ancestor(i8* %247, i32 %250)
  %252 = load i32*, i32** %9, align 8
  %253 = call i32 @svn_dirent_local_style(i8* %251, i32* %252)
  %254 = load i64, i64* %19, align 8
  %255 = call i64 @svn_node_kind_to_word(i64 %254)
  %256 = load i64, i64* %20, align 8
  %257 = call i64 @svn_node_kind_to_word(i64 %256)
  %258 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %245, i32* null, i32 %246, i32 %253, i64 %255, i64 %257)
  store i32* %258, i32** %5, align 8
  br label %263

259:                                              ; preds = %234
  br label %260

260:                                              ; preds = %259, %230
  br label %261

261:                                              ; preds = %260, %229
  %262 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %262, i32** %5, align 8
  br label %263

263:                                              ; preds = %261, %244, %209, %177, %141, %114, %91, %68, %46
  %264 = load i32*, i32** %5, align 8
  ret i32* %264
}

declare dso_local i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_12__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__get_wcroot(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i64 @svn_client_conflict_get_operation(%struct.TYPE_12__*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_wc__node_get_origin(i32*, i64*, i8**, i32*, i32*, i32*, i32*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i8* @svn_dirent_skip_ancestor(i8*, i32) #1

declare dso_local i32 @svn_client_conflict_get_incoming_old_repos_location(i8**, i32*, i32*, %struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @svn_client_conflict_tree_get_victim_node_kind(%struct.TYPE_12__*) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i64 @svn_node_kind_to_word(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
