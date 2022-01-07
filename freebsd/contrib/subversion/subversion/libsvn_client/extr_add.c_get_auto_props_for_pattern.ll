; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_add.c_get_auto_props_for_pattern.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_add.c_get_auto_props_for_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@APR_FNM_CASE_BLIND = common dso_local global i32 0, align 4
@APR_FNM_NOMATCH = common dso_local global i64 0, align 8
@SVN_PROP_MIME_TYPE = common dso_local global i32 0, align 4
@SVN_PROP_EXECUTABLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8**, i32*, i8*, i8*, i32*, i32*)* @get_auto_props_for_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_auto_props_for_pattern(i32* %0, i8** %1, i32* %2, i8* %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = load i32, i32* @APR_FNM_CASE_BLIND, align 4
  %22 = call i64 @apr_fnmatch(i8* %19, i8* %20, i32 %21)
  %23 = load i64, i64* @APR_FNM_NOMATCH, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  br label %72

26:                                               ; preds = %7
  %27 = load i32*, i32** %14, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = call i32* @apr_hash_first(i32* %27, i32* %28)
  store i32* %29, i32** %15, align 8
  br label %30

30:                                               ; preds = %69, %26
  %31 = load i32*, i32** %15, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %72

33:                                               ; preds = %30
  %34 = load i32*, i32** %15, align 8
  %35 = call i8* @apr_hash_this_key(i32* %34)
  store i8* %35, i8** %16, align 8
  %36 = load i32*, i32** %15, align 8
  %37 = call i8* @apr_hash_this_val(i32* %36)
  store i8* %37, i8** %17, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @apr_hash_pool_get(i32* %38)
  %40 = call %struct.TYPE_4__* @svn_string_create_empty(i32 %39)
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %18, align 8
  %41 = load i8*, i8** %17, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %17, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i8*, i8** %16, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %51 = call i32 @svn_hash_sets(i32* %48, i8* %49, %struct.TYPE_4__* %50)
  %52 = load i8*, i8** %16, align 8
  %53 = load i32, i32* @SVN_PROP_MIME_TYPE, align 4
  %54 = call i64 @strcmp(i8* %52, i32 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %33
  %57 = load i8*, i8** %17, align 8
  %58 = load i8**, i8*** %9, align 8
  store i8* %57, i8** %58, align 8
  br label %68

59:                                               ; preds = %33
  %60 = load i8*, i8** %16, align 8
  %61 = load i32, i32* @SVN_PROP_EXECUTABLE, align 4
  %62 = call i64 @strcmp(i8* %60, i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @TRUE, align 4
  %66 = load i32*, i32** %10, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %59
  br label %68

68:                                               ; preds = %67, %56
  br label %69

69:                                               ; preds = %68
  %70 = load i32*, i32** %15, align 8
  %71 = call i32* @apr_hash_next(i32* %70)
  store i32* %71, i32** %15, align 8
  br label %30

72:                                               ; preds = %25, %30
  ret void
}

declare dso_local i64 @apr_fnmatch(i8*, i8*, i32) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i8* @apr_hash_this_val(i32*) #1

declare dso_local %struct.TYPE_4__* @svn_string_create_empty(i32) #1

declare dso_local i32 @apr_hash_pool_get(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, %struct.TYPE_4__*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
