; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandoc_xr.c_mandoc_xr_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandoc_xr.c_mandoc_xr_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mandoc_xr = type { i8*, i8*, i8*, i32, i32, i32, %struct.mandoc_xr* }

@xr_hash = common dso_local global i32* null, align 8
@xr_first = common dso_local global %struct.mandoc_xr* null, align 8
@xr_last = common dso_local global %struct.mandoc_xr* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mandoc_xr_add(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mandoc_xr*, align 8
  %11 = alloca %struct.mandoc_xr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32*, i32** @xr_hash, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %134

22:                                               ; preds = %4
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %13, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* %14, align 8
  %33 = add i64 %31, %32
  store i64 %33, i64* %15, align 8
  %34 = load i64, i64* %15, align 8
  %35 = add i64 48, %34
  %36 = trunc i64 %35 to i32
  %37 = call %struct.mandoc_xr* @mandoc_malloc(i32 %36)
  store %struct.mandoc_xr* %37, %struct.mandoc_xr** %10, align 8
  %38 = load %struct.mandoc_xr*, %struct.mandoc_xr** %10, align 8
  %39 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %38, i32 0, i32 6
  store %struct.mandoc_xr* null, %struct.mandoc_xr** %39, align 8
  %40 = load %struct.mandoc_xr*, %struct.mandoc_xr** %10, align 8
  %41 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.mandoc_xr*, %struct.mandoc_xr** %10, align 8
  %44 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.mandoc_xr*, %struct.mandoc_xr** %10, align 8
  %46 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load i64, i64* %13, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load %struct.mandoc_xr*, %struct.mandoc_xr** %10, align 8
  %51 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.mandoc_xr*, %struct.mandoc_xr** %10, align 8
  %54 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.mandoc_xr*, %struct.mandoc_xr** %10, align 8
  %57 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.mandoc_xr*, %struct.mandoc_xr** %10, align 8
  %59 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %58, i32 0, i32 5
  store i32 1, i32* %59, align 8
  %60 = load %struct.mandoc_xr*, %struct.mandoc_xr** %10, align 8
  %61 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* %13, align 8
  %65 = call i32 @memcpy(i8* %62, i8* %63, i64 %64)
  %66 = load %struct.mandoc_xr*, %struct.mandoc_xr** %10, align 8
  %67 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i64, i64* %14, align 8
  %71 = call i32 @memcpy(i8* %68, i8* %69, i64 %70)
  %72 = load %struct.mandoc_xr*, %struct.mandoc_xr** %10, align 8
  %73 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i64, i64* %15, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %12, align 8
  %77 = load %struct.mandoc_xr*, %struct.mandoc_xr** %10, align 8
  %78 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @ohash_interval(i8* %79, i8** %12)
  store i32 %80, i32* %18, align 4
  %81 = load i32*, i32** @xr_hash, align 8
  %82 = load %struct.mandoc_xr*, %struct.mandoc_xr** %10, align 8
  %83 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load i64, i64* %15, align 8
  %86 = load i32, i32* %18, align 4
  %87 = call i32 @ohash_lookup_memory(i32* %81, i8* %84, i64 %85, i32 %86)
  store i32 %87, i32* %16, align 4
  %88 = load i32*, i32** @xr_hash, align 8
  %89 = load i32, i32* %16, align 4
  %90 = call %struct.mandoc_xr* @ohash_find(i32* %88, i32 %89)
  store %struct.mandoc_xr* %90, %struct.mandoc_xr** %11, align 8
  %91 = icmp eq %struct.mandoc_xr* %90, null
  br i1 %91, label %92, label %107

92:                                               ; preds = %22
  %93 = load i32*, i32** @xr_hash, align 8
  %94 = load i32, i32* %16, align 4
  %95 = load %struct.mandoc_xr*, %struct.mandoc_xr** %10, align 8
  %96 = call i32 @ohash_insert(i32* %93, i32 %94, %struct.mandoc_xr* %95)
  %97 = load %struct.mandoc_xr*, %struct.mandoc_xr** @xr_first, align 8
  %98 = icmp eq %struct.mandoc_xr* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load %struct.mandoc_xr*, %struct.mandoc_xr** %10, align 8
  store %struct.mandoc_xr* %100, %struct.mandoc_xr** @xr_first, align 8
  br label %105

101:                                              ; preds = %92
  %102 = load %struct.mandoc_xr*, %struct.mandoc_xr** %10, align 8
  %103 = load %struct.mandoc_xr*, %struct.mandoc_xr** @xr_last, align 8
  %104 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %103, i32 0, i32 6
  store %struct.mandoc_xr* %102, %struct.mandoc_xr** %104, align 8
  br label %105

105:                                              ; preds = %101, %99
  %106 = load %struct.mandoc_xr*, %struct.mandoc_xr** %10, align 8
  store %struct.mandoc_xr* %106, %struct.mandoc_xr** @xr_last, align 8
  store i32 0, i32* %5, align 4
  br label %134

107:                                              ; preds = %22
  %108 = load %struct.mandoc_xr*, %struct.mandoc_xr** %11, align 8
  %109 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  %112 = load %struct.mandoc_xr*, %struct.mandoc_xr** %11, align 8
  %113 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, -1
  %116 = zext i1 %115 to i32
  %117 = load %struct.mandoc_xr*, %struct.mandoc_xr** %10, align 8
  %118 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, -1
  %121 = zext i1 %120 to i32
  %122 = xor i32 %116, %121
  store i32 %122, i32* %17, align 4
  %123 = load %struct.mandoc_xr*, %struct.mandoc_xr** %10, align 8
  %124 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %130

127:                                              ; preds = %107
  %128 = load %struct.mandoc_xr*, %struct.mandoc_xr** %11, align 8
  %129 = getelementptr inbounds %struct.mandoc_xr, %struct.mandoc_xr* %128, i32 0, i32 3
  store i32 -1, i32* %129, align 8
  br label %130

130:                                              ; preds = %127, %107
  %131 = load %struct.mandoc_xr*, %struct.mandoc_xr** %10, align 8
  %132 = call i32 @free(%struct.mandoc_xr* %131)
  %133 = load i32, i32* %17, align 4
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %130, %105, %21
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.mandoc_xr* @mandoc_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @ohash_interval(i8*, i8**) #1

declare dso_local i32 @ohash_lookup_memory(i32*, i8*, i64, i32) #1

declare dso_local %struct.mandoc_xr* @ohash_find(i32*, i32) #1

declare dso_local i32 @ohash_insert(i32*, i32, %struct.mandoc_xr*) #1

declare dso_local i32 @free(%struct.mandoc_xr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
