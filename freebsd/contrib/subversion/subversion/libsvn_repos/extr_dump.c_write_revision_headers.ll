; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_write_revision_headers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_write_revision_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@write_revision_headers.revision_headers_order = internal global [2 x i8*] [i8* inttoptr (i64 128 to i8*), i8* null], align 16
@SVN_REPOS_DUMPFILE_CONTENT_LENGTH = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @write_revision_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @write_revision_headers(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @write_revision_headers.revision_headers_order, i64 0, i64 0), i8*** %7, align 8
  br label %10

10:                                               ; preds = %26, %3
  %11 = load i8**, i8*** %7, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i8**, i8*** %7, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @write_header(i32* %15, i32* %16, i8* %18, i32* %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i8**, i8*** %7, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @svn_hash_sets(i32* %22, i8* %24, i32* null)
  br label %26

26:                                               ; preds = %14
  %27 = load i8**, i8*** %7, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i32 1
  store i8** %28, i8*** %7, align 8
  br label %10

29:                                               ; preds = %10
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32* @apr_hash_first(i32* %30, i32* %31)
  store i32* %32, i32** %8, align 8
  br label %33

33:                                               ; preds = %51, %29
  %34 = load i32*, i32** %8, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = load i32*, i32** %8, align 8
  %38 = call i8* @apr_hash_this_key(i32* %37)
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** @SVN_REPOS_DUMPFILE_CONTENT_LENGTH, align 8
  %41 = call i64 @strcmp(i8* %39, i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @write_header(i32* %44, i32* %45, i8* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  br label %50

50:                                               ; preds = %43, %36
  br label %51

51:                                               ; preds = %50
  %52 = load i32*, i32** %8, align 8
  %53 = call i32* @apr_hash_next(i32* %52)
  store i32* %53, i32** %8, align 8
  br label %33

54:                                               ; preds = %33
  %55 = load i32*, i32** %4, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = load i8*, i8** @SVN_REPOS_DUMPFILE_CONTENT_LENGTH, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @write_header(i32* %55, i32* %56, i8* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %61
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @write_header(i32*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
