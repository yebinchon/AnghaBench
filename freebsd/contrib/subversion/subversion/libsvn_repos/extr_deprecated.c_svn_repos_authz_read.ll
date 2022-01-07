; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_deprecated.c_svn_repos_authz_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_deprecated.c_svn_repos_authz_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"'%s' is not a file name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_authz_read(i32** %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i64 @svn_path_is_url(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i32* @svn_error_createf(i32 %14, i32* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i32* %16, i32** %5, align 8
  br label %24

17:                                               ; preds = %4
  %18 = load i32**, i32*** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @svn_repos_authz_read2(i32** %18, i8* %19, i32* null, i32 %20, i32* %21)
  %23 = call i32* @svn_error_trace(i32 %22)
  store i32* %23, i32** %5, align 8
  br label %24

24:                                               ; preds = %17, %13
  %25 = load i32*, i32** %5, align 8
  ret i32* %25
}

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i8*, i8*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_repos_authz_read2(i32**, i8*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
