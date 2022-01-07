; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_temp_serializer.c_svn_fs_fs__extract_dir_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_temp_serializer.c_svn_fs_fs__extract_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i64, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__extract_dir_entry(i8** %0, i8* %1, i64 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_10__**, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %11, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %12, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_10__**
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 3
  %28 = bitcast i32* %27 to i8**
  %29 = call i8* @svn_temp_deserializer__ptr(%struct.TYPE_10__** %25, i8** %28)
  %30 = bitcast i8* %29 to %struct.TYPE_10__**
  store %struct.TYPE_10__** %30, %struct.TYPE_10__*** %14, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = bitcast i8* %31 to %struct.TYPE_10__**
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = bitcast i32* %34 to i8**
  %36 = call i8* @svn_temp_deserializer__ptr(%struct.TYPE_10__** %32, i8** %35)
  %37 = bitcast i8* %36 to i64*
  store i64* %37, i64** %15, align 8
  %38 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %14, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @find_entry(%struct.TYPE_10__** %38, i32 %41, i32 %44, i64* %13)
  store i64 %45, i64* %16, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  %53 = zext i1 %52 to i32
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i8**, i8*** %6, align 8
  store i8* null, i8** %56, align 8
  %57 = load i64, i64* %13, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %93

59:                                               ; preds = %5
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %93, label %64

64:                                               ; preds = %59
  %65 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %14, align 8
  %66 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %14, align 8
  %67 = load i64, i64* %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %66, i64 %67
  %69 = bitcast %struct.TYPE_10__** %68 to i8**
  %70 = call i8* @svn_temp_deserializer__ptr(%struct.TYPE_10__** %65, i8** %69)
  %71 = bitcast i8* %70 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %71, %struct.TYPE_10__** %17, align 8
  %72 = load i64*, i64** %15, align 8
  %73 = load i64, i64* %16, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %18, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %78 = load i64, i64* %18, align 8
  %79 = call %struct.TYPE_10__* @apr_pmemdup(i32* %76, %struct.TYPE_10__* %77, i64 %78)
  store %struct.TYPE_10__* %79, %struct.TYPE_10__** %19, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = bitcast i32* %82 to i8**
  %84 = call i32 @svn_temp_deserializer__resolve(%struct.TYPE_10__* %80, i8** %83)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = bitcast i32* %87 to i32**
  %89 = call i32 @svn_fs_fs__id_deserialize(%struct.TYPE_10__* %85, i32** %88)
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %91 = load i8**, i8*** %6, align 8
  %92 = bitcast i8** %91 to %struct.TYPE_10__**
  store %struct.TYPE_10__* %90, %struct.TYPE_10__** %92, align 8
  br label %93

93:                                               ; preds = %64, %59, %5
  %94 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %94
}

declare dso_local i8* @svn_temp_deserializer__ptr(%struct.TYPE_10__**, i8**) #1

declare dso_local i64 @find_entry(%struct.TYPE_10__**, i32, i32, i64*) #1

declare dso_local %struct.TYPE_10__* @apr_pmemdup(i32*, %struct.TYPE_10__*, i64) #1

declare dso_local i32 @svn_temp_deserializer__resolve(%struct.TYPE_10__*, i8**) #1

declare dso_local i32 @svn_fs_fs__id_deserialize(%struct.TYPE_10__*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
