; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch_compat.c_wrap_fetch_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch_compat.c_wrap_fetch_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32*, i32**, i32**, i32**, i32, i8*, i32, i32*, i32*)* }

@.str = private unnamed_addr constant [5 x i8] c"top0\00", align 1
@svn_node_dir = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32**, i32**, i32**, i8*, i8*, i32, i32*, i32*)* @wrap_fetch_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wrap_fetch_func(i32* %0, i32** %1, i32** %2, i32** %3, i8* %4, i8* %5, i32 %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %10, align 8
  store i32** %1, i32*** %11, align 8
  store i32** %2, i32*** %12, align 8
  store i32** %3, i32*** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %20 = load i8*, i8** %14, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %19, align 8
  %22 = load i32, i32* %16, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %9
  %25 = load i8*, i8** %15, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %24
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @svn_node_dir, align 4
  %33 = load i32*, i32** %10, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32**, i32*** %11, align 8
  %36 = icmp ne i32** %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32*, i32** %17, align 8
  %39 = call i32* @apr_hash_make(i32* %38)
  %40 = load i32**, i32*** %11, align 8
  store i32* %39, i32** %40, align 8
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i32**, i32*** %12, align 8
  %43 = icmp ne i32** %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32**, i32*** %12, align 8
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32**, i32*** %13, align 8
  %48 = icmp ne i32** %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32*, i32** %17, align 8
  %51 = call i32* @apr_hash_make(i32* %50)
  %52 = load i32**, i32*** %13, align 8
  store i32* %51, i32** %52, align 8
  br label %53

53:                                               ; preds = %49, %46
  br label %71

54:                                               ; preds = %24, %9
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32 (i32*, i32**, i32**, i32**, i32, i8*, i32, i32*, i32*)*, i32 (i32*, i32**, i32**, i32**, i32, i8*, i32, i32*, i32*)** %56, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load i32**, i32*** %11, align 8
  %60 = load i32**, i32*** %12, align 8
  %61 = load i32**, i32*** %13, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i8*, i8** %15, align 8
  %66 = load i32, i32* %16, align 4
  %67 = load i32*, i32** %17, align 8
  %68 = load i32*, i32** %18, align 8
  %69 = call i32 %57(i32* %58, i32** %59, i32** %60, i32** %61, i32 %64, i8* %65, i32 %66, i32* %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  br label %71

71:                                               ; preds = %54, %53
  %72 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %72
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
