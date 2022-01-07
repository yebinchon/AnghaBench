; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_conflict-callbacks.c_show_diff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_conflict-callbacks.c_show_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@svn_wc_operation_merge = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"MINE\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"THEIRS\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"MERGED\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s\09- %s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@APR_LOCALE_CHARSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i8*, i32, i8*, i32*)* @show_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @show_diff(i32* %0, i8* %1, i8* %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_4__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = call i32 @svn_client_conflict_text_get_contents(i32* null, i8** %20, i32* null, i8** %21, i32* %22, i32* %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %6
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @svn_client_conflict_get_operation(i32* %30)
  %32 = load i64, i64* @svn_wc_operation_merge, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i8*, i8** %20, align 8
  store i8* %35, i8** %13, align 8
  %36 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %36, i8** %15, align 8
  br label %40

37:                                               ; preds = %29
  %38 = load i8*, i8** %21, align 8
  store i8* %38, i8** %13, align 8
  %39 = call i8* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %39, i8** %15, align 8
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i8*, i8** %8, align 8
  store i8* %41, i8** %14, align 8
  %42 = call i8* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %42, i8** %16, align 8
  br label %48

43:                                               ; preds = %6
  %44 = load i8*, i8** %21, align 8
  store i8* %44, i8** %13, align 8
  %45 = call i8* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %45, i8** %15, align 8
  %46 = load i8*, i8** %20, align 8
  store i8* %46, i8** %14, align 8
  %47 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %47, i8** %16, align 8
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i32*, i32** %12, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @svn_cl__local_style_skip_ancestor(i8* %50, i8* %51, i32* %52)
  %54 = load i8*, i8** %15, align 8
  %55 = call i8* @apr_psprintf(i32* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %53, i8* %54)
  store i8* %55, i8** %15, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = call i32 @svn_cl__local_style_skip_ancestor(i8* %57, i8* %58, i32* %59)
  %61 = load i8*, i8** %16, align 8
  %62 = call i8* @apr_psprintf(i32* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %60, i8* %61)
  store i8* %62, i8** %16, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = call %struct.TYPE_4__* @svn_diff_file_options_create(i32* %63)
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %19, align 8
  %65 = load i32, i32* @TRUE, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @svn_stream_for_stdout(i32** %18, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load i8*, i8** %13, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @svn_diff_file_diff_2(i32** %17, i8* %71, i8* %72, %struct.TYPE_4__* %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load i32*, i32** %18, align 8
  %78 = load i32*, i32** %17, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = load i8*, i8** %15, align 8
  %82 = load i8*, i8** %16, align 8
  %83 = load i32, i32* @APR_LOCALE_CHARSET, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i8*, i8** %11, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = call i32* @svn_diff_file_output_unified4(i32* %77, i32* %78, i8* %79, i8* %80, i8* %81, i8* %82, i32 %83, i32* null, i32 %86, i32 %89, i32 %90, i8* %91, i32* %92)
  ret i32* %93
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_conflict_text_get_contents(i32*, i8**, i32*, i8**, i32*, i32*, i32*) #1

declare dso_local i64 @svn_client_conflict_get_operation(i32*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_cl__local_style_skip_ancestor(i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_4__* @svn_diff_file_options_create(i32*) #1

declare dso_local i32 @svn_stream_for_stdout(i32**, i32*) #1

declare dso_local i32 @svn_diff_file_diff_2(i32**, i8*, i8*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32* @svn_diff_file_output_unified4(i32*, i32*, i8*, i8*, i8*, i8*, i32, i32*, i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
