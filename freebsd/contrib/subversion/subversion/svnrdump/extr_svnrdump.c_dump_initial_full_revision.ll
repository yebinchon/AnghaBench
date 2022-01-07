; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_svnrdump.c_dump_initial_full_revision.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_svnrdump.c_dump_initial_full_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i8*, i32*)*, i32 (i8*, i8*, i32, i32, i32, i32*, i32*)* }

@check_cancel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@svn_depth_infinity = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"* Dumped revision %lu.\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32, i32, i32*)* @dump_initial_full_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dump_initial_full_revision(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = call i32 @svn_ra_get_session_url(i32* %19, i8** %17, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i32*, i32** %7, align 8
  %24 = load i8*, i8** %17, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = call i32 @svn_ra_get_path_relative_to_root(i32* %23, i8** %18, i8* %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @dump_revision_header(i32* %28, i32* %29, i32 %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i8*, i8** %18, align 8
  %38 = load i32, i32* @check_cancel, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = call i32 @svn_rdump__get_dump_editor(i32** %15, i8** %16, i32 %34, i32* %35, i32* %36, i8* %37, i32 %38, i32* null, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @svn_depth_infinity, align 4
  %45 = load i32, i32* @FALSE, align 4
  %46 = load i32, i32* @FALSE, align 4
  %47 = load i32*, i32** %15, align 8
  %48 = load i8*, i8** %16, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = call i32 @svn_ra_do_update3(i32* %42, %struct.TYPE_3__** %13, i8** %14, i32 %43, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %46, i32* %47, i8* %48, i32* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32 (i8*, i8*, i32, i32, i32, i32*, i32*)*, i32 (i8*, i8*, i32, i32, i32, i32*, i32*)** %54, align 8
  %56 = load i8*, i8** %14, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @svn_depth_infinity, align 4
  %59 = load i32, i32* @TRUE, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 %55(i8* %56, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58, i32 %59, i32* null, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %64, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 %65(i8* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %6
  %73 = load i32, i32* @stderr, align 4
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @svn_cmdline_fprintf(i32 %73, i32* %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  br label %78

78:                                               ; preds = %72, %6
  %79 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %79
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_get_session_url(i32*, i8**, i32*) #1

declare dso_local i32 @svn_ra_get_path_relative_to_root(i32*, i8**, i8*, i32*) #1

declare dso_local i32 @dump_revision_header(i32*, i32*, i32, i32*) #1

declare dso_local i32 @svn_rdump__get_dump_editor(i32**, i8**, i32, i32*, i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_ra_do_update3(i32*, %struct.TYPE_3__**, i8**, i32, i8*, i32, i32, i32, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_cmdline_fprintf(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
