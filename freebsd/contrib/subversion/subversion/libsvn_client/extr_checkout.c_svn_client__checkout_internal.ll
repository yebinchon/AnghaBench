; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_checkout.c_svn_client__checkout_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_checkout.c_svn_client__checkout_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i64 }
%struct.TYPE_30__ = type { i64, i64, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_33__ = type { i32, i32 }

@svn_opt_revision_number = common dso_local global i64 0, align 8
@svn_opt_revision_date = common dso_local global i64 0, align 8
@svn_opt_revision_head = common dso_local global i64 0, align 8
@SVN_ERR_CLIENT_BAD_REVISION = common dso_local global i32 0, align 4
@SVN_ERR_RA_ILLEGAL_URL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@svn_node_none = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"URL '%s' doesn't exist\00", align 1
@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"URL '%s' refers to a file, not a directory\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_WC_OBSTRUCTED_UPDATE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [51 x i8] c"'%s' is already a working copy for a different URL\00", align 1
@SVN_ERR_WC_NODE_KIND_CHANGE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"'%s' already exists and is not a directory\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_31__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_31__* @svn_client__checkout_internal(i32* %0, i32* %1, i8* %2, i8* %3, %struct.TYPE_30__* %4, %struct.TYPE_30__* %5, i32 %6, i32 %7, i32 %8, i32* %9, %struct.TYPE_32__* %10, i32* %11) #0 {
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_30__*, align 8
  %19 = alloca %struct.TYPE_30__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_32__*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_33__*, align 8
  %28 = alloca %struct.TYPE_30__, align 8
  %29 = alloca %struct.TYPE_31__*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  store i32* %0, i32** %14, align 8
  store i32* %1, i32** %15, align 8
  store i8* %2, i8** %16, align 8
  store i8* %3, i8** %17, align 8
  store %struct.TYPE_30__* %4, %struct.TYPE_30__** %18, align 8
  store %struct.TYPE_30__* %5, %struct.TYPE_30__** %19, align 8
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32* %9, i32** %23, align 8
  store %struct.TYPE_32__* %10, %struct.TYPE_32__** %24, align 8
  store i32* %11, i32** %25, align 8
  %32 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %28, i32 0, i32 0
  %33 = load i64, i64* @svn_opt_revision_number, align 8
  store i64 %33, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %28, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %28, i32 0, i32 2
  %36 = bitcast %struct.TYPE_29__* %35 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %36, i8 0, i64 4, i1 false)
  %37 = load i8*, i8** %17, align 8
  %38 = icmp ne i8* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @SVN_ERR_ASSERT(i32 %39)
  %41 = load i8*, i8** %16, align 8
  %42 = load i32*, i32** %25, align 8
  %43 = call i32 @svn_uri_is_canonical(i8* %41, i32* %42)
  %44 = call i32 @SVN_ERR_ASSERT(i32 %43)
  %45 = load i8*, i8** %17, align 8
  %46 = call i32 @svn_dirent_is_absolute(i8* %45)
  %47 = call i32 @SVN_ERR_ASSERT(i32 %46)
  %48 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %49 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @svn_opt_revision_number, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %12
  %54 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %55 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @svn_opt_revision_date, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %61 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @svn_opt_revision_head, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @SVN_ERR_CLIENT_BAD_REVISION, align 4
  %67 = call %struct.TYPE_31__* @svn_error_create(i32 %66, i32* null, i32* null)
  store %struct.TYPE_31__* %67, %struct.TYPE_31__** %13, align 8
  br label %238

68:                                               ; preds = %59, %53, %12
  %69 = load i32*, i32** %23, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %101

71:                                               ; preds = %68
  %72 = load i32*, i32** %23, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = load i32*, i32** %25, align 8
  %75 = call %struct.TYPE_31__* @svn_ra_reparent(i32* %72, i8* %73, i32* %74)
  store %struct.TYPE_31__* %75, %struct.TYPE_31__** %29, align 8
  %76 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %77 = icmp ne %struct.TYPE_31__* %76, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %71
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %80 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SVN_ERR_RA_ILLEGAL_URL, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %86 = call i32 @svn_error_clear(%struct.TYPE_31__* %85)
  store i32* null, i32** %23, align 8
  br label %90

87:                                               ; preds = %78
  %88 = load %struct.TYPE_31__*, %struct.TYPE_31__** %29, align 8
  %89 = call %struct.TYPE_31__* @svn_error_trace(%struct.TYPE_31__* %88)
  store %struct.TYPE_31__* %89, %struct.TYPE_31__** %13, align 8
  br label %238

90:                                               ; preds = %84
  br label %100

