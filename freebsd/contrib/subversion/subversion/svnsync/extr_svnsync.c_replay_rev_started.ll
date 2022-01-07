; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnsync/extr_svnsync.c_replay_rev_started.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnsync/extr_svnsync.c_replay_rev_started.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@SVNSYNC_PROP_CURRENTLY_COPYING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@filter_exclude_date_author_sync = common dso_local global i32 0, align 4
@filter_include_log = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_LOG = common dso_local global i32 0, align 4
@commit_callback = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@check_cancel = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, i8*, i32**, i8**, i32*, i32*)* @replay_rev_started to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @replay_rev_started(i64 %0, i8* %1, i32** %2, i8** %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_4__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %19, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SVNSYNC_PROP_CURRENTLY_COPYING, align 4
  %29 = load i32*, i32** %12, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @svn_string_createf(i32* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @svn_ra_change_rev_prop2(i32 %27, i32 0, i32 %28, i32* null, i32 %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i32*, i32** %11, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %6
  %41 = load i32, i32* @filter_exclude_date_author_sync, align 4
  br label %44

42:                                               ; preds = %6
  %43 = load i32, i32* @filter_include_log, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = load i32*, i32** %12, align 8
  %47 = call i32* @filter_props(i32* %21, i32* %35, i32 %45, i32* %46)
  store i32* %47, i32** %20, align 8
  %48 = load i32*, i32** %20, align 8
  %49 = load i32, i32* @SVN_PROP_REVISION_LOG, align 4
  %50 = call i32 @svn_hash_gets(i32* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %44
  %53 = load i32*, i32** %20, align 8
  %54 = load i32, i32* @SVN_PROP_REVISION_LOG, align 4
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @svn_string_create_empty(i32* %55)
  %57 = call i32 @svn_hash_sets(i32* %53, i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %52, %44
  %59 = load i32*, i32** %20, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @svnsync_normalize_revprops(i32* %59, i32* %22, i32 %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load i32, i32* %22, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %20, align 8
  %77 = load i32, i32* @commit_callback, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load i32, i32* @FALSE, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = call i32 @svn_ra_get_commit_editor3(i32 %75, i32** %13, i8** %16, i32* %76, i32 %77, %struct.TYPE_5__* %80, i32* null, i32 %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load i32*, i32** %13, align 8
  %86 = load i8*, i8** %16, align 8
  %87 = load i64, i64* %7, align 8
  %88 = sub nsw i64 %87, 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i32*, i32** %12, align 8
  %107 = call i32 @svnsync_get_sync_editor(i32* %85, i8* %86, i64 %88, i32 %93, i32 %98, i32 %103, i32** %15, i8** %18, i32* %105, i32* %106)
  %108 = call i32 @SVN_ERR(i32 %107)
  %109 = load i32, i32* @check_cancel, align 4
  %110 = load i32*, i32** %15, align 8
  %111 = load i8*, i8** %18, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = call i32 @svn_delta_get_cancellation_editor(i32 %109, i32* null, i32* %110, i8* %111, i32** %14, i8** %17, i32* %112)
  %114 = call i32 @SVN_ERR(i32 %113)
  %115 = load i32*, i32** %14, align 8
  %116 = load i32**, i32*** %9, align 8
  store i32* %115, i32** %116, align 8
  %117 = load i8*, i8** %17, align 8
  %118 = load i8**, i8*** %10, align 8
  store i8* %117, i8** %118, align 8
  %119 = load i64, i64* %7, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  %122 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %122
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_change_rev_prop2(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @svn_string_createf(i32*, i8*, i64) #1

declare dso_local i32* @filter_props(i32*, i32*, i32, i32*) #1

declare dso_local i32 @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32) #1

declare dso_local i32 @svn_string_create_empty(i32*) #1

declare dso_local i32 @svnsync_normalize_revprops(i32*, i32*, i32, i32*) #1

declare dso_local i32 @svn_ra_get_commit_editor3(i32, i32**, i8**, i32*, i32, %struct.TYPE_5__*, i32*, i32, i32*) #1

declare dso_local i32 @svnsync_get_sync_editor(i32*, i8*, i64, i32, i32, i32, i32**, i8**, i32*, i32*) #1

declare dso_local i32 @svn_delta_get_cancellation_editor(i32, i32*, i32*, i8*, i32**, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
