; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_svn_fs_base__get_mutable_rep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_svn_fs_base__get_mutable_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_checksum_md5 = common dso_local global i32 0, align 4
@svn_checksum_sha1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__get_mutable_rep(i8** %0, i8* %1, i32* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  store i8** %0, i8*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i8* null, i8** %15, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %40

18:                                               ; preds = %6
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load i32*, i32** %10, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = call i32 @svn_fs_bdb__read_rep(i32** %14, i32* %25, i8* %26, i32* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i32*, i32** %14, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = call i64 @rep_is_mutable(i32* %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = load i8*, i8** %9, align 8
  %37 = load i8**, i8*** %8, align 8
  store i8* %36, i8** %37, align 8
  %38 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %38, i32** %7, align 8
  br label %62

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39, %18, %6
  %41 = load i32*, i32** %10, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @svn_fs_bdb__string_append(i32* %41, i8** %15, i32 0, i32* null, i32* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i8*, i8** %15, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* @svn_checksum_md5, align 4
  %49 = load i32*, i32** %13, align 8
  %50 = call i32 @svn_checksum_empty_checksum(i32 %48, i32* %49)
  %51 = load i32, i32* @svn_checksum_sha1, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = call i32 @svn_checksum_empty_checksum(i32 %51, i32* %52)
  %54 = load i32*, i32** %13, align 8
  %55 = call i32* @make_fulltext_rep(i8* %46, i8* %47, i32 %50, i32 %53, i32* %54)
  store i32* %55, i32** %14, align 8
  %56 = load i8**, i8*** %8, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = call i32* @svn_fs_bdb__write_new_rep(i8** %56, i32* %57, i32* %58, i32* %59, i32* %60)
  store i32* %61, i32** %7, align 8
  br label %62

62:                                               ; preds = %40, %35
  %63 = load i32*, i32** %7, align 8
  ret i32* %63
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__read_rep(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i64 @rep_is_mutable(i32*, i8*) #1

declare dso_local i32 @svn_fs_bdb__string_append(i32*, i8**, i32, i32*, i32*, i32*) #1

declare dso_local i32* @make_fulltext_rep(i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_checksum_empty_checksum(i32, i32*) #1

declare dso_local i32* @svn_fs_bdb__write_new_rep(i8**, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
