; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff_summarize.c_diff_file_deleted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff_summarize.c_diff_file_deleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svn_diff_tree_processor_t = type { %struct.summarize_baton_t* }
%struct.summarize_baton_t = type { i32 }

@svn_client_diff_summarize_kind_deleted = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i8*, i32*, i8*, %struct.svn_diff_tree_processor_t*, i32*)* @diff_file_deleted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @diff_file_deleted(i8* %0, i32* %1, i8* %2, i32* %3, i8* %4, %struct.svn_diff_tree_processor_t* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.svn_diff_tree_processor_t*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.summarize_baton_t*, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.svn_diff_tree_processor_t* %5, %struct.svn_diff_tree_processor_t** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load %struct.svn_diff_tree_processor_t*, %struct.svn_diff_tree_processor_t** %13, align 8
  %17 = getelementptr inbounds %struct.svn_diff_tree_processor_t, %struct.svn_diff_tree_processor_t* %16, i32 0, i32 0
  %18 = load %struct.summarize_baton_t*, %struct.summarize_baton_t** %17, align 8
  store %struct.summarize_baton_t* %18, %struct.summarize_baton_t** %15, align 8
  %19 = load %struct.summarize_baton_t*, %struct.summarize_baton_t** %15, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* @svn_client_diff_summarize_kind_deleted, align 4
  %22 = load i32, i32* @FALSE, align 4
  %23 = load i32, i32* @svn_node_file, align 4
  %24 = load i32*, i32** %14, align 8
  %25 = call i32 @send_summary(%struct.summarize_baton_t* %19, i8* %20, i32 %21, i32 %22, i32 %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %27
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @send_summary(%struct.summarize_baton_t*, i8*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
