; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnadmin/extr_svnadmin.c_subcommand_deltify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnadmin/extr_svnadmin.c_subcommand_deltify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svnadmin_opt_state = type { i32, i32, i32, i32 }

@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@SVN_ERR_CL_ARG_PARSING_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"First revision cannot be higher than second\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Deltifying revision %ld...\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*)* @subcommand_deltify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @subcommand_deltify(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.svnadmin_opt_state*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.svnadmin_opt_state*
  store %struct.svnadmin_opt_state* %17, %struct.svnadmin_opt_state** %8, align 8
  %18 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  store i64 %18, i64* %11, align 8
  %19 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  store i64 %19, i64* %12, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32* @svn_pool_create(i32* %20)
  store i32* %21, i32** %15, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @parse_args(i32* null, i32* %22, i32 0, i32 0, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %27 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @open_repos(i32** %9, i32 %28, %struct.svnadmin_opt_state* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i32*, i32** %9, align 8
  %34 = call i32* @svn_repos_fs(i32* %33)
  store i32* %34, i32** %10, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @svn_fs_youngest_rev(i64* %13, i32* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %40 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %39, i32 0, i32 2
  %41 = load i64, i64* %13, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @get_revnum(i64* %11, i32* %40, i64 %41, i32* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %47 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %46, i32 0, i32 1
  %48 = load i64, i64* %13, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @get_revnum(i64* %12, i32* %47, i64 %48, i32* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %3
  %57 = load i64, i64* %13, align 8
  store i64 %57, i64* %11, align 8
  br label %58

58:                                               ; preds = %56, %3
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i64, i64* %11, align 8
  store i64 %63, i64* %12, align 8
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %12, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %70 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %71 = call i32* @svn_error_create(i32 %69, i32* null, i32 %70)
  store i32* %71, i32** %4, align 8
  br label %116

72:                                               ; preds = %64
  %73 = load i64, i64* %11, align 8
  store i64 %73, i64* %14, align 8
  br label %74

74:                                               ; preds = %109, %72
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %12, align 8
  %77 = icmp sle i64 %75, %76
  br i1 %77, label %78, label %112

78:                                               ; preds = %74
  %79 = load i32*, i32** %15, align 8
  %80 = call i32 @svn_pool_clear(i32* %79)
  %81 = call i32 @check_cancel(i32* null)
  %82 = call i32 @SVN_ERR(i32 %81)
  %83 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %84 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %78
  %88 = load i32*, i32** %15, align 8
  %89 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i64, i64* %14, align 8
  %91 = call i32 (i32*, i32, ...) @svn_cmdline_printf(i32* %88, i32 %89, i64 %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  br label %93

93:                                               ; preds = %87, %78
  %94 = load i32*, i32** %10, align 8
  %95 = load i64, i64* %14, align 8
  %96 = load i32*, i32** %15, align 8
  %97 = call i32 @svn_fs_deltify_revision(i32* %94, i64 %95, i32* %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  %99 = load %struct.svnadmin_opt_state*, %struct.svnadmin_opt_state** %8, align 8
  %100 = getelementptr inbounds %struct.svnadmin_opt_state, %struct.svnadmin_opt_state* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %93
  %104 = load i32*, i32** %15, align 8
  %105 = call i32 @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %106 = call i32 (i32*, i32, ...) @svn_cmdline_printf(i32* %104, i32 %105)
  %107 = call i32 @SVN_ERR(i32 %106)
  br label %108

108:                                              ; preds = %103, %93
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %14, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %14, align 8
  br label %74

112:                                              ; preds = %74
  %113 = load i32*, i32** %15, align 8
  %114 = call i32 @svn_pool_destroy(i32* %113)
  %115 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %115, i32** %4, align 8
  br label %116

116:                                              ; preds = %112, %68
  %117 = load i32*, i32** %4, align 8
  ret i32* %117
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @parse_args(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @open_repos(i32**, i32, %struct.svnadmin_opt_state*, i32*) #1

declare dso_local i32* @svn_repos_fs(i32*) #1

declare dso_local i32 @svn_fs_youngest_rev(i64*, i32*, i32*) #1

declare dso_local i32 @get_revnum(i64*, i32*, i64, i32*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @check_cancel(i32*) #1

declare dso_local i32 @svn_cmdline_printf(i32*, i32, ...) #1

declare dso_local i32 @svn_fs_deltify_revision(i32*, i64, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
