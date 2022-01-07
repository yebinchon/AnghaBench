; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_blame.c_file_rev_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_blame.c_file_rev_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_rev_baton = type { i32*, %struct.TYPE_7__*, i32*, i64, i32*, i32, i32, i8*, i64, i64, i32*, %struct.TYPE_6__*, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i64, i8* }
%struct.TYPE_6__ = type { i32, i32 (i32)*, i32, i32 (i32, %struct.TYPE_8__*, i32*)* }
%struct.TYPE_8__ = type { i8*, i32*, i64, i32, i32, i32, i32 }
%struct.delta_baton = type { i32, i32, %struct.TYPE_7__*, i64, %struct.file_rev_baton*, i32, i32* }

@FALSE = common dso_local global i64 0, align 8
@SVN_PROP_MIME_TYPE = common dso_local global i32 0, align 4
@SVN_ERR_CLIENT_IS_BINARY_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Cannot calculate blame information for binary file '%s'\00", align 1
@svn_wc_notify_blame_revision = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@svn_wc_notify_lock_state_inapplicable = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@window_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i64, i32*, i64, i32*, i8**, i32*, i32*)* @file_rev_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @file_rev_handler(i8* %0, i8* %1, i64 %2, i32* %3, i64 %4, i32* %5, i8** %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.file_rev_baton*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.delta_baton*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i64 %2, i64* %13, align 8
  store i32* %3, i32** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32* %5, i32** %16, align 8
  store i8** %6, i8*** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = bitcast i8* %28 to %struct.file_rev_baton*
  store %struct.file_rev_baton* %29, %struct.file_rev_baton** %20, align 8
  %30 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %31 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @svn_pool_clear(i32* %32)
  %34 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %35 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %34, i32 0, i32 14
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %78

38:                                               ; preds = %9
  %39 = load i32*, i32** %18, align 8
  %40 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %41 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32* @svn_prop_array_to_hash(i32* %39, i32* %42)
  store i32* %43, i32** %25, align 8
  %44 = load i64, i64* @FALSE, align 8
  %45 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %46 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %45, i32 0, i32 14
  store i64 %44, i64* %46, align 8
  %47 = load i32*, i32** %25, align 8
  %48 = load i32, i32* @SVN_PROP_MIME_TYPE, align 4
  %49 = call i8* @svn_prop_get_value(i32* %47, i32 %48)
  store i8* %49, i8** %26, align 8
  %50 = load i8*, i8** %26, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %77

52:                                               ; preds = %38
  %53 = load i8*, i8** %26, align 8
  %54 = call i64 @svn_mime_type_is_binary(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %52
  %57 = load i32, i32* @SVN_ERR_CLIENT_IS_BINARY_FILE, align 4
  %58 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %60 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %59, i32 0, i32 13
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @svn_path_is_url(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %66 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %65, i32 0, i32 13
  %67 = load i32, i32* %66, align 4
  br label %74

68:                                               ; preds = %56
  %69 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %70 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %69, i32 0, i32 13
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %19, align 8
  %73 = call i32 @svn_dirent_local_style(i32 %71, i32* %72)
  br label %74

74:                                               ; preds = %68, %64
  %75 = phi i32 [ %67, %64 ], [ %73, %68 ]
  %76 = call i32* @svn_error_createf(i32 %57, i32* null, i32 %58, i32 %75)
  store i32* %76, i32** %10, align 8
  br label %379

77:                                               ; preds = %52, %38
  br label %78

78:                                               ; preds = %77, %9
  %79 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %80 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %79, i32 0, i32 11
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %83 = load i32 (i32, %struct.TYPE_8__*, i32*)*, i32 (i32, %struct.TYPE_8__*, i32*)** %82, align 8
  %84 = icmp ne i32 (i32, %struct.TYPE_8__*, i32*)* %83, null
  br i1 %84, label %85, label %129

85:                                               ; preds = %78
  %86 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %87 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %86, i32 0, i32 12
  %88 = load i32, i32* %87, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i32*, i32** %19, align 8
  %92 = call i32 @svn_path_url_add_component2(i32 %88, i8* %90, i32* %91)
  %93 = load i32, i32* @svn_wc_notify_blame_revision, align 4
  %94 = load i32*, i32** %19, align 8
  %95 = call %struct.TYPE_8__* @svn_wc_create_notify_url(i32 %92, i32 %93, i32* %94)
  store %struct.TYPE_8__* %95, %struct.TYPE_8__** %27, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = load i32, i32* @svn_node_none, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 5
  store i32 %102, i32* %106, align 8
  %107 = load i32, i32* @svn_wc_notify_lock_state_inapplicable, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 8
  %110 = load i64, i64* %13, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  %113 = load i32*, i32** %14, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  store i32* %113, i32** %115, align 8
  %116 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %117 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %116, i32 0, i32 11
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load i32 (i32, %struct.TYPE_8__*, i32*)*, i32 (i32, %struct.TYPE_8__*, i32*)** %119, align 8
  %121 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %122 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %121, i32 0, i32 11
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %127 = load i32*, i32** %19, align 8
  %128 = call i32 %120(i32 %125, %struct.TYPE_8__* %126, i32* %127)
  br label %129

129:                                              ; preds = %85, %78
  %130 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %131 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %130, i32 0, i32 11
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32 (i32)*, i32 (i32)** %133, align 8
  %135 = icmp ne i32 (i32)* %134, null
  br i1 %135, label %136, label %149

136:                                              ; preds = %129
  %137 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %138 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %137, i32 0, i32 11
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i32 (i32)*, i32 (i32)** %140, align 8
  %142 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %143 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %142, i32 0, i32 11
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 %141(i32 %146)
  %148 = call i32 @SVN_ERR(i32 %147)
  br label %149

149:                                              ; preds = %136, %129
  %150 = load i32*, i32** %16, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %162, label %152

152:                                              ; preds = %149
  %153 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %154 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load i64, i64* %15, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157, %152
  %161 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %161, i32** %10, align 8
  br label %379

162:                                              ; preds = %157, %149
  %163 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %164 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = call i8* @apr_pcalloc(i32* %165, i32 48)
  %167 = bitcast i8* %166 to %struct.delta_baton*
  store %struct.delta_baton* %167, %struct.delta_baton** %23, align 8
  %168 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %169 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %184

172:                                              ; preds = %162
  %173 = load %struct.delta_baton*, %struct.delta_baton** %23, align 8
  %174 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %173, i32 0, i32 6
  %175 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %176 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %175, i32 0, i32 4
  %177 = load i32*, i32** %176, align 8
  %178 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %179 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32*, i32** %19, align 8
  %182 = call i32 @svn_stream_open_readonly(i32** %174, i32* %177, i32* %180, i32* %181)
  %183 = call i32 @SVN_ERR(i32 %182)
  br label %187

184:                                              ; preds = %162
  %185 = load %struct.delta_baton*, %struct.delta_baton** %23, align 8
  %186 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %185, i32 0, i32 6
  store i32* null, i32** %186, align 8
  br label %187

187:                                              ; preds = %184, %172
  %188 = load %struct.delta_baton*, %struct.delta_baton** %23, align 8
  %189 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %188, i32 0, i32 6
  %190 = load i32*, i32** %189, align 8
  %191 = load i32*, i32** %19, align 8
  %192 = call i32* @svn_stream_disown(i32* %190, i32* %191)
  store i32* %192, i32** %21, align 8
  %193 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %194 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %187
  %198 = load i64, i64* %15, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %204, label %200

200:                                              ; preds = %197
  %201 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %202 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %201, i32 0, i32 10
  %203 = load i32*, i32** %202, align 8
  store i32* %203, i32** %24, align 8
  br label %208

204:                                              ; preds = %197, %187
  %205 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %206 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  store i32* %207, i32** %24, align 8
  br label %208

208:                                              ; preds = %204, %200
  %209 = load %struct.delta_baton*, %struct.delta_baton** %23, align 8
  %210 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %209, i32 0, i32 5
  %211 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %212 = load i32*, i32** %24, align 8
  %213 = load i32*, i32** %24, align 8
  %214 = call i32 @svn_stream_open_unique(i32** %22, i32* %210, i32* null, i32 %211, i32* %212, i32* %213)
  %215 = call i32 @SVN_ERR(i32 %214)
  %216 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %217 = load %struct.delta_baton*, %struct.delta_baton** %23, align 8
  %218 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %217, i32 0, i32 4
  store %struct.file_rev_baton* %216, %struct.file_rev_baton** %218, align 8
  %219 = load i64, i64* %15, align 8
  %220 = load %struct.delta_baton*, %struct.delta_baton** %23, align 8
  %221 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %220, i32 0, i32 3
  store i64 %219, i64* %221, align 8
  %222 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %223 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %222, i32 0, i32 2
  %224 = load i32*, i32** %223, align 8
  %225 = call i8* @apr_pcalloc(i32* %224, i32 4)
  %226 = bitcast i8* %225 to %struct.TYPE_7__*
  %227 = load %struct.delta_baton*, %struct.delta_baton** %23, align 8
  %228 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %227, i32 0, i32 2
  store %struct.TYPE_7__* %226, %struct.TYPE_7__** %228, align 8
  %229 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %230 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %229, i32 0, i32 9
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %269

233:                                              ; preds = %208
  %234 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %235 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %234, i32 0, i32 8
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.delta_baton*, %struct.delta_baton** %23, align 8
  %238 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %237, i32 0, i32 2
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 1
  store i64 %236, i64* %240, align 8
  %241 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %242 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %241, i32 0, i32 7
  %243 = load i8*, i8** %242, align 8
  %244 = load %struct.delta_baton*, %struct.delta_baton** %23, align 8
  %245 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %244, i32 0, i32 2
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 2
  store i8* %243, i8** %247, align 8
  %248 = load i64, i64* %13, align 8
  %249 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %250 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %253 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %252, i32 0, i32 6
  %254 = load i32, i32* %253, align 4
  %255 = call i64 @MIN(i32 %251, i32 %254)
  %256 = icmp sge i64 %248, %255
  br i1 %256, label %257, label %268

257:                                              ; preds = %233
  %258 = load i64, i64* %13, align 8
  %259 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %260 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %259, i32 0, i32 8
  store i64 %258, i64* %260, align 8
  %261 = load i32*, i32** %14, align 8
  %262 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %263 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %262, i32 0, i32 2
  %264 = load i32*, i32** %263, align 8
  %265 = call i8* @svn_prop_hash_dup(i32* %261, i32* %264)
  %266 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %267 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %266, i32 0, i32 7
  store i8* %265, i8** %267, align 8
  br label %268

268:                                              ; preds = %257, %233
  br label %329

269:                                              ; preds = %208
  %270 = load i64, i64* %15, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %282, label %272

272:                                              ; preds = %269
  %273 = load i64, i64* %13, align 8
  %274 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %275 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %278 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %277, i32 0, i32 6
  %279 = load i32, i32* %278, align 4
  %280 = call i64 @MIN(i32 %276, i32 %279)
  %281 = icmp sge i64 %273, %280
  br i1 %281, label %282, label %309

282:                                              ; preds = %272, %269
  %283 = load i64, i64* %13, align 8
  %284 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %285 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %284, i32 0, i32 6
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %288 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %287, i32 0, i32 5
  %289 = load i32, i32* %288, align 8
  %290 = call i64 @MAX(i32 %286, i32 %289)
  %291 = add nsw i64 1, %290
  %292 = icmp sle i64 %283, %291
  %293 = zext i1 %292 to i32
  %294 = call i32 @SVN_ERR_ASSERT(i32 %293)
  %295 = load i64, i64* %13, align 8
  %296 = load %struct.delta_baton*, %struct.delta_baton** %23, align 8
  %297 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %296, i32 0, i32 2
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 1
  store i64 %295, i64* %299, align 8
  %300 = load i32*, i32** %14, align 8
  %301 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %302 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %301, i32 0, i32 2
  %303 = load i32*, i32** %302, align 8
  %304 = call i8* @svn_prop_hash_dup(i32* %300, i32* %303)
  %305 = load %struct.delta_baton*, %struct.delta_baton** %23, align 8
  %306 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %305, i32 0, i32 2
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 2
  store i8* %304, i8** %308, align 8
  br label %328

309:                                              ; preds = %272
  %310 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %311 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %310, i32 0, i32 4
  %312 = load i32*, i32** %311, align 8
  %313 = icmp eq i32* %312, null
  br i1 %313, label %319, label %314

314:                                              ; preds = %309
  %315 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %316 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %315, i32 0, i32 3
  %317 = load i64, i64* %316, align 8
  %318 = icmp ne i64 %317, 0
  br label %319

319:                                              ; preds = %314, %309
  %320 = phi i1 [ true, %309 ], [ %318, %314 ]
  %321 = zext i1 %320 to i32
  %322 = call i32 @SVN_ERR_ASSERT(i32 %321)
  %323 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %324 = load %struct.delta_baton*, %struct.delta_baton** %23, align 8
  %325 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %324, i32 0, i32 2
  %326 = load %struct.TYPE_7__*, %struct.TYPE_7__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 1
  store i64 %323, i64* %327, align 8
  br label %328

328:                                              ; preds = %319, %282
  br label %329

329:                                              ; preds = %328, %268
  %330 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %331 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %330, i32 0, i32 3
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %344

334:                                              ; preds = %329
  %335 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %336 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %335, i32 0, i32 2
  %337 = load i32*, i32** %336, align 8
  %338 = load i8*, i8** %12, align 8
  %339 = call i32 @apr_pstrdup(i32* %337, i8* %338)
  %340 = load %struct.delta_baton*, %struct.delta_baton** %23, align 8
  %341 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %340, i32 0, i32 2
  %342 = load %struct.TYPE_7__*, %struct.TYPE_7__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i32 0, i32 0
  store i32 %339, i32* %343, align 8
  br label %344

344:                                              ; preds = %334, %329
  %345 = load %struct.delta_baton*, %struct.delta_baton** %23, align 8
  %346 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %345, i32 0, i32 2
  %347 = load %struct.TYPE_7__*, %struct.TYPE_7__** %346, align 8
  %348 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %349 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %348, i32 0, i32 1
  store %struct.TYPE_7__* %347, %struct.TYPE_7__** %349, align 8
  %350 = load i32*, i32** %16, align 8
  %351 = icmp ne i32* %350, null
  br i1 %351, label %352, label %368

352:                                              ; preds = %344
  %353 = load i32*, i32** %21, align 8
  %354 = load i32*, i32** %22, align 8
  %355 = load %struct.file_rev_baton*, %struct.file_rev_baton** %20, align 8
  %356 = getelementptr inbounds %struct.file_rev_baton, %struct.file_rev_baton* %355, i32 0, i32 0
  %357 = load i32*, i32** %356, align 8
  %358 = load %struct.delta_baton*, %struct.delta_baton** %23, align 8
  %359 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %358, i32 0, i32 1
  %360 = load %struct.delta_baton*, %struct.delta_baton** %23, align 8
  %361 = getelementptr inbounds %struct.delta_baton, %struct.delta_baton* %360, i32 0, i32 0
  %362 = call i32 @svn_txdelta_apply(i32* %353, i32* %354, i32* null, i32* null, i32* %357, i32* %359, i32* %361)
  %363 = load i32, i32* @window_handler, align 4
  %364 = load i32*, i32** %16, align 8
  store i32 %363, i32* %364, align 4
  %365 = load %struct.delta_baton*, %struct.delta_baton** %23, align 8
  %366 = bitcast %struct.delta_baton* %365 to i8*
  %367 = load i8**, i8*** %17, align 8
  store i8* %366, i8** %367, align 8
  br label %377

368:                                              ; preds = %344
  %369 = load i32*, i32** %21, align 8
  %370 = load i32*, i32** %22, align 8
  %371 = load i32*, i32** %19, align 8
  %372 = call i32 @svn_stream_copy3(i32* %369, i32* %370, i32* null, i32* null, i32* %371)
  %373 = call i32 @SVN_ERR(i32 %372)
  %374 = load %struct.delta_baton*, %struct.delta_baton** %23, align 8
  %375 = call i32 @update_blame(%struct.delta_baton* %374)
  %376 = call i32 @SVN_ERR(i32 %375)
  br label %377

377:                                              ; preds = %368, %352
  %378 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %378, i32** %10, align 8
  br label %379

379:                                              ; preds = %377, %160, %74
  %380 = load i32*, i32** %10, align 8
  ret i32* %380
}

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @svn_prop_array_to_hash(i32*, i32*) #1

declare dso_local i8* @svn_prop_get_value(i32*, i32) #1

declare dso_local i64 @svn_mime_type_is_binary(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @svn_path_is_url(i32) #1

declare dso_local i32 @svn_dirent_local_style(i32, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_wc_create_notify_url(i32, i32, i32*) #1

declare dso_local i32 @svn_path_url_add_component2(i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_stream_open_readonly(i32**, i32*, i32*, i32*) #1

declare dso_local i32* @svn_stream_disown(i32*, i32*) #1

declare dso_local i32 @svn_stream_open_unique(i32**, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i8* @svn_prop_hash_dup(i32*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_txdelta_apply(i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_stream_copy3(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @update_blame(%struct.delta_baton*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
