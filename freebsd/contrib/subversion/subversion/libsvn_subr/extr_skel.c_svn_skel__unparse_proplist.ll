; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_skel.c_svn_skel__unparse_proplist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_skel.c_svn_skel__unparse_proplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"proplist\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_skel__unparse_proplist(i32** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_2__*, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32* @svn_skel__make_empty_list(i32* %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %50

18:                                               ; preds = %3
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32* @apr_hash_first(i32* %19, i32* %20)
  store i32* %21, i32** %9, align 8
  br label %22

22:                                               ; preds = %46, %18
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %49

25:                                               ; preds = %22
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @apr_hash_this(i32* %26, i8** %10, i32* %12, i8** %11)
  %28 = load i8*, i8** %11, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %13, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @svn_skel__mem_atom(i8* %32, i32 %35, i32* %36)
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @svn_skel__prepend(i32 %37, i32* %38)
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @svn_skel__mem_atom(i8* %40, i32 %41, i32* %42)
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @svn_skel__prepend(i32 %43, i32* %44)
  br label %46

46:                                               ; preds = %25
  %47 = load i32*, i32** %9, align 8
  %48 = call i32* @apr_hash_next(i32* %47)
  store i32* %48, i32** %9, align 8
  br label %22

49:                                               ; preds = %22
  br label %50

50:                                               ; preds = %49, %3
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @is_valid_proplist_skel(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = call i32* @skel_err(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %55, i32** %4, align 8
  br label %60

56:                                               ; preds = %50
  %57 = load i32*, i32** %8, align 8
  %58 = load i32**, i32*** %5, align 8
  store i32* %57, i32** %58, align 8
  %59 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %59, i32** %4, align 8
  br label %60

60:                                               ; preds = %56, %54
  %61 = load i32*, i32** %4, align 8
  ret i32* %61
}

declare dso_local i32* @svn_skel__make_empty_list(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i8**) #1

declare dso_local i32 @svn_skel__prepend(i32, i32*) #1

declare dso_local i32 @svn_skel__mem_atom(i8*, i32, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @is_valid_proplist_skel(i32*) #1

declare dso_local i32* @skel_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
