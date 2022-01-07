; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_get_file.c_svn_ra_serf__get_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_get_file.c_svn_ra_serf__get_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_19__*, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i8*, i8*, %struct.TYPE_20__, %struct.TYPE_24__*, i32, %struct.TYPE_24__*, i32, %struct.TYPE_24__*, i32, i8*, i8* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__*, %struct.TYPE_22__*, i32* }
%struct.file_prop_baton_t = type { i64, i32*, i32*, i32* }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@all_props = common dso_local global i32* null, align 8
@type_and_checksum_props = common dso_local global i32* null, align 8
@check_path_props = common dso_local global i32* null, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@get_file_prop_cb = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Can't get text contents of a directory\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@TRUE = common dso_local global i8* null, align 8
@headers_fetch = common dso_local global i32 0, align 4
@handle_stream = common dso_local global i32 0, align 4
@cancel_fetch = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_serf__get_file(%struct.TYPE_21__* %0, i8* %1, i32 %2, i32* %3, i32* %4, i32** %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_23__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.file_prop_baton_t, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_24__*, align 8
  %24 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32** %5, i32*** %14, align 8
  store i32* %6, i32** %15, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  store %struct.TYPE_22__* %27, %struct.TYPE_22__** %16, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = call i32* @svn_pool_create(i32* %28)
  store i32* %29, i32** %20, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i32*, i32** %20, align 8
  %36 = call i8* @svn_path_url_add_component2(i32 %33, i8* %34, i32* %35)
  store i8* %36, i8** %17, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @SVN_IS_VALID_REVNUM(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %7
  %41 = load i32*, i32** %13, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %40, %7
  %44 = load i32*, i32** %13, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %46 = load i8*, i8** %17, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32*, i32** %20, align 8
  %49 = load i32*, i32** %20, align 8
  %50 = call i32 @svn_ra_serf__get_stable_url(i8** %17, i32* %44, %struct.TYPE_22__* %45, i8* %46, i32 %47, i32* %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %43, %40
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @SVN_IS_VALID_REVNUM(i32 %54)
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @SVN_ERR_ASSERT(i32 %58)
  %60 = load i32**, i32*** %14, align 8
  %61 = icmp ne i32** %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32*, i32** @all_props, align 8
  store i32* %63, i32** %18, align 8
  br label %79

64:                                               ; preds = %53
  %65 = load i32*, i32** %12, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32*, i32** @type_and_checksum_props, align 8
  store i32* %75, i32** %18, align 8
  br label %78

76:                                               ; preds = %67, %64
  %77 = load i32*, i32** @check_path_props, align 8
  store i32* %77, i32** %18, align 8
  br label %78

78:                                               ; preds = %76, %74
  br label %79

79:                                               ; preds = %78, %62
  %80 = load i32*, i32** %15, align 8
  %81 = getelementptr inbounds %struct.file_prop_baton_t, %struct.file_prop_baton_t* %21, i32 0, i32 3
  store i32* %80, i32** %81, align 8
  %82 = load i32**, i32*** %14, align 8
  %83 = icmp ne i32** %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32*, i32** %15, align 8
  %86 = call i32* @apr_hash_make(i32* %85)
  br label %88

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87, %84
  %89 = phi i32* [ %86, %84 ], [ null, %87 ]
  %90 = getelementptr inbounds %struct.file_prop_baton_t, %struct.file_prop_baton_t* %21, i32 0, i32 2
  store i32* %89, i32** %90, align 8
  %91 = load i64, i64* @svn_node_unknown, align 8
  %92 = getelementptr inbounds %struct.file_prop_baton_t, %struct.file_prop_baton_t* %21, i32 0, i32 0
  store i64 %91, i64* %92, align 8
  %93 = getelementptr inbounds %struct.file_prop_baton_t, %struct.file_prop_baton_t* %21, i32 0, i32 1
  store i32* null, i32** %93, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %95 = load i8*, i8** %17, align 8
  %96 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %97 = load i32*, i32** %18, align 8
  %98 = load i32, i32* @get_file_prop_cb, align 4
  %99 = load i32*, i32** %20, align 8
  %100 = call i32 @svn_ra_serf__create_propfind_handler(%struct.TYPE_23__** %19, %struct.TYPE_22__* %94, i8* %95, i32 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %97, i32 %98, %struct.file_prop_baton_t* %21, i32* %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %103 = load i32*, i32** %20, align 8
  %104 = call i32 @svn_ra_serf__context_run_one(%struct.TYPE_23__* %102, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  %106 = getelementptr inbounds %struct.file_prop_baton_t, %struct.file_prop_baton_t* %21, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @svn_node_file, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %88
  %111 = load i32, i32* @SVN_ERR_FS_NOT_FILE, align 4
  %112 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %113 = call i32* @svn_error_create(i32 %111, i32* null, i32 %112)
  store i32* %113, i32** %8, align 8
  br label %197

114:                                              ; preds = %88
  %115 = load i32**, i32*** %14, align 8
  %116 = icmp ne i32** %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.file_prop_baton_t, %struct.file_prop_baton_t* %21, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load i32**, i32*** %14, align 8
  store i32* %119, i32** %120, align 8
  br label %121

121:                                              ; preds = %117, %114
  %122 = load i32*, i32** %12, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %193

124:                                              ; preds = %121
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %126 = getelementptr inbounds %struct.file_prop_baton_t, %struct.file_prop_baton_t* %21, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32*, i32** %12, align 8
  %129 = load i32*, i32** %20, align 8
  %130 = call i32 @try_get_wc_contents(i32* %22, %struct.TYPE_22__* %125, i32* %127, i32* %128, i32* %129)
  %131 = call i32 @SVN_ERR(i32 %130)
  %132 = load i32, i32* %22, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %192, label %134

134:                                              ; preds = %124
  %135 = load i32*, i32** %20, align 8
  %136 = call %struct.TYPE_24__* @apr_pcalloc(i32* %135, i32 24)
  store %struct.TYPE_24__* %136, %struct.TYPE_24__** %23, align 8
  %137 = load i32*, i32** %12, align 8
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 2
  store i32* %137, i32** %139, align 8
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 1
  store %struct.TYPE_22__* %140, %struct.TYPE_22__** %142, align 8
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %144 = load i32*, i32** %20, align 8
  %145 = call %struct.TYPE_23__* @svn_ra_serf__create_handler(%struct.TYPE_22__* %143, i32* %144)
  store %struct.TYPE_23__* %145, %struct.TYPE_23__** %24, align 8
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %147, align 8
  %148 = load i8*, i8** %17, align 8
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 1
  store i8* %148, i8** %150, align 8
  %151 = load i8*, i8** @TRUE, align 8
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 10
  store i8* %151, i8** %153, align 8
  %154 = load i8*, i8** @TRUE, align 8
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 9
  store i8* %154, i8** %156, align 8
  %157 = load i32, i32* @headers_fetch, align 4
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 8
  store i32 %157, i32* %159, align 8
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 7
  store %struct.TYPE_24__* %160, %struct.TYPE_24__** %162, align 8
  %163 = load i32, i32* @handle_stream, align 4
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 6
  store i32 %163, i32* %165, align 8
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 5
  store %struct.TYPE_24__* %166, %struct.TYPE_24__** %168, align 8
  %169 = load i32, i32* @cancel_fetch, align 4
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 8
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 3
  store %struct.TYPE_24__* %172, %struct.TYPE_24__** %174, align 8
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 0
  store %struct.TYPE_23__* %175, %struct.TYPE_23__** %177, align 8
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %179 = load i32*, i32** %20, align 8
  %180 = call i32 @svn_ra_serf__context_run_one(%struct.TYPE_23__* %178, i32* %179)
  %181 = call i32 @SVN_ERR(i32 %180)
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 200
  br i1 %186, label %187, label %191

187:                                              ; preds = %134
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %189 = call i32 @svn_ra_serf__unexpected_status(%struct.TYPE_23__* %188)
  %190 = call i32* @svn_error_trace(i32 %189)
  store i32* %190, i32** %8, align 8
  br label %197

191:                                              ; preds = %134
  br label %192

192:                                              ; preds = %191, %124
  br label %193

193:                                              ; preds = %192, %121
  %194 = load i32*, i32** %20, align 8
  %195 = call i32 @svn_pool_destroy(i32* %194)
  %196 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %196, i32** %8, align 8
  br label %197

197:                                              ; preds = %193, %187, %110
  %198 = load i32*, i32** %8, align 8
  ret i32* %198
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i32, i8*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_serf__get_stable_url(i8**, i32*, %struct.TYPE_22__*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_ra_serf__create_propfind_handler(%struct.TYPE_23__**, %struct.TYPE_22__*, i8*, i32, i8*, i32*, i32, %struct.file_prop_baton_t*, i32*) #1

declare dso_local i32 @svn_ra_serf__context_run_one(%struct.TYPE_23__*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @try_get_wc_contents(i32*, %struct.TYPE_22__*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_24__* @apr_pcalloc(i32*, i32) #1

declare dso_local %struct.TYPE_23__* @svn_ra_serf__create_handler(%struct.TYPE_22__*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_ra_serf__unexpected_status(%struct.TYPE_23__*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
