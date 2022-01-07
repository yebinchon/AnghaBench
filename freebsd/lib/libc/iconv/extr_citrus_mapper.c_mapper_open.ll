; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_mapper.c_mapper_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_mapper.c_mapper_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_mapper_area = type { i32 }
%struct._citrus_mapper = type { i32*, %struct.TYPE_3__*, i32*, i32*, i64, i32* }
%struct.TYPE_3__ = type { i32 (%struct._citrus_mapper_area*, %struct._citrus_mapper*, i32, i8*, i64, i32*, i32)*, i32, i32, i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"mapper\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._citrus_mapper_area*, %struct._citrus_mapper**, i8*, i8*)* @mapper_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mapper_open(%struct._citrus_mapper_area* noalias %0, %struct._citrus_mapper** noalias %1, i8* noalias %2, i8* noalias %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._citrus_mapper_area*, align 8
  %7 = alloca %struct._citrus_mapper**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._citrus_mapper*, align 8
  %11 = alloca i32 (%struct.TYPE_3__*)*, align 8
  %12 = alloca i32, align 4
  store %struct._citrus_mapper_area* %0, %struct._citrus_mapper_area** %6, align 8
  store %struct._citrus_mapper** %1, %struct._citrus_mapper*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = call i8* @malloc(i32 48)
  %14 = bitcast i8* %13 to %struct._citrus_mapper*
  store %struct._citrus_mapper* %14, %struct._citrus_mapper** %10, align 8
  %15 = load %struct._citrus_mapper*, %struct._citrus_mapper** %10, align 8
  %16 = icmp ne %struct._citrus_mapper* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @errno, align 4
  store i32 %18, i32* %5, align 4
  br label %140

19:                                               ; preds = %4
  %20 = load %struct._citrus_mapper*, %struct._citrus_mapper** %10, align 8
  %21 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct._citrus_mapper*, %struct._citrus_mapper** %10, align 8
  %23 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %22, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %23, align 8
  %24 = load %struct._citrus_mapper*, %struct._citrus_mapper** %10, align 8
  %25 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %24, i32 0, i32 5
  store i32* null, i32** %25, align 8
  %26 = load %struct._citrus_mapper*, %struct._citrus_mapper** %10, align 8
  %27 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct._citrus_mapper*, %struct._citrus_mapper** %10, align 8
  %29 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct._citrus_mapper*, %struct._citrus_mapper** %10, align 8
  %31 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %30, i32 0, i32 3
  store i32* null, i32** %31, align 8
  %32 = load %struct._citrus_mapper*, %struct._citrus_mapper** %10, align 8
  %33 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %32, i32 0, i32 2
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @_citrus_load_module(i32** %33, i8* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %19
  br label %136

39:                                               ; preds = %19
  %40 = load %struct._citrus_mapper*, %struct._citrus_mapper** %10, align 8
  %41 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @_citrus_find_getops(i32* %42, i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %45 = inttoptr i64 %44 to i32 (%struct.TYPE_3__*)*
  store i32 (%struct.TYPE_3__*)* %45, i32 (%struct.TYPE_3__*)** %11, align 8
  %46 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %11, align 8
  %47 = icmp ne i32 (%struct.TYPE_3__*)* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %49, i32* %12, align 4
  br label %136

50:                                               ; preds = %39
  %51 = call i8* @malloc(i32 24)
  %52 = bitcast i8* %51 to %struct.TYPE_3__*
  %53 = load %struct._citrus_mapper*, %struct._citrus_mapper** %10, align 8
  %54 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %53, i32 0, i32 1
  store %struct.TYPE_3__* %52, %struct.TYPE_3__** %54, align 8
  %55 = load %struct._citrus_mapper*, %struct._citrus_mapper** %10, align 8
  %56 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = icmp ne %struct.TYPE_3__* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* @errno, align 4
  store i32 %60, i32* %12, align 4
  br label %136

61:                                               ; preds = %50
  %62 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %11, align 8
  %63 = load %struct._citrus_mapper*, %struct._citrus_mapper** %10, align 8
  %64 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = call i32 %62(%struct.TYPE_3__* %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %136

70:                                               ; preds = %61
  %71 = load %struct._citrus_mapper*, %struct._citrus_mapper** %10, align 8
  %72 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32 (%struct._citrus_mapper_area*, %struct._citrus_mapper*, i32, i8*, i64, i32*, i32)*, i32 (%struct._citrus_mapper_area*, %struct._citrus_mapper*, i32, i8*, i64, i32*, i32)** %74, align 8
  %76 = icmp ne i32 (%struct._citrus_mapper_area*, %struct._citrus_mapper*, i32, i8*, i64, i32*, i32)* %75, null
  br i1 %76, label %77, label %98

77:                                               ; preds = %70
  %78 = load %struct._citrus_mapper*, %struct._citrus_mapper** %10, align 8
  %79 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %77
  %85 = load %struct._citrus_mapper*, %struct._citrus_mapper** %10, align 8
  %86 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %84
  %92 = load %struct._citrus_mapper*, %struct._citrus_mapper** %10, align 8
  %93 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %92, i32 0, i32 1
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %91, %84, %77, %70
  %99 = load i32, i32* @EINVAL, align 4
  store i32 %99, i32* %12, align 4
  br label %136

100:                                              ; preds = %91
  %101 = call i8* @malloc(i32 4)
  %102 = bitcast i8* %101 to i32*
  %103 = load %struct._citrus_mapper*, %struct._citrus_mapper** %10, align 8
  %104 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %103, i32 0, i32 0
  store i32* %102, i32** %104, align 8
  %105 = load %struct._citrus_mapper*, %struct._citrus_mapper** %10, align 8
  %106 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = load i32, i32* @errno, align 4
  store i32 %110, i32* %12, align 4
  br label %136

111:                                              ; preds = %100
  %112 = load %struct._citrus_mapper*, %struct._citrus_mapper** %10, align 8
  %113 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %112, i32 0, i32 1
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32 (%struct._citrus_mapper_area*, %struct._citrus_mapper*, i32, i8*, i64, i32*, i32)*, i32 (%struct._citrus_mapper_area*, %struct._citrus_mapper*, i32, i8*, i64, i32*, i32)** %115, align 8
  %117 = load %struct._citrus_mapper_area*, %struct._citrus_mapper_area** %6, align 8
  %118 = load %struct._citrus_mapper*, %struct._citrus_mapper** %10, align 8
  %119 = load %struct._citrus_mapper_area*, %struct._citrus_mapper_area** %6, align 8
  %120 = getelementptr inbounds %struct._citrus_mapper_area, %struct._citrus_mapper_area* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %9, align 8
  %123 = load i8*, i8** %9, align 8
  %124 = call i64 @strlen(i8* %123)
  %125 = add nsw i64 %124, 1
  %126 = load %struct._citrus_mapper*, %struct._citrus_mapper** %10, align 8
  %127 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 %116(%struct._citrus_mapper_area* %117, %struct._citrus_mapper* %118, i32 %121, i8* %122, i64 %125, i32* %128, i32 4)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %111
  br label %136

133:                                              ; preds = %111
  %134 = load %struct._citrus_mapper*, %struct._citrus_mapper** %10, align 8
  %135 = load %struct._citrus_mapper**, %struct._citrus_mapper*** %7, align 8
  store %struct._citrus_mapper* %134, %struct._citrus_mapper** %135, align 8
  store i32 0, i32* %5, align 4
  br label %140

136:                                              ; preds = %132, %109, %98, %69, %59, %48, %38
  %137 = load %struct._citrus_mapper*, %struct._citrus_mapper** %10, align 8
  %138 = call i32 @mapper_close(%struct._citrus_mapper* %137)
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %136, %133, %17
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @_citrus_load_module(i32**, i8*) #1

declare dso_local i64 @_citrus_find_getops(i32*, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mapper_close(%struct._citrus_mapper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
