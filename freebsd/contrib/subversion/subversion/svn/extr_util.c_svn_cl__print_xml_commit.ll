; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_util.c_svn_cl__print_xml_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_util.c_svn_cl__print_xml_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_xml_normal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"revision\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"author\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"date\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svn_cl__print_xml_commit(i32** %0, i32 %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32**, i32*** %6, align 8
  %12 = load i32*, i32** %10, align 8
  %13 = load i32, i32* @svn_xml_normal, align 4
  %14 = load i32*, i32** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @apr_psprintf(i32* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @SVN_VA_NULL, align 4
  %18 = call i32 @svn_xml_make_open_tag(i32** %11, i32* %12, i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load i32**, i32*** %6, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @svn_cl__xml_tagged_cdata(i32** %22, i32* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %21, %5
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32**, i32*** %6, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @svn_cl__xml_tagged_cdata(i32** %30, i32* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %29, %26
  %35 = load i32**, i32*** %6, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @svn_xml_make_close_tag(i32** %35, i32* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @svn_xml_make_open_tag(i32**, i32*, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @apr_psprintf(i32*, i8*, i32) #1

declare dso_local i32 @svn_cl__xml_tagged_cdata(i32**, i32*, i8*, i8*) #1

declare dso_local i32 @svn_xml_make_close_tag(i32**, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
