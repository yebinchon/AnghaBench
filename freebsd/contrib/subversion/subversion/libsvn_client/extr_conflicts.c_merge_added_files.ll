; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_merge_added_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_merge_added_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 (i32, %struct.TYPE_6__*, i32*)*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_wc_notify_update_update = common dso_local global i32 0, align 4
@svn_wc_merge_conflict = common dso_local global i64 0, align 8
@svn_wc_notify_state_conflicted = common dso_local global i32 0, align 4
@svn_wc_notify_state_merged = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, %struct.TYPE_7__*, i32*)* @merge_added_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @merge_added_files(i8* %0, i8* %1, i32* %2, %struct.TYPE_7__* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @svn_io_open_unique_file3(i32** %13, i8** %14, i32* null, i32 %18, i32* %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @svn_wc_prop_list2(i32** %16, i32 %25, i8* %26, i32* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %16, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @svn_prop_diffs(i32** %15, i32* %31, i32* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* @FALSE, align 4
  %43 = load i32*, i32** %15, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @svn_wc_merge5(i64* %11, i32* %12, i32 %38, i8* %39, i8* %40, i8* %41, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %42, i32* null, i32* null, i32* null, i32* %43, i32* null, i32* null, i32* null, i32* null, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32 (i32, %struct.TYPE_6__*, i32*)*, i32 (i32, %struct.TYPE_6__*, i32*)** %48, align 8
  %50 = icmp ne i32 (i32, %struct.TYPE_6__*, i32*)* %49, null
  br i1 %50, label %51, label %83

51:                                               ; preds = %5
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* @svn_wc_notify_update_update, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = call %struct.TYPE_6__* @svn_wc_create_notify(i8* %52, i32 %53, i32* %54)
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %17, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @svn_wc_merge_conflict, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load i32, i32* @svn_wc_notify_state_conflicted, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  br label %67

63:                                               ; preds = %51
  %64 = load i32, i32* @svn_wc_notify_state_merged, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @svn_node_file, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32 (i32, %struct.TYPE_6__*, i32*)*, i32 (i32, %struct.TYPE_6__*, i32*)** %75, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 %76(i32 %79, %struct.TYPE_6__* %80, i32* %81)
  br label %83

83:                                               ; preds = %67, %5
  %84 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %84
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_open_unique_file3(i32**, i8**, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc_prop_list2(i32**, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_prop_diffs(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc_merge5(i64*, i32*, i32, i8*, i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @svn_wc_create_notify(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
