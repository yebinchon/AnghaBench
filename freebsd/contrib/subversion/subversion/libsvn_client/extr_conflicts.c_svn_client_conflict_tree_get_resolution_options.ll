; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_svn_client_conflict_tree_get_resolution_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_svn_client_conflict_tree_get_resolution_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_client_conflict_option_postpone = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Postpone\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"skip this conflict and leave it unresolved\00", align 1
@resolve_postpone = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_conflict_tree_get_resolution_options(i32** %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
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
  %13 = call i32 @assert_tree_conflict(i32* %11, i32* %12)
  %14 = call i32 @SVN_ERR(i32 %13)
  %15 = load i32*, i32** %9, align 8
  %16 = call i32* @apr_array_make(i32* %15, i32 2, i32 8)
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
  %26 = load i32*, i32** %7, align 8
  %27 = load i32**, i32*** %6, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @configure_option_accept_current_wc_state(i32* %26, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i32*, i32** %7, align 8
  %32 = load i32**, i32*** %6, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @configure_option_update_move_destination(i32* %31, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i32*, i32** %7, align 8
  %37 = load i32**, i32*** %6, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @configure_option_update_raise_moved_away_children(i32* %36, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32**, i32*** %6, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @configure_option_incoming_add_ignore(i32* %41, i32* %42, i32* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load i32*, i32** %7, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32**, i32*** %6, align 8
  %51 = load i32*, i32** %50, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @configure_option_incoming_added_file_text_merge(i32* %48, i32* %49, i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i32*, i32** %7, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32**, i32*** %6, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @configure_option_incoming_added_file_replace_and_merge(i32* %55, i32* %56, i32* %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i32**, i32*** %6, align 8
  %65 = load i32*, i32** %64, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @configure_option_incoming_added_dir_merge(i32* %62, i32* %63, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32**, i32*** %6, align 8
  %72 = load i32*, i32** %71, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @configure_option_incoming_added_dir_replace(i32* %69, i32* %70, i32* %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load i32*, i32** %7, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = load i32**, i32*** %6, align 8
  %79 = load i32*, i32** %78, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @configure_option_incoming_added_dir_replace_and_merge(i32* %76, i32* %77, i32* %79, i32* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  %83 = load i32*, i32** %7, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i32**, i32*** %6, align 8
  %86 = load i32*, i32** %85, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @configure_option_incoming_delete_ignore(i32* %83, i32* %84, i32* %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load i32*, i32** %7, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = load i32**, i32*** %6, align 8
  %93 = load i32*, i32** %92, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @configure_option_incoming_delete_accept(i32* %90, i32* %91, i32* %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load i32*, i32** %7, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = load i32**, i32*** %6, align 8
  %100 = load i32*, i32** %99, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @configure_option_incoming_move_file_merge(i32* %97, i32* %98, i32* %100, i32* %101)
  %103 = call i32 @SVN_ERR(i32 %102)
  %104 = load i32*, i32** %7, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = load i32**, i32*** %6, align 8
  %107 = load i32*, i32** %106, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = call i32 @configure_option_incoming_dir_merge(i32* %104, i32* %105, i32* %107, i32* %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  %111 = load i32*, i32** %7, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = load i32**, i32*** %6, align 8
  %114 = load i32*, i32** %113, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = call i32 @configure_option_local_move_file_merge(i32* %111, i32* %112, i32* %114, i32* %115)
  %117 = call i32 @SVN_ERR(i32 %116)
  %118 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %118
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @assert_tree_conflict(i32*, i32*) #1

declare dso_local i32* @apr_array_make(i32*, i32, i32) #1

declare dso_local i32 @add_resolution_option(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @configure_option_accept_current_wc_state(i32*, i32*) #1

declare dso_local i32 @configure_option_update_move_destination(i32*, i32*) #1

declare dso_local i32 @configure_option_update_raise_moved_away_children(i32*, i32*) #1

declare dso_local i32 @configure_option_incoming_add_ignore(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @configure_option_incoming_added_file_text_merge(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @configure_option_incoming_added_file_replace_and_merge(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @configure_option_incoming_added_dir_merge(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @configure_option_incoming_added_dir_replace(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @configure_option_incoming_added_dir_replace_and_merge(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @configure_option_incoming_delete_ignore(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @configure_option_incoming_delete_accept(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @configure_option_incoming_move_file_merge(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @configure_option_incoming_dir_merge(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @configure_option_local_move_file_merge(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
