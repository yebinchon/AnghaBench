; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_cl-conflicts.c_append_tree_conflict_info_xml.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_cl-conflicts.c_append_tree_conflict_info_xml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"victim\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"kind\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@map_conflict_action_xml = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@map_conflict_reason_xml = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"reason\00", align 1
@svn_xml_normal = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"tree-conflict\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"source-left\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"source-right\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @append_tree_conflict_info_xml to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @append_tree_conflict_info_xml(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32* @apr_hash_make(i32* %13)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @svn_client_conflict_get_local_abspath(i32* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i8* @svn_dirent_basename(i32 %17, i32* %18)
  %20 = call i32 @svn_hash_sets(i32* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @svn_client_conflict_tree_get_victim_node_kind(i32* %22)
  %24 = call i8* @svn_cl__node_kind_str_xml(i32 %23)
  %25 = call i32 @svn_hash_sets(i32* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @svn_client_conflict_get_operation(i32* %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i8* @svn_cl__operation_str_xml(i32 %28, i32* %29)
  %31 = call i32 @svn_hash_sets(i32* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @map_conflict_action_xml, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @svn_client_conflict_get_incoming_change(i32* %33)
  %35 = call i8* @svn_token__to_word(i32 %32, i32 %34)
  store i8* %35, i8** %8, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @svn_hash_sets(i32* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* @map_conflict_reason_xml, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @svn_client_conflict_get_local_change(i32* %40)
  %42 = call i8* @svn_token__to_word(i32 %39, i32 %41)
  store i8* %42, i8** %8, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @svn_hash_sets(i32* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %44)
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @svn_xml_normal, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @svn_xml_make_open_tag_hash(i32** %4, i32* %46, i32 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32* %48)
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @svn_client_conflict_get_repos_info(i8** %9, i32* null, i32* %50, i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @svn_client_conflict_get_incoming_old_repos_location(i8** %10, i32* %11, i32* %12, i32* %55, i32* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i8*, i8** %9, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %3
  %63 = load i8*, i8** %10, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i8*, i8** %9, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @add_conflict_version_xml(i32** %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %66, i8* %67, i32 %68, i32 %69, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  br label %73

73:                                               ; preds = %65, %62, %3
  %74 = load i32*, i32** %5, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @svn_client_conflict_get_incoming_old_repos_location(i8** %10, i32* %11, i32* %12, i32* %74, i32* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i8*, i8** %9, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %73
  %82 = load i8*, i8** %10, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load i8*, i8** %9, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @add_conflict_version_xml(i32** %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %85, i8* %86, i32 %87, i32 %88, i32* %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  br label %92

92:                                               ; preds = %84, %81, %73
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @svn_xml_make_close_tag(i32** %4, i32* %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %95 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %95
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i8*) #1

declare dso_local i8* @svn_dirent_basename(i32, i32*) #1

declare dso_local i32 @svn_client_conflict_get_local_abspath(i32*) #1

declare dso_local i8* @svn_cl__node_kind_str_xml(i32) #1

declare dso_local i32 @svn_client_conflict_tree_get_victim_node_kind(i32*) #1

declare dso_local i8* @svn_cl__operation_str_xml(i32, i32*) #1

declare dso_local i32 @svn_client_conflict_get_operation(i32*) #1

declare dso_local i8* @svn_token__to_word(i32, i32) #1

declare dso_local i32 @svn_client_conflict_get_incoming_change(i32*) #1

declare dso_local i32 @svn_client_conflict_get_local_change(i32*) #1

declare dso_local i32 @svn_xml_make_open_tag_hash(i32**, i32*, i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_conflict_get_repos_info(i8**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_client_conflict_get_incoming_old_repos_location(i8**, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @add_conflict_version_xml(i32**, i8*, i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_xml_make_close_tag(i32**, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
