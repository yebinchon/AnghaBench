; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config.c_svn_config_enumerate2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config.c_svn_config_enumerate2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn_config_enumerate2(i32* %0, i8* %1, i32 (i32, i8*, i8*, i32*)* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (i32, i8*, i8*, i32*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 (i32, i8*, i8*, i32*)* %2, i32 (i32, i8*, i8*, i32*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @find_option(i32* %18, i8* %19, i32* null, %struct.TYPE_7__** %12)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %22 = icmp eq %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %64

24:                                               ; preds = %5
  %25 = load i32*, i32** %11, align 8
  %26 = call i32* @svn_pool_create(i32* %25)
  store i32* %26, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @apr_hash_first(i32* %27, i32 %30)
  store i32* %31, i32** %13, align 8
  br label %32

32:                                               ; preds = %57, %24
  %33 = load i32*, i32** %13, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %60

35:                                               ; preds = %32
  %36 = load i32*, i32** %13, align 8
  %37 = call %struct.TYPE_8__* @apr_hash_this_val(i32* %36)
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %16, align 8
  %38 = load i32, i32* %15, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %15, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %43 = call i32 @make_string_from_option(i8** %17, i32* %40, %struct.TYPE_7__* %41, %struct.TYPE_8__* %42, i32* null)
  %44 = load i32*, i32** %14, align 8
  %45 = call i32 @svn_pool_clear(i32* %44)
  %46 = load i32 (i32, i8*, i8*, i32*)*, i32 (i32, i8*, i8*, i32*)** %9, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %17, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = call i32 %46(i32 %49, i8* %50, i8* %51, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %35
  br label %60

56:                                               ; preds = %35
  br label %57

57:                                               ; preds = %56
  %58 = load i32*, i32** %13, align 8
  %59 = call i32* @apr_hash_next(i32* %58)
  store i32* %59, i32** %13, align 8
  br label %32

60:                                               ; preds = %55, %32
  %61 = load i32*, i32** %14, align 8
  %62 = call i32 @svn_pool_destroy(i32* %61)
  %63 = load i32, i32* %15, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %60, %23
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @find_option(i32*, i8*, i32*, %struct.TYPE_7__**) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @apr_hash_this_val(i32*) #1

declare dso_local i32 @make_string_from_option(i8**, i32*, %struct.TYPE_7__*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
