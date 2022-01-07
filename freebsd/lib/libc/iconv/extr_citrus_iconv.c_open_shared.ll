; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_iconv.c_open_shared.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_iconv.c_open_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_iconv_shared = type { %struct.TYPE_3__*, i32*, i8*, i32* }
%struct.TYPE_3__ = type { i32 (%struct._citrus_iconv_shared*, i8*, i8*)*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [10 x i8] c"iconv_std\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"iconv\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._citrus_iconv_shared**, i8*, i8*, i8*)* @open_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_shared(%struct._citrus_iconv_shared** noalias %0, i8* noalias %1, i8* noalias %2, i8* noalias %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._citrus_iconv_shared**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._citrus_iconv_shared*, align 8
  %11 = alloca i32 (%struct.TYPE_3__*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct._citrus_iconv_shared** %0, %struct._citrus_iconv_shared*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %13, align 8
  %17 = load i64, i64* %13, align 8
  %18 = add i64 32, %17
  %19 = add i64 %18, 1
  %20 = trunc i64 %19 to i32
  %21 = call i8* @malloc(i32 %20)
  %22 = bitcast i8* %21 to %struct._citrus_iconv_shared*
  store %struct._citrus_iconv_shared* %22, %struct._citrus_iconv_shared** %10, align 8
  %23 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %10, align 8
  %24 = icmp ne %struct._citrus_iconv_shared* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @errno, align 4
  store i32 %26, i32* %14, align 4
  br label %137

27:                                               ; preds = %4
  %28 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %10, align 8
  %29 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %10, align 8
  %31 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %30, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %31, align 8
  %32 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %10, align 8
  %33 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %32, i32 0, i32 3
  store i32* null, i32** %33, align 8
  %34 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %10, align 8
  %35 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %34, i64 1
  %36 = bitcast %struct._citrus_iconv_shared* %35 to i8*
  %37 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %10, align 8
  %38 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %10, align 8
  %40 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %13, align 8
  %44 = add i64 %43, 1
  %45 = call i32 @memcpy(i8* %41, i8* %42, i64 %44)
  %46 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %10, align 8
  %47 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %46, i32 0, i32 1
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @_citrus_load_module(i32** %47, i8* %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %27
  br label %137

53:                                               ; preds = %27
  %54 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %10, align 8
  %55 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = call i64 @_citrus_find_getops(i32* %56, i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %59 = inttoptr i64 %58 to i32 (%struct.TYPE_3__*)*
  store i32 (%struct.TYPE_3__*)* %59, i32 (%struct.TYPE_3__*)** %11, align 8
  %60 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %11, align 8
  %61 = icmp ne i32 (%struct.TYPE_3__*)* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %63, i32* %14, align 4
  br label %137

64:                                               ; preds = %53
  %65 = call i8* @malloc(i32 40)
  %66 = bitcast i8* %65 to %struct.TYPE_3__*
  %67 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %10, align 8
  %68 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %67, i32 0, i32 0
  store %struct.TYPE_3__* %66, %struct.TYPE_3__** %68, align 8
  %69 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %10, align 8
  %70 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = icmp ne %struct.TYPE_3__* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %64
  %74 = load i32, i32* @errno, align 4
  store i32 %74, i32* %14, align 4
  br label %137

75:                                               ; preds = %64
  %76 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %11, align 8
  %77 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %10, align 8
  %78 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = call i32 %76(%struct.TYPE_3__* %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %137

84:                                               ; preds = %75
  %85 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %10, align 8
  %86 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32 (%struct._citrus_iconv_shared*, i8*, i8*)*, i32 (%struct._citrus_iconv_shared*, i8*, i8*)** %88, align 8
  %90 = icmp eq i32 (%struct._citrus_iconv_shared*, i8*, i8*)* %89, null
  br i1 %90, label %119, label %91

91:                                               ; preds = %84
  %92 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %10, align 8
  %93 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %119, label %98

98:                                               ; preds = %91
  %99 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %10, align 8
  %100 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %99, i32 0, i32 0
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %119, label %105

105:                                              ; preds = %98
  %106 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %10, align 8
  %107 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %106, i32 0, i32 0
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %119, label %112

112:                                              ; preds = %105
  %113 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %10, align 8
  %114 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %113, i32 0, i32 0
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %112, %105, %98, %91, %84
  %120 = load i32, i32* @EINVAL, align 4
  store i32 %120, i32* %14, align 4
  br label %137

121:                                              ; preds = %112
  %122 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %10, align 8
  %123 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %122, i32 0, i32 0
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32 (%struct._citrus_iconv_shared*, i8*, i8*)*, i32 (%struct._citrus_iconv_shared*, i8*, i8*)** %125, align 8
  %127 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %10, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = call i32 %126(%struct._citrus_iconv_shared* %127, i8* %128, i8* %129)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %121
  br label %137

134:                                              ; preds = %121
  %135 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %10, align 8
  %136 = load %struct._citrus_iconv_shared**, %struct._citrus_iconv_shared*** %6, align 8
  store %struct._citrus_iconv_shared* %135, %struct._citrus_iconv_shared** %136, align 8
  store i32 0, i32* %5, align 4
  br label %141

137:                                              ; preds = %133, %119, %83, %73, %62, %52, %25
  %138 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %10, align 8
  %139 = call i32 @close_shared(%struct._citrus_iconv_shared* %138)
  %140 = load i32, i32* %14, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %137, %134
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @_citrus_load_module(i32**, i8*) #1

declare dso_local i64 @_citrus_find_getops(i32*, i8*, i8*) #1

declare dso_local i32 @close_shared(%struct._citrus_iconv_shared*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
