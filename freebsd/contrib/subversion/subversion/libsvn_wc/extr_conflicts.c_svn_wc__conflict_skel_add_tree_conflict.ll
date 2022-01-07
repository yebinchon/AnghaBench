; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_skel_add_tree_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_skel_add_tree_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }

@SVN_WC__CONFLICT_KIND_TREE = common dso_local global i8* null, align 8
@svn_wc_conflict_reason_moved_away = common dso_local global i64 0, align 8
@action_map = common dso_local global i32 0, align 4
@reason_map = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__conflict_skel_add_tree_conflict(%struct.TYPE_11__* %0, i32* %1, i8* %2, i64 %3, i64 %4, i8* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %21 = load i8*, i8** @SVN_WC__CONFLICT_KIND_TREE, align 8
  %22 = call i32 @conflict__get_conflict(%struct.TYPE_11__** %17, %struct.TYPE_11__* %20, i8* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @SVN_ERR_ASSERT(i32 %27)
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* @svn_wc_conflict_reason_moved_away, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %8
  %33 = load i8*, i8** %14, align 8
  %34 = icmp ne i8* %33, null
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %32, %8
  %37 = phi i1 [ true, %8 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @SVN_ERR_ASSERT(i32 %38)
  %40 = load i32*, i32** %15, align 8
  %41 = call %struct.TYPE_11__* @svn_skel__make_empty_list(i32* %40)
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %17, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* @svn_wc_conflict_reason_moved_away, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %36
  %46 = load i8*, i8** %14, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i32*, i32** %10, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = call i32 @svn_wc__db_to_relpath(i8** %19, i32* %49, i8* %50, i8* %51, i32* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i8*, i8** %19, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = call i32 @svn_skel__prepend_str(i8* %56, %struct.TYPE_11__* %57, i32* %58)
  br label %60

60:                                               ; preds = %48, %45, %36
  %61 = load i32, i32* @action_map, align 4
  %62 = load i64, i64* %13, align 8
  %63 = call i8* @svn_token__to_word(i32 %61, i64 %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = call i32 @svn_skel__prepend_str(i8* %63, %struct.TYPE_11__* %64, i32* %65)
  %67 = load i32, i32* @reason_map, align 4
  %68 = load i64, i64* %12, align 8
  %69 = call i8* @svn_token__to_word(i32 %67, i64 %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = call i32 @svn_skel__prepend_str(i8* %69, %struct.TYPE_11__* %70, i32* %71)
  %73 = load i32*, i32** %15, align 8
  %74 = call %struct.TYPE_11__* @svn_skel__make_empty_list(i32* %73)
  store %struct.TYPE_11__* %74, %struct.TYPE_11__** %18, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %77 = call i32 @svn_skel__prepend(%struct.TYPE_11__* %75, %struct.TYPE_11__* %76)
  %78 = load i8*, i8** @SVN_WC__CONFLICT_KIND_TREE, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %80 = load i32*, i32** %15, align 8
  %81 = call i32 @svn_skel__prepend_str(i8* %78, %struct.TYPE_11__* %79, i32* %80)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = call i32 @svn_skel__prepend(%struct.TYPE_11__* %82, %struct.TYPE_11__* %87)
  %89 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %89
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @conflict__get_conflict(%struct.TYPE_11__**, %struct.TYPE_11__*, i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local %struct.TYPE_11__* @svn_skel__make_empty_list(i32*) #1

declare dso_local i32 @svn_wc__db_to_relpath(i8**, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_skel__prepend_str(i8*, %struct.TYPE_11__*, i32*) #1

declare dso_local i8* @svn_token__to_word(i32, i64) #1

declare dso_local i32 @svn_skel__prepend(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
