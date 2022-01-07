; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_set_standard_lookup.c_lookup_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_set_standard_lookup.c_lookup_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name_cache = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i8*, i32 }

@NO_NAME = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.name_cache*, i8* (%struct.name_cache*, i32)*, i32)* @lookup_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lookup_name(%struct.name_cache* %0, i8* (%struct.name_cache*, i32)* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.name_cache*, align 8
  %6 = alloca i8* (%struct.name_cache*, i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.name_cache* %0, %struct.name_cache** %5, align 8
  store i8* (%struct.name_cache*, i32)* %1, i8* (%struct.name_cache*, i32)** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.name_cache*, %struct.name_cache** %5, align 8
  %11 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.name_cache*, %struct.name_cache** %5, align 8
  %16 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = srem i32 %14, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.name_cache*, %struct.name_cache** %5, align 8
  %20 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %95

28:                                               ; preds = %3
  %29 = load %struct.name_cache*, %struct.name_cache** %5, align 8
  %30 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %28
  %40 = load %struct.name_cache*, %struct.name_cache** %5, align 8
  %41 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load %struct.name_cache*, %struct.name_cache** %5, align 8
  %45 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** @NO_NAME, align 8
  %53 = icmp eq i8* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  store i8* null, i8** %4, align 8
  br label %144

55:                                               ; preds = %39
  %56 = load %struct.name_cache*, %struct.name_cache** %5, align 8
  %57 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %4, align 8
  br label %144

64:                                               ; preds = %28
  %65 = load %struct.name_cache*, %struct.name_cache** %5, align 8
  %66 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i8*, i8** @NO_NAME, align 8
  %74 = icmp ne i8* %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %64
  %76 = load %struct.name_cache*, %struct.name_cache** %5, align 8
  %77 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = ptrtoint i8* %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 @free(i8* %85)
  br label %87

87:                                               ; preds = %75, %64
  %88 = load %struct.name_cache*, %struct.name_cache** %5, align 8
  %89 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i8* null, i8** %94, align 8
  br label %95

95:                                               ; preds = %87, %3
  %96 = load i8* (%struct.name_cache*, i32)*, i8* (%struct.name_cache*, i32)** %6, align 8
  %97 = load %struct.name_cache*, %struct.name_cache** %5, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i8* %96(%struct.name_cache* %97, i32 %98)
  store i8* %99, i8** %8, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %119

102:                                              ; preds = %95
  %103 = load i8*, i8** @NO_NAME, align 8
  %104 = load %struct.name_cache*, %struct.name_cache** %5, align 8
  %105 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i8* %103, i8** %110, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.name_cache*, %struct.name_cache** %5, align 8
  %113 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %112, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  store i32 %111, i32* %118, align 8
  store i8* null, i8** %4, align 8
  br label %144

119:                                              ; preds = %95
  %120 = load i8*, i8** %8, align 8
  %121 = load %struct.name_cache*, %struct.name_cache** %5, align 8
  %122 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  store i8* %120, i8** %127, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.name_cache*, %struct.name_cache** %5, align 8
  %130 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %129, i32 0, i32 1
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  store i32 %128, i32* %135, align 8
  %136 = load %struct.name_cache*, %struct.name_cache** %5, align 8
  %137 = getelementptr inbounds %struct.name_cache, %struct.name_cache* %136, i32 0, i32 1
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  store i8* %143, i8** %4, align 8
  br label %144

144:                                              ; preds = %119, %102, %55, %54
  %145 = load i8*, i8** %4, align 8
  ret i8* %145
}

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
