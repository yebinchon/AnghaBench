; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_list.c_svn_ra_serf__list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_list.c_svn_ra_serf__list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.TYPE_14__ = type { i8*, i32, i32, i32, i32, i32*, i32, i8*, i32, i32* }
%struct.TYPE_13__ = type { i8*, i8*, i8*, %struct.TYPE_11__, %struct.TYPE_14__*, i32 }
%struct.TYPE_11__ = type { i32 }

@log_ttable = common dso_local global i32 0, align 4
@item_closed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"REPORT\00", align 1
@create_list_body = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"text/xml\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_serf__list(%struct.TYPE_12__* %0, i8* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i8* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_13__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store i32* %8, i32** %18, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %20, align 8
  %27 = load i32*, i32** %18, align 8
  %28 = call %struct.TYPE_14__* @apr_pcalloc(i32* %27, i32 64)
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %19, align 8
  %29 = load i32*, i32** %18, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 9
  store i32* %29, i32** %31, align 8
  %32 = load i32, i32* %16, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %17, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 7
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 5
  store i32* %44, i32** %46, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %15, align 4
  %54 = load i32*, i32** %20, align 8
  %55 = load i32*, i32** %18, align 8
  %56 = call i32 @svn_ra_serf__get_dirent_props(i32 %53, i32* %54, i32* %55)
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** %18, align 8
  %60 = call i32 @svn_stringbuf_create_empty(i32* %59)
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load i32*, i32** %20, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load i32*, i32** %18, align 8
  %66 = load i32*, i32** %18, align 8
  %67 = call i32 @svn_ra_serf__get_stable_url(i8** %23, i32* null, i32* %63, i32* null, i32 %64, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i32, i32* @log_ttable, align 4
  %70 = load i32, i32* @item_closed, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %72 = load i32*, i32** %18, align 8
  %73 = call i32* @svn_ra_serf__xml_context_create(i32 %69, i32* null, i32 %70, i32* null, %struct.TYPE_14__* %71, i32* %72)
  store i32* %73, i32** %22, align 8
  %74 = load i32*, i32** %20, align 8
  %75 = load i32*, i32** %22, align 8
  %76 = load i32*, i32** %18, align 8
  %77 = call %struct.TYPE_13__* @svn_ra_serf__create_expat_handler(i32* %74, i32* %75, i32* null, i32* %76)
  store %struct.TYPE_13__* %77, %struct.TYPE_13__** %21, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %79, align 8
  %80 = load i8*, i8** %23, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* @create_list_body, align 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 4
  store %struct.TYPE_14__* %86, %struct.TYPE_14__** %88, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %90, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %92 = load i32*, i32** %18, align 8
  %93 = call i32 @svn_ra_serf__context_run_one(%struct.TYPE_13__* %91, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 200
  br i1 %99, label %100, label %104

100:                                              ; preds = %9
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %102 = call i32 @svn_ra_serf__unexpected_status(%struct.TYPE_13__* %101)
  %103 = call i32 @SVN_ERR(i32 %102)
  br label %104

104:                                              ; preds = %100, %9
  %105 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %105
}

declare dso_local %struct.TYPE_14__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_ra_serf__get_dirent_props(i32, i32*, i32*) #1

declare dso_local i32 @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_serf__get_stable_url(i8**, i32*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32* @svn_ra_serf__xml_context_create(i32, i32*, i32, i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_ra_serf__create_expat_handler(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_ra_serf__context_run_one(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @svn_ra_serf__unexpected_status(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
