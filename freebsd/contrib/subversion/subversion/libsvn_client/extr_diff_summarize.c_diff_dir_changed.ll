; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff_summarize.c_diff_dir_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff_summarize.c_diff_dir_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svn_diff_tree_processor_t = type { %struct.summarize_baton_t* }
%struct.summarize_baton_t = type { i32 }

@svn_client_diff_summarize_kind_normal = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32*, i32*, i32*, i32*, i8*, %struct.svn_diff_tree_processor_t*, i32*)* @diff_dir_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @diff_dir_changed(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i8* %6, %struct.svn_diff_tree_processor_t* %7, i32* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.svn_diff_tree_processor_t*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.summarize_baton_t*, align 8
  store i8* %0, i8** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store %struct.svn_diff_tree_processor_t* %7, %struct.svn_diff_tree_processor_t** %17, align 8
  store i32* %8, i32** %18, align 8
  %20 = load %struct.svn_diff_tree_processor_t*, %struct.svn_diff_tree_processor_t** %17, align 8
  %21 = getelementptr inbounds %struct.svn_diff_tree_processor_t, %struct.svn_diff_tree_processor_t* %20, i32 0, i32 0
  %22 = load %struct.summarize_baton_t*, %struct.summarize_baton_t** %21, align 8
  store %struct.summarize_baton_t* %22, %struct.summarize_baton_t** %19, align 8
  %23 = load %struct.summarize_baton_t*, %struct.summarize_baton_t** %19, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i32, i32* @svn_client_diff_summarize_kind_normal, align 4
  %26 = load i32, i32* @TRUE, align 4
  %27 = load i32, i32* @svn_node_dir, align 4
  %28 = load i32*, i32** %18, align 8
  %29 = call i32 @send_summary(%struct.summarize_baton_t* %23, i8* %24, i32 %25, i32 %26, i32 %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %31
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @send_summary(%struct.summarize_baton_t*, i8*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
