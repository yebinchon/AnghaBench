; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_util.c_svn_fs_fs__path_txn_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_util.c_svn_fs_fs__path_txn_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_EXT_TXN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @svn_fs_fs__path_txn_dir(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @SVN_ERR_ASSERT_NO_RETURN(i32 %9)
  %11 = load i32*, i32** %4, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @svn_fs_fs__path_txns_dir(i32* %11, i32* %12)
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @PATH_EXT_TXN, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @combine_txn_id_string(i32* %14, i32 %15, i32* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i8* @svn_dirent_join(i32 %13, i32 %17, i32* %18)
  ret i8* %19
}

declare dso_local i32 @SVN_ERR_ASSERT_NO_RETURN(i32) #1

declare dso_local i8* @svn_dirent_join(i32, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__path_txns_dir(i32*, i32*) #1

declare dso_local i32 @combine_txn_id_string(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
