; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnbench/extr_null-export-cmd.c_bench_null_export.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnbench/extr_null-export-cmd.c_bench_null_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32 (i8*, i32*)*, i32 (i8*, i8*, i32, i32, i32, i32*, i32*)* }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@svn_opt_revision_unspecified = common dso_local global i64 0, align 8
@svn_opt_revision_head = common dso_local global i64 0, align 8
@svn_opt_revision_working = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@svn_node_file = common dso_local global i64 0, align 8
@file_write_handler = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@set_target_revision = common dso_local global i32 0, align 4
@open_root = common dso_local global i32 0, align 4
@add_directory = common dso_local global i32 0, align 4
@add_file = common dso_local global i32 0, align 4
@apply_textdelta = common dso_local global i32 0, align 4
@close_file = common dso_local global i32 0, align 4
@change_file_prop = common dso_local global i32 0, align 4
@change_dir_prop = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"svn:\00", align 1
@FALSE = common dso_local global i32 0, align 4
@svn_depth_infinity = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8
@SVN_ERR_RA_ILLEGAL_URL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"URL '%s' doesn't exist\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32, i8*, %struct.TYPE_23__*, i64, i32*)* @bench_null_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bench_null_export(i32* %0, i8* %1, %struct.TYPE_21__* %2, %struct.TYPE_21__* %3, i32 %4, i8* %5, %struct.TYPE_23__* %6, i64 %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_24__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_25__*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.TYPE_22__*, align 8
  %30 = alloca %struct.TYPE_20__*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca %struct.TYPE_22__*, align 8
  store i32* %0, i32** %11, align 8
  store i8* %1, i8** %12, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %14, align 8
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store %struct.TYPE_23__* %6, %struct.TYPE_23__** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32* %8, i32** %19, align 8
  %33 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %33, i32* %20, align 4
  %34 = load i8*, i8** %12, align 8
  %35 = call i64 @svn_path_is_url(i8* %34)
  store i64 %35, i64* %21, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %37 = icmp ne %struct.TYPE_21__* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @SVN_ERR_ASSERT(i32 %38)
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %41 = icmp ne %struct.TYPE_21__* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @SVN_ERR_ASSERT(i32 %42)
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %9
  %50 = load i8*, i8** %12, align 8
  %51 = call i64 @svn_path_is_url(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i64, i64* @svn_opt_revision_head, align 8
  br label %57

55:                                               ; preds = %49
  %56 = load i64, i64* @svn_opt_revision_working, align 8
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i64 [ %54, %53 ], [ %56, %55 ]
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %57, %9
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_21__* %68, %struct.TYPE_21__** %14, align 8
  br label %69

69:                                               ; preds = %67, %61
  %70 = load i64, i64* %21, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @SVN_CLIENT__REVKIND_IS_LOCAL_TO_WC(i64 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %217, label %78

78:                                               ; preds = %72, %69
  %79 = load i8*, i8** %16, align 8
  %80 = bitcast i8* %79 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %80, %struct.TYPE_25__** %25, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %85 = load i32*, i32** %19, align 8
  %86 = call i32 @svn_client__ra_session_from_path2(i32** %23, %struct.TYPE_24__** %22, i8* %81, i32* null, %struct.TYPE_21__* %82, %struct.TYPE_21__* %83, %struct.TYPE_23__* %84, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  %88 = load i32*, i32** %23, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %19, align 8
  %93 = call i32 @svn_ra_check_path(i32* %88, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %91, i64* %24, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  %95 = load i64, i64* %24, align 8
  %96 = load i64, i64* @svn_node_file, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %78
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %25, align 8
  %100 = load i32*, i32** %19, align 8
  %101 = call i32* @svn_stream_create(%struct.TYPE_25__* %99, i32* %100)
  store i32* %101, i32** %27, align 8
  %102 = load i32*, i32** %27, align 8
  %103 = load i32, i32* @file_write_handler, align 4
  %104 = call i32 @svn_stream_set_write(i32* %102, i32 %103)
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %25, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  %109 = load i32*, i32** %23, align 8
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %27, align 8
  %114 = load i32*, i32** %19, align 8
  %115 = call i32 @svn_ra_get_file(i32* %109, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %112, i32* %113, i32* null, i32** %26, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  br label %216

117:                                              ; preds = %78
  %118 = load i64, i64* %24, align 8
  %119 = load i64, i64* @svn_node_dir, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %205

121:                                              ; preds = %117
  store i8* null, i8** %28, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %29, align 8
  %122 = load i32*, i32** %19, align 8
  %123 = call %struct.TYPE_22__* @svn_delta_default_editor(i32* %122)
  store %struct.TYPE_22__* %123, %struct.TYPE_22__** %32, align 8
  %124 = load i32, i32* @set_target_revision, align 4
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %32, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 7
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @open_root, align 4
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %32, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 6
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @add_directory, align 4
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %32, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 5
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @add_file, align 4
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %32, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @apply_textdelta, align 4
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %32, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @close_file, align 4
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %32, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @change_file_prop, align 4
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %32, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* @change_dir_prop, align 4
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %32, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  %148 = load i64, i64* %18, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %121
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @strncmp(i32 %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %150, %121
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %32, align 8
  %164 = load i8*, i8** %16, align 8
  %165 = load i32*, i32** %19, align 8
  %166 = call i32 @svn_delta_get_cancellation_editor(i32 %159, i32 %162, %struct.TYPE_22__* %163, i8* %164, %struct.TYPE_22__** %29, i8** %28, i32* %165)
  %167 = call i32 @SVN_ERR(i32 %166)
  br label %168

168:                                              ; preds = %156, %150
  %169 = load i32*, i32** %23, align 8
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* @FALSE, align 4
  %175 = load i32, i32* @FALSE, align 4
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %177 = load i8*, i8** %28, align 8
  %178 = load i32*, i32** %19, align 8
  %179 = load i32*, i32** %19, align 8
  %180 = call i32 @svn_ra_do_update3(i32* %169, %struct.TYPE_20__** %30, i8** %31, i32 %172, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %173, i32 %174, i32 %175, %struct.TYPE_22__* %176, i8* %177, i32* %178, i32* %179)
  %181 = call i32 @SVN_ERR(i32 %180)
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 1
  %184 = load i32 (i8*, i8*, i32, i32, i32, i32*, i32*)*, i32 (i8*, i8*, i32, i32, i32, i32*, i32*)** %183, align 8
  %185 = load i8*, i8** %31, align 8
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @svn_depth_infinity, align 4
  %190 = load i32, i32* @TRUE, align 4
  %191 = load i32*, i32** %19, align 8
  %192 = call i32 %184(i8* %185, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %188, i32 %189, i32 %190, i32* null, i32* %191)
  %193 = call i32 @SVN_ERR(i32 %192)
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 0
  %196 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %195, align 8
  %197 = load i8*, i8** %31, align 8
  %198 = load i32*, i32** %19, align 8
  %199 = call i32 %196(i8* %197, i32* %198)
  %200 = call i32 @SVN_ERR(i32 %199)
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %25, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %202, align 4
  br label %215

205:                                              ; preds = %117
  %206 = load i64, i64* %24, align 8
  %207 = load i64, i64* @svn_node_none, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %214

209:                                              ; preds = %205
  %210 = load i32, i32* @SVN_ERR_RA_ILLEGAL_URL, align 4
  %211 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %212 = load i8*, i8** %12, align 8
  %213 = call i32* @svn_error_createf(i32 %210, i32* null, i32 %211, i8* %212)
  store i32* %213, i32** %10, align 8
  br label %225

214:                                              ; preds = %205
  br label %215

215:                                              ; preds = %214, %168
  br label %216

216:                                              ; preds = %215, %98
  br label %217

217:                                              ; preds = %216, %72
  %218 = load i32*, i32** %11, align 8
  %219 = icmp ne i32* %218, null
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load i32, i32* %20, align 4
  %222 = load i32*, i32** %11, align 8
  store i32 %221, i32* %222, align 4
  br label %223

223:                                              ; preds = %220, %217
  %224 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %224, i32** %10, align 8
  br label %225

225:                                              ; preds = %223, %209
  %226 = load i32*, i32** %10, align 8
  ret i32* %226
}

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_CLIENT__REVKIND_IS_LOCAL_TO_WC(i64) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client__ra_session_from_path2(i32**, %struct.TYPE_24__**, i8*, i32*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @svn_ra_check_path(i32*, i8*, i32, i64*, i32*) #1

declare dso_local i32* @svn_stream_create(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @svn_stream_set_write(i32*, i32) #1

declare dso_local i32 @svn_ra_get_file(i32*, i8*, i32, i32*, i32*, i32**, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_delta_default_editor(i32*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @svn_delta_get_cancellation_editor(i32, i32, %struct.TYPE_22__*, i8*, %struct.TYPE_22__**, i8**, i32*) #1

declare dso_local i32 @svn_ra_do_update3(i32*, %struct.TYPE_20__**, i8**, i32, i8*, i32, i32, i32, %struct.TYPE_22__*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
