; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_pack.c_pack_rev_shard.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_pack.c_pack_rev_shard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_PACKED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i8*, i32, i32, i32, i32*, i32, i8*, i32*)* @pack_rev_shard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pack_rev_shard(i32* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32* %6, i32 %7, i8* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  store i32* %9, i32** %20, align 8
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %15, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %22, align 4
  %26 = load i8*, i8** %12, align 8
  %27 = load i32, i32* @PATH_PACKED, align 4
  %28 = load i32*, i32** %20, align 8
  %29 = call i8* @svn_dirent_join(i8* %26, i32 %27, i32* %28)
  store i8* %29, i8** %21, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load i32, i32* @TRUE, align 4
  %32 = load i32, i32* %18, align 4
  %33 = load i8*, i8** %19, align 8
  %34 = load i32*, i32** %20, align 8
  %35 = call i32 @svn_io_remove_dir2(i8* %30, i32 %31, i32 %32, i8* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i8*, i8** %12, align 8
  %38 = load i32, i32* @APR_OS_DEFAULT, align 4
  %39 = load i32*, i32** %20, align 8
  %40 = call i32 @svn_io_dir_make(i8* %37, i32 %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32*, i32** %17, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = load i32*, i32** %20, align 8
  %45 = call i32 @svn_fs_x__batch_fsync_new_path(i32* %42, i8* %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i32*, i32** %11, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load i32, i32* %22, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32*, i32** %17, align 8
  %53 = load i32, i32* %18, align 4
  %54 = load i8*, i8** %19, align 8
  %55 = load i32*, i32** %20, align 8
  %56 = call i32 @pack_log_addressed(i32* %47, i8* %48, i8* %49, i32 %50, i32 %51, i32* %52, i32 %53, i8* %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i8*, i8** %13, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load i32*, i32** %20, align 8
  %61 = call i32 @svn_io_copy_perms(i8* %58, i8* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i8*, i8** %21, align 8
  %64 = load i32, i32* @FALSE, align 4
  %65 = load i32*, i32** %20, align 8
  %66 = call i32 @svn_io_set_file_read_only(i8* %63, i32 %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %68
}

declare dso_local i8* @svn_dirent_join(i8*, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_remove_dir2(i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @svn_io_dir_make(i8*, i32, i32*) #1

declare dso_local i32 @svn_fs_x__batch_fsync_new_path(i32*, i8*, i32*) #1

declare dso_local i32 @pack_log_addressed(i32*, i8*, i8*, i32, i32, i32*, i32, i8*, i32*) #1

declare dso_local i32 @svn_io_copy_perms(i8*, i8*, i32*) #1

declare dso_local i32 @svn_io_set_file_read_only(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
