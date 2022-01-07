; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_get_file_revs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_get_file_revs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"'get-file-revs' not implemented\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_RA_SVN_LIST = common dso_local global i64 0, align 8
@SVN_ERR_RA_SVN_MALFORMED_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Revision entry not a list\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"crll?B\00", align 1
@SVN_RA_SVN_UNSPECIFIED_NUMBER = common dso_local global i64 0, align 8
@SVN_RA_SVN_STRING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Text delta chunk not a string\00", align 1
@svn_delta_noop_window_handler = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"The get-file-revs command didn't return any revisions\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_15__*, i8*, i32, i32, i32, i32 (i8*, i8*, i32, i32*, i32, i64*, i8**, i32*, i32*)*, i8*, i32*)* @ra_svn_get_file_revs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ra_svn_get_file_revs(%struct.TYPE_15__* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 (i8*, i8*, i32, i32*, i32, i64*, i8**, i32*, i32*)* %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32 (i8*, i8*, i32, i32*, i32, i64*, i8**, i32*, i32*)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_14__*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 (i8*, i8*, i32, i32*, i32, i64*, i8**, i32*, i32*)* %5, i32 (i8*, i8*, i32, i32*, i32, i64*, i8**, i32*, i32*)** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %18, align 8
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %22, align 4
  %40 = load i32*, i32** %17, align 8
  %41 = call i32* @svn_pool_create(i32* %40)
  store i32* %41, i32** %19, align 8
  %42 = load i32*, i32** %17, align 8
  %43 = call i32* @svn_pool_create(i32* %42)
  store i32* %43, i32** %20, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i32*, i32** %17, align 8
  %47 = call i8* @reparent_path(%struct.TYPE_15__* %44, i8* %45, i32* %46)
  store i8* %47, i8** %11, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %17, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @svn_ra_svn__write_cmd_get_file_revs(i32 %50, i32* %51, i8* %52, i32 %53, i32 %54, i32 %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %59 = load i32*, i32** %17, align 8
  %60 = call i32 @handle_auth_request(%struct.TYPE_13__* %58, i32* %59)
  %61 = call i32 @N_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %62 = call i32 @handle_unsupported_cmd(i32 %60, i32 %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  br label %64

64:                                               ; preds = %8, %223
  %65 = load i32*, i32** %19, align 8
  %66 = call i32 @svn_pool_clear(i32* %65)
  %67 = load i32*, i32** %20, align 8
  %68 = call i32 @svn_pool_clear(i32* %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %19, align 8
  %73 = call i32 @svn_ra_svn__read_item(i32 %71, i32* %72, %struct.TYPE_14__** %27)
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %76 = call i64 @is_done_response(%struct.TYPE_14__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %64
  br label %224

79:                                               ; preds = %64
  %80 = load i32, i32* @TRUE, align 4
  store i32 %80, i32* %22, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SVN_RA_SVN_LIST, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load i32, i32* @SVN_ERR_RA_SVN_MALFORMED_DATA, align 4
  %88 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %89 = call i32* @svn_error_create(i32 %87, i32* null, i32 %88)
  store i32* %89, i32** %9, align 8
  br label %243

90:                                               ; preds = %79
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = call i32 @svn_ra_svn__parse_tuple(i32* %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %30, i32* %29, i32** %23, i32** %24, i64* %25)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = load i8*, i8** %30, align 8
  %97 = load i32*, i32** %19, align 8
  %98 = call i8* @svn_fspath__canonicalize(i8* %96, i32* %97)
  store i8* %98, i8** %30, align 8
  %99 = load i32*, i32** %23, align 8
  %100 = load i32*, i32** %19, align 8
  %101 = call i32 @svn_ra_svn__parse_proplist(i32* %99, i32* %100, i32** %28)
  %102 = call i32 @SVN_ERR(i32 %101)
  %103 = load i32*, i32** %24, align 8
  %104 = load i32*, i32** %19, align 8
  %105 = call i32 @parse_prop_diffs(i32* %103, i32* %104, i32** %26)
  %106 = call i32 @SVN_ERR(i32 %105)
  %107 = load i64, i64* %25, align 8
  %108 = load i64, i64* @SVN_RA_SVN_UNSPECIFIED_NUMBER, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %90
  %111 = load i32, i32* @FALSE, align 4
  store i32 %111, i32* %31, align 4
  br label %115

112:                                              ; preds = %90
  %113 = load i64, i64* %25, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %31, align 4
  br label %115

115:                                              ; preds = %112, %110
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %20, align 8
  %120 = call i32 @svn_ra_svn__read_item(i32 %118, i32* %119, %struct.TYPE_14__** %27)
  %121 = call i32 @SVN_ERR(i32 %120)
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @SVN_RA_SVN_STRING, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %115
  %128 = load i32, i32* @SVN_ERR_RA_SVN_MALFORMED_DATA, align 4
  %129 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %130 = call i32* @svn_error_create(i32 %128, i32* null, i32 %129)
  store i32* %130, i32** %9, align 8
  br label %243

131:                                              ; preds = %115
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp sgt i64 %136, 0
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %21, align 4
  %139 = load i32 (i8*, i8*, i32, i32*, i32, i64*, i8**, i32*, i32*)*, i32 (i8*, i8*, i32, i32*, i32, i64*, i8**, i32*, i32*)** %15, align 8
  %140 = load i8*, i8** %16, align 8
  %141 = load i8*, i8** %30, align 8
  %142 = load i32, i32* %29, align 4
  %143 = load i32*, i32** %28, align 8
  %144 = load i32, i32* %31, align 4
  %145 = load i32, i32* %21, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %131
  br label %149

148:                                              ; preds = %131
  br label %149

149:                                              ; preds = %148, %147
  %150 = phi i64* [ %32, %147 ], [ null, %148 ]
  %151 = load i32*, i32** %26, align 8
  %152 = load i32*, i32** %19, align 8
  %153 = call i32 %139(i8* %140, i8* %141, i32 %142, i32* %143, i32 %144, i64* %150, i8** %33, i32* %151, i32* %152)
  %154 = call i32 @SVN_ERR(i32 %153)
  %155 = load i32, i32* %21, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %223

157:                                              ; preds = %149
  %158 = load i64, i64* %32, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %157
  %161 = load i64, i64* %32, align 8
  %162 = load i64, i64* @svn_delta_noop_window_handler, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = load i64, i64* %32, align 8
  %166 = load i8*, i8** %33, align 8
  %167 = load i32, i32* @TRUE, align 4
  %168 = load i32*, i32** %19, align 8
  %169 = call i32* @svn_txdelta_parse_svndiff(i64 %165, i8* %166, i32 %167, i32* %168)
  store i32* %169, i32** %34, align 8
  br label %171

170:                                              ; preds = %160, %157
  store i32* null, i32** %34, align 8
  br label %171

171:                                              ; preds = %170, %164
  br label %172

172:                                              ; preds = %214, %171
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp sgt i64 %177, 0
  br i1 %178, label %179, label %215

179:                                              ; preds = %172
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  store i64 %184, i64* %35, align 8
  %185 = load i32*, i32** %34, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %196

187:                                              ; preds = %179
  %188 = load i32*, i32** %34, align 8
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @svn_stream_write(i32* %188, i32 %193, i64* %35)
  %195 = call i32 @SVN_ERR(i32 %194)
  br label %196

196:                                              ; preds = %187, %179
  %197 = load i32*, i32** %20, align 8
  %198 = call i32 @svn_pool_clear(i32* %197)
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %20, align 8
  %203 = call i32 @svn_ra_svn__read_item(i32 %201, i32* %202, %struct.TYPE_14__** %27)
  %204 = call i32 @SVN_ERR(i32 %203)
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @SVN_RA_SVN_STRING, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %196
  %211 = load i32, i32* @SVN_ERR_RA_SVN_MALFORMED_DATA, align 4
  %212 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %213 = call i32* @svn_error_create(i32 %211, i32* null, i32 %212)
  store i32* %213, i32** %9, align 8
  br label %243

214:                                              ; preds = %196
  br label %172

215:                                              ; preds = %172
  %216 = load i32*, i32** %34, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %222

218:                                              ; preds = %215
  %219 = load i32*, i32** %34, align 8
  %220 = call i32 @svn_stream_close(i32* %219)
  %221 = call i32 @SVN_ERR(i32 %220)
  br label %222

222:                                              ; preds = %218, %215
  br label %223

223:                                              ; preds = %222, %149
  br label %64

224:                                              ; preds = %78
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32*, i32** %17, align 8
  %229 = call i32 @svn_ra_svn__read_cmd_response(i32 %227, i32* %228, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %230 = call i32 @SVN_ERR(i32 %229)
  %231 = load i32, i32* %22, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %237, label %233

233:                                              ; preds = %224
  %234 = load i32, i32* @SVN_ERR_RA_SVN_MALFORMED_DATA, align 4
  %235 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  %236 = call i32* @svn_error_create(i32 %234, i32* null, i32 %235)
  store i32* %236, i32** %9, align 8
  br label %243

237:                                              ; preds = %224
  %238 = load i32*, i32** %20, align 8
  %239 = call i32 @svn_pool_destroy(i32* %238)
  %240 = load i32*, i32** %19, align 8
  %241 = call i32 @svn_pool_destroy(i32* %240)
  %242 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %242, i32** %9, align 8
  br label %243

243:                                              ; preds = %237, %233, %210, %127, %86
  %244 = load i32*, i32** %9, align 8
  ret i32* %244
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i8* @reparent_path(%struct.TYPE_15__*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__write_cmd_get_file_revs(i32, i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @handle_unsupported_cmd(i32, i32) #1

declare dso_local i32 @handle_auth_request(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_ra_svn__read_item(i32, i32*, %struct.TYPE_14__**) #1

declare dso_local i64 @is_done_response(%struct.TYPE_14__*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_ra_svn__parse_tuple(i32*, i8*, i8**, i32*, i32**, i32**, i64*) #1

declare dso_local i8* @svn_fspath__canonicalize(i8*, i32*) #1

declare dso_local i32 @svn_ra_svn__parse_proplist(i32*, i32*, i32**) #1

declare dso_local i32 @parse_prop_diffs(i32*, i32*, i32**) #1

declare dso_local i32* @svn_txdelta_parse_svndiff(i64, i8*, i32, i32*) #1

declare dso_local i32 @svn_stream_write(i32*, i32, i64*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local i32 @svn_ra_svn__read_cmd_response(i32, i32*, i8*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
