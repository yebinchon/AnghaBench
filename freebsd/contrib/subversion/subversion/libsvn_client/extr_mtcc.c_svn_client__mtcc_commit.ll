; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mtcc.c_svn_client__mtcc_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mtcc.c_svn_client__mtcc_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_18__*, i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_18__ = type { i32, i32 (i32, i32*, i32*)* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32* (i8*, i32*)*, i32* (i8*, i32*)*, i32* (i8*, i32, i32*, i8**)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@OP_OPEN_DIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_DIRECTORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Can't commit to '%s' because it is not a directory\00", align 1
@FALSE = common dso_local global i32 0, align 4
@svn_wc_notify_commit_finalizing = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client__mtcc_commit(i32* %0, i32 %1, i8* %2, %struct.TYPE_17__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %10, align 8
  store i32* %4, i32** %11, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %27 = call i64 @MTCC_UNMODIFIED(%struct.TYPE_17__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %5
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @svn_pool_destroy(i32 %32)
  %34 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %34, i32** %6, align 8
  br label %256

35:                                               ; preds = %5
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32* @svn_ra_get_session_url(i32 %38, i8** %18, i32* %39)
  %41 = call i32 @SVN_ERR(i32* %40)
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @OP_OPEN_DIR, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %35
  %50 = load i8*, i8** %18, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @svn_uri_split(i8** %18, i8** %20, i8* %50, i32* %51)
  %53 = load i8*, i8** %20, align 8
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %49
  %57 = load i8*, i8** %18, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = call i32* @mtcc_reparent(i8* %57, %struct.TYPE_17__* %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32* %60)
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load i8*, i8** %18, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i32* @svn_ra_reparent(i32 %64, i8* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32* %67)
  br label %69

69:                                               ; preds = %56, %49
  br label %70

70:                                               ; preds = %69, %35
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %72, align 8
  %74 = call i64 @SVN_CLIENT__HAS_LOG_MSG_FUNC(%struct.TYPE_18__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %101

76:                                               ; preds = %70
  %77 = load i32*, i32** %11, align 8
  %78 = call i32* @apr_array_make(i32* %77, i32 32, i32 8)
  store i32* %78, i32** %23, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = load i8*, i8** %18, align 8
  %83 = load i8*, i8** %18, align 8
  %84 = load i32*, i32** %23, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = call i32* @add_commit_items(%struct.TYPE_15__* %81, i8* %82, i8* %83, i32* %84, i32* %85, i32* %86)
  %88 = call i32 @SVN_ERR(i32* %87)
  %89 = load i32*, i32** %23, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = call i32* @svn_client__get_log_msg(i8** %19, i8** %22, i32* %89, %struct.TYPE_18__* %92, i32* %93)
  %95 = call i32 @SVN_ERR(i32* %94)
  %96 = load i8*, i8** %19, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %76
  %99 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %99, i32** %6, align 8
  br label %256

100:                                              ; preds = %76
  br label %102

101:                                              ; preds = %70
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  br label %102

102:                                              ; preds = %101, %100
  %103 = load i32*, i32** %7, align 8
  %104 = load i8*, i8** %19, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %106, align 8
  %108 = load i32*, i32** %11, align 8
  %109 = call i32* @svn_client__ensure_revprop_table(i32** %15, i32* %103, i8* %104, %struct.TYPE_18__* %107, i32* %108)
  %110 = call i32 @SVN_ERR(i32* %109)
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32*, i32** %11, align 8
  %118 = call i32* @svn_ra_check_path(i32 %113, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %116, i64* %16, i32* %117)
  store i32* %118, i32** %17, align 8
  %119 = load i32*, i32** %17, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %156

121:                                              ; preds = %102
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 4
  %124 = load i8*, i8** %18, align 8
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %126, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32*, i32** %11, align 8
  %132 = call i32* @svn_client_open_ra_session2(i32* %123, i8* %124, i32* null, %struct.TYPE_18__* %127, i32 %130, i32* %131)
  store i32* %132, i32** %24, align 8
  %133 = load i32*, i32** %24, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %144

135:                                              ; preds = %121
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @svn_pool_destroy(i32 %138)
  %140 = load i32*, i32** %17, align 8
  %141 = load i32*, i32** %24, align 8
  %142 = call i32* @svn_error_compose_create(i32* %140, i32* %141)
  %143 = call i32* @svn_error_trace(i32* %142)
  store i32* %143, i32** %6, align 8
  br label %256

144:                                              ; preds = %121
  %145 = load i32*, i32** %17, align 8
  %146 = call i32 @svn_error_clear(i32* %145)
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32*, i32** %11, align 8
  %154 = call i32* @svn_ra_check_path(i32 %149, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %152, i64* %16, i32* %153)
  %155 = call i32 @SVN_ERR(i32* %154)
  br label %156

156:                                              ; preds = %144, %102
  %157 = load i64, i64* %16, align 8
  %158 = load i64, i64* @svn_node_dir, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = load i32, i32* @SVN_ERR_FS_NOT_DIRECTORY, align 4
  %162 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %163 = load i8*, i8** %18, align 8
  %164 = call i32* @svn_error_createf(i32 %161, i32* null, i32 %162, i8* %163)
  store i32* %164, i32** %6, align 8
  br label %256

165:                                              ; preds = %156
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load i32*, i32** %15, align 8
  %170 = load i32, i32* %8, align 4
  %171 = load i8*, i8** %9, align 8
  %172 = load i32, i32* @FALSE, align 4
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32* @svn_ra_get_commit_editor3(i32 %168, %struct.TYPE_16__** %12, i8** %13, i32* %169, i32 %170, i8* %171, i32* null, i32 %172, i32 %175)
  %177 = call i32 @SVN_ERR(i32* %176)
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 2
  %180 = load i32* (i8*, i32, i32*, i8**)*, i32* (i8*, i32, i32*, i8**)** %179, align 8
  %181 = load i8*, i8** %13, align 8
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load i32*, i32** %11, align 8
  %186 = call i32* %180(i8* %181, i32 %184, i32* %185, i8** %14)
  store i32* %186, i32** %17, align 8
  %187 = load i32*, i32** %17, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %204, label %189

189:                                              ; preds = %165
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 3
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %192, align 8
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load i8*, i8** %14, align 8
  %198 = load i8*, i8** %18, align 8
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %200, align 8
  %202 = load i32*, i32** %11, align 8
  %203 = call i32* @commit_directory(%struct.TYPE_16__* %190, %struct.TYPE_15__* %193, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %196, i8* %197, i8* %198, %struct.TYPE_18__* %201, i32* %202)
  store i32* %203, i32** %17, align 8
  br label %204

204:                                              ; preds = %189, %165
  %205 = load i32*, i32** %17, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %240, label %207

207:                                              ; preds = %204
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 1
  %212 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %211, align 8
  %213 = icmp ne i32 (i32, i32*, i32*)* %212, null
  br i1 %213, label %214, label %232

214:                                              ; preds = %207
  %215 = load i8*, i8** %18, align 8
  %216 = load i32, i32* @svn_wc_notify_commit_finalizing, align 4
  %217 = load i32*, i32** %11, align 8
  %218 = call i32* @svn_wc_create_notify_url(i8* %215, i32 %216, i32* %217)
  store i32* %218, i32** %25, align 8
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 1
  %223 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %222, align 8
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32*, i32** %25, align 8
  %230 = load i32*, i32** %11, align 8
  %231 = call i32 %223(i32 %228, i32* %229, i32* %230)
  br label %232

232:                                              ; preds = %214, %207
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 1
  %235 = load i32* (i8*, i32*)*, i32* (i8*, i32*)** %234, align 8
  %236 = load i8*, i8** %13, align 8
  %237 = load i32*, i32** %11, align 8
  %238 = call i32* %235(i8* %236, i32* %237)
  %239 = call i32 @SVN_ERR(i32* %238)
  br label %249

240:                                              ; preds = %204
  %241 = load i32*, i32** %17, align 8
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 0
  %244 = load i32* (i8*, i32*)*, i32* (i8*, i32*)** %243, align 8
  %245 = load i8*, i8** %13, align 8
  %246 = load i32*, i32** %11, align 8
  %247 = call i32* %244(i8* %245, i32* %246)
  %248 = call i32* @svn_error_compose_create(i32* %241, i32* %247)
  store i32* %248, i32** %17, align 8
  br label %249

249:                                              ; preds = %240, %232
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @svn_pool_destroy(i32 %252)
  %254 = load i32*, i32** %17, align 8
  %255 = call i32* @svn_error_trace(i32* %254)
  store i32* %255, i32** %6, align 8
  br label %256

256:                                              ; preds = %249, %160, %135, %98, %29
  %257 = load i32*, i32** %6, align 8
  ret i32* %257
}

declare dso_local i64 @MTCC_UNMODIFIED(%struct.TYPE_17__*) #1

declare dso_local i32 @svn_pool_destroy(i32) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_ra_get_session_url(i32, i8**, i32*) #1

declare dso_local i32 @svn_uri_split(i8**, i8**, i8*, i32*) #1

declare dso_local i32* @mtcc_reparent(i8*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32* @svn_ra_reparent(i32, i8*, i32*) #1

declare dso_local i64 @SVN_CLIENT__HAS_LOG_MSG_FUNC(%struct.TYPE_18__*) #1

declare dso_local i32* @apr_array_make(i32*, i32, i32) #1

declare dso_local i32* @add_commit_items(%struct.TYPE_15__*, i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_client__get_log_msg(i8**, i8**, i32*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32* @svn_client__ensure_revprop_table(i32**, i32*, i8*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32* @svn_ra_check_path(i32, i8*, i32, i64*, i32*) #1

declare dso_local i32* @svn_client_open_ra_session2(i32*, i8*, i32*, %struct.TYPE_18__*, i32, i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_ra_get_commit_editor3(i32, %struct.TYPE_16__**, i8**, i32*, i32, i8*, i32*, i32, i32) #1

declare dso_local i32* @commit_directory(%struct.TYPE_16__*, %struct.TYPE_15__*, i8*, i32, i8*, i8*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32* @svn_wc_create_notify_url(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
