; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_tree_conflict_collector.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_tree_conflict_collector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i32 }
%struct.conflict_status_walker_baton = type { i64, i32, i32 (i32, %struct.TYPE_4__*, i32*)* }

@svn_wc_notify_tree_conflict = common dso_local global i64 0, align 8
@svn_wc_notify_state_conflicted = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_4__*, i32*)* @tree_conflict_collector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_conflict_collector(i8* %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.conflict_status_walker_baton*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.conflict_status_walker_baton*
  store %struct.conflict_status_walker_baton* %10, %struct.conflict_status_walker_baton** %7, align 8
  %11 = load %struct.conflict_status_walker_baton*, %struct.conflict_status_walker_baton** %7, align 8
  %12 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %11, i32 0, i32 2
  %13 = load i32 (i32, %struct.TYPE_4__*, i32*)*, i32 (i32, %struct.TYPE_4__*, i32*)** %12, align 8
  %14 = icmp ne i32 (i32, %struct.TYPE_4__*, i32*)* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.conflict_status_walker_baton*, %struct.conflict_status_walker_baton** %7, align 8
  %17 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %16, i32 0, i32 2
  %18 = load i32 (i32, %struct.TYPE_4__*, i32*)*, i32 (i32, %struct.TYPE_4__*, i32*)** %17, align 8
  %19 = load %struct.conflict_status_walker_baton*, %struct.conflict_status_walker_baton** %7, align 8
  %20 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 %18(i32 %21, %struct.TYPE_4__* %22, i32* %23)
  br label %25

25:                                               ; preds = %15, %3
  %26 = load %struct.conflict_status_walker_baton*, %struct.conflict_status_walker_baton** %7, align 8
  %27 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %73

30:                                               ; preds = %25
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @svn_wc_notify_tree_conflict, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %48, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @svn_wc_notify_state_conflicted, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @svn_wc_notify_state_conflicted, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %42, %36, %30
  %49 = load %struct.conflict_status_walker_baton*, %struct.conflict_status_walker_baton** %7, align 8
  %50 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @svn_hash_gets(i64 %51, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %48
  %58 = load %struct.conflict_status_walker_baton*, %struct.conflict_status_walker_baton** %7, align 8
  %59 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @apr_hash_pool_get(i64 %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @apr_pstrdup(i32 %61, i32 %64)
  store i8* %65, i8** %8, align 8
  %66 = load %struct.conflict_status_walker_baton*, %struct.conflict_status_walker_baton** %7, align 8
  %67 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @svn_hash_sets(i64 %68, i8* %69, i8* %70)
  br label %72

72:                                               ; preds = %57, %48
  br label %73

73:                                               ; preds = %72, %42, %25
  ret void
}

declare dso_local i32 @svn_hash_gets(i64, i32) #1

declare dso_local i8* @apr_pstrdup(i32, i32) #1

declare dso_local i32 @apr_hash_pool_get(i64) #1

declare dso_local i32 @svn_hash_sets(i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
