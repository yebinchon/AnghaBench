; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_revs-txns.c_svn_fs_base__list_transactions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_revs-txns.c_svn_fs_base__list_transactions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_transactions_args = type { i32*, i32** }

@TRUE = common dso_local global i32 0, align 4
@txn_body_list_transactions = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__list_transactions(i32** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.list_transactions_args, align 8
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* @TRUE, align 4
  %11 = call i32 @svn_fs__check_fs(i32* %9, i32 %10)
  %12 = call i32 @SVN_ERR(i32 %11)
  %13 = getelementptr inbounds %struct.list_transactions_args, %struct.list_transactions_args* %8, i32 0, i32 1
  store i32** %7, i32*** %13, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds %struct.list_transactions_args, %struct.list_transactions_args* %8, i32 0, i32 0
  store i32* %14, i32** %15, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @txn_body_list_transactions, align 4
  %18 = load i32, i32* @FALSE, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @svn_fs_base__retry(i32* %16, i32 %17, %struct.list_transactions_args* %8, i32 %18, i32* %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load i32*, i32** %7, align 8
  %23 = load i32**, i32*** %4, align 8
  store i32* %22, i32** %23, align 8
  %24 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %24
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs__check_fs(i32*, i32) #1

declare dso_local i32 @svn_fs_base__retry(i32*, i32, %struct.list_transactions_args*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
