; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_check_hook_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_check_hook_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@check_hook_cmd.check_extns = internal constant [2 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64*, i32*)* @check_hook_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_hook_cmd(i8* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %9, align 8
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @check_hook_cmd.check_extns, i64 0, i64 0), i8*** %8, align 8
  br label %13

13:                                               ; preds = %63, %3
  %14 = load i8**, i8*** %8, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %66

17:                                               ; preds = %13
  %18 = load i8**, i8*** %8, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load i32*, i32** %7, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i8**, i8*** %8, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* @SVN_VA_NULL, align 4
  %29 = call i8* @apr_pstrcat(i32* %24, i8* %25, i8* %27, i32 %28)
  br label %32

30:                                               ; preds = %17
  %31 = load i8*, i8** %5, align 8
  br label %32

32:                                               ; preds = %30, %23
  %33 = phi i8* [ %29, %23 ], [ %31, %30 ]
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32* @svn_io_check_resolved_path(i8* %34, i64* %12, i32* %35)
  store i32* %36, i32** %9, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @svn_node_file, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i64, i64* @FALSE, align 8
  %44 = load i64*, i64** %6, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i8*, i8** %11, align 8
  store i8* %45, i8** %4, align 8
  br label %67

46:                                               ; preds = %38, %32
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @svn_error_clear(i32* %47)
  %49 = load i8*, i8** %11, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32* @svn_io_check_special_path(i8* %49, i64* %12, i64* %10, i32* %50)
  store i32* %51, i32** %9, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load i64, i64* %10, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i64, i64* @TRUE, align 8
  %58 = load i64*, i64** %6, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i8*, i8** %11, align 8
  store i8* %59, i8** %4, align 8
  br label %67

60:                                               ; preds = %53, %46
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @svn_error_clear(i32* %61)
  br label %63

63:                                               ; preds = %60
  %64 = load i8**, i8*** %8, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i32 1
  store i8** %65, i8*** %8, align 8
  br label %13

66:                                               ; preds = %13
  store i8* null, i8** %4, align 8
  br label %67

67:                                               ; preds = %66, %56, %42
  %68 = load i8*, i8** %4, align 8
  ret i8* %68
}

declare dso_local i8* @apr_pstrcat(i32*, i8*, i8*, i32) #1

declare dso_local i32* @svn_io_check_resolved_path(i8*, i64*, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @svn_io_check_special_path(i8*, i64*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
