; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_options.c_create_options_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_options.c_create_options_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_14__*, i32, %struct.TYPE_13__*, i32, %struct.TYPE_12__*, i32* }
%struct.TYPE_13__ = type { i8*, i8*, %struct.TYPE_14__*, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@options_ttable = common dso_local global i32 0, align 4
@options_closed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"OPTIONS\00", align 1
@create_options_body = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"text/xml\00", align 1
@options_response_handler = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_14__**, %struct.TYPE_12__*, i32*)* @create_options_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_options_req(%struct.TYPE_14__** %0, %struct.TYPE_12__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_14__**, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__** %0, %struct.TYPE_14__*** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call %struct.TYPE_14__* @apr_pcalloc(i32* %10, i32 48)
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 5
  store i32* %12, i32** %14, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 4
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %17, align 8
  %18 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @options_ttable, align 4
  %22 = load i32, i32* @options_closed, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32* @svn_ra_serf__xml_context_create(i32 %21, i32* null, i32 %22, i32* null, %struct.TYPE_14__* %23, i32* %24)
  store i32* %25, i32** %8, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call %struct.TYPE_13__* @svn_ra_serf__create_expat_handler(%struct.TYPE_12__* %26, i32* %27, i32* null, i32* %28)
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %9, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %31, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @create_options_body, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %42, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %45, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  store %struct.TYPE_14__* %53, %struct.TYPE_14__** %55, align 8
  %56 = load i32, i32* @options_response_handler, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  store %struct.TYPE_14__* %59, %struct.TYPE_14__** %61, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %63 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  store %struct.TYPE_14__* %62, %struct.TYPE_14__** %63, align 8
  %64 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %64
}

declare dso_local %struct.TYPE_14__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32* @svn_ra_serf__xml_context_create(i32, i32*, i32, i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_ra_serf__create_expat_handler(%struct.TYPE_12__*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
