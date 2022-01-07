; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_merge.c_svn_ra_serf__run_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_merge.c_svn_ra_serf__run_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_19__, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_24__ = type { i8*, i32, %struct.TYPE_23__*, %struct.TYPE_22__*, i32, i32, i32*, %struct.TYPE_21__*, i32* }
%struct.TYPE_22__ = type { i8*, i8*, %struct.TYPE_20__, %struct.TYPE_24__*, i32, %struct.TYPE_24__*, i32, i32 }
%struct.TYPE_20__ = type { i32 }

@merge_ttable = common dso_local global i32 0, align 4
@merge_closed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"MERGE\00", align 1
@create_merge_body = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"text/xml\00", align 1
@setup_merge_headers = common dso_local global i32 0, align 4
@SVN_ERR_RA_DAV_PROPS_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"The MERGE response did not include a new revision\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_serf__run_merge(%struct.TYPE_23__** %0, %struct.TYPE_21__* %1, i8* %2, i32* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_23__**, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_23__** %0, %struct.TYPE_23__*** %9, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load i32*, i32** %15, align 8
  %20 = call %struct.TYPE_24__* @apr_pcalloc(i32* %19, i32 64)
  store %struct.TYPE_24__* %20, %struct.TYPE_24__** %16, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 8
  store i32* %21, i32** %23, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 7
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %26, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 6
  store i32* %30, i32** %32, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %37 = call i64 @SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(%struct.TYPE_21__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %7
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br label %46

46:                                               ; preds = %39, %7
  %47 = phi i1 [ true, %7 ], [ %45, %39 ]
  %48 = zext i1 %47 to i32
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = call %struct.TYPE_23__* @svn_create_commit_info(i32* %51)
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 2
  store %struct.TYPE_23__* %52, %struct.TYPE_23__** %54, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @merge_ttable, align 4
  %62 = load i32, i32* @merge_closed, align 4
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %64 = load i32*, i32** %15, align 8
  %65 = call i32* @svn_ra_serf__xml_context_create(i32 %61, i32* null, i32 %62, i32* null, %struct.TYPE_24__* %63, i32* %64)
  store i32* %65, i32** %18, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %67 = load i32*, i32** %18, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = call %struct.TYPE_22__* @svn_ra_serf__create_expat_handler(%struct.TYPE_21__* %66, i32* %67, i32* null, i32* %68)
  store %struct.TYPE_22__* %69, %struct.TYPE_22__** %17, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %71, align 8
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 7
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @create_merge_body, align 4
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 5
  store %struct.TYPE_24__* %80, %struct.TYPE_24__** %82, align 8
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %84, align 8
  %85 = load i32, i32* @setup_merge_headers, align 4
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 3
  store %struct.TYPE_24__* %88, %struct.TYPE_24__** %90, align 8
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 3
  store %struct.TYPE_22__* %91, %struct.TYPE_22__** %93, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %95 = load i32*, i32** %15, align 8
  %96 = call i32 @svn_ra_serf__context_run_one(%struct.TYPE_22__* %94, i32* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 200
  br i1 %102, label %103, label %107

103:                                              ; preds = %46
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %105 = call i32 @svn_ra_serf__unexpected_status(%struct.TYPE_22__* %104)
  %106 = call i32* @svn_error_trace(i32 %105)
  store i32* %106, i32** %8, align 8
  br label %134

107:                                              ; preds = %46
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %109, align 8
  %111 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %9, align 8
  store %struct.TYPE_23__* %110, %struct.TYPE_23__** %111, align 8
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @SVN_IS_VALID_REVNUM(i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %107
  %120 = load i32, i32* @SVN_ERR_RA_DAV_PROPS_NOT_FOUND, align 4
  %121 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %122 = call i32* @svn_error_create(i32 %120, i32* null, i32 %121)
  store i32* %122, i32** %8, align 8
  br label %134

123:                                              ; preds = %107
  %124 = load i32*, i32** %14, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @apr_pstrdup(i32* %124, i32 %127)
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 0
  store i32 %128, i32* %132, align 4
  %133 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %133, i32** %8, align 8
  br label %134

134:                                              ; preds = %123, %119, %103
  %135 = load i32*, i32** %8, align 8
  ret i32* %135
}

declare dso_local %struct.TYPE_24__* @apr_pcalloc(i32*, i32) #1

declare dso_local i64 @SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_23__* @svn_create_commit_info(i32*) #1

declare dso_local i32* @svn_ra_serf__xml_context_create(i32, i32*, i32, i32*, %struct.TYPE_24__*, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_ra_serf__create_expat_handler(%struct.TYPE_21__*, i32*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_serf__context_run_one(%struct.TYPE_22__*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_ra_serf__unexpected_status(%struct.TYPE_22__*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @apr_pstrdup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
