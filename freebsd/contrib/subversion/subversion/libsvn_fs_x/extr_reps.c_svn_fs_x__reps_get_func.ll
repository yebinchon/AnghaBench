; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_reps.c_svn_fs_x__reps_get_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_reps.c_svn_fs_x__reps_get_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__reps_get_func(i8** %0, i8* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %12, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %20 = call %struct.TYPE_7__* @apr_pmemdup(i32* %18, %struct.TYPE_7__* %19, i32 32)
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %13, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  %24 = call i8* @svn_temp_deserializer__ptr(%struct.TYPE_7__* %21, i8** %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = call i8* @svn_temp_deserializer__ptr(%struct.TYPE_7__* %27, i8** %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = call i8* @svn_temp_deserializer__ptr(%struct.TYPE_7__* %33, i8** %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = call i8* @svn_temp_deserializer__ptr(%struct.TYPE_7__* %39, i8** %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load i8**, i8*** %6, align 8
  %46 = bitcast i8** %45 to i32**
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @svn_fs_x__reps_get(i32** %46, i32 %49, %struct.TYPE_7__* %50, i32 %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %57
}

declare dso_local %struct.TYPE_7__* @apr_pmemdup(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i8* @svn_temp_deserializer__ptr(%struct.TYPE_7__*, i8**) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__reps_get(i32**, i32, %struct.TYPE_7__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
