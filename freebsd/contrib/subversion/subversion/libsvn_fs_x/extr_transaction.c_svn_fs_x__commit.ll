; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_svn_fs_x__commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_svn_fs_x__commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32*, i32*, i32*, i32*, %struct.TYPE_11__*, i32* }

@commit_body = common dso_local global i32 0, align 4
@SVN_ERR_SQLITE_ROLLBACK_FAILED = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__commit(i32* %0, %struct.TYPE_11__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %11, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 5
  store i32* %16, i32** %17, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 4
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %19, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 3
  store i32* %20, i32** %21, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %4
  %27 = load i32*, i32** %9, align 8
  %28 = call i32* @apr_array_make(i32* %27, i32 5, i32 8)
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  store i32* %28, i32** %29, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i32* @apr_hash_make(i32* %30)
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  store i32* %31, i32** %32, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  store i32* %33, i32** %34, align 8
  br label %39

35:                                               ; preds = %4
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  store i32* null, i32** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %35, %26
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = load i32, i32* @commit_body, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @svn_fs_x__with_write_lock(%struct.TYPE_11__* %40, i32 %41, %struct.TYPE_12__* %10, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %87

49:                                               ; preds = %39
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @svn_fs_x__open_rep_cache(%struct.TYPE_11__* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @svn_sqlite__begin_transaction(i32 %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i32* @write_reps_to_cache(%struct.TYPE_11__* %59, i32* %61, i32* %62)
  store i32* %63, i32** %12, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = call i32* @svn_sqlite__finish_transaction(i32 %66, i32* %67)
  store i32* %68, i32** %12, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* @SVN_ERR_SQLITE_ROLLBACK_FAILED, align 4
  %71 = call i64 @svn_error_find_cause(i32* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %49
  %74 = load i32*, i32** %12, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %76 = call i32 @svn_fs_x__close_rep_cache(%struct.TYPE_11__* %75)
  %77 = call i32* @svn_error_compose_create(i32* %74, i32 %76)
  %78 = call i32* @svn_error_trace(i32* %77)
  store i32* %78, i32** %5, align 8
  br label %89

79:                                               ; preds = %49
  %80 = load i32*, i32** %12, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32*, i32** %12, align 8
  %84 = call i32* @svn_error_trace(i32* %83)
  store i32* %84, i32** %5, align 8
  br label %89

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86, %39
  %88 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %88, i32** %5, align 8
  br label %89

89:                                               ; preds = %87, %82, %73
  %90 = load i32*, i32** %5, align 8
  ret i32* %90
}

declare dso_local i32* @apr_array_make(i32*, i32, i32) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__with_write_lock(%struct.TYPE_11__*, i32, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @svn_fs_x__open_rep_cache(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @svn_sqlite__begin_transaction(i32) #1

declare dso_local i32* @write_reps_to_cache(%struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32* @svn_sqlite__finish_transaction(i32, i32*) #1

declare dso_local i64 @svn_error_find_cause(i32*, i32) #1

declare dso_local i32* @svn_error_trace(i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_fs_x__close_rep_cache(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
