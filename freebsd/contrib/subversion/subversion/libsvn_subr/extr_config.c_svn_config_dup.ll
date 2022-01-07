; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config.c_svn_config_dup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config.c_svn_config_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i8*, i8*, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_config_dup(%struct.TYPE_11__** %0, %struct.TYPE_11__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_11__**, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32* %2, i32** %6, align 8
  %19 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %19, align 8
  %20 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %21 = load i32, i32* @FALSE, align 4
  %22 = load i32, i32* @FALSE, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @svn_config_create2(%struct.TYPE_11__** %20, i32 %21, i32 %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @apr_hash_first(i32* %44, i32 %47)
  store i32* %48, i32** %7, align 8
  br label %49

49:                                               ; preds = %120, %3
  %50 = load i32*, i32** %7, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %123

52:                                               ; preds = %49
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @apr_hash_this(i32* %53, i8** %9, i32* %11, i8** %10)
  %55 = load i8*, i8** %10, align 8
  %56 = bitcast i8* %55 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** %12, align 8
  %57 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.TYPE_12__* @svn_config_addsection(%struct.TYPE_11__* %58, i32 %61)
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %13, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32* @apr_hash_first(i32* %63, i32 %66)
  store i32* %67, i32** %8, align 8
  br label %68

68:                                               ; preds = %116, %52
  %69 = load i32*, i32** %8, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %119

71:                                               ; preds = %68
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @apr_hash_this(i32* %72, i8** %14, i32* %16, i8** %15)
  %74 = load i8*, i8** %15, align 8
  %75 = bitcast i8* %74 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %75, %struct.TYPE_13__** %17, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @svn_config_create_option(%struct.TYPE_13__** %18, i32 %78, i8* %81, i32 %85, i32* %86)
  %88 = load i32*, i32** %6, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i8* @apr_pstrdup(i32* %88, i8* %91)
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @apr_pstrdup(i32* %95, i8* %98)
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %6, align 8
  %111 = load i8*, i8** %14, align 8
  %112 = call i8* @apr_pstrdup(i32* %110, i8* %111)
  %113 = load i32, i32* %16, align 4
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %115 = call i32 @apr_hash_set(i32 %109, i8* %112, i32 %113, %struct.TYPE_13__* %114)
  br label %116

116:                                              ; preds = %71
  %117 = load i32*, i32** %8, align 8
  %118 = call i32* @apr_hash_next(i32* %117)
  store i32* %118, i32** %8, align 8
  br label %68

119:                                              ; preds = %68
  br label %120

120:                                              ; preds = %119
  %121 = load i32*, i32** %7, align 8
  %122 = call i32* @apr_hash_next(i32* %121)
  store i32* %122, i32** %7, align 8
  br label %49

123:                                              ; preds = %49
  %124 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %124
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_config_create2(%struct.TYPE_11__**, i32, i32, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i8**) #1

declare dso_local %struct.TYPE_12__* @svn_config_addsection(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @svn_config_create_option(%struct.TYPE_13__**, i32, i8*, i32, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @apr_hash_set(i32, i8*, i32, %struct.TYPE_13__*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
