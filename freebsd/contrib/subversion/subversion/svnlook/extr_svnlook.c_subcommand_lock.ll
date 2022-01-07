; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_subcommand_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_subcommand_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svnlook_opt_state = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"UUID Token: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Owner: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Created: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Expires: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Comment (%i line):\0A%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Comment (%i lines):\0A%s\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*)* @subcommand_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @subcommand_lock(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.svnlook_opt_state*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.svnlook_opt_state*
  store %struct.svnlook_opt_state* %14, %struct.svnlook_opt_state** %7, align 8
  %15 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %7, align 8
  %16 = call i32 @check_number_of_args(%struct.svnlook_opt_state* %15, i32 1)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %7, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @get_ctxt_baton(%struct.TYPE_5__** %8, %struct.svnlook_opt_state* %18, i32* %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.svnlook_opt_state*, %struct.svnlook_opt_state** %7, align 8
  %26 = getelementptr inbounds %struct.svnlook_opt_state, %struct.svnlook_opt_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @svn_fs_get_lock(%struct.TYPE_6__** %9, i32 %24, i32 %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %33, label %102

33:                                               ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i32 0, i32* %12, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i8* @svn_time_to_human_cstring(i64 %36, i32* %37)
  store i8* %38, i8** %10, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i8* @svn_time_to_human_cstring(i64 %46, i32* %47)
  store i8* %48, i8** %11, align 8
  br label %49

49:                                               ; preds = %43, %33
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @svn_cstring_count_newlines(i8* %57)
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %54, %49
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32*, i32, ...) @svn_cmdline_printf(i32* %61, i32 %62, i32 %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32*, i32, ...) @svn_cmdline_printf(i32* %68, i32 %69, i32 %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 (i32*, i32, ...) @svn_cmdline_printf(i32* %75, i32 %76, i8* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 (i32*, i32, ...) @svn_cmdline_printf(i32* %80, i32 %81, i8* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @Q_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %60
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  br label %98

97:                                               ; preds = %60
  br label %98

98:                                               ; preds = %97, %93
  %99 = phi i8* [ %96, %93 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %97 ]
  %100 = call i32 (i32*, i32, ...) @svn_cmdline_printf(i32* %85, i32 %87, i32 %88, i8* %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  br label %102

102:                                              ; preds = %98, %3
  %103 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %103
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @check_number_of_args(%struct.svnlook_opt_state*, i32) #1

declare dso_local i32 @get_ctxt_baton(%struct.TYPE_5__**, %struct.svnlook_opt_state*, i32*) #1

declare dso_local i32 @svn_fs_get_lock(%struct.TYPE_6__**, i32, i32, i32*) #1

declare dso_local i8* @svn_time_to_human_cstring(i64, i32*) #1

declare dso_local i32 @svn_cstring_count_newlines(i8*) #1

declare dso_local i32 @svn_cmdline_printf(i32*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @Q_(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
