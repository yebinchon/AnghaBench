; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_tree_conflict_collector.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_tree_conflict_collector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i32 }
%struct.conflict_status_walker_baton = type { i64, i32, i32 (i32, %struct.TYPE_4__*, i32*)* }

@svn_wc_notify_tree_conflict = common dso_local global i64 0, align 8
@svn_wc_notify_state_conflicted = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_4__*, i32*)* @tree_conflict_collector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_conflict_collector(i8* %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.conflict_status_walker_baton*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.conflict_status_walker_baton*
  store %struct.conflict_status_walker_baton* %11, %struct.conflict_status_walker_baton** %7, align 8
  %12 = load %struct.conflict_status_walker_baton*, %struct.conflict_status_walker_baton** %7, align 8
  %13 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %12, i32 0, i32 2
  %14 = load i32 (i32, %struct.TYPE_4__*, i32*)*, i32 (i32, %struct.TYPE_4__*, i32*)** %13, align 8
  %15 = icmp ne i32 (i32, %struct.TYPE_4__*, i32*)* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.conflict_status_walker_baton*, %struct.conflict_status_walker_baton** %7, align 8
  %18 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %17, i32 0, i32 2
  %19 = load i32 (i32, %struct.TYPE_4__*, i32*)*, i32 (i32, %struct.TYPE_4__*, i32*)** %18, align 8
  %20 = load %struct.conflict_status_walker_baton*, %struct.conflict_status_walker_baton** %7, align 8
  %21 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 %19(i32 %22, %struct.TYPE_4__* %23, i32* %24)
  br label %26

26:                                               ; preds = %16, %3
  %27 = load %struct.conflict_status_walker_baton*, %struct.conflict_status_walker_baton** %7, align 8
  %28 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %74

31:                                               ; preds = %26
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @svn_wc_notify_tree_conflict, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @svn_wc_notify_state_conflicted, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @svn_wc_notify_state_conflicted, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %43, %37, %31
  %50 = load %struct.conflict_status_walker_baton*, %struct.conflict_status_walker_baton** %7, align 8
  %51 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @svn_hash_gets(i64 %52, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %49
  %59 = load %struct.conflict_status_walker_baton*, %struct.conflict_status_walker_baton** %7, align 8
  %60 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32* @apr_hash_pool_get(i64 %61)
  store i32* %62, i32** %9, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @apr_pstrdup(i32* %63, i32 %66)
  store i8* %67, i8** %8, align 8
  %68 = load %struct.conflict_status_walker_baton*, %struct.conflict_status_walker_baton** %7, align 8
  %69 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @svn_hash_sets(i64 %70, i8* %71, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %58, %49
  br label %74

74:                                               ; preds = %73, %43, %26
  ret void
}

declare dso_local i32 @svn_hash_gets(i64, i32) #1

declare dso_local i32* @apr_hash_pool_get(i64) #1

declare dso_local i8* @apr_pstrdup(i32*, i32) #1

declare dso_local i32 @svn_hash_sets(i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
