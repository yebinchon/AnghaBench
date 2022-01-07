; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_merge-cmd.c_ensure_wc_path_has_repo_revision.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_merge-cmd.c_ensure_wc_path_has_repo_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@svn_opt_revision_number = common dso_local global i64 0, align 8
@svn_opt_revision_date = common dso_local global i64 0, align 8
@svn_opt_revision_head = common dso_local global i64 0, align 8
@SVN_ERR_CLIENT_BAD_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [119 x i8] c"Invalid merge source '%s'; a working copy path can only be used with a repository revision (a number, a date, or head)\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_3__*, i32*)* @ensure_wc_path_has_repo_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ensure_wc_path_has_repo_revision(i8* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @svn_opt_revision_number, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @svn_opt_revision_date, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @svn_opt_revision_head, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @svn_path_is_url(i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @SVN_ERR_CLIENT_BAD_REVISION, align 4
  %31 = call i32 @_(i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str, i64 0, i64 0))
  %32 = load i8*, i8** %5, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @svn_dirent_local_style(i8* %32, i32* %33)
  %35 = call i32* @svn_error_createf(i32 %30, i32* null, i32 %31, i32 %34)
  store i32* %35, i32** %4, align 8
  br label %38

36:                                               ; preds = %25, %19, %13, %3
  %37 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %37, i32** %4, align 8
  br label %38

38:                                               ; preds = %36, %29
  %39 = load i32*, i32** %4, align 8
  ret i32* %39
}

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
