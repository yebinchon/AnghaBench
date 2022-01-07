; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_check_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_check_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_FS_FS__PACKED_REVPROP_SQLITE_DEV_FORMAT = common dso_local global i32 0, align 4
@SVN_ERR_FS_UNSUPPORTED_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [130 x i8] c"Found format '%d', only created by unreleased dev builds; see http://subversion.apache.org/docs/release-notes/1.7#revprop-packing\00", align 1
@SVN_FS_FS__FORMAT_NUMBER = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"Expected FS format between '1' and '%d'; found format '%d'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @check_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_format(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @SVN_FS_FS__PACKED_REVPROP_SQLITE_DEV_FORMAT, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, i32* @SVN_ERR_FS_UNSUPPORTED_FORMAT, align 4
  %9 = call i32 @_(i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %3, align 4
  %11 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %8, i32* null, i32 %9, i32 %10)
  store i32* %11, i32** %2, align 8
  br label %27

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp sle i32 1, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @SVN_FS_FS__FORMAT_NUMBER, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %20, i32** %2, align 8
  br label %27

21:                                               ; preds = %15, %12
  %22 = load i32, i32* @SVN_ERR_FS_UNSUPPORTED_FORMAT, align 4
  %23 = call i32 @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @SVN_FS_FS__FORMAT_NUMBER, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %22, i32* null, i32 %23, i32 %24, i32 %25)
  store i32* %26, i32** %2, align 8
  br label %27

27:                                               ; preds = %21, %19, %7
  %28 = load i32*, i32** %2, align 8
  ret i32* %28
}

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
