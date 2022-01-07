; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_mergeinfo.c_svn_mergeinfo__add_prefix_to_catalog.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_mergeinfo.c_svn_mergeinfo__add_prefix_to_catalog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_mergeinfo__add_prefix_to_catalog(i32* %0, i32 %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @apr_hash_make(i32* %14)
  %16 = load i32*, i32** %6, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32*, i32** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32* @apr_hash_first(i32* %17, i32 %18)
  store i32* %19, i32** %11, align 8
  br label %20

20:                                               ; preds = %45, %5
  %21 = load i32*, i32** %11, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %48

23:                                               ; preds = %20
  %24 = load i32*, i32** %11, align 8
  %25 = call i8* @apr_hash_this_key(i32* %24)
  store i8* %25, i8** %12, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @apr_hash_this_val(i32* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i8*, i8** %12, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 47
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i8*, i8** %12, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %12, align 8
  br label %36

36:                                               ; preds = %33, %23
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @svn_dirent_join(i8* %39, i8* %40, i32* %41)
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @svn_hash_sets(i32 %38, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %36
  %46 = load i32*, i32** %11, align 8
  %47 = call i32* @apr_hash_next(i32* %46)
  store i32* %47, i32** %11, align 8
  br label %20

48:                                               ; preds = %20
  %49 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %49
}

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_hash_sets(i32, i32, i32) #1

declare dso_local i32 @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
