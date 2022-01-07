; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sqlite.c_rollback_transaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sqlite.c_rollback_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }

@STMT_INTERNAL_ROLLBACK_TRANSACTION = common dso_local global i32 0, align 4
@SVN_ERR_SQLITE_BUSY = common dso_local global i64 0, align 8
@SVN_ERR_SQLITE_ROLLBACK_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i32*, %struct.TYPE_12__*)* @rollback_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @rollback_transaction(i32* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @STMT_INTERNAL_ROLLBACK_TRANSACTION, align 4
  %9 = call %struct.TYPE_12__* @get_internal_statement(i32** %5, i32* %7, i32 %8)
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %6, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %11 = icmp ne %struct.TYPE_12__* %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @svn_sqlite__step_done(i32* %13)
  %15 = call %struct.TYPE_12__* @svn_error_trace(i32 %14)
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %6, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = icmp ne %struct.TYPE_12__* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SVN_ERR_SQLITE_BUSY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = call i32 @reset_all_statements(i32* %25, %struct.TYPE_12__* %26)
  %28 = call %struct.TYPE_12__* @svn_error_trace(i32 %27)
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %6, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @svn_sqlite__step_done(i32* %29)
  %31 = call %struct.TYPE_12__* @svn_error_trace(i32 %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = call %struct.TYPE_12__* @svn_error_compose_create(%struct.TYPE_12__* %31, %struct.TYPE_12__* %32)
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %6, align 8
  br label %34

34:                                               ; preds = %24, %18, %12
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = icmp ne %struct.TYPE_12__* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* @SVN_ERR_SQLITE_ROLLBACK_FAILED, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = call %struct.TYPE_12__* @svn_error_create(i32 %39, %struct.TYPE_12__* %40, i32* null)
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %6, align 8
  br label %42

42:                                               ; preds = %38, %35
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %45 = call %struct.TYPE_12__* @svn_error_compose_create(%struct.TYPE_12__* %43, %struct.TYPE_12__* %44)
  ret %struct.TYPE_12__* %45
}

declare dso_local %struct.TYPE_12__* @get_internal_statement(i32**, i32*, i32) #1

declare dso_local %struct.TYPE_12__* @svn_error_trace(i32) #1

declare dso_local i32 @svn_sqlite__step_done(i32*) #1

declare dso_local i32 @reset_all_statements(i32*, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @svn_error_compose_create(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @svn_error_create(i32, %struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
