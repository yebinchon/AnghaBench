; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/util/extr_fs_skels.c_svn_fs_base__unparse_entries_skel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/util/extr_fs_skels.c_svn_fs_base__unparse_entries_skel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__unparse_entries_skel(i32** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32* @svn_skel__make_empty_list(i32* %15)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %59

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32* @apr_hash_first(i32* %20, i32* %21)
  store i32* %22, i32** %8, align 8
  br label %23

23:                                               ; preds = %55, %19
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %58

26:                                               ; preds = %23
  %27 = load i32*, i32** %6, align 8
  %28 = call i32* @svn_skel__make_empty_list(i32* %27)
  store i32* %28, i32** %14, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @apr_hash_this(i32* %29, i8** %9, i32* %11, i8** %10)
  %31 = load i8*, i8** %10, align 8
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %12, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call %struct.TYPE_3__* @svn_fs_base__id_unparse(i32* %33, i32* %34)
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %13, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32* @svn_skel__mem_atom(i8* %38, i32 %41, i32* %42)
  %44 = load i32*, i32** %14, align 8
  %45 = call i32 @svn_skel__prepend(i32* %43, i32* %44)
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = call i32* @svn_skel__mem_atom(i8* %46, i32 %47, i32* %48)
  %50 = load i32*, i32** %14, align 8
  %51 = call i32 @svn_skel__prepend(i32* %49, i32* %50)
  %52 = load i32*, i32** %14, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @svn_skel__prepend(i32* %52, i32* %53)
  br label %55

55:                                               ; preds = %26
  %56 = load i32*, i32** %8, align 8
  %57 = call i32* @apr_hash_next(i32* %56)
  store i32* %57, i32** %8, align 8
  br label %23

58:                                               ; preds = %23
  br label %59

59:                                               ; preds = %58, %3
  %60 = load i32*, i32** %7, align 8
  %61 = load i32**, i32*** %4, align 8
  store i32* %60, i32** %61, align 8
  %62 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %62
}

declare dso_local i32* @svn_skel__make_empty_list(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i8**) #1

declare dso_local %struct.TYPE_3__* @svn_fs_base__id_unparse(i32*, i32*) #1

declare dso_local i32 @svn_skel__prepend(i32*, i32*) #1

declare dso_local i32* @svn_skel__mem_atom(i8*, i32, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
