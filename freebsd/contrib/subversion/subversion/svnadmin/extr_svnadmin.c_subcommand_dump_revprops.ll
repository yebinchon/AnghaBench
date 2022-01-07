; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnadmin/extr_svnadmin.c_subcommand_dump_revprops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnadmin/extr_svnadmin.c_subcommand_dump_revprops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svnadmin_opt_state = type { i32, i64, i32 }

@APR_WRITE = common dso_local global i32 0, align 4
@APR_CREATE = common dso_local global i32 0, align 4
@APR_TRUNCATE = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@repos_notify_handler = common dso_local global i32* null, align 8
@check_cancel = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*)* @subcommand_dump_revprops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @subcommand_dump_revprops(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.svnadmin_opt_state*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.svnadmin_opt_state*
  store %struct.svnadmin_opt_state* %15, %struct.svnadmin_opt_state** %7, align 8
  store i32* null, i32** %12, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @parse_args(i32* null, i32* %16, i32 0, i32 0, i32* %17)
  %19 = call i32 @SVN_ERR(i32 %18)
  %20 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %7, align 8
  %21 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %7, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @open_repos(i32** %8, i32 %22, %struct.svnadmin_opt_state* %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load i32*, i32** %8, align 8
  %28 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %7, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @get_dump_range(i32* %10, i32* %11, i32* %27, %struct.svnadmin_opt_state* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %7, align 8
  %33 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %3
  %37 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %7, align 8
  %38 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @APR_WRITE, align 4
  %41 = load i32, i32* @APR_CREATE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @APR_TRUNCATE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @APR_BUFFERED, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @APR_OS_DEFAULT, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @svn_io_file_open(i32** %13, i64 %39, i32 %46, i32 %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* @FALSE, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = call i32* @svn_stream_from_aprfile2(i32* %51, i32 %52, i32* %53)
  store i32* %54, i32** %9, align 8
  br label %59

55:                                               ; preds = %3
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @svn_stream_for_stdout(i32** %9, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  br label %59

59:                                               ; preds = %55, %36
  %60 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %7, align 8
  %61 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @stderr, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = call i32* @recode_stream_create(i32 %65, i32* %66)
  store i32* %67, i32** %12, align 8
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i32*, i32** %8, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @FALSE, align 4
  %74 = load i32, i32* @FALSE, align 4
  %75 = load i32, i32* @TRUE, align 4
  %76 = load i32, i32* @FALSE, align 4
  %77 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %7, align 8
  %78 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %68
  %82 = load i32*, i32** @repos_notify_handler, align 8
  br label %84

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %83, %81
  %85 = phi i32* [ %82, %81 ], [ null, %83 ]
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* @check_cancel, align 4
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @svn_repos_dump_fs4(i32* %69, i32* %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32* %85, i32* %86, i32* null, i32* null, i32 %87, i32* null, i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %91
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @parse_args(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @open_repos(i32**, i32, %struct.svnadmin_opt_state*, i32*) #1

declare dso_local i32 @get_dump_range(i32*, i32*, i32*, %struct.svnadmin_opt_state*, i32*) #1

declare dso_local i32 @svn_io_file_open(i32**, i64, i32, i32, i32*) #1

declare dso_local i32* @svn_stream_from_aprfile2(i32*, i32, i32*) #1

declare dso_local i32 @svn_stream_for_stdout(i32**, i32*) #1

declare dso_local i32* @recode_stream_create(i32, i32*) #1

declare dso_local i32 @svn_repos_dump_fs4(i32*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
