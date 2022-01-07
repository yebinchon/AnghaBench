; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_conflict-callbacks.c_show_conflicts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_conflict-callbacks.c_show_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"||||||| ORIGINAL\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"<<<<<<< MINE (select with 'mc')\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c">>>>>>> THEIRS (select with 'tc')\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"=======\00", align 1
@svn_diff_conflict_display_only_conflicts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i8*, i32*)* @show_conflicts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @show_conflicts(i32* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @svn_client_conflict_text_get_contents(i32* null, i8** %13, i8** %12, i8** %14, i32* %15, i32* %16, i32* %17)
  %19 = call i32 @SVN_ERR(i32 %18)
  %20 = load i32*, i32** %8, align 8
  %21 = call %struct.TYPE_4__* @svn_diff_file_options_create(i32* %20)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %11, align 8
  %22 = load i32, i32* @TRUE, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @svn_stream_for_stdout(i32** %10, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i8*, i8** %12, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @svn_diff_file_diff3_2(i32** %9, i8* %28, i8* %29, i8* %30, %struct.TYPE_4__* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @svn_diff_conflict_display_only_conflicts, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32* @svn_diff_file_output_merge3(i32* %35, i32* %36, i8* %37, i8* %38, i8* %39, i32 %40, i32 %41, i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %43, i32 %44, i8* %45, i32* %46)
  ret i32* %47
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_conflict_text_get_contents(i32*, i8**, i8**, i8**, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @svn_diff_file_options_create(i32*) #1

declare dso_local i32 @svn_stream_for_stdout(i32**, i32*) #1

declare dso_local i32 @svn_diff_file_diff3_2(i32**, i8*, i8*, i8*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32* @svn_diff_file_output_merge3(i32*, i32*, i8*, i8*, i8*, i32, i32, i32, i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
