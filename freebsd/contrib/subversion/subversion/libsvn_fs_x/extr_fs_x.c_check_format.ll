; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs_x.c_check_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs_x.c_check_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_FS_X__FORMAT_NUMBER = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_FS_X__EXPERIMENTAL_FORMAT_NUMBER = common dso_local global i32 0, align 4
@SVN_ERR_FS_UNSUPPORTED_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Unsupported experimental FSX format '%d' found; current format is '%d'\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Expected FSX format between '%d' and '%d'; found format '%d'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @check_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_format(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @SVN_FS_X__FORMAT_NUMBER, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %8, i32** %2, align 8
  br label %33

9:                                                ; preds = %1
  %10 = load i32, i32* @SVN_FS_X__EXPERIMENTAL_FORMAT_NUMBER, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load i32, i32* @SVN_ERR_FS_UNSUPPORTED_FORMAT, align 4
  %15 = call i32 @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @SVN_FS_X__FORMAT_NUMBER, align 4
  %18 = call i32* (i32, i32*, i32, i32, i32, ...) @svn_error_createf(i32 %14, i32* null, i32 %15, i32 %16, i32 %17)
  store i32* %18, i32** %2, align 8
  br label %33

19:                                               ; preds = %9
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @SVN_FS_X__FORMAT_NUMBER, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %24, i32** %2, align 8
  br label %33

25:                                               ; preds = %19
  %26 = load i32, i32* @SVN_ERR_FS_UNSUPPORTED_FORMAT, align 4
  %27 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @SVN_FS_X__EXPERIMENTAL_FORMAT_NUMBER, align 4
  %29 = add nsw i32 %28, 1
  %30 = load i32, i32* @SVN_FS_X__FORMAT_NUMBER, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32* (i32, i32*, i32, i32, i32, ...) @svn_error_createf(i32 %26, i32* null, i32 %27, i32 %29, i32 %30, i32 %31)
  store i32* %32, i32** %2, align 8
  br label %33

33:                                               ; preds = %25, %23, %13, %7
  %34 = load i32*, i32** %2, align 8
  ret i32* %34
}

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
