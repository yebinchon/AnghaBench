; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_close_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_close_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton_t = type { i8*, i32*, i32, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_16__*, i32, i32*, i64, i32, i64, %struct.edit_baton_t*, %struct.dir_baton_t* }
%struct.TYPE_16__ = type { i64 }
%struct.edit_baton_t = type { i64, %struct.TYPE_15__*, i32, i32, i32, i32, i64 }
%struct.TYPE_15__ = type { i32 (i32, i32, i32, i8*, i8*, i32*, i32*, i32, i32*, i32, %struct.TYPE_15__*, i32*)*, i32 (i32, i32, i8*, i32*, i32, %struct.TYPE_15__*, i32*)* }
%struct.dir_baton_t = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_checksum_md5 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Checksum mismatch for '%s'\00", align 1
@SVN_WC_TRANSLATE_TO_NF = common dso_local global i32 0, align 4
@SVN_WC_TRANSLATE_USE_GLOBAL_TMP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @close_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @close_file(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.file_baton_t*, align 8
  %9 = alloca %struct.dir_baton_t*, align 8
  %10 = alloca %struct.edit_baton_t*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_16__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to %struct.file_baton_t*
  store %struct.file_baton_t* %22, %struct.file_baton_t** %8, align 8
  %23 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %24 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %23, i32 0, i32 17
  %25 = load %struct.dir_baton_t*, %struct.dir_baton_t** %24, align 8
  store %struct.dir_baton_t* %25, %struct.dir_baton_t** %9, align 8
  %26 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %27 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %26, i32 0, i32 16
  %28 = load %struct.edit_baton_t*, %struct.edit_baton_t** %27, align 8
  store %struct.edit_baton_t* %28, %struct.edit_baton_t** %10, align 8
  %29 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %30 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %11, align 8
  %32 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %33 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %32, i32 0, i32 15
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %3
  %37 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %38 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @svn_pool_destroy(i32* %39)
  %41 = load %struct.dir_baton_t*, %struct.dir_baton_t** %9, align 8
  %42 = call i32 @maybe_done(%struct.dir_baton_t* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %44, i32** %4, align 8
  br label %327

45:                                               ; preds = %3
  %46 = load i8*, i8** %6, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %103

48:                                               ; preds = %45
  %49 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %50 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %55 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %54, i32 0, i32 14
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = call %struct.TYPE_16__* @svn_checksum__from_digest_md5(i32 %56, i32* %57)
  store %struct.TYPE_16__* %58, %struct.TYPE_16__** %15, align 8
  br label %63

59:                                               ; preds = %48
  %60 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %61 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %60, i32 0, i32 10
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  store %struct.TYPE_16__* %62, %struct.TYPE_16__** %15, align 8
  br label %63

63:                                               ; preds = %59, %53
  %64 = load i64, i64* @svn_checksum_md5, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @svn_checksum_parse_hex(%struct.TYPE_16__** %14, i64 %64, i8* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @svn_checksum_md5, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %63
  %75 = load %struct.edit_baton_t*, %struct.edit_baton_t** %10, align 8
  %76 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %79 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @svn_wc__db_pristine_get_md5(%struct.TYPE_16__** %15, i32 %77, i32 %80, %struct.TYPE_16__* %81, i32* %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  br label %86

86:                                               ; preds = %74, %63
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %89 = call i32 @svn_checksum_match(%struct.TYPE_16__* %87, %struct.TYPE_16__* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %86
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %96 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %97 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %96, i32 0, i32 9
  %98 = load i32, i32* %97, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = call i32 @svn_dirent_local_style(i32 %98, i32* %99)
  %101 = call i32* @svn_checksum_mismatch_err(%struct.TYPE_16__* %92, %struct.TYPE_16__* %93, i32* %94, i32 %95, i32 %100)
  store i32* %101, i32** %4, align 8
  br label %327

102:                                              ; preds = %86
  br label %103

103:                                              ; preds = %102, %45
  %104 = load %struct.edit_baton_t*, %struct.edit_baton_t** %10, align 8
  %105 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %103
  %109 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %110 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %126, label %113

113:                                              ; preds = %108
  %114 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %115 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %113
  %119 = load %struct.dir_baton_t*, %struct.dir_baton_t** %9, align 8
  %120 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %121 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = call i32 @handle_local_only(%struct.dir_baton_t* %119, i32 %122, i32* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  br label %126

126:                                              ; preds = %118, %113, %108, %103
  %127 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %128 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %127, i32 0, i32 13
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i32*, i32** %11, align 8
  %133 = call i32* @apr_hash_make(i32* %132)
  store i32* %133, i32** %16, align 8
  br label %138

134:                                              ; preds = %126
  %135 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %136 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %135, i32 0, i32 12
  %137 = load i32*, i32** %136, align 8
  store i32* %137, i32** %16, align 8
  br label %138

138:                                              ; preds = %134, %131
  %139 = load i32*, i32** %16, align 8
  %140 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %141 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %140, i32 0, i32 11
  %142 = load i32, i32* %141, align 8
  %143 = load i32*, i32** %11, align 8
  %144 = call i32* @svn_prop__patch(i32* %139, i32 %142, i32* %143)
  store i32* %144, i32** %13, align 8
  %145 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %146 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  store i8* %147, i8** %12, align 8
  %148 = load i8*, i8** %12, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %168, label %150

150:                                              ; preds = %138
  %151 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %152 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %151, i32 0, i32 10
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %152, align 8
  %154 = call i32 @assert(%struct.TYPE_16__* %153)
  %155 = load %struct.edit_baton_t*, %struct.edit_baton_t** %10, align 8
  %156 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.edit_baton_t*, %struct.edit_baton_t** %10, align 8
  %159 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %162 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %161, i32 0, i32 10
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %162, align 8
  %164 = load i32*, i32** %11, align 8
  %165 = load i32*, i32** %11, align 8
  %166 = call i32 @svn_wc__db_pristine_get_path(i8** %12, i32 %157, i32 %160, %struct.TYPE_16__* %163, i32* %164, i32* %165)
  %167 = call i32 @SVN_ERR(i32 %166)
  br label %168

168:                                              ; preds = %150, %138
  %169 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %170 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %198

173:                                              ; preds = %168
  %174 = load %struct.edit_baton_t*, %struct.edit_baton_t** %10, align 8
  %175 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %174, i32 0, i32 1
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 1
  %178 = load i32 (i32, i32, i8*, i32*, i32, %struct.TYPE_15__*, i32*)*, i32 (i32, i32, i8*, i32*, i32, %struct.TYPE_15__*, i32*)** %177, align 8
  %179 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %180 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %179, i32 0, i32 8
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %183 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %182, i32 0, i32 7
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %186 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = load i32*, i32** %13, align 8
  %189 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %190 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.edit_baton_t*, %struct.edit_baton_t** %10, align 8
  %193 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %192, i32 0, i32 1
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %193, align 8
  %195 = load i32*, i32** %11, align 8
  %196 = call i32 %178(i32 %181, i32 %184, i8* %187, i32* %188, i32 %191, %struct.TYPE_15__* %194, i32* %195)
  %197 = call i32 @SVN_ERR(i32 %196)
  br label %295

198:                                              ; preds = %168
  %199 = load %struct.edit_baton_t*, %struct.edit_baton_t** %10, align 8
  %200 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %199, i32 0, i32 6
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %227

203:                                              ; preds = %198
  %204 = load %struct.edit_baton_t*, %struct.edit_baton_t** %10, align 8
  %205 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %208 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %207, i32 0, i32 9
  %209 = load i32, i32* %208, align 8
  %210 = load i32*, i32** %11, align 8
  %211 = load i32*, i32** %11, align 8
  %212 = call i32 @svn_wc__db_read_pristine_info(i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_16__** %20, i32* null, i32* null, i32** %17, i32 %206, i32 %209, i32* %210, i32* %211)
  %213 = call i32 @SVN_ERR(i32 %212)
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %215 = call i32 @assert(%struct.TYPE_16__* %214)
  %216 = load %struct.edit_baton_t*, %struct.edit_baton_t** %10, align 8
  %217 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.edit_baton_t*, %struct.edit_baton_t** %10, align 8
  %220 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %223 = load i32*, i32** %11, align 8
  %224 = load i32*, i32** %11, align 8
  %225 = call i32 @svn_wc__db_pristine_get_path(i8** %19, i32 %218, i32 %221, %struct.TYPE_16__* %222, i32* %223, i32* %224)
  %226 = call i32 @SVN_ERR(i32 %225)
  br label %260

227:                                              ; preds = %198
  %228 = load %struct.edit_baton_t*, %struct.edit_baton_t** %10, align 8
  %229 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %232 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %231, i32 0, i32 9
  %233 = load i32, i32* %232, align 8
  %234 = load i32*, i32** %11, align 8
  %235 = load i32*, i32** %11, align 8
  %236 = call i32 @svn_wc__db_read_props(i32** %17, i32 %230, i32 %233, i32* %234, i32* %235)
  %237 = call i32 @SVN_ERR(i32 %236)
  %238 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %239 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %238, i32 0, i32 9
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.edit_baton_t*, %struct.edit_baton_t** %10, align 8
  %242 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %245 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %244, i32 0, i32 9
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @SVN_WC_TRANSLATE_TO_NF, align 4
  %248 = load i32, i32* @SVN_WC_TRANSLATE_USE_GLOBAL_TMP, align 4
  %249 = or i32 %247, %248
  %250 = load %struct.edit_baton_t*, %struct.edit_baton_t** %10, align 8
  %251 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.edit_baton_t*, %struct.edit_baton_t** %10, align 8
  %254 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = load i32*, i32** %11, align 8
  %257 = load i32*, i32** %11, align 8
  %258 = call i32 @svn_wc__internal_translated_file(i8** %19, i32 %240, i32 %243, i32 %246, i32 %249, i32 %252, i32 %255, i32* %256, i32* %257)
  %259 = call i32 @SVN_ERR(i32 %258)
  br label %260

260:                                              ; preds = %227, %203
  %261 = load i32*, i32** %17, align 8
  %262 = load i32*, i32** %13, align 8
  %263 = load i32*, i32** %11, align 8
  %264 = call i32 @svn_prop_diffs(i32** %18, i32* %261, i32* %262, i32* %263)
  %265 = call i32 @SVN_ERR(i32 %264)
  %266 = load %struct.edit_baton_t*, %struct.edit_baton_t** %10, align 8
  %267 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %266, i32 0, i32 1
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 0
  %270 = load i32 (i32, i32, i32, i8*, i8*, i32*, i32*, i32, i32*, i32, %struct.TYPE_15__*, i32*)*, i32 (i32, i32, i32, i8*, i8*, i32*, i32*, i32, i32*, i32, %struct.TYPE_15__*, i32*)** %269, align 8
  %271 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %272 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %271, i32 0, i32 8
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %275 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %274, i32 0, i32 7
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %278 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %277, i32 0, i32 6
  %279 = load i32, i32* %278, align 4
  %280 = load i8*, i8** %12, align 8
  %281 = load i8*, i8** %19, align 8
  %282 = load i32*, i32** %13, align 8
  %283 = load i32*, i32** %17, align 8
  %284 = load i32, i32* @TRUE, align 4
  %285 = load i32*, i32** %18, align 8
  %286 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %287 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.edit_baton_t*, %struct.edit_baton_t** %10, align 8
  %290 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %289, i32 0, i32 1
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %290, align 8
  %292 = load i32*, i32** %11, align 8
  %293 = call i32 %270(i32 %273, i32 %276, i32 %279, i8* %280, i8* %281, i32* %282, i32* %283, i32 %284, i32* %285, i32 %288, %struct.TYPE_15__* %291, i32* %292)
  %294 = call i32 @SVN_ERR(i32 %293)
  br label %295

295:                                              ; preds = %260, %173
  %296 = load %struct.edit_baton_t*, %struct.edit_baton_t** %10, align 8
  %297 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %318, label %300

300:                                              ; preds = %295
  %301 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %302 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %301, i32 0, i32 4
  %303 = load i64, i64* %302, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %318, label %305

305:                                              ; preds = %300
  %306 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %307 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %318, label %310

310:                                              ; preds = %305
  %311 = load %struct.dir_baton_t*, %struct.dir_baton_t** %9, align 8
  %312 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %313 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = load i32*, i32** %11, align 8
  %316 = call i32 @handle_local_only(%struct.dir_baton_t* %311, i32 %314, i32* %315)
  %317 = call i32 @SVN_ERR(i32 %316)
  br label %318

318:                                              ; preds = %310, %305, %300, %295
  %319 = load %struct.file_baton_t*, %struct.file_baton_t** %8, align 8
  %320 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %319, i32 0, i32 1
  %321 = load i32*, i32** %320, align 8
  %322 = call i32 @svn_pool_destroy(i32* %321)
  %323 = load %struct.dir_baton_t*, %struct.dir_baton_t** %9, align 8
  %324 = call i32 @maybe_done(%struct.dir_baton_t* %323)
  %325 = call i32 @SVN_ERR(i32 %324)
  %326 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %326, i32** %4, align 8
  br label %327

327:                                              ; preds = %318, %91, %36
  %328 = load i32*, i32** %4, align 8
  ret i32* %328
}

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @maybe_done(%struct.dir_baton_t*) #1

declare dso_local %struct.TYPE_16__* @svn_checksum__from_digest_md5(i32, i32*) #1

declare dso_local i32 @svn_checksum_parse_hex(%struct.TYPE_16__**, i64, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_pristine_get_md5(%struct.TYPE_16__**, i32, i32, %struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32 @svn_checksum_match(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32* @svn_checksum_mismatch_err(%struct.TYPE_16__*, %struct.TYPE_16__*, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i32, i32*) #1

declare dso_local i32 @handle_local_only(%struct.dir_baton_t*, i32, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @svn_prop__patch(i32*, i32, i32*) #1

declare dso_local i32 @assert(%struct.TYPE_16__*) #1

declare dso_local i32 @svn_wc__db_pristine_get_path(i8**, i32, i32, %struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_read_pristine_info(i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_16__**, i32*, i32*, i32**, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_read_props(i32**, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__internal_translated_file(i8**, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_prop_diffs(i32**, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
