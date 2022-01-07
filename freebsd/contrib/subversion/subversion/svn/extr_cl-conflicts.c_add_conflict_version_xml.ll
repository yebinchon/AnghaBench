; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_cl-conflicts.c_add_conflict_version_xml.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_cl-conflicts.c_add_conflict_version_xml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"side\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"repos-url\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"path-in-repos\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"revision\00", align 1
@svn_node_unknown = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"kind\00", align 1
@svn_xml_self_closing = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*, i8*, i8*, i32, i64, i32*)* @add_conflict_version_xml to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_conflict_version_xml(i32** %0, i8* %1, i8* %2, i8* %3, i32 %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32** %0, i32*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load i32*, i32** %14, align 8
  %17 = call i32* @apr_hash_make(i32* %16)
  store i32* %17, i32** %15, align 8
  %18 = load i32*, i32** %15, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @svn_hash_sets(i32* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %7
  %24 = load i32*, i32** %15, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @svn_hash_sets(i32* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %23, %7
  %28 = load i8*, i8** %11, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32*, i32** %15, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 @svn_hash_sets(i32* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i32, i32* %12, align 4
  %36 = call i64 @SVN_IS_VALID_REVNUM(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32*, i32** %15, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i8* @apr_ltoa(i32* %40, i32 %41)
  %43 = call i32 @svn_hash_sets(i32* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %38, %34
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* @svn_node_unknown, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32*, i32** %15, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call i8* @svn_cl__node_kind_str_xml(i64 %50)
  %52 = call i32 @svn_hash_sets(i32* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %48, %44
  %54 = load i32**, i32*** %8, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = load i32, i32* @svn_xml_self_closing, align 4
  %57 = load i32*, i32** %15, align 8
  %58 = call i32 @svn_xml_make_open_tag_hash(i32** %54, i32* %55, i32 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* %57)
  %59 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %59
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i8*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i8* @apr_ltoa(i32*, i32) #1

declare dso_local i8* @svn_cl__node_kind_str_xml(i64) #1

declare dso_local i32 @svn_xml_make_open_tag_hash(i32**, i32*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
