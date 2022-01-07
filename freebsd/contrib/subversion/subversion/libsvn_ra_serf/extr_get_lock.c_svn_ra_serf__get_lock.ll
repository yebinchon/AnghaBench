; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_get_lock.c_svn_ra_serf__get_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_get_lock.c_svn_ra_serf__get_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_21__ = type { i8*, i8*, i8*, %struct.TYPE_18__, %struct.TYPE_23__*, i32, i32, %struct.TYPE_23__*, i32, %struct.TYPE_23__*, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i8*, %struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_23__*, i32, i32* }

@locks_ttable = common dso_local global i32 0, align 4
@locks_closed = common dso_local global i32 0, align 4
@locks_expected_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"PROPFIND\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"text/xml\00", align 1
@create_getlock_body = common dso_local global i32 0, align 4
@setup_getlock_headers = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@handle_lock = common dso_local global i32 0, align 4
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@SVN_ERR_RA_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Server does not support locking features\00", align 1
@SVN_ERR_FS_NOT_FOUND = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_serf__get_lock(%struct.TYPE_19__* %0, %struct.TYPE_22__** %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_22__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_22__** %1, %struct.TYPE_22__*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %10, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32* @svn_pool_create(i32* %20)
  store i32* %21, i32** %13, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = call i8* @svn_path_url_add_component2(i32 %25, i8* %26, i32* %27)
  store i8* %28, i8** %15, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = call %struct.TYPE_23__* @apr_pcalloc(i32* %29, i32 48)
  store %struct.TYPE_23__* %30, %struct.TYPE_23__** %14, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 5
  store i32* %31, i32** %33, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call %struct.TYPE_22__* @svn_lock_create(i32* %37)
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 1
  store %struct.TYPE_22__* %38, %struct.TYPE_22__** %40, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @apr_pstrdup(i32* %41, i8* %42)
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 8
  %48 = load i32, i32* @locks_ttable, align 4
  %49 = load i32, i32* @locks_closed, align 4
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = call i32* @svn_ra_serf__xml_context_create(i32 %48, i32* null, i32 %49, i32* null, %struct.TYPE_23__* %50, i32* %51)
  store i32* %52, i32** %12, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* @locks_expected_status, align 4
  %56 = load i32*, i32** %13, align 8
  %57 = call %struct.TYPE_21__* @svn_ra_serf__create_expat_handler(%struct.TYPE_20__* %53, i32* %54, i32 %55, i32* %56)
  store %struct.TYPE_21__* %57, %struct.TYPE_21__** %11, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %59, align 8
  %60 = load i8*, i8** %15, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %64, align 8
  %65 = load i32, i32* @create_getlock_body, align 4
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 10
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 9
  store %struct.TYPE_23__* %68, %struct.TYPE_23__** %70, align 8
  %71 = load i32, i32* @setup_getlock_headers, align 4
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 8
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 7
  store %struct.TYPE_23__* %74, %struct.TYPE_23__** %76, align 8
  %77 = load i32, i32* @TRUE, align 4
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %86, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 3
  store %struct.TYPE_23__* %87, %struct.TYPE_23__** %89, align 8
  %90 = load i32, i32* @handle_lock, align 4
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 4
  store %struct.TYPE_23__* %93, %struct.TYPE_23__** %95, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 2
  store %struct.TYPE_21__* %96, %struct.TYPE_21__** %98, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = call i32* @svn_ra_serf__context_run_one(%struct.TYPE_21__* %99, i32* %100)
  store i32* %101, i32** %16, align 8
  %102 = load i32*, i32** %16, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %116

104:                                              ; preds = %4
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 500
  br i1 %109, label %121, label %110

110:                                              ; preds = %104
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 501
  br i1 %115, label %121, label %116

116:                                              ; preds = %110, %4
  %117 = load i32*, i32** %16, align 8
  %118 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %119 = call i64 @svn_error_find_cause(i32* %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %116, %110, %104
  %122 = load i32, i32* @SVN_ERR_RA_NOT_IMPLEMENTED, align 4
  %123 = load i32*, i32** %16, align 8
  %124 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %125 = call i32 @svn_error_create(i32 %122, i32* %123, i32 %124)
  %126 = call i32* @svn_error_trace(i32 %125)
  store i32* %126, i32** %5, align 8
  br label %170

127:                                              ; preds = %116
  %128 = load i32*, i32** %16, align 8
  %129 = load i32, i32* @SVN_ERR_FS_NOT_FOUND, align 4
  %130 = call i64 @svn_error_find_cause(i32* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32*, i32** %16, align 8
  %134 = call i32 @svn_error_clear(i32* %133)
  br label %146

135:                                              ; preds = %127
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 207
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %143 = call i32 @svn_ra_serf__unexpected_status(%struct.TYPE_21__* %142)
  %144 = call i32* @svn_error_trace(i32 %143)
  store i32* %144, i32** %5, align 8
  br label %170

145:                                              ; preds = %135
  br label %146

146:                                              ; preds = %145, %132
  br label %147

147:                                              ; preds = %146
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %149, align 8
  %151 = icmp ne %struct.TYPE_22__* %150, null
  br i1 %151, label %152, label %164

152:                                              ; preds = %147
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %152
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %161, align 8
  %163 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  store %struct.TYPE_22__* %162, %struct.TYPE_22__** %163, align 8
  br label %166

164:                                              ; preds = %152, %147
  %165 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %165, align 8
  br label %166

166:                                              ; preds = %164, %159
  %167 = load i32*, i32** %13, align 8
  %168 = call i32 @svn_pool_destroy(i32* %167)
  %169 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %169, i32** %5, align 8
  br label %170

170:                                              ; preds = %166, %141, %121
  %171 = load i32*, i32** %5, align 8
  ret i32* %171
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_23__* @apr_pcalloc(i32*, i32) #1

declare dso_local %struct.TYPE_22__* @svn_lock_create(i32*) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32* @svn_ra_serf__xml_context_create(i32, i32*, i32, i32*, %struct.TYPE_23__*, i32*) #1

declare dso_local %struct.TYPE_21__* @svn_ra_serf__create_expat_handler(%struct.TYPE_20__*, i32*, i32, i32*) #1

declare dso_local i32* @svn_ra_serf__context_run_one(%struct.TYPE_21__*, i32*) #1

declare dso_local i64 @svn_error_find_cause(i32*, i32) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32 @svn_ra_serf__unexpected_status(%struct.TYPE_21__*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
