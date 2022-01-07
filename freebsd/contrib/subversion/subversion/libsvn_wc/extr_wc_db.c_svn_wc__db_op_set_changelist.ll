; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_set_changelist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_set_changelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.set_changelist_baton_t = type { i8*, i32, i32* }

@set_changelist_txn = common dso_local global i32 0, align 4
@do_changelist_notify = common dso_local global i32 0, align 4
@STMT_FINALIZE_CHANGELIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_op_set_changelist(i32* %0, i8* %1, i8* %2, i32* %3, i32 %4, i32 %5, i8* %6, i32 %7, i8* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.set_changelist_baton_t, align 8
  store i32* %0, i32** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  store i32* %9, i32** %20, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = getelementptr inbounds %struct.set_changelist_baton_t, %struct.set_changelist_baton_t* %23, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = getelementptr inbounds %struct.set_changelist_baton_t, %struct.set_changelist_baton_t* %23, i32 0, i32 2
  store i32* %26, i32** %27, align 8
  %28 = load i32, i32* %15, align 4
  %29 = getelementptr inbounds %struct.set_changelist_baton_t, %struct.set_changelist_baton_t* %23, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = call i32 @svn_dirent_is_absolute(i8* %30)
  %32 = call i32 @SVN_ERR_ASSERT(i32 %31)
  %33 = load i32*, i32** %11, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i32*, i32** %20, align 8
  %36 = load i32*, i32** %20, align 8
  %37 = call i32 @svn_wc__db_wcroot_parse_local_abspath(i32** %21, i8** %22, i32* %33, i8* %34, i32* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i32*, i32** %21, align 8
  %40 = call i32 @VERIFY_USABLE_WCROOT(i32* %39)
  %41 = load i32*, i32** %21, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i32, i32* %15, align 4
  %44 = load i32*, i32** %20, align 8
  %45 = call i32 @flush_entries(i32* %41, i8* %42, i32 %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i32*, i32** %21, align 8
  %48 = load i8*, i8** %22, align 8
  %49 = load i32, i32* @set_changelist_txn, align 4
  %50 = load i32, i32* @do_changelist_notify, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i8*, i8** %19, align 8
  %53 = load i32, i32* %16, align 4
  %54 = load i8*, i8** %17, align 8
  %55 = load i32, i32* @STMT_FINALIZE_CHANGELIST, align 4
  %56 = load i32*, i32** %20, align 8
  %57 = call i32 @with_finalization(i32* %47, i8* %48, i32 %49, %struct.set_changelist_baton_t* %23, i32 %50, i32* null, i32 %51, i8* %52, i32 %53, i8* %54, i32 %55, i32* %56)
  %58 = call i32* @svn_error_trace(i32 %57)
  ret i32* %58
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(i32**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(i32*) #1

declare dso_local i32 @flush_entries(i32*, i8*, i32, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @with_finalization(i32*, i8*, i32, %struct.set_changelist_baton_t*, i32, i32*, i32, i8*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
