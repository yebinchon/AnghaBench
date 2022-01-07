; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_svn_client_conflict_text_get_resolution_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_svn_client_conflict_text_get_resolution_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_client_conflict_option_postpone = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Postpone\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"skip this conflict and leave it unresolved\00", align 1
@resolve_postpone = common dso_local global i32 0, align 4
@svn_client_conflict_option_base_text = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Accept base\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"discard local and incoming changes for this binary file\00", align 1
@resolve_text_conflict = common dso_local global i32 0, align 4
@svn_client_conflict_option_incoming_text = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"Accept incoming\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"accept incoming version of binary file\00", align 1
@svn_client_conflict_option_working_text = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"Mark as resolved\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"accept binary file as it appears in the working copy\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"discard local and incoming changes for this file\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"accept incoming version of entire file\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Reject incoming\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"reject all incoming changes for this file\00", align 1
@svn_client_conflict_option_incoming_text_where_conflicted = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [30 x i8] c"Accept incoming for conflicts\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"accept changes only where they conflict\00", align 1
@svn_client_conflict_option_working_text_where_conflicted = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"Reject conflicts\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"reject changes which conflict and accept the rest\00", align 1
@svn_client_conflict_option_merged_text = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [50 x i8] c"accept the file as it appears in the working copy\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_conflict_text_get_resolution_options(i32** %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = call i32 @assert_text_conflict(i32* %12, i32* %13)
  %15 = call i32 @SVN_ERR(i32 %14)
  %16 = load i32*, i32** %9, align 8
  %17 = call i32* @apr_array_make(i32* %16, i32 7, i32 8)
  %18 = load i32**, i32*** %6, align 8
  store i32* %17, i32** %18, align 8
  %19 = load i32**, i32*** %6, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @svn_client_conflict_option_postpone, align 4
  %23 = call i32 @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @resolve_postpone, align 4
  %26 = call i32 @add_resolution_option(i32* %20, i32* %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load i32*, i32** %7, align 8
  %28 = call i8* @svn_client_conflict_text_get_mime_type(i32* %27)
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %60

31:                                               ; preds = %5
  %32 = load i8*, i8** %11, align 8
  %33 = call i64 @svn_mime_type_is_binary(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %31
  %36 = load i32**, i32*** %6, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* @svn_client_conflict_option_base_text, align 4
  %40 = call i32 @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* @resolve_text_conflict, align 4
  %43 = call i32 @add_resolution_option(i32* %37, i32* %38, i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load i32**, i32*** %6, align 8
  %45 = load i32*, i32** %44, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* @svn_client_conflict_option_incoming_text, align 4
  %48 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %49 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %50 = load i32, i32* @resolve_text_conflict, align 4
  %51 = call i32 @add_resolution_option(i32* %45, i32* %46, i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = load i32**, i32*** %6, align 8
  %53 = load i32*, i32** %52, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* @svn_client_conflict_option_working_text, align 4
  %56 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %57 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  %58 = load i32, i32* @resolve_text_conflict, align 4
  %59 = call i32 @add_resolution_option(i32* %53, i32* %54, i32 %55, i32 %56, i32 %57, i32 %58)
  br label %109

60:                                               ; preds = %31, %5
  %61 = load i32**, i32*** %6, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* @svn_client_conflict_option_base_text, align 4
  %65 = call i32 @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %66 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0))
  %67 = load i32, i32* @resolve_text_conflict, align 4
  %68 = call i32 @add_resolution_option(i32* %62, i32* %63, i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32**, i32*** %6, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* @svn_client_conflict_option_incoming_text, align 4
  %73 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %74 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %75 = load i32, i32* @resolve_text_conflict, align 4
  %76 = call i32 @add_resolution_option(i32* %70, i32* %71, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load i32**, i32*** %6, align 8
  %78 = load i32*, i32** %77, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* @svn_client_conflict_option_working_text, align 4
  %81 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %82 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  %83 = load i32, i32* @resolve_text_conflict, align 4
  %84 = call i32 @add_resolution_option(i32* %78, i32* %79, i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load i32**, i32*** %6, align 8
  %86 = load i32*, i32** %85, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* @svn_client_conflict_option_incoming_text_where_conflicted, align 4
  %89 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %90 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  %91 = load i32, i32* @resolve_text_conflict, align 4
  %92 = call i32 @add_resolution_option(i32* %86, i32* %87, i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = load i32**, i32*** %6, align 8
  %94 = load i32*, i32** %93, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* @svn_client_conflict_option_working_text_where_conflicted, align 4
  %97 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %98 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0))
  %99 = load i32, i32* @resolve_text_conflict, align 4
  %100 = call i32 @add_resolution_option(i32* %94, i32* %95, i32 %96, i32 %97, i32 %98, i32 %99)
  %101 = load i32**, i32*** %6, align 8
  %102 = load i32*, i32** %101, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* @svn_client_conflict_option_merged_text, align 4
  %105 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %106 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0))
  %107 = load i32, i32* @resolve_text_conflict, align 4
  %108 = call i32 @add_resolution_option(i32* %102, i32* %103, i32 %104, i32 %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %60, %35
  %110 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %110
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @assert_text_conflict(i32*, i32*) #1

declare dso_local i32* @apr_array_make(i32*, i32, i32) #1

declare dso_local i32 @add_resolution_option(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @svn_client_conflict_text_get_mime_type(i32*) #1

declare dso_local i64 @svn_mime_type_is_binary(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
