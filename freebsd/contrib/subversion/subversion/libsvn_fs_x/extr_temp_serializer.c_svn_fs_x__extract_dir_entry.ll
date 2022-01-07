; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_temp_serializer.c_svn_fs_x__extract_dir_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_temp_serializer.c_svn_fs_x__extract_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i64, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__extract_dir_entry(i8** %0, i8* %1, i64 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_11__**, align 8
  %17 = alloca i64*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_11__*, align 8
  store i8** %0, i8*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %12, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %13, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_11__**
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 3
  %29 = bitcast i32* %28 to i8**
  %30 = call i8* @svn_temp_deserializer__ptr(%struct.TYPE_11__** %26, i8** %29)
  %31 = bitcast i8* %30 to %struct.TYPE_11__**
  store %struct.TYPE_11__** %31, %struct.TYPE_11__*** %16, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = bitcast i8* %32 to %struct.TYPE_11__**
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = bitcast i32* %35 to i8**
  %37 = call i8* @svn_temp_deserializer__ptr(%struct.TYPE_11__** %33, i8** %36)
  %38 = bitcast i8* %37 to i64*
  store i64* %38, i64** %17, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  %46 = zext i1 %45 to i32
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i8**, i8*** %7, align 8
  store i8* null, i8** %49, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %5
  %55 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %55, i32** %6, align 8
  br label %134

56:                                               ; preds = %5
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, 1
  %64 = icmp slt i32 %59, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %56
  %66 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %16, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  %74 = call i64 @found_entry(%struct.TYPE_11__** %66, i32 %69, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %65
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %15, align 8
  %82 = load i64, i64* @TRUE, align 8
  store i64 %82, i64* %14, align 8
  br label %92

83:                                               ; preds = %65, %56
  %84 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %16, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @find_entry(%struct.TYPE_11__** %84, i32 %87, i32 %90, i64* %14)
  store i64 %91, i64* %15, align 8
  br label %92

92:                                               ; preds = %83, %76
  %93 = load i64, i64* %14, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i64, i64* %15, align 8
  %97 = trunc i64 %96 to i32
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %95, %92
  %101 = load i64, i64* %14, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %132

103:                                              ; preds = %100
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %132, label %108

108:                                              ; preds = %103
  %109 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %16, align 8
  %110 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %16, align 8
  %111 = load i64, i64* %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %110, i64 %111
  %113 = bitcast %struct.TYPE_11__** %112 to i8**
  %114 = call i8* @svn_temp_deserializer__ptr(%struct.TYPE_11__** %109, i8** %113)
  %115 = bitcast i8* %114 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %115, %struct.TYPE_11__** %18, align 8
  %116 = load i64*, i64** %17, align 8
  %117 = load i64, i64* %15, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %19, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %122 = load i64, i64* %19, align 8
  %123 = call %struct.TYPE_11__* @apr_pmemdup(i32* %120, %struct.TYPE_11__* %121, i64 %122)
  store %struct.TYPE_11__* %123, %struct.TYPE_11__** %20, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = bitcast i32* %126 to i8**
  %128 = call i32 @svn_temp_deserializer__resolve(%struct.TYPE_11__* %124, i8** %127)
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %130 = load i8**, i8*** %7, align 8
  %131 = bitcast i8** %130 to %struct.TYPE_11__**
  store %struct.TYPE_11__* %129, %struct.TYPE_11__** %131, align 8
  br label %132

132:                                              ; preds = %108, %103, %100
  %133 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %133, i32** %6, align 8
  br label %134

134:                                              ; preds = %132, %54
  %135 = load i32*, i32** %6, align 8
  ret i32* %135
}

declare dso_local i8* @svn_temp_deserializer__ptr(%struct.TYPE_11__**, i8**) #1

declare dso_local i64 @found_entry(%struct.TYPE_11__**, i32, i32) #1

declare dso_local i64 @find_entry(%struct.TYPE_11__**, i32, i32, i64*) #1

declare dso_local %struct.TYPE_11__* @apr_pmemdup(i32*, %struct.TYPE_11__*, i64) #1

declare dso_local i32 @svn_temp_deserializer__resolve(%struct.TYPE_11__*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
