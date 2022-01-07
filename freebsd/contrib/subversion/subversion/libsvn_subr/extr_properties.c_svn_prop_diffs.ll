; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_properties.c_svn_prop_diffs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_properties.c_svn_prop_diffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i8* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_prop_diffs(i32** %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca %struct.TYPE_3__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_3__*, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32* @apr_array_make(i32* %23, i32 1, i32 16)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32* @apr_hash_first(i32* %25, i32* %26)
  store i32* %27, i32** %9, align 8
  br label %28

28:                                               ; preds = %69, %4
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %72

31:                                               ; preds = %28
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @apr_hash_this(i32* %32, i8** %11, i32* %12, i8** %13)
  %34 = load i8*, i8** %13, align 8
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** %14, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32* @apr_hash_get(i32* %36, i8* %37, i32 %38)
  store i32* %39, i32** %15, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %31
  %43 = load i32*, i32** %10, align 8
  %44 = call %struct.TYPE_3__* @apr_array_push(i32* %43)
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** %16, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  br label %68

50:                                               ; preds = %31
  %51 = load i32*, i32** %14, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @svn_string_compare(i32* %51, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %50
  %56 = load i32*, i32** %10, align 8
  %57 = call %struct.TYPE_3__* @apr_array_push(i32* %56)
  store %struct.TYPE_3__* %57, %struct.TYPE_3__** %17, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load i32*, i32** %15, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = call i8* @svn_string_dup(i32* %61, i32* %62)
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32* %64, i32** %66, align 8
  br label %67

67:                                               ; preds = %55, %50
  br label %68

68:                                               ; preds = %67, %42
  br label %69

69:                                               ; preds = %68
  %70 = load i32*, i32** %9, align 8
  %71 = call i32* @apr_hash_next(i32* %70)
  store i32* %71, i32** %9, align 8
  br label %28

72:                                               ; preds = %28
  %73 = load i32*, i32** %8, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = call i32* @apr_hash_first(i32* %73, i32* %74)
  store i32* %75, i32** %9, align 8
  br label %76

76:                                               ; preds = %102, %72
  %77 = load i32*, i32** %9, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %105

79:                                               ; preds = %76
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @apr_hash_this(i32* %80, i8** %18, i32* %19, i8** %20)
  %82 = load i8*, i8** %20, align 8
  %83 = bitcast i8* %82 to i32*
  store i32* %83, i32** %21, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = load i8*, i8** %18, align 8
  %86 = load i32, i32* %19, align 4
  %87 = call i32* @apr_hash_get(i32* %84, i8* %85, i32 %86)
  %88 = icmp eq i32* null, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %79
  %90 = load i32*, i32** %10, align 8
  %91 = call %struct.TYPE_3__* @apr_array_push(i32* %90)
  store %struct.TYPE_3__* %91, %struct.TYPE_3__** %22, align 8
  %92 = load i8*, i8** %18, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load i32*, i32** %21, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = call i8* @svn_string_dup(i32* %95, i32* %96)
  %98 = bitcast i8* %97 to i32*
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i32* %98, i32** %100, align 8
  br label %101

101:                                              ; preds = %89, %79
  br label %102

102:                                              ; preds = %101
  %103 = load i32*, i32** %9, align 8
  %104 = call i32* @apr_hash_next(i32* %103)
  store i32* %104, i32** %9, align 8
  br label %76

105:                                              ; preds = %76
  %106 = load i32*, i32** %10, align 8
  %107 = load i32**, i32*** %5, align 8
  store i32* %106, i32** %107, align 8
  %108 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %108
}

declare dso_local i32* @apr_array_make(i32*, i32, i32) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i8**) #1

declare dso_local i32* @apr_hash_get(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_3__* @apr_array_push(i32*) #1

declare dso_local i32 @svn_string_compare(i32*, i32*) #1

declare dso_local i8* @svn_string_dup(i32*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
