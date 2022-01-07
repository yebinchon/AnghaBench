; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_get_child_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_get_child_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.walk_status_baton = type { i32, i32 }
%struct.svn_wc__db_info_t = type { i32 }
%struct.TYPE_4__ = type { i64 }

@svn_node_none = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_depth_empty = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.walk_status_baton*, i8*, %struct.svn_wc__db_info_t*, %struct.TYPE_4__*, i32*, i32, i32, i8*, i32 (i8*)*, i8*, i32*)* @get_child_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_child_status(%struct.walk_status_baton* %0, i8* %1, %struct.svn_wc__db_info_t* %2, %struct.TYPE_4__* %3, i32* %4, i32 %5, i32 %6, i8* %7, i32 (i8*)* %8, i8* %9, i32* %10) #0 {
  %12 = alloca %struct.walk_status_baton*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.svn_wc__db_info_t*, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32 (i8*)*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.svn_wc__db_info_t*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i8*, align 8
  store %struct.walk_status_baton* %0, %struct.walk_status_baton** %12, align 8
  store i8* %1, i8** %13, align 8
  store %struct.svn_wc__db_info_t* %2, %struct.svn_wc__db_info_t** %14, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i32 (i8*)* %8, i32 (i8*)** %20, align 8
  store i8* %9, i8** %21, align 8
  store i32* %10, i32** %22, align 8
  store i32* null, i32** %27, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = load i32*, i32** %22, align 8
  %31 = call i8* @svn_dirent_dirname(i8* %29, i32* %30)
  store i8* %31, i8** %28, align 8
  %32 = load i32 (i8*)*, i32 (i8*)** %20, align 8
  %33 = icmp ne i32 (i8*)* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %11
  %35 = load i32 (i8*)*, i32 (i8*)** %20, align 8
  %36 = load i8*, i8** %21, align 8
  %37 = call i32 %35(i8* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  br label %39

39:                                               ; preds = %34, %11
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @svn_node_none, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %15, align 8
  br label %46

46:                                               ; preds = %45, %39
  %47 = load %struct.walk_status_baton*, %struct.walk_status_baton** %12, align 8
  %48 = getelementptr inbounds %struct.walk_status_baton, %struct.walk_status_baton* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %28, align 8
  %51 = load %struct.walk_status_baton*, %struct.walk_status_baton** %12, align 8
  %52 = getelementptr inbounds %struct.walk_status_baton, %struct.walk_status_baton* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load i32*, i32** %22, align 8
  %58 = load i32*, i32** %22, align 8
  %59 = call i32 @svn_wc__db_read_single_info(%struct.svn_wc__db_info_t** %26, i32 %49, i8* %50, i32 %56, i32* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %26, align 8
  %62 = load %struct.walk_status_baton*, %struct.walk_status_baton** %12, align 8
  %63 = getelementptr inbounds %struct.walk_status_baton, %struct.walk_status_baton* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %28, align 8
  %66 = load i32*, i32** %22, align 8
  %67 = load i32*, i32** %22, align 8
  %68 = call i32 @get_repos_root_url_relpath(i8** %24, i8** %23, i8** %25, %struct.svn_wc__db_info_t* %61, i32* null, i32* null, i32* null, i32 %64, i8* %65, i32* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load %struct.walk_status_baton*, %struct.walk_status_baton** %12, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = load i8*, i8** %28, align 8
  %73 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %14, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %75 = load i8*, i8** %23, align 8
  %76 = load i8*, i8** %24, align 8
  %77 = load i8*, i8** %25, align 8
  %78 = load i32, i32* @FALSE, align 4
  %79 = load i32*, i32** %16, align 8
  %80 = load i32, i32* @svn_depth_empty, align 4
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* @TRUE, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i8*, i8** %19, align 8
  %85 = load i32 (i8*)*, i32 (i8*)** %20, align 8
  %86 = load i8*, i8** %21, align 8
  %87 = load i32*, i32** %22, align 8
  %88 = load i32*, i32** %22, align 8
  %89 = call i32 @one_child_status(%struct.walk_status_baton* %70, i8* %71, i8* %72, %struct.svn_wc__db_info_t* %73, %struct.TYPE_4__* %74, i8* %75, i8* %76, i8* %77, i32 %78, i32** %27, i32* %79, i32 %80, i32 %81, i32 %82, i32 %83, i8* %84, i32 (i8*)* %85, i8* %86, i32* %87, i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %91
}

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_read_single_info(%struct.svn_wc__db_info_t**, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @get_repos_root_url_relpath(i8**, i8**, i8**, %struct.svn_wc__db_info_t*, i32*, i32*, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @one_child_status(%struct.walk_status_baton*, i8*, i8*, %struct.svn_wc__db_info_t*, %struct.TYPE_4__*, i8*, i8*, i8*, i32, i32**, i32*, i32, i32, i32, i32, i8*, i32 (i8*)*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
