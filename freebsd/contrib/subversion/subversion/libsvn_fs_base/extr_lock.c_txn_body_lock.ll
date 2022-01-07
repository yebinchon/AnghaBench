; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_lock.c_txn_body_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_lock.c_txn_body_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_42__ = type { i64 }
%struct.TYPE_40__ = type { %struct.TYPE_38__*, i32 }
%struct.TYPE_38__ = type { %struct.TYPE_39__* }
%struct.TYPE_39__ = type { i64 }
%struct.lock_args = type { i64, %struct.TYPE_41__**, i32, i32, i32, i64, i32, i64, i32 }
%struct.TYPE_41__ = type { i8*, i32, i32, i32, i8*, i8*, i32 }

@svn_node_file = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@SVN_ERR_FS_OUT_OF_DATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Path '%s' doesn't exist in HEAD revision\00", align 1
@SVN_ERR_FS_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Lock failed: newer version of '%s' exists\00", align 1
@SVN_ERR_FS_LOCK_EXPIRED = common dso_local global i64 0, align 8
@SVN_ERR_FS_BAD_LOCK_TOKEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [67 x i8] c"Lock failed: token refers to existing lock with non-matching path.\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_42__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_42__* (i8*, %struct.TYPE_40__*)* @txn_body_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_42__* @txn_body_lock(i8* %0, %struct.TYPE_40__* %1) #0 {
  %3 = alloca %struct.TYPE_42__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_40__*, align 8
  %6 = alloca %struct.lock_args*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_41__*, align 8
  %9 = alloca %struct.TYPE_41__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_41__*, align 8
  %12 = alloca %struct.TYPE_42__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_40__* %1, %struct.TYPE_40__** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.lock_args*
  store %struct.lock_args* %14, %struct.lock_args** %6, align 8
  %15 = load i64, i64* @svn_node_file, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %17 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %16, i32 0, i32 1
  %18 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %17, align 8
  store %struct.TYPE_41__* null, %struct.TYPE_41__** %18, align 8
  %19 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %20 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %23 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.TYPE_42__* @svn_fs_base__get_path_kind(i64* %7, i32 %21, %struct.TYPE_40__* %22, i32 %25)
  %27 = call i32 @SVN_ERR(%struct.TYPE_42__* %26)
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @svn_node_dir, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %2
  %32 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_38__*, %struct.TYPE_38__** %33, align 8
  %35 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %36 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.TYPE_42__* @SVN_FS__ERR_NOT_FILE(%struct.TYPE_38__* %34, i32 %37)
  store %struct.TYPE_42__* %38, %struct.TYPE_42__** %3, align 8
  br label %292

