; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_lock.c_svn_fs_base__unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_lock.c_svn_fs_base__unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unlock_args = type { i8*, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@txn_body_unlock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__unlock(i32* %0, i32* %1, i32 %2, i32* (i8*, i8*, i32*, i32*, i32*)* %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32* (i8*, i8*, i32*, i32*, i32*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.unlock_args, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* (i8*, i8*, i32*, i32*, i32*)* %3, i32* (i8*, i8*, i32*, i32*, i32*)** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %22 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %22, i32** %16, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = call i32* @svn_pool_create(i32* %23)
  store i32* %24, i32** %17, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i32 @svn_fs__check_fs(i32* %25, i32 %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32*, i32** %14, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i32* @apr_hash_first(i32* %29, i32* %30)
  store i32* %31, i32** %15, align 8
  br label %32

32:                                               ; preds = %70, %7
  %33 = load i32*, i32** %15, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %73

35:                                               ; preds = %32
  %36 = load i32*, i32** %15, align 8
  %37 = call i8* @apr_hash_this_key(i32* %36)
  store i8* %37, i8** %19, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = call i8* @apr_hash_this_val(i32* %38)
  store i8* %39, i8** %20, align 8
  %40 = load i32*, i32** %17, align 8
  %41 = call i32 @svn_pool_clear(i32* %40)
  %42 = load i8*, i8** %19, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @svn_fs__canonicalize_abspath(i8* %42, i32* %43)
  %45 = getelementptr inbounds %struct.unlock_args, %struct.unlock_args* %18, i32 0, i32 2
  store i32 %44, i32* %45, align 4
  %46 = load i8*, i8** %20, align 8
  %47 = getelementptr inbounds %struct.unlock_args, %struct.unlock_args* %18, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  %48 = load i32, i32* %10, align 4
  %49 = getelementptr inbounds %struct.unlock_args, %struct.unlock_args* %18, i32 0, i32 1
  store i32 %48, i32* %49, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* @txn_body_unlock, align 4
  %52 = load i32, i32* @TRUE, align 4
  %53 = load i32*, i32** %17, align 8
  %54 = call i32* @svn_fs_base__retry_txn(i32* %50, i32 %51, %struct.unlock_args* %18, i32 %52, i32* %53)
  store i32* %54, i32** %21, align 8
  %55 = load i32*, i32** %16, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %67, label %57

57:                                               ; preds = %35
  %58 = load i32* (i8*, i8*, i32*, i32*, i32*)*, i32* (i8*, i8*, i32*, i32*, i32*)** %11, align 8
  %59 = icmp ne i32* (i8*, i8*, i32*, i32*, i32*)* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i32* (i8*, i8*, i32*, i32*, i32*)*, i32* (i8*, i8*, i32*, i32*, i32*)** %11, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load i8*, i8** %19, align 8
  %64 = load i32*, i32** %21, align 8
  %65 = load i32*, i32** %17, align 8
  %66 = call i32* %61(i8* %62, i8* %63, i32* null, i32* %64, i32* %65)
  store i32* %66, i32** %16, align 8
  br label %67

67:                                               ; preds = %60, %57, %35
  %68 = load i32*, i32** %21, align 8
  %69 = call i32 @svn_error_clear(i32* %68)
  br label %70

70:                                               ; preds = %67
  %71 = load i32*, i32** %15, align 8
  %72 = call i32* @apr_hash_next(i32* %71)
  store i32* %72, i32** %15, align 8
  br label %32

73:                                               ; preds = %32
  %74 = load i32*, i32** %17, align 8
  %75 = call i32 @svn_pool_destroy(i32* %74)
  %76 = load i32*, i32** %16, align 8
  %77 = call i32* @svn_error_trace(i32* %76)
  ret i32* %77
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs__check_fs(i32*, i32) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i8* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_fs__canonicalize_abspath(i8*, i32*) #1

declare dso_local i32* @svn_fs_base__retry_txn(i32*, i32, %struct.unlock_args*, i32, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
