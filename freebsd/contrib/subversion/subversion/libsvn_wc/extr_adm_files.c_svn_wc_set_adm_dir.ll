; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_files.c_svn_wc_set_adm_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_files.c_svn_wc_set_adm_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_wc_set_adm_dir.valid_dir_names = internal global [3 x i8*] [i8* inttoptr (i64 128 to i8*), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [5 x i8] c"_svn\00", align 1
@adm_dir_name = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_BAD_FILENAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"'%s' is not a valid administrative directory name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_set_adm_dir(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @svn_wc_set_adm_dir.valid_dir_names, i64 0, i64 0), i8*** %6, align 8
  br label %7

7:                                                ; preds = %22, %2
  %8 = load i8**, i8*** %6, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load i8*, i8** %4, align 8
  %13 = load i8**, i8*** %6, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @strcmp(i8* %12, i8* %14)
  %16 = icmp eq i64 0, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i8**, i8*** %6, align 8
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** @adm_dir_name, align 8
  %20 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %20, i32** %3, align 8
  br label %32

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21
  %23 = load i8**, i8*** %6, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i32 1
  store i8** %24, i8*** %6, align 8
  br label %7

25:                                               ; preds = %7
  %26 = load i32, i32* @SVN_ERR_BAD_FILENAME, align 4
  %27 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i8*, i8** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @svn_dirent_local_style(i8* %28, i32* %29)
  %31 = call i32* @svn_error_createf(i32 %26, i32* null, i32 %27, i32 %30)
  store i32* %31, i32** %3, align 8
  br label %32

32:                                               ; preds = %25, %17
  %33 = load i32*, i32** %3, align 8
  ret i32* %33
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