39:                                               ; preds = %2
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @svn_node_none, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %39
  %44 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %45 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @SVN_IS_VALID_REVNUM(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load i32, i32* @SVN_ERR_FS_OUT_OF_DATE, align 4
  %51 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %53 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.TYPE_42__* @svn_error_createf(i32 %50, i32* null, i8* %51, i32 %54)
  store %struct.TYPE_42__* %55, %struct.TYPE_42__** %3, align 8
  br label %292

56:                                               ; preds = %43
  %57 = load i32, i32* @SVN_ERR_FS_NOT_FOUND, align 4
  %58 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %60 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.TYPE_42__* @svn_error_createf(i32 %57, i32* null, i8* %58, i32 %61)
  store %struct.TYPE_42__* %62, %struct.TYPE_42__** %3, align 8
  br label %292

63:                                               ; preds = %39
  %64 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_38__*, %struct.TYPE_38__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_39__*, %struct.TYPE_39__** %67, align 8
  %69 = icmp ne %struct.TYPE_39__* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %63
  %71 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_38__*, %struct.TYPE_38__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_39__*, %struct.TYPE_39__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %70, %63
  %80 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_38__*, %struct.TYPE_38__** %81, align 8
  %83 = call %struct.TYPE_42__* @SVN_FS__ERR_NO_USER(%struct.TYPE_38__* %82)
  store %struct.TYPE_42__* %83, %struct.TYPE_42__** %3, align 8
  br label %292

84:                                               ; preds = %70
  %85 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %86 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @SVN_IS_VALID_REVNUM(i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %122

90:                                               ; preds = %84
  %91 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %92 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %95 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call %struct.TYPE_42__* @svn_fs_base__get_path_created_rev(i64* %10, i32 %93, %struct.TYPE_40__* %94, i32 %97)
  %99 = call i32 @SVN_ERR(%struct.TYPE_42__* %98)
  %100 = load i64, i64* %10, align 8
  %101 = call i64 @SVN_IS_VALID_REVNUM(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %90
  %104 = load i32, i32* @SVN_ERR_FS_OUT_OF_DATE, align 4
  %105 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %106 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call %struct.TYPE_42__* @svn_error_createf(i32 %104, i32* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %107)
  store %struct.TYPE_42__* %108, %struct.TYPE_42__** %3, align 8
  br label %292

109:                                              ; preds = %90
  %110 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %111 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %10, align 8
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load i32, i32* @SVN_ERR_FS_OUT_OF_DATE, align 4
  %117 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %118 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call %struct.TYPE_42__* @svn_error_createf(i32 %116, i32* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  store %struct.TYPE_42__* %120, %struct.TYPE_42__** %3, align 8
  br label %292

121:                                              ; preds = %109
  br label %122

122:                                              ; preds = %121, %84
  %123 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %124 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %123, i32 0, i32 7
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %172

127:                                              ; preds = %122
  %128 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_38__*, %struct.TYPE_38__** %129, align 8
  %131 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %132 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %131, i32 0, i32 7
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %135 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call %struct.TYPE_42__* @svn_fs_bdb__lock_get(%struct.TYPE_41__** %11, %struct.TYPE_38__* %130, i64 %133, %struct.TYPE_40__* %134, i32 %137)
  store %struct.TYPE_42__* %138, %struct.TYPE_42__** %12, align 8
  %139 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %140 = icmp ne %struct.TYPE_42__* %139, null
  br i1 %140, label %141, label %156

141:                                              ; preds = %127
  %142 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @SVN_ERR_FS_LOCK_EXPIRED, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %153, label %147

147:                                              ; preds = %141
  %148 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @SVN_ERR_FS_BAD_LOCK_TOKEN, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %147, %141
  %154 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %155 = call i32 @svn_error_clear(%struct.TYPE_42__* %154)
  br label %171

156:                                              ; preds = %147, %127
  %157 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %158 = call i32 @SVN_ERR(%struct.TYPE_42__* %157)
  %159 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %163 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i64 @strcmp(i32 %161, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %156
  %168 = load i64, i64* @SVN_ERR_FS_BAD_LOCK_TOKEN, align 8
  %169 = call %struct.TYPE_42__* @svn_error_create(i64 %168, i32* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_42__* %169, %struct.TYPE_42__** %3, align 8
  br label %292

170:                                              ; preds = %156
  br label %171

171:                                              ; preds = %170, %153
  br label %172

172:                                              ; preds = %171, %122
  %173 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %174 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %177 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call %struct.TYPE_42__* @svn_fs_base__get_lock_helper(%struct.TYPE_41__** %8, i32 %175, %struct.TYPE_40__* %176, i32 %179)
  %181 = call i32 @SVN_ERR(%struct.TYPE_42__* %180)
  %182 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %183 = icmp ne %struct.TYPE_41__* %182, null
  br i1 %183, label %184, label %206

184:                                              ; preds = %172
  %185 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %186 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %184
  %190 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_38__*, %struct.TYPE_38__** %191, align 8
  %193 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %194 = call %struct.TYPE_42__* @SVN_FS__ERR_PATH_ALREADY_LOCKED(%struct.TYPE_38__* %192, %struct.TYPE_41__* %193)
  store %struct.TYPE_42__* %194, %struct.TYPE_42__** %3, align 8
  br label %292

195:                                              ; preds = %184
  %196 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %203 = call %struct.TYPE_42__* @delete_lock_and_token(i8* %198, i32 %201, %struct.TYPE_40__* %202)
  %204 = call i32 @SVN_ERR(%struct.TYPE_42__* %203)
  br label %205

205:                                              ; preds = %195
  br label %206

206:                                              ; preds = %205, %172
  %207 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %208 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 8
  %210 = call %struct.TYPE_41__* @svn_lock_create(i32 %209)
  store %struct.TYPE_41__* %210, %struct.TYPE_41__** %9, align 8
  %211 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %212 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %211, i32 0, i32 7
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %206
  %216 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %217 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %216, i32 0, i32 6
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %220 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %219, i32 0, i32 7
  %221 = load i64, i64* %220, align 8
  %222 = call i8* @apr_pstrdup(i32 %218, i64 %221)
  %223 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %223, i32 0, i32 0
  store i8* %222, i8** %224, align 8
  br label %236

225:                                              ; preds = %206
  %226 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_38__*, %struct.TYPE_38__** %229, align 8
  %231 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %232 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 8
  %234 = call %struct.TYPE_42__* @svn_fs_base__generate_lock_token(i8** %227, %struct.TYPE_38__* %230, i32 %233)
  %235 = call i32 @SVN_ERR(%struct.TYPE_42__* %234)
  br label %236

236:                                              ; preds = %225, %215
  %237 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %238 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %240, i32 0, i32 6
  store i32 %239, i32* %241, align 8
  %242 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %243 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %242, i32 0, i32 6
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_38__*, %struct.TYPE_38__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_39__*, %struct.TYPE_39__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = call i8* @apr_pstrdup(i32 %244, i64 %251)
  %253 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %253, i32 0, i32 5
  store i8* %252, i8** %254, align 8
  %255 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %256 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %255, i32 0, i32 6
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %259 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %258, i32 0, i32 5
  %260 = load i64, i64* %259, align 8
  %261 = call i8* @apr_pstrdup(i32 %257, i64 %260)
  %262 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %262, i32 0, i32 4
  store i8* %261, i8** %263, align 8
  %264 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %265 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %267, i32 0, i32 3
  store i32 %266, i32* %268, align 8
  %269 = call i32 (...) @apr_time_now()
  %270 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %270, i32 0, i32 2
  store i32 %269, i32* %271, align 4
  %272 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %273 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %276 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %275, i32 0, i32 1
  store i32 %274, i32* %276, align 8
  %277 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %278 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %278, i32 0, i32 0
  %280 = load i8*, i8** %279, align 8
  %281 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %282 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %285 = call %struct.TYPE_42__* @add_lock_and_token(%struct.TYPE_41__* %277, i8* %280, i32 %283, %struct.TYPE_40__* %284)
  %286 = call i32 @SVN_ERR(%struct.TYPE_42__* %285)
  %287 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %288 = load %struct.lock_args*, %struct.lock_args** %6, align 8
  %289 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %288, i32 0, i32 1
  %290 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %289, align 8
  store %struct.TYPE_41__* %287, %struct.TYPE_41__** %290, align 8
  %291 = load %struct.TYPE_42__*, %struct.TYPE_42__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_42__* %291, %struct.TYPE_42__** %3, align 8
  br label %292

292:                                              ; preds = %236, %189, %167, %115, %103, %79, %56, %49, %31
  %293 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  ret %struct.TYPE_42__* %293
}

declare dso_local i32 @SVN_ERR(%struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_42__* @svn_fs_base__get_path_kind(i64*, i32, %struct.TYPE_40__*, i32) #1

declare dso_local %struct.TYPE_42__* @SVN_FS__ERR_NOT_FILE(%struct.TYPE_38__*, i32) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local %struct.TYPE_42__* @svn_error_createf(i32, i32*, i8*, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local %struct.TYPE_42__* @SVN_FS__ERR_NO_USER(%struct.TYPE_38__*) #1

declare dso_local %struct.TYPE_42__* @svn_fs_base__get_path_created_rev(i64*, i32, %struct.TYPE_40__*, i32) #1

declare dso_local %struct.TYPE_42__* @svn_fs_bdb__lock_get(%struct.TYPE_41__**, %struct.TYPE_38__*, i64, %struct.TYPE_40__*, i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_42__*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local %struct.TYPE_42__* @svn_error_create(i64, i32*, i8*) #1

declare dso_local %struct.TYPE_42__* @svn_fs_base__get_lock_helper(%struct.TYPE_41__**, i32, %struct.TYPE_40__*, i32) #1

declare dso_local %struct.TYPE_42__* @SVN_FS__ERR_PATH_ALREADY_LOCKED(%struct.TYPE_38__*, %struct.TYPE_41__*) #1

declare dso_local %struct.TYPE_42__* @delete_lock_and_token(i8*, i32, %struct.TYPE_40__*) #1

declare dso_local %struct.TYPE_41__* @svn_lock_create(i32) #1

declare dso_local i8* @apr_pstrdup(i32, i64) #1

declare dso_local %struct.TYPE_42__* @svn_fs_base__generate_lock_token(i8**, %struct.TYPE_38__*, i32) #1

declare dso_local i32 @apr_time_now(...) #1

declare dso_local %struct.TYPE_42__* @add_lock_and_token(%struct.TYPE_41__*, i8*, i32, %struct.TYPE_40__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
