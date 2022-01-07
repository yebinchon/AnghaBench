; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_revprops.c_svn_fs_fs__delete_revprops_shard.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_revprops.c_svn_fs_fs__delete_revprops_shard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__delete_revprops_shard(i8* %0, i64 %1, i32 %2, i32 (i8*)* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32 (i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 (i8*)* %3, i32 (i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %53

18:                                               ; preds = %6
  %19 = load i32*, i32** %12, align 8
  %20 = call i32* @svn_pool_create(i32* %19)
  store i32* %20, i32** %13, align 8
  store i32 1, i32* %14, align 4
  br label %21

21:                                               ; preds = %47, %18
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %21
  %26 = load i32*, i32** %13, align 8
  %27 = call i32 @svn_pool_clear(i32* %26)
  %28 = load i8*, i8** %7, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @apr_psprintf(i32* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %13, align 8
  %33 = call i8* @svn_dirent_join(i8* %28, i32 %31, i32* %32)
  store i8* %33, i8** %15, align 8
  %34 = load i32 (i8*)*, i32 (i8*)** %10, align 8
  %35 = icmp ne i32 (i8*)* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %25
  %37 = load i32 (i8*)*, i32 (i8*)** %10, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 %37(i8* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  br label %41

41:                                               ; preds = %36, %25
  %42 = load i8*, i8** %15, align 8
  %43 = load i32, i32* @TRUE, align 4
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @svn_io_remove_file2(i8* %42, i32 %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  br label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %14, align 4
  br label %21

50:                                               ; preds = %21
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @svn_pool_destroy(i32* %51)
  br label %61

53:                                               ; preds = %6
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* @TRUE, align 4
  %56 = load i32 (i8*)*, i32 (i8*)** %10, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @svn_io_remove_dir2(i8* %54, i32 %55, i32 (i8*)* %56, i8* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  br label %61

61:                                               ; preds = %53, %50
  %62 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %62
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i32, i32*) #1

declare dso_local i32 @apr_psprintf(i32*, i8*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_remove_file2(i8*, i32, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_io_remove_dir2(i8*, i32, i32 (i8*)*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
