; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_debug_reporter.c_svn_ra__get_debug_reporter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_debug_reporter.c_svn_ra__get_debug_reporter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.report_baton = type { i32*, i8*, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [23 x i8] c"Problem opening stderr\00", align 1
@TRUE = common dso_local global i32 0, align 4
@set_path = common dso_local global i32 0, align 4
@delete_path = common dso_local global i32 0, align 4
@link_path = common dso_local global i32 0, align 4
@finish_report = common dso_local global i32 0, align 4
@abort_report = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra__get_debug_reporter(%struct.TYPE_4__** %0, i8** %1, %struct.TYPE_4__* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca %struct.report_baton*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = call i64 @apr_file_open_stderr(i32** %14, i32* %17)
  store i64 %18, i64* %16, align 8
  %19 = load i64, i64* %16, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i64, i64* %16, align 8
  %23 = call i32* @svn_error_wrap_apr(i64 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32* %23, i32** %6, align 8
  br label %65

24:                                               ; preds = %5
  %25 = load i32*, i32** %14, align 8
  %26 = load i32, i32* @TRUE, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = call i32* @svn_stream_from_aprfile2(i32* %25, i32 %26, i32* %27)
  store i32* %28, i32** %15, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i8* @apr_palloc(i32* %29, i32 20)
  %31 = bitcast i8* %30 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %12, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call i8* @apr_palloc(i32* %32, i32 24)
  %34 = bitcast i8* %33 to %struct.report_baton*
  store %struct.report_baton* %34, %struct.report_baton** %13, align 8
  %35 = load i32, i32* @set_path, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @delete_path, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @link_path, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @finish_report, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @abort_report, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %51 = load %struct.report_baton*, %struct.report_baton** %13, align 8
  %52 = getelementptr inbounds %struct.report_baton, %struct.report_baton* %51, i32 0, i32 2
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %52, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load %struct.report_baton*, %struct.report_baton** %13, align 8
  %55 = getelementptr inbounds %struct.report_baton, %struct.report_baton* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = load %struct.report_baton*, %struct.report_baton** %13, align 8
  %58 = getelementptr inbounds %struct.report_baton, %struct.report_baton* %57, i32 0, i32 0
  store i32* %56, i32** %58, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %60 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  store %struct.TYPE_4__* %59, %struct.TYPE_4__** %60, align 8
  %61 = load %struct.report_baton*, %struct.report_baton** %13, align 8
  %62 = bitcast %struct.report_baton* %61 to i8*
  %63 = load i8**, i8*** %8, align 8
  store i8* %62, i8** %63, align 8
  %64 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %64, i32** %6, align 8
  br label %65

65:                                               ; preds = %24, %21
  %66 = load i32*, i32** %6, align 8
  ret i32* %66
}

declare dso_local i64 @apr_file_open_stderr(i32**, i32*) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i8*) #1

declare dso_local i32* @svn_stream_from_aprfile2(i32*, i32, i32*) #1

declare dso_local i8* @apr_palloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
