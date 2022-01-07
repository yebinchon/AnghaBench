; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_write_next_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_write_next_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32*, i32*)* @write_next_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @write_next_file(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i8* @svn_fs_x__path_next(i32* %13, i32* %14)
  store i8* %15, i8** %10, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i8* @svn_fs_x__path_current(i32* %16, i32* %17)
  store i8* %18, i8** %11, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @svn_fs_x__batch_fsync_open_file(i32** %9, i32* %19, i8* %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i8* @apr_psprintf(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i8* %26, i8** %12, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @svn_io_file_write_full(i32* %27, i8* %28, i32 %30, i32* null, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i8*, i8** %11, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @svn_io_copy_perms(i8* %34, i8* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %39
}

declare dso_local i8* @svn_fs_x__path_next(i32*, i32*) #1

declare dso_local i8* @svn_fs_x__path_current(i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__batch_fsync_open_file(i32**, i32*, i8*, i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i32) #1

declare dso_local i32 @svn_io_file_write_full(i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @svn_io_copy_perms(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
