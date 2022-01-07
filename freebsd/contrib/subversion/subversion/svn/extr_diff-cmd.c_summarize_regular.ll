; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_diff-cmd.c_summarize_regular.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_diff-cmd.c_summarize_regular.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.summarize_baton_t = type { i8*, i64 }

@svn_client_diff_summarize_kind_normal = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"%c%c      %s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i8*, i32*)* @summarize_regular to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @summarize_regular(%struct.TYPE_3__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.summarize_baton_t*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.summarize_baton_t*
  store %struct.summarize_baton_t* %12, %struct.summarize_baton_t** %8, align 8
  %13 = load %struct.summarize_baton_t*, %struct.summarize_baton_t** %8, align 8
  %14 = getelementptr inbounds %struct.summarize_baton_t, %struct.summarize_baton_t* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %9, align 8
  %16 = load %struct.summarize_baton_t*, %struct.summarize_baton_t** %8, align 8
  %17 = getelementptr inbounds %struct.summarize_baton_t, %struct.summarize_baton_t* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @svn_client_diff_summarize_kind_normal, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %27, i32** %4, align 8
  br label %74

28:                                               ; preds = %20, %3
  %29 = load i8*, i8** %9, align 8
  %30 = call i64 @svn_path_is_url(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i8* @svn_path_url_add_component2(i8* %33, i32 %36, i32* %37)
  store i8* %38, i8** %9, align 8
  br label %49

39:                                               ; preds = %28
  %40 = load i8*, i8** %9, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i8* @svn_dirent_join(i8* %40, i32 %43, i32* %44)
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i8* @svn_dirent_local_style(i8* %46, i32* %47)
  store i8* %48, i8** %9, align 8
  br label %49

49:                                               ; preds = %39, %32
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 77, i32 32
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %10, align 1
  %57 = load %struct.summarize_baton_t*, %struct.summarize_baton_t** %8, align 8
  %58 = getelementptr inbounds %struct.summarize_baton_t, %struct.summarize_baton_t* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  store i8 32, i8* %10, align 1
  br label %62

62:                                               ; preds = %61, %49
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @kind_to_char(i64 %66)
  %68 = load i8, i8* %10, align 1
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @svn_cmdline_printf(i32* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %67, i8 signext %68, i8* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i32, i32* @stdout, align 4
  %73 = call i32* @svn_cmdline_fflush(i32 %72)
  store i32* %73, i32** %4, align 8
  br label %74

74:                                               ; preds = %62, %26
  %75 = load i32*, i32** %4, align 8
  ret i32* %75
}

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i32, i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i32, i32*) #1

declare dso_local i8* @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cmdline_printf(i32*, i8*, i32, i8 signext, i8*) #1

declare dso_local i32 @kind_to_char(i64) #1

declare dso_local i32* @svn_cmdline_fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
