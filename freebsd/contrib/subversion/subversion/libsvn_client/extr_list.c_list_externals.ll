; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_list.c_list_externals.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_list.c_list_externals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_9__*, i32, i32, i32, i32, i8*, i32*, i32*)* @list_externals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @list_externals(i32* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_8__*, align 8
  %23 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %10, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %24 = load i32*, i32** %18, align 8
  %25 = call i32* @svn_pool_create(i32* %24)
  store i32* %25, i32** %19, align 8
  %26 = load i32*, i32** %18, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call i32* @apr_hash_first(i32* %26, i32* %27)
  store i32* %28, i32** %20, align 8
  br label %29

29:                                               ; preds = %65, %9
  %30 = load i32*, i32** %20, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %68

32:                                               ; preds = %29
  %33 = load i32*, i32** %20, align 8
  %34 = call i8* @apr_hash_this_key(i32* %33)
  store i8* %34, i8** %21, align 8
  %35 = load i32*, i32** %20, align 8
  %36 = call %struct.TYPE_8__* @apr_hash_this_val(i32* %35)
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %22, align 8
  %37 = load i32*, i32** %19, align 8
  %38 = call i32 @svn_pool_clear(i32* %37)
  %39 = load i8*, i8** %21, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @FALSE, align 4
  %44 = load i32*, i32** %19, align 8
  %45 = call i32 @svn_wc_parse_externals_description3(%struct.TYPE_9__** %23, i8* %39, i32 %42, i32 %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %32
  br label %65

52:                                               ; preds = %32
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %54 = load i8*, i8** %21, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i8*, i8** %16, align 8
  %61 = load i32*, i32** %17, align 8
  %62 = load i32*, i32** %19, align 8
  %63 = call i32 @list_external_items(%struct.TYPE_9__* %53, i8* %54, %struct.TYPE_9__* %55, i32 %56, i32 %57, i32 %58, i32 %59, i8* %60, i32* %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  br label %65

65:                                               ; preds = %52, %51
  %66 = load i32*, i32** %20, align 8
  %67 = call i32* @apr_hash_next(i32* %66)
  store i32* %67, i32** %20, align 8
  br label %29

68:                                               ; preds = %29
  %69 = load i32*, i32** %19, align 8
  %70 = call i32 @svn_pool_destroy(i32* %69)
  %71 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %71
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local %struct.TYPE_8__* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc_parse_externals_description3(%struct.TYPE_9__**, i8*, i32, i32, i32*) #1

declare dso_local i32 @list_external_items(%struct.TYPE_9__*, i8*, %struct.TYPE_9__*, i32, i32, i32, i32, i8*, i32*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
