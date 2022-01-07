; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sqlite.c_svn_sqlite__finish_savepoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sqlite.c_svn_sqlite__finish_savepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }

@STMT_INTERNAL_ROLLBACK_TO_SAVEPOINT_SVN = common dso_local global i32 0, align 4
@SVN_ERR_SQLITE_BUSY = common dso_local global i64 0, align 8
@STMT_INTERNAL_RELEASE_SAVEPOINT_SVN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @svn_sqlite__finish_savepoint(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %9 = icmp ne %struct.TYPE_11__* %8, null
  br i1 %9, label %10, label %56

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @STMT_INTERNAL_ROLLBACK_TO_SAVEPOINT_SVN, align 4
  %13 = call %struct.TYPE_11__* @get_internal_statement(i32** %6, i32* %11, i32 %12)
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %7, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %39, label %16

16:                                               ; preds = %10
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @svn_sqlite__step_done(i32* %17)
  %19 = call %struct.TYPE_11__* @svn_error_trace(i32 %18)
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %7, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %21 = icmp ne %struct.TYPE_11__* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SVN_ERR_SQLITE_BUSY, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = call i32 @reset_all_statements(i32* %29, %struct.TYPE_11__* %30)
  %32 = call %struct.TYPE_11__* @svn_error_trace(i32 %31)
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %7, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @svn_sqlite__step_done(i32* %33)
  %35 = call %struct.TYPE_11__* @svn_error_trace(i32 %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = call %struct.TYPE_11__* @svn_error_compose_create(%struct.TYPE_11__* %35, %struct.TYPE_11__* %36)
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %7, align 8
  br label %38

38:                                               ; preds = %28, %22, %16
  br label %39

39:                                               ; preds = %38, %10
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = call %struct.TYPE_11__* @svn_error_compose_create(%struct.TYPE_11__* %40, %struct.TYPE_11__* %41)
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %5, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @STMT_INTERNAL_RELEASE_SAVEPOINT_SVN, align 4
  %45 = call %struct.TYPE_11__* @get_internal_statement(i32** %6, i32* %43, i32 %44)
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %7, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %47 = icmp ne %struct.TYPE_11__* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %39
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @svn_sqlite__step_done(i32* %49)
  %51 = call %struct.TYPE_11__* @svn_error_trace(i32 %50)
  store %struct.TYPE_11__* %51, %struct.TYPE_11__** %7, align 8
  br label %52

52:                                               ; preds = %48, %39
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %55 = call %struct.TYPE_11__* @svn_error_compose_create(%struct.TYPE_11__* %53, %struct.TYPE_11__* %54)
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %3, align 8
  br label %64

56:                                               ; preds = %2
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @STMT_INTERNAL_RELEASE_SAVEPOINT_SVN, align 4
  %59 = call %struct.TYPE_11__* @get_internal_statement(i32** %6, i32* %57, i32 %58)
  %60 = call i32 @SVN_ERR(%struct.TYPE_11__* %59)
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @svn_sqlite__step_done(i32* %61)
  %63 = call %struct.TYPE_11__* @svn_error_trace(i32 %62)
  store %struct.TYPE_11__* %63, %struct.TYPE_11__** %3, align 8
  br label %64

64:                                               ; preds = %56, %52
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %65
}

declare dso_local %struct.TYPE_11__* @get_internal_statement(i32**, i32*, i32) #1

declare dso_local %struct.TYPE_11__* @svn_error_trace(i32) #1

declare dso_local i32 @svn_sqlite__step_done(i32*) #1

declare dso_local i32 @reset_all_statements(i32*, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @svn_error_compose_create(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
