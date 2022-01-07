; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_inherited_props.c_svn_ra_serf__get_inherited_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_inherited_props.c_svn_ra_serf__get_inherited_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_22__ = type { i8*, i32*, i32, i32*, i32, i32*, i32 }
%struct.TYPE_21__ = type { i8*, i8*, i8*, %struct.TYPE_18__, %struct.TYPE_22__*, i32 }
%struct.TYPE_18__ = type { i32 }

@SVN_RA_CAPABILITY_INHERITED_PROPS = common dso_local global i32 0, align 4
@iprops_table = common dso_local global i32 0, align 4
@iprops_opened = common dso_local global i32 0, align 4
@iprops_closed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"REPORT\00", align 1
@create_iprops_body = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"text/xml\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_serf__get_inherited_props(%struct.TYPE_19__* %0, i32** %1, i8* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  store %struct.TYPE_20__* %26, %struct.TYPE_20__** %15, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %28 = load i32, i32* @SVN_RA_CAPABILITY_INHERITED_PROPS, align 4
  %29 = load i32*, i32** %13, align 8
  %30 = call i32 @svn_ra_serf__has_capability(%struct.TYPE_19__* %27, i32* %19, i32 %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i32, i32* %19, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %78, label %34

34:                                               ; preds = %6
  store i8* null, i8** %21, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @svn_ra_serf__get_repos_root(%struct.TYPE_19__* %35, i8** %23, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i32*, i32** %13, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @apr_pstrdup(i32* %39, i32 %42)
  store i8* %43, i8** %22, align 8
  %44 = load i8*, i8** %23, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @strcmp(i8* %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %34
  %51 = load i8*, i8** %22, align 8
  store i8* %51, i8** %21, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %53 = load i8*, i8** %23, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 @svn_ra_serf__reparent(%struct.TYPE_19__* %52, i8* %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  br label %57

57:                                               ; preds = %50, %34
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %59 = load i32**, i32*** %9, align 8
  %60 = load i8*, i8** %22, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = call i32* @get_iprops_via_more_requests(%struct.TYPE_19__* %58, i32** %59, i8* %60, i8* %61, i32 %62, i32* %63, i32* %64)
  store i32* %65, i32** %20, align 8
  %66 = load i8*, i8** %21, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %57
  %69 = load i32*, i32** %20, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %71 = load i8*, i8** %21, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = call i32 @svn_ra_serf__reparent(%struct.TYPE_19__* %70, i8* %71, i32* %72)
  %74 = call i32* @svn_error_compose_create(i32* %69, i32 %73)
  store i32* %74, i32** %20, align 8
  br label %75

75:                                               ; preds = %68, %57
  %76 = load i32*, i32** %20, align 8
  %77 = call i32* @svn_error_trace(i32* %76)
  store i32* %77, i32** %7, align 8
  br label %157

78:                                               ; preds = %6
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32*, i32** %13, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = call i32 @svn_ra_serf__get_stable_url(i8** %18, i32* null, %struct.TYPE_20__* %79, i32* null, i32 %80, i32* %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @SVN_ERR_ASSERT(i32 %87)
  %89 = load i32*, i32** %13, align 8
  %90 = call %struct.TYPE_22__* @apr_pcalloc(i32* %89, i32 56)
  store %struct.TYPE_22__* %90, %struct.TYPE_22__** %14, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 5
  store i32* %96, i32** %98, align 8
  %99 = load i32*, i32** %13, align 8
  %100 = call i32 @svn_stringbuf_create_empty(i32* %99)
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 3
  store i32* null, i32** %104, align 8
  %105 = load i32*, i32** %12, align 8
  %106 = call i32* @apr_array_make(i32* %105, i32 1, i32 8)
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 1
  store i32* %106, i32** %108, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* @iprops_table, align 4
  %116 = load i32, i32* @iprops_opened, align 4
  %117 = load i32, i32* @iprops_closed, align 4
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = call i32* @svn_ra_serf__xml_context_create(i32 %115, i32 %116, i32 %117, i32* null, %struct.TYPE_22__* %118, i32* %119)
  store i32* %120, i32** %17, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %122 = load i32*, i32** %17, align 8
  %123 = load i32*, i32** %13, align 8
  %124 = call %struct.TYPE_21__* @svn_ra_serf__create_expat_handler(%struct.TYPE_20__* %121, i32* %122, i32* null, i32* %123)
  store %struct.TYPE_21__* %124, %struct.TYPE_21__** %16, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %126, align 8
  %127 = load i8*, i8** %18, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = load i32, i32* @create_iprops_body, align 4
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 5
  store i32 %130, i32* %132, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 4
  store %struct.TYPE_22__* %133, %struct.TYPE_22__** %135, align 8
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %137, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %139 = load i32*, i32** %13, align 8
  %140 = call i32 @svn_ra_serf__context_run_one(%struct.TYPE_21__* %138, i32* %139)
  %141 = call i32 @SVN_ERR(i32 %140)
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 200
  br i1 %146, label %147, label %151

147:                                              ; preds = %78
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %149 = call i32* @svn_ra_serf__unexpected_status(%struct.TYPE_21__* %148)
  %150 = call i32* @svn_error_trace(i32* %149)
  store i32* %150, i32** %7, align 8
  br label %157

151:                                              ; preds = %78
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i32**, i32*** %9, align 8
  store i32* %154, i32** %155, align 8
  %156 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %156, i32** %7, align 8
  br label %157

157:                                              ; preds = %151, %147, %75
  %158 = load i32*, i32** %7, align 8
  ret i32* %158
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_serf__has_capability(%struct.TYPE_19__*, i32*, i32, i32*) #1

declare dso_local i32 @svn_ra_serf__get_repos_root(%struct.TYPE_19__*, i8**, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @svn_ra_serf__reparent(%struct.TYPE_19__*, i8*, i32*) #1

declare dso_local i32* @get_iprops_via_more_requests(%struct.TYPE_19__*, i32**, i8*, i8*, i32, i32*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32* @svn_error_trace(i32*) #1

declare dso_local i32 @svn_ra_serf__get_stable_url(i8**, i32*, %struct.TYPE_20__*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local %struct.TYPE_22__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32* @apr_array_make(i32*, i32, i32) #1

declare dso_local i32* @svn_ra_serf__xml_context_create(i32, i32, i32, i32*, %struct.TYPE_22__*, i32*) #1

declare dso_local %struct.TYPE_21__* @svn_ra_serf__create_expat_handler(%struct.TYPE_20__*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_ra_serf__context_run_one(%struct.TYPE_21__*, i32*) #1

declare dso_local i32* @svn_ra_serf__unexpected_status(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
