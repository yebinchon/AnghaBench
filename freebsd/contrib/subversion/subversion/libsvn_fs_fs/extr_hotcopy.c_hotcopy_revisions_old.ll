; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_hotcopy.c_hotcopy_revisions_old.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_hotcopy.c_hotcopy_revisions_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i64, i8*, i8*, i8*, i8*, i32 (i8*, i64, i64, i32*)*, i8*, i32 (i8*)*, i8*, i32*)* @hotcopy_revisions_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hotcopy_revisions_old(i32* %0, i32* %1, i64 %2, i8* %3, i8* %4, i8* %5, i8* %6, i32 (i8*, i64, i64, i32*)* %7, i8* %8, i32 (i8*)* %9, i8* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32 (i8*, i64, i64, i32*)*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32 (i8*)*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i64 %2, i64* %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store i8* %6, i8** %19, align 8
  store i32 (i8*, i64, i64, i32*)* %7, i32 (i8*, i64, i64, i32*)** %20, align 8
  store i8* %8, i8** %21, align 8
  store i32 (i8*)* %9, i32 (i8*)** %22, align 8
  store i8* %10, i8** %23, align 8
  store i32* %11, i32** %24, align 8
  %28 = load i32*, i32** %24, align 8
  %29 = call i32* @svn_pool_create(i32* %28)
  store i32* %29, i32** %25, align 8
  store i64 0, i64* %26, align 8
  br label %30

30:                                               ; preds = %75, %12
  %31 = load i64, i64* %26, align 8
  %32 = load i64, i64* %15, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %34, label %78

34:                                               ; preds = %30
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* %27, align 4
  %36 = load i32*, i32** %25, align 8
  %37 = call i32 @svn_pool_clear(i32* %36)
  %38 = load i32 (i8*)*, i32 (i8*)** %22, align 8
  %39 = icmp ne i32 (i8*)* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i32 (i8*)*, i32 (i8*)** %22, align 8
  %42 = load i8*, i8** %23, align 8
  %43 = call i32 %41(i8* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  br label %45

45:                                               ; preds = %40, %34
  %46 = load i8*, i8** %16, align 8
  %47 = load i8*, i8** %17, align 8
  %48 = load i32*, i32** %25, align 8
  %49 = load i64, i64* %26, align 8
  %50 = call i32 @apr_psprintf(i32* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load i32*, i32** %25, align 8
  %52 = call i32 @hotcopy_io_dir_file_copy(i32* %27, i8* %46, i8* %47, i32 %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i8*, i8** %18, align 8
  %55 = load i8*, i8** %19, align 8
  %56 = load i32*, i32** %25, align 8
  %57 = load i64, i64* %26, align 8
  %58 = call i32 @apr_psprintf(i32* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = load i32*, i32** %25, align 8
  %60 = call i32 @hotcopy_io_dir_file_copy(i32* %27, i8* %54, i8* %55, i32 %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i32 (i8*, i64, i64, i32*)*, i32 (i8*, i64, i64, i32*)** %20, align 8
  %63 = icmp ne i32 (i8*, i64, i64, i32*)* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %45
  %65 = load i32, i32* %27, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = load i32 (i8*, i64, i64, i32*)*, i32 (i8*, i64, i64, i32*)** %20, align 8
  %69 = load i8*, i8** %21, align 8
  %70 = load i64, i64* %26, align 8
  %71 = load i64, i64* %26, align 8
  %72 = load i32*, i32** %25, align 8
  %73 = call i32 %68(i8* %69, i64 %70, i64 %71, i32* %72)
  br label %74

74:                                               ; preds = %67, %64, %45
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %26, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %26, align 8
  br label %30

78:                                               ; preds = %30
  %79 = load i32*, i32** %25, align 8
  %80 = call i32 @svn_pool_destroy(i32* %79)
  %81 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %81
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @hotcopy_io_dir_file_copy(i32*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @apr_psprintf(i32*, i8*, i64) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
