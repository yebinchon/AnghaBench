; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra__dup_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_svn_ra__dup_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32*, i32, i32 }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, %struct.TYPE_12__*, i8*, i32*, i32*)* }

@svn_ra_open4 = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra__dup_session(%struct.TYPE_12__** %0, %struct.TYPE_12__* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_12__**, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_12__** %0, %struct.TYPE_12__*** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = call i32 @svn_ra_get_path_relative_to_root(%struct.TYPE_12__* %16, i8** %12, i8* %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  br label %26

21:                                               ; preds = %5
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @svn_ra_get_session_url(%struct.TYPE_12__* %22, i8** %8, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  br label %26

26:                                               ; preds = %21, %15
  %27 = load i32*, i32** %9, align 8
  %28 = call %struct.TYPE_12__* @apr_pcalloc(i32* %27, i32 24)
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %11, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %43, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32 (%struct.TYPE_12__*, %struct.TYPE_12__*, i8*, i32*, i32*)*, i32 (%struct.TYPE_12__*, %struct.TYPE_12__*, i8*, i32*, i32*)** %50, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 %51(%struct.TYPE_12__* %52, %struct.TYPE_12__* %53, i8* %54, i32* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %62, align 8
  %64 = icmp ne i32 (%struct.TYPE_12__*, i32)* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %26
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %69, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %72 = load i32, i32* @svn_ra_open4, align 4
  %73 = call i32 %70(%struct.TYPE_12__* %71, i32 %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  br label %75

75:                                               ; preds = %65, %26
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %77 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  store %struct.TYPE_12__* %76, %struct.TYPE_12__** %77, align 8
  %78 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %78
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_get_path_relative_to_root(%struct.TYPE_12__*, i8**, i8*, i32*) #1

declare dso_local i32 @svn_ra_get_session_url(%struct.TYPE_12__*, i8**, i32*) #1

declare dso_local %struct.TYPE_12__* @apr_pcalloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
