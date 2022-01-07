; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_pristine.c_pristine_remove_if_unreferenced_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_pristine.c_pristine_remove_if_unreferenced_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STMT_DELETE_PRISTINE_IF_UNREFERENCED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i8*, i32*)* @pristine_remove_if_unreferenced_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pristine_remove_if_unreferenced_txn(i32* %0, i32* %1, i32* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @STMT_DELETE_PRISTINE_IF_UNREFERENCED, align 4
  %16 = call i32 @svn_sqlite__get_statement(i32** %11, i32* %14, i32 %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load i32*, i32** %11, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @svn_sqlite__bind_checksum(i32* %18, i32 1, i32* %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @svn_sqlite__update(i32* %12, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i32, i32* %12, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %5
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %13, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @svn_io_remove_file2(i8* %30, i32 %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  br label %35

35:                                               ; preds = %28, %5
  %36 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %36
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32*, i32) #1

declare dso_local i32 @svn_sqlite__bind_checksum(i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_sqlite__update(i32*, i32*) #1

declare dso_local i32 @svn_io_remove_file2(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
