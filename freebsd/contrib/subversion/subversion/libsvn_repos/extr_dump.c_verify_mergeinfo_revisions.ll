; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_verify_mergeinfo_revisions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_verify_mergeinfo_revisions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@svn_repos_notify_warning_found_old_mergeinfo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [129 x i8] c"Mergeinfo referencing revision(s) prior to the oldest dumped revision (r%ld). Loading this dump may result in invalid mergeinfo.\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i64, i32, i8*, i32*)* @verify_mergeinfo_revisions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @verify_mergeinfo_revisions(i32* %0, i8* %1, i64 %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = call i32 @svn_mergeinfo_parse(i32* %13, i8* %15, i32* %16)
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load i32, i32* %13, align 4
  %20 = load i64, i64* %9, align 8
  %21 = sub nsw i64 %20, 1
  %22 = load i32, i32* @TRUE, align 4
  %23 = load i32*, i32** %12, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = call i32 @svn_mergeinfo__filter_mergeinfo_by_ranges(i32* %14, i32 %19, i64 %21, i32 0, i32 %22, i32* %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load i32, i32* %14, align 4
  %28 = call i64 @apr_hash_count(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %6
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = load i32, i32* @svn_repos_notify_warning_found_old_mergeinfo, align 4
  %35 = call i32 @_(i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str, i64 0, i64 0))
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @notify_warning(i32* %31, i32 %32, i8* %33, i32 %34, i32 %35, i64 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32, i32* @TRUE, align 4
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %30
  br label %44

44:                                               ; preds = %43, %6
  %45 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %45
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_mergeinfo_parse(i32*, i8*, i32*) #1

declare dso_local i32 @svn_mergeinfo__filter_mergeinfo_by_ranges(i32*, i32, i64, i32, i32, i32*, i32*) #1

declare dso_local i64 @apr_hash_count(i32) #1

declare dso_local i32 @notify_warning(i32*, i32, i8*, i32, i32, i64) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
