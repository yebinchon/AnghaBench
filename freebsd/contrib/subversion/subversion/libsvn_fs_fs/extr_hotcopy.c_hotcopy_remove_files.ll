; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_hotcopy.c_hotcopy_remove_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_hotcopy.c_hotcopy_remove_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, i32, i32, i32*)* @hotcopy_remove_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hotcopy_remove_files(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %17 = load i32*, i32** %12, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %11, align 4
  %20 = sdiv i32 %18, %19
  %21 = call i8* @apr_psprintf(i32* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i8* %21, i8** %13, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = call i8* @svn_dirent_join(i8* %22, i8* %23, i32* %24)
  store i8* %25, i8** %14, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call i32* @svn_pool_create(i32* %26)
  store i32* %27, i32** %16, align 8
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %15, align 4
  br label %29

29:                                               ; preds = %64, %6
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %29
  %34 = load i32*, i32** %16, align 8
  %35 = call i32 @svn_pool_clear(i32* %34)
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %33
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %11, align 4
  %42 = srem i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load i32*, i32** %16, align 8
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %11, align 4
  %48 = sdiv i32 %46, %47
  %49 = call i8* @apr_psprintf(i32* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %48)
  store i8* %49, i8** %13, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = call i8* @svn_dirent_join(i8* %50, i8* %51, i32* %52)
  store i8* %53, i8** %14, align 8
  br label %54

54:                                               ; preds = %44, %39, %33
  %55 = load i8*, i8** %14, align 8
  %56 = load i32*, i32** %16, align 8
  %57 = load i32, i32* %15, align 4
  %58 = call i8* @apr_psprintf(i32* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32*, i32** %16, align 8
  %60 = call i8* @svn_dirent_join(i8* %55, i8* %58, i32* %59)
  %61 = load i32*, i32** %16, align 8
  %62 = call i32 @hotcopy_remove_file(i8* %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  br label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %15, align 4
  br label %29

67:                                               ; preds = %29
  %68 = load i32*, i32** %16, align 8
  %69 = call i32 @svn_pool_destroy(i32* %68)
  %70 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %70
}

declare dso_local i8* @apr_psprintf(i32*, i8*, i32) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @hotcopy_remove_file(i8*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
