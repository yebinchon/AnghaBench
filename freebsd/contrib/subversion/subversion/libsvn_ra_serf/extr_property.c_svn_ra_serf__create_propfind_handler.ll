; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_property.c_svn_ra_serf__create_propfind_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_property.c_svn_ra_serf__create_propfind_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i8*, i32, %struct.TYPE_8__*, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i8*, i8*, %struct.TYPE_7__*, i32*, i8*, i32, i32* }

@propfind_ttable = common dso_local global i32 0, align 4
@propfind_opened = common dso_local global i32 0, align 4
@propfind_closed = common dso_local global i32 0, align 4
@propfind_expected_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"PROPFIND\00", align 1
@create_propfind_body = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"text/xml\00", align 1
@setup_propfind_headers = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_serf__create_propfind_handler(%struct.TYPE_7__** %0, i32* %1, i8* %2, i32 %3, i8* %4, i32* %5, i32 %6, i8* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_7__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca %struct.TYPE_7__*, align 8
  %21 = alloca i32*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store i32* %8, i32** %18, align 8
  %22 = load i32*, i32** %18, align 8
  %23 = call %struct.TYPE_8__* @apr_pcalloc(i32* %22, i32 56)
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %19, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 6
  store i32* %27, i32** %29, align 8
  %30 = load i32, i32* %16, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** %17, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i64 @SVN_IS_VALID_REVNUM(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %9
  %43 = load i32*, i32** %18, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32* @apr_ltoa(i32* %43, i32 %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  store i32* %45, i32** %47, align 8
  br label %51

48:                                               ; preds = %9
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 3
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %48, %42
  %52 = load i32, i32* @propfind_ttable, align 4
  %53 = load i32, i32* @propfind_opened, align 4
  %54 = load i32, i32* @propfind_closed, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %56 = load i32*, i32** %18, align 8
  %57 = call i32* @svn_ra_serf__xml_context_create(i32 %52, i32 %53, i32 %54, i32* null, %struct.TYPE_8__* %55, i32* %56)
  store i32* %57, i32** %21, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i32*, i32** %21, align 8
  %60 = load i32, i32* @propfind_expected_status, align 4
  %61 = load i32*, i32** %18, align 8
  %62 = call %struct.TYPE_7__* @svn_ra_serf__create_expat_handler(i32* %58, i32* %59, i32 %60, i32* %61)
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %20, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %64, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* @create_propfind_body, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 7
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %72, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 6
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %75, align 8
  %76 = load i32, i32* @setup_propfind_headers, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 4
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** %81, align 8
  %82 = load i32, i32* @TRUE, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  store %struct.TYPE_7__* %85, %struct.TYPE_7__** %87, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %89 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  store %struct.TYPE_7__* %88, %struct.TYPE_7__** %89, align 8
  %90 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %90
}

declare dso_local %struct.TYPE_8__* @apr_pcalloc(i32*, i32) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32* @apr_ltoa(i32*, i32) #1

declare dso_local i32* @svn_ra_serf__xml_context_create(i32, i32, i32, i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local %struct.TYPE_7__* @svn_ra_serf__create_expat_handler(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
