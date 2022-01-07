; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_svn_client_conflict_prop_get_resolution_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_svn_client_conflict_prop_get_resolution_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_client_conflict_option_postpone = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Postpone\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"skip this conflict and leave it unresolved\00", align 1
@resolve_postpone = common dso_local global i32 0, align 4
@svn_client_conflict_option_base_text = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Accept base\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"discard local and incoming changes for this property\00", align 1
@resolve_prop_conflict = common dso_local global i32 0, align 4
@svn_client_conflict_option_incoming_text = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"Accept incoming\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"accept incoming version of entire property value\00", align 1
@svn_client_conflict_option_working_text = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"Mark as resolved\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"accept working copy version of entire property value\00", align 1
@svn_client_conflict_option_incoming_text_where_conflicted = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"Accept incoming for conflicts\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"accept incoming changes only where they conflict\00", align 1
@svn_client_conflict_option_working_text_where_conflicted = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"Reject conflicts\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"reject changes which conflict and accept the rest\00", align 1
@svn_client_conflict_option_merged_text = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"Accept merged\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"accept merged version of property value\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_conflict_prop_get_resolution_options(i32** %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32*, i32** %10, align 8
  %13 = call i32 @assert_prop_conflict(i32* %11, i32* %12)
  %14 = call i32 @SVN_ERR(i32 %13)
  %15 = load i32*, i32** %9, align 8
  %16 = call i32* @apr_array_make(i32* %15, i32 7, i32 8)
  %17 = load i32**, i32*** %6, align 8
  store i32* %16, i32** %17, align 8
  %18 = load i32**, i32*** %6, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @svn_client_conflict_option_postpone, align 4
  %22 = call i32 @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @resolve_postpone, align 4
  %25 = call i32 @add_resolution_option(i32* %19, i32* %20, i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = load i32**, i32*** %6, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @svn_client_conflict_option_base_text, align 4
  %30 = call i32 @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32, i32* @resolve_prop_conflict, align 4
  %33 = call i32 @add_resolution_option(i32* %27, i32* %28, i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32**, i32*** %6, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* @svn_client_conflict_option_incoming_text, align 4
  %38 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %39 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %40 = load i32, i32* @resolve_prop_conflict, align 4
  %41 = call i32 @add_resolution_option(i32* %35, i32* %36, i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = load i32**, i32*** %6, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* @svn_client_conflict_option_working_text, align 4
  %46 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %47 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  %48 = load i32, i32* @resolve_prop_conflict, align 4
  %49 = call i32 @add_resolution_option(i32* %43, i32* %44, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load i32**, i32*** %6, align 8
  %51 = load i32*, i32** %50, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* @svn_client_conflict_option_incoming_text_where_conflicted, align 4
  %54 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %55 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0))
  %56 = load i32, i32* @resolve_prop_conflict, align 4
  %57 = call i32 @add_resolution_option(i32* %51, i32* %52, i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load i32**, i32*** %6, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* @svn_client_conflict_option_working_text_where_conflicted, align 4
  %62 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %63 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0))
  %64 = load i32, i32* @resolve_prop_conflict, align 4
  %65 = call i32 @add_resolution_option(i32* %59, i32* %60, i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load i32**, i32*** %6, align 8
  %67 = load i32*, i32** %66, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* @svn_client_conflict_option_merged_text, align 4
  %70 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %71 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  %72 = load i32, i32* @resolve_prop_conflict, align 4
  %73 = call i32 @add_resolution_option(i32* %67, i32* %68, i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %74
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @assert_prop_conflict(i32*, i32*) #1

declare dso_local i32* @apr_array_make(i32*, i32, i32) #1

declare dso_local i32 @add_resolution_option(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
