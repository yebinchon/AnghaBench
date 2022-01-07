; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_lookup_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_lookup_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpio = type { i32 }
%struct.name_cache = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"No more memory\00", align 1
@name_cache_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.cpio*, %struct.name_cache**, i32 (%struct.cpio*, i8**, i32)*, i32)* @lookup_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lookup_name(%struct.cpio* %0, %struct.name_cache** %1, i32 (%struct.cpio*, i8**, i32)* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cpio*, align 8
  %7 = alloca %struct.name_cache**, align 8
  %8 = alloca i32 (%struct.cpio*, i8**, i32)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [16 x i8], align 16
  %11 = alloca %struct.name_cache*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.cpio* %0, %struct.cpio** %6, align 8
  store %struct.name_cache** %1, %struct.name_cache*** %7, align 8
  store i32 (%struct.cpio*, i8**, i32)* %2, i32 (%struct.cpio*, i8**, i32)** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.name_cache**, %struct.name_cache*** %7, align 8
  %15 = load %struct.name_cache*, %struct.name_cache** %14, align 8
  %16 = icmp eq %struct.name_cache* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %4
  %18 = call %struct.name_cache* @calloc(i32 1, i32 24)
  %19 = load %struct.name_cache**, %struct.name_cache*** %7, align 8
  store %struct.name_cache* %18, %struct.name_cache** %19, align 8
  %20 = load %struct.name_cache**, %struct.name_cache*** %7, align 8
  %21 = load %struct.name_cache*, %struct.name_cache** %20, align 8
  %22 = icmp eq %struct.name_cache* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = call i32 @lafe_errc(i32 1, i32 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %17
  %27 = load i32, i32* @name_cache_size, align 4
  %28 = load %struct.name_cache**, %struct.name_cache*** %7, align 8
  %29 = load %struct.name_cache*, %struct.name_cache** %28, align 8
  %30 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  br label %31

31:                                               ; preds = %26, %4
  %32 = load %struct.name_cache**, %struct.name_cache*** %7, align 8
  %33 = load %struct.name_cache*, %struct.name_cache** %32, align 8
  store %struct.name_cache* %33, %struct.name_cache** %11, align 8
  %34 = load %struct.name_cache*, %struct.name_cache** %11, align 8
  %35 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.name_cache*, %struct.name_cache** %11, align 8
  %40 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = srem i32 %38, %41
  store i32 %42, i32* %13, align 4
  %43 = load %struct.name_cache*, %struct.name_cache** %11, align 8
  %44 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %93

52:                                               ; preds = %31
  %53 = load %struct.name_cache*, %struct.name_cache** %11, align 8
  %54 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %52
  %64 = load %struct.name_cache*, %struct.name_cache** %11, align 8
  %65 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = load %struct.name_cache*, %struct.name_cache** %11, align 8
  %69 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %5, align 8
  br label %141

76:                                               ; preds = %52
  %77 = load %struct.name_cache*, %struct.name_cache** %11, align 8
  %78 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @free(i8* %84)
  %86 = load %struct.name_cache*, %struct.name_cache** %11, align 8
  %87 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i8* null, i8** %92, align 8
  br label %93

93:                                               ; preds = %76, %31
  %94 = load i32 (%struct.cpio*, i8**, i32)*, i32 (%struct.cpio*, i8**, i32)** %8, align 8
  %95 = load %struct.cpio*, %struct.cpio** %6, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 %94(%struct.cpio* %95, i8** %12, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @snprintf(i8* %100, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  store i8* %103, i8** %12, align 8
  br label %104

104:                                              ; preds = %99, %93
  %105 = load i8*, i8** %12, align 8
  %106 = call i8* @strdup(i8* %105)
  %107 = load %struct.name_cache*, %struct.name_cache** %11, align 8
  %108 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i8* %106, i8** %113, align 8
  %114 = load %struct.name_cache*, %struct.name_cache** %11, align 8
  %115 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %140

123:                                              ; preds = %104
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.name_cache*, %struct.name_cache** %11, align 8
  %126 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %125, i32 0, i32 1
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  store i32 %124, i32* %131, align 8
  %132 = load %struct.name_cache*, %struct.name_cache** %11, align 8
  %133 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %132, i32 0, i32 1
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  store i8* %139, i8** %5, align 8
  br label %141

140:                                              ; preds = %104
  store i8* null, i8** %5, align 8
  br label %141

141:                                              ; preds = %140, %123, %63
  %142 = load i8*, i8** %5, align 8
  ret i8* %142
}

declare dso_local %struct.name_cache* @calloc(i32, i32) #1

declare dso_local i32 @lafe_errc(i32, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
