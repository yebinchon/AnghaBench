; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_diff-cmd.c_summarize_xml.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_diff-cmd.c_summarize_xml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i64, i32 }
%struct.summarize_baton_t = type { i8*, i64 }
%struct.TYPE_8__ = type { i32 }

@svn_client_diff_summarize_kind_normal = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"modified\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@svn_xml_protect_pcdata = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"kind\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"props\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i8*, i32*)* @summarize_xml to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @summarize_xml(%struct.TYPE_9__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.summarize_baton_t*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.summarize_baton_t*
  store %struct.summarize_baton_t* %13, %struct.summarize_baton_t** %8, align 8
  %14 = load %struct.summarize_baton_t*, %struct.summarize_baton_t** %8, align 8
  %15 = getelementptr inbounds %struct.summarize_baton_t, %struct.summarize_baton_t* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %9, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call %struct.TYPE_8__* @svn_stringbuf_create_empty(i32* %17)
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %10, align 8
  %19 = load %struct.summarize_baton_t*, %struct.summarize_baton_t** %8, align 8
  %20 = getelementptr inbounds %struct.summarize_baton_t, %struct.summarize_baton_t* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @svn_client_diff_summarize_kind_normal, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %30, i32** %4, align 8
  br label %88

31:                                               ; preds = %23, %3
  %32 = load i8*, i8** %9, align 8
  %33 = call i64 @svn_path_is_url(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i8*, i8** %9, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i8* @svn_path_url_add_component2(i8* %36, i32 %39, i32* %40)
  store i8* %41, i8** %9, align 8
  br label %52

42:                                               ; preds = %31
  %43 = load i8*, i8** %9, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i8* @svn_dirent_join(i8* %43, i32 %46, i32* %47)
  store i8* %48, i8** %9, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i8* @svn_dirent_local_style(i8* %49, i32* %50)
  store i8* %51, i8** %9, align 8
  br label %52

52:                                               ; preds = %42, %35
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  store i8* %58, i8** %11, align 8
  %59 = load %struct.summarize_baton_t*, %struct.summarize_baton_t** %8, align 8
  %60 = getelementptr inbounds %struct.summarize_baton_t, %struct.summarize_baton_t* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %64

64:                                               ; preds = %63, %52
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* @svn_xml_protect_pcdata, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @svn_cl__node_kind_str_xml(i32 %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @kind_to_word(i64 %73)
  %75 = load i8*, i8** %11, align 8
  %76 = load i32, i32* @SVN_VA_NULL, align 4
  %77 = call i32 @svn_xml_make_open_tag(%struct.TYPE_8__** %10, i32* %65, i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %75, i32 %76)
  %78 = load i8*, i8** %9, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @svn_xml_escape_cdata_cstring(%struct.TYPE_8__** %10, i8* %78, i32* %79)
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @svn_xml_make_close_tag(%struct.TYPE_8__** %10, i32* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @stdout, align 4
  %87 = call i32* @svn_cl__error_checked_fputs(i32 %85, i32 %86)
  store i32* %87, i32** %4, align 8
  br label %88

88:                                               ; preds = %64, %29
  %89 = load i32*, i32** %4, align 8
  ret i32* %89
}

declare dso_local %struct.TYPE_8__* @svn_stringbuf_create_empty(i32*) #1

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i32, i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i32, i32*) #1

declare dso_local i8* @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_xml_make_open_tag(%struct.TYPE_8__**, i32*, i32, i8*, i8*, i32, i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @svn_cl__node_kind_str_xml(i32) #1

declare dso_local i32 @kind_to_word(i64) #1

declare dso_local i32 @svn_xml_escape_cdata_cstring(%struct.TYPE_8__**, i8*, i32*) #1

declare dso_local i32 @svn_xml_make_close_tag(%struct.TYPE_8__**, i32*, i8*) #1

declare dso_local i32* @svn_cl__error_checked_fputs(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
