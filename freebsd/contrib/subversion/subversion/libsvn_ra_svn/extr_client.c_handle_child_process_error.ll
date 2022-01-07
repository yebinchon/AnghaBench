; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_handle_child_process_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_handle_child_process_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@SVN_DELTA_COMPRESSION_LEVEL_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error in child process: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @handle_child_process_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_child_process_error(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @apr_file_open_stdin(i32** %8, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @apr_file_open_stdout(i32** %9, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %3
  br label %50

21:                                               ; preds = %16
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* @FALSE, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i32* @svn_stream_from_aprfile2(i32* %22, i32 %23, i32* %24)
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* @FALSE, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = call i32* @svn_stream_from_aprfile2(i32* %26, i32 %27, i32* %28)
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* @SVN_DELTA_COMPRESSION_LEVEL_DEFAULT, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = call i32* @svn_ra_svn_create_conn5(i32* null, i32* %30, i32* %31, i32 %32, i32 0, i32 0, i32 0, i32 0, i32* %33)
  store i32* %34, i32** %7, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %6, align 8
  %38 = call i32* @svn_error_wrap_apr(i32 %35, i32 %36, i8* %37)
  store i32* %38, i32** %12, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32* @svn_ra_svn__write_cmd_failure(i32* %39, i32* %40, i32* %41)
  %43 = call i32 @svn_error_clear(i32* %42)
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @svn_error_clear(i32* %44)
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = call i32* @svn_ra_svn__flush(i32* %46, i32* %47)
  %49 = call i32 @svn_error_clear(i32* %48)
  br label %50

50:                                               ; preds = %21, %20
  ret void
}

declare dso_local i64 @apr_file_open_stdin(i32**, i32*) #1

declare dso_local i64 @apr_file_open_stdout(i32**, i32*) #1

declare dso_local i32* @svn_stream_from_aprfile2(i32*, i32, i32*) #1

declare dso_local i32* @svn_ra_svn_create_conn5(i32*, i32*, i32*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32* @svn_error_wrap_apr(i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @svn_ra_svn__write_cmd_failure(i32*, i32*, i32*) #1

declare dso_local i32* @svn_ra_svn__flush(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
