; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_merge-cmd.c_conflict_func_merge_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_merge-cmd.c_conflict_func_merge_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.conflict_func_merge_cmd_baton = type { i32, i32, i32 }

@svn_wc_conflict_choose_postpone = common dso_local global i64 0, align 8
@svn_wc_conflict_choose_base = common dso_local global i64 0, align 8
@svn_wc_conflict_choose_merged = common dso_local global i64 0, align 8
@svn_wc_conflict_choose_mine_conflict = common dso_local global i64 0, align 8
@svn_wc_conflict_choose_theirs_conflict = common dso_local global i64 0, align 8
@svn_wc_conflict_choose_mine_full = common dso_local global i64 0, align 8
@svn_wc_conflict_choose_theirs_full = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_3__*, i8*, i32*, i32*)* @conflict_func_merge_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @conflict_func_merge_cmd(i32** %0, %struct.TYPE_3__* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.conflict_func_merge_cmd_baton*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32** %0, i32*** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.conflict_func_merge_cmd_baton*
  store %struct.conflict_func_merge_cmd_baton* %15, %struct.conflict_func_merge_cmd_baton** %11, align 8
  %16 = load %struct.conflict_func_merge_cmd_baton*, %struct.conflict_func_merge_cmd_baton** %11, align 8
  %17 = getelementptr inbounds %struct.conflict_func_merge_cmd_baton, %struct.conflict_func_merge_cmd_baton* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %35 [
    i32 133, label %19
    i32 137, label %19
    i32 129, label %19
    i32 132, label %19
    i32 139, label %21
    i32 128, label %23
    i32 135, label %25
    i32 131, label %27
    i32 134, label %29
    i32 130, label %31
    i32 138, label %33
    i32 136, label %33
  ]

19:                                               ; preds = %5, %5, %5, %5
  %20 = load i64, i64* @svn_wc_conflict_choose_postpone, align 8
  store i64 %20, i64* %12, align 8
  br label %35

21:                                               ; preds = %5
  %22 = load i64, i64* @svn_wc_conflict_choose_base, align 8
  store i64 %22, i64* %12, align 8
  br label %35

23:                                               ; preds = %5
  %24 = load i64, i64* @svn_wc_conflict_choose_merged, align 8
  store i64 %24, i64* %12, align 8
  br label %35

25:                                               ; preds = %5
  %26 = load i64, i64* @svn_wc_conflict_choose_mine_conflict, align 8
  store i64 %26, i64* %12, align 8
  br label %35

27:                                               ; preds = %5
  %28 = load i64, i64* @svn_wc_conflict_choose_theirs_conflict, align 8
  store i64 %28, i64* %12, align 8
  br label %35

29:                                               ; preds = %5
  %30 = load i64, i64* @svn_wc_conflict_choose_mine_full, align 8
  store i64 %30, i64* %12, align 8
  br label %35

31:                                               ; preds = %5
  %32 = load i64, i64* @svn_wc_conflict_choose_theirs_full, align 8
  store i64 %32, i64* %12, align 8
  br label %35

33:                                               ; preds = %5, %5
  %34 = load i64, i64* @svn_wc_conflict_choose_postpone, align 8
  store i64 %34, i64* %12, align 8
  br label %35

35:                                               ; preds = %5, %33, %31, %29, %27, %25, %23, %21, %19
  %36 = load i64, i64* %12, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32* @svn_wc_create_conflict_result(i64 %36, i32* null, i32* %37)
  %39 = load i32**, i32*** %6, align 8
  store i32* %38, i32** %39, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @svn_wc_conflict_choose_postpone, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %35
  %44 = load %struct.conflict_func_merge_cmd_baton*, %struct.conflict_func_merge_cmd_baton** %11, align 8
  %45 = getelementptr inbounds %struct.conflict_func_merge_cmd_baton, %struct.conflict_func_merge_cmd_baton* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = call i8* @svn_cl__local_style_skip_ancestor(i32 %46, i32 %49, i32* %50)
  store i8* %51, i8** %13, align 8
  %52 = load %struct.conflict_func_merge_cmd_baton*, %struct.conflict_func_merge_cmd_baton** %11, align 8
  %53 = getelementptr inbounds %struct.conflict_func_merge_cmd_baton, %struct.conflict_func_merge_cmd_baton* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %13, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @svn_cl__conflict_stats_resolved(i32 %54, i8* %55, i32 %58)
  br label %60

60:                                               ; preds = %43, %35
  %61 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %61
}

declare dso_local i32* @svn_wc_create_conflict_result(i64, i32*, i32*) #1

declare dso_local i8* @svn_cl__local_style_skip_ancestor(i32, i32, i32*) #1

declare dso_local i32 @svn_cl__conflict_stats_resolved(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
