; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_revert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_revert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revert_baton_t = type { i32, i32* }
%struct.with_triggers_baton_t = type { i32, %struct.revert_baton_t*, i32*, i32*, i32, i32 }

@STMT_CREATE_REVERT_LIST = common dso_local global i32 0, align 4
@STMT_DROP_REVERT_LIST_TRIGGERS = common dso_local global i32 0, align 4
@op_revert_txn = common dso_local global i32 0, align 4
@op_revert_recursive_txn = common dso_local global i32 0, align 4
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unsupported depth for revert of '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_op_revert(i32* %0, i8* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.revert_baton_t, align 8
  %17 = alloca %struct.with_triggers_baton_t, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = getelementptr inbounds %struct.with_triggers_baton_t, %struct.with_triggers_baton_t* %17, i32 0, i32 0
  %19 = load i32, i32* @STMT_CREATE_REVERT_LIST, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.with_triggers_baton_t, %struct.with_triggers_baton_t* %17, i32 0, i32 1
  %21 = load i32, i32* @STMT_DROP_REVERT_LIST_TRIGGERS, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to %struct.revert_baton_t*
  store %struct.revert_baton_t* %23, %struct.revert_baton_t** %20, align 8
  %24 = getelementptr inbounds %struct.with_triggers_baton_t, %struct.with_triggers_baton_t* %17, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = getelementptr inbounds %struct.with_triggers_baton_t, %struct.with_triggers_baton_t* %17, i32 0, i32 3
  store i32* null, i32** %25, align 8
  %26 = getelementptr inbounds %struct.with_triggers_baton_t, %struct.with_triggers_baton_t* %17, i32 0, i32 4
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.with_triggers_baton_t, %struct.with_triggers_baton_t* %17, i32 0, i32 5
  store i32 0, i32* %27, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @svn_dirent_is_absolute(i8* %28)
  %30 = call i32 @SVN_ERR_ASSERT(i32 %29)
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds %struct.revert_baton_t, %struct.revert_baton_t* %16, i32 0, i32 1
  store i32* %31, i32** %32, align 8
  %33 = load i32, i32* %11, align 4
  %34 = getelementptr inbounds %struct.revert_baton_t, %struct.revert_baton_t* %16, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.with_triggers_baton_t, %struct.with_triggers_baton_t* %17, i32 0, i32 1
  store %struct.revert_baton_t* %16, %struct.revert_baton_t** %35, align 8
  %36 = load i32, i32* %10, align 4
  switch i32 %36, label %43 [
    i32 129, label %37
    i32 128, label %40
  ]

37:                                               ; preds = %6
  %38 = load i32, i32* @op_revert_txn, align 4
  %39 = getelementptr inbounds %struct.with_triggers_baton_t, %struct.with_triggers_baton_t* %17, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  br label %50

40:                                               ; preds = %6
  %41 = load i32, i32* @op_revert_recursive_txn, align 4
  %42 = getelementptr inbounds %struct.with_triggers_baton_t, %struct.with_triggers_baton_t* %17, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  br label %50

43:                                               ; preds = %6
  %44 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %45 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %46 = load i8*, i8** %9, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = call i32 @svn_dirent_local_style(i8* %46, i32* %47)
  %49 = call i32* @svn_error_createf(i32 %44, i32* null, i32 %45, i32 %48)
  store i32* %49, i32** %7, align 8
  br label %72

50:                                               ; preds = %40, %37
  %51 = load i32*, i32** %8, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 @svn_wc__db_wcroot_parse_local_abspath(i32** %14, i8** %15, i32* %51, i8* %52, i32* %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i32*, i32** %14, align 8
  %58 = call i32 @VERIFY_USABLE_WCROOT(i32* %57)
  %59 = load i32*, i32** %14, align 8
  %60 = load i8*, i8** %15, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = call i32 @with_triggers(%struct.with_triggers_baton_t* %17, i32* %59, i8* %60, i32* %61)
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @SVN_WC__DB_WITH_TXN(i32 %62, i32* %63)
  %65 = load i32*, i32** %14, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32*, i32** %13, align 8
  %69 = call i32 @flush_entries(i32* %65, i8* %66, i32 %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %71, i32** %7, align 8
  br label %72

72:                                               ; preds = %50, %43
  %73 = load i32*, i32** %7, align 8
  ret i32* %73
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(i32**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(i32*) #1

declare dso_local i32 @SVN_WC__DB_WITH_TXN(i32, i32*) #1

declare dso_local i32 @with_triggers(%struct.with_triggers_baton_t*, i32*, i8*, i32*) #1

declare dso_local i32 @flush_entries(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
