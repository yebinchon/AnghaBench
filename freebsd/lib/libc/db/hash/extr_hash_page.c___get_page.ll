; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash_page.c___get_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash_page.c___get_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@EFTYPE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@BYTE_ORDER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__get_page(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %14, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %32, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29, %6
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @PAGE_INIT(i8* %33)
  store i32 0, i32* %7, align 4
  br label %139

35:                                               ; preds = %29
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @BUCKET_TO_PAGE(i32 %39)
  store i32 %40, i32* %15, align 4
  br label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @OADDR_TO_PAGE(i32 %42)
  store i32 %43, i32* %15, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %14, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = shl i32 %48, %51
  %53 = call i32 @pread(i32 %45, i8* %46, i32 %47, i32 %52)
  store i32 %53, i32* %17, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  store i32 -1, i32* %7, align 4
  br label %139

56:                                               ; preds = %44
  %57 = load i8*, i8** %9, align 8
  %58 = bitcast i8* %57 to i32*
  store i32* %58, i32** %18, align 8
  %59 = load i32, i32* %17, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32*, i32** %18, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 0, i32* %63, align 4
  br label %71

64:                                               ; preds = %56
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @EFTYPE, align 4
  store i32 %69, i32* @errno, align 4
  store i32 -1, i32* %7, align 4
  br label %139

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %61
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %71
  %75 = load i32*, i32** %18, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @PAGE_INIT(i8* %80)
  br label %138

82:                                               ; preds = %74, %71
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @BYTE_ORDER, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %137

88:                                               ; preds = %82
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %112

91:                                               ; preds = %88
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 2
  store i32 %95, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %96

96:                                               ; preds = %108, %91
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* %20, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %96
  %101 = load i8*, i8** %9, align 8
  %102 = bitcast i8* %101 to i32*
  %103 = load i32, i32* %19, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @M_32_SWAP(i32 %106)
  br label %108

108:                                              ; preds = %100
  %109 = load i32, i32* %19, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %19, align 4
  br label %96

111:                                              ; preds = %96
  br label %136

112:                                              ; preds = %88
  %113 = load i32*, i32** %18, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @M_16_SWAP(i32 %115)
  %117 = load i32*, i32** %18, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 2
  store i32 %120, i32* %20, align 4
  store i32 1, i32* %19, align 4
  br label %121

121:                                              ; preds = %132, %112
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* %20, align 4
  %124 = icmp sle i32 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %121
  %126 = load i32*, i32** %18, align 8
  %127 = load i32, i32* %19, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @M_16_SWAP(i32 %130)
  br label %132

132:                                              ; preds = %125
  %133 = load i32, i32* %19, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %19, align 4
  br label %121

135:                                              ; preds = %121
  br label %136

136:                                              ; preds = %135, %111
  br label %137

137:                                              ; preds = %136, %82
  br label %138

138:                                              ; preds = %137, %79
  store i32 0, i32* %7, align 4
  br label %139

139:                                              ; preds = %138, %68, %55, %32
  %140 = load i32, i32* %7, align 4
  ret i32 %140
}

declare dso_local i32 @PAGE_INIT(i8*) #1

declare dso_local i32 @BUCKET_TO_PAGE(i32) #1

declare dso_local i32 @OADDR_TO_PAGE(i32) #1

declare dso_local i32 @pread(i32, i8*, i32, i32) #1

declare dso_local i32 @M_32_SWAP(i32) #1

declare dso_local i32 @M_16_SWAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