91:                                               ; preds = %71
  %92 = load i32*, i32** %23, align 8
  %93 = load i8*, i8** %16, align 8
  %94 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %96 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %97 = load i32*, i32** %25, align 8
  %98 = call i32 @svn_client__resolve_rev_and_url(%struct.TYPE_33__** %27, i32* %92, i8* %93, %struct.TYPE_30__* %94, %struct.TYPE_30__* %95, %struct.TYPE_32__* %96, i32* %97)
  %99 = call i32 @SVN_ERR(i32 %98)
  br label %100

100:                                              ; preds = %91, %90
  br label %101

101:                                              ; preds = %100, %68
  %102 = load i32*, i32** %23, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %112, label %104

104:                                              ; preds = %101
  %105 = load i8*, i8** %16, align 8
  %106 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %107 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %108 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %109 = load i32*, i32** %25, align 8
  %110 = call i32 @svn_client__ra_session_from_path2(i32** %23, %struct.TYPE_33__** %27, i8* %105, i32* null, %struct.TYPE_30__* %106, %struct.TYPE_30__* %107, %struct.TYPE_32__* %108, i32* %109)
  %111 = call i32 @SVN_ERR(i32 %110)
  br label %112

112:                                              ; preds = %104, %101
  %113 = load i32*, i32** %23, align 8
  %114 = load %struct.TYPE_33__*, %struct.TYPE_33__** %27, align 8
  %115 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %25, align 8
  %118 = call i32 @svn_ra_check_path(i32* %113, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %116, i64* %26, i32* %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  %120 = load %struct.TYPE_33__*, %struct.TYPE_33__** %27, align 8
  %121 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %28, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load i64, i64* %26, align 8
  %126 = load i64, i64* @svn_node_none, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %112
  %129 = load i64, i64* @SVN_ERR_RA_ILLEGAL_URL, align 8
  %130 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %131 = load %struct.TYPE_33__*, %struct.TYPE_33__** %27, align 8
  %132 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call %struct.TYPE_31__* @svn_error_createf(i64 %129, i32* null, i32 %130, i32 %133)
  store %struct.TYPE_31__* %134, %struct.TYPE_31__** %13, align 8
  br label %238

135:                                              ; preds = %112
  %136 = load i64, i64* %26, align 8
  %137 = load i64, i64* @svn_node_file, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = load i64, i64* @SVN_ERR_UNSUPPORTED_FEATURE, align 8
  %141 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %142 = load %struct.TYPE_33__*, %struct.TYPE_33__** %27, align 8
  %143 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call %struct.TYPE_31__* @svn_error_createf(i64 %140, i32* null, i32 %141, i32 %144)
  store %struct.TYPE_31__* %145, %struct.TYPE_31__** %13, align 8
  br label %238

146:                                              ; preds = %135
  br label %147

147:                                              ; preds = %146
  %148 = load i8*, i8** %17, align 8
  %149 = load i32*, i32** %25, align 8
  %150 = call i32 @svn_io_check_path(i8* %148, i64* %26, i32* %149)
  %151 = call i32 @SVN_ERR(i32 %150)
  %152 = load i64, i64* %26, align 8
  %153 = load i64, i64* @svn_node_none, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %167

155:                                              ; preds = %147
  %156 = load i8*, i8** %17, align 8
  %157 = load i32*, i32** %25, align 8
  %158 = call i32 @svn_io_make_dir_recursively(i8* %156, i32* %157)
  %159 = call i32 @SVN_ERR(i32 %158)
  %160 = load i8*, i8** %17, align 8
  %161 = load %struct.TYPE_33__*, %struct.TYPE_33__** %27, align 8
  %162 = load i32, i32* %20, align 4
  %163 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %164 = load i32*, i32** %25, align 8
  %165 = call i32 @initialize_area(i8* %160, %struct.TYPE_33__* %161, i32 %162, %struct.TYPE_32__* %163, i32* %164)
  %166 = call i32 @SVN_ERR(i32 %165)
  br label %221

167:                                              ; preds = %147
  %168 = load i64, i64* %26, align 8
  %169 = load i64, i64* @svn_node_dir, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %213

171:                                              ; preds = %167
  %172 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %173 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i8*, i8** %17, align 8
  %176 = load i32*, i32** %25, align 8
  %177 = call i32 @svn_wc_check_wc2(i32* %30, i32 %174, i8* %175, i32* %176)
  %178 = call i32 @SVN_ERR(i32 %177)
  %179 = load i32, i32* %30, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %189, label %181

181:                                              ; preds = %171
  %182 = load i8*, i8** %17, align 8
  %183 = load %struct.TYPE_33__*, %struct.TYPE_33__** %27, align 8
  %184 = load i32, i32* %20, align 4
  %185 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %186 = load i32*, i32** %25, align 8
  %187 = call i32 @initialize_area(i8* %182, %struct.TYPE_33__* %183, i32 %184, %struct.TYPE_32__* %185, i32* %186)
  %188 = call i32 @SVN_ERR(i32 %187)
  br label %212

189:                                              ; preds = %171
  %190 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %191 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i8*, i8** %17, align 8
  %194 = load i32*, i32** %25, align 8
  %195 = load i32*, i32** %25, align 8
  %196 = call i32 @svn_wc__node_get_url(i8** %31, i32 %192, i8* %193, i32* %194, i32* %195)
  %197 = call i32 @SVN_ERR(i32 %196)
  %198 = load i8*, i8** %31, align 8
  %199 = load %struct.TYPE_33__*, %struct.TYPE_33__** %27, align 8
  %200 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i64 @strcmp(i8* %198, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %189
  %205 = load i64, i64* @SVN_ERR_WC_OBSTRUCTED_UPDATE, align 8
  %206 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %207 = load i8*, i8** %17, align 8
  %208 = load i32*, i32** %25, align 8
  %209 = call i32 @svn_dirent_local_style(i8* %207, i32* %208)
  %210 = call %struct.TYPE_31__* @svn_error_createf(i64 %205, i32* null, i32 %206, i32 %209)
  store %struct.TYPE_31__* %210, %struct.TYPE_31__** %13, align 8
  br label %238

211:                                              ; preds = %189
  br label %212

212:                                              ; preds = %211, %181
  br label %220

213:                                              ; preds = %167
  %214 = load i64, i64* @SVN_ERR_WC_NODE_KIND_CHANGE, align 8
  %215 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %216 = load i8*, i8** %17, align 8
  %217 = load i32*, i32** %25, align 8
  %218 = call i32 @svn_dirent_local_style(i8* %216, i32* %217)
  %219 = call %struct.TYPE_31__* @svn_error_createf(i64 %214, i32* null, i32 %215, i32 %218)
  store %struct.TYPE_31__* %219, %struct.TYPE_31__** %13, align 8
  br label %238

220:                                              ; preds = %212
  br label %221

221:                                              ; preds = %220, %155
  %222 = load i32*, i32** %14, align 8
  %223 = load i32*, i32** %15, align 8
  %224 = load i8*, i8** %17, align 8
  %225 = load i32, i32* %20, align 4
  %226 = load i32, i32* @TRUE, align 4
  %227 = load i32, i32* %21, align 4
  %228 = load i32, i32* %22, align 4
  %229 = load i32, i32* @TRUE, align 4
  %230 = load i32, i32* @FALSE, align 4
  %231 = load i32, i32* @FALSE, align 4
  %232 = load i32*, i32** %23, align 8
  %233 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  %234 = load i32*, i32** %25, align 8
  %235 = call i32 @svn_client__update_internal(i32* %222, i32* %223, i8* %224, %struct.TYPE_30__* %28, i32 %225, i32 %226, i32 %227, i32 %228, i32 %229, i32 %230, i32 %231, i32* %232, %struct.TYPE_32__* %233, i32* %234)
  %236 = call i32 @SVN_ERR(i32 %235)
  %237 = load %struct.TYPE_31__*, %struct.TYPE_31__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_31__* %237, %struct.TYPE_31__** %13, align 8
  br label %238

238:                                              ; preds = %221, %213, %204, %139, %128, %87, %65
  %239 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  ret %struct.TYPE_31__* %239
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #2

declare dso_local i32 @svn_uri_is_canonical(i8*, i32*) #2

declare dso_local i32 @svn_dirent_is_absolute(i8*) #2

declare dso_local %struct.TYPE_31__* @svn_error_create(i32, i32*, i32*) #2

declare dso_local %struct.TYPE_31__* @svn_ra_reparent(i32*, i8*, i32*) #2

declare dso_local i32 @svn_error_clear(%struct.TYPE_31__*) #2

declare dso_local %struct.TYPE_31__* @svn_error_trace(%struct.TYPE_31__*) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @svn_client__resolve_rev_and_url(%struct.TYPE_33__**, i32*, i8*, %struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_32__*, i32*) #2

declare dso_local i32 @svn_client__ra_session_from_path2(i32**, %struct.TYPE_33__**, i8*, i32*, %struct.TYPE_30__*, %struct.TYPE_30__*, %struct.TYPE_32__*, i32*) #2

declare dso_local i32 @svn_ra_check_path(i32*, i8*, i32, i64*, i32*) #2

declare dso_local %struct.TYPE_31__* @svn_error_createf(i64, i32*, i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #2

declare dso_local i32 @svn_io_make_dir_recursively(i8*, i32*) #2

declare dso_local i32 @initialize_area(i8*, %struct.TYPE_33__*, i32, %struct.TYPE_32__*, i32*) #2

declare dso_local i32 @svn_wc_check_wc2(i32*, i32, i8*, i32*) #2

declare dso_local i32 @svn_wc__node_get_url(i8**, i32, i8*, i32*, i32*) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #2

declare dso_local i32 @svn_client__update_internal(i32*, i32*, i8*, %struct.TYPE_30__*, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_32__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
