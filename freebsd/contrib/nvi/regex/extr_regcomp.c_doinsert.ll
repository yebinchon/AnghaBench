; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_doinsert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_doinsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i64, i32*, i32*, i32*, i32* }

@NPAREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32, i64, i32)* @doinsert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doinsert(%struct.parse* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.parse*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.parse*, %struct.parse** %5, align 8
  %14 = getelementptr inbounds %struct.parse, %struct.parse* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %154

18:                                               ; preds = %4
  %19 = call i32 (...) @HERE()
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @EMIT(i32 %20, i64 %21)
  %23 = call i32 (...) @HERE()
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 1
  %26 = icmp eq i32 %23, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.parse*, %struct.parse** %5, align 8
  %30 = getelementptr inbounds %struct.parse, %struct.parse* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load %struct.parse*, %struct.parse** %5, align 8
  %37 = getelementptr inbounds %struct.parse, %struct.parse* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp sgt i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  store i32 1, i32* %12, align 4
  br label %47

47:                                               ; preds = %90, %18
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @NPAREN, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %93

51:                                               ; preds = %47
  %52 = load %struct.parse*, %struct.parse** %5, align 8
  %53 = getelementptr inbounds %struct.parse, %struct.parse* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %51
  %62 = load %struct.parse*, %struct.parse** %5, align 8
  %63 = getelementptr inbounds %struct.parse, %struct.parse* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %61, %51
  %71 = load %struct.parse*, %struct.parse** %5, align 8
  %72 = getelementptr inbounds %struct.parse, %struct.parse* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %70
  %81 = load %struct.parse*, %struct.parse** %5, align 8
  %82 = getelementptr inbounds %struct.parse, %struct.parse* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %80, %70
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %47

93:                                               ; preds = %47
  %94 = load %struct.parse*, %struct.parse** %5, align 8
  %95 = getelementptr inbounds %struct.parse, %struct.parse* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = bitcast i32* %100 to i8*
  %102 = load %struct.parse*, %struct.parse** %5, align 8
  %103 = getelementptr inbounds %struct.parse, %struct.parse* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = bitcast i32* %107 to i8*
  %109 = call i32 (...) @HERE()
  %110 = load i32, i32* %8, align 4
  %111 = sub nsw i32 %109, %110
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 4
  %115 = trunc i64 %114 to i32
  %116 = call i32 @memmove(i8* %101, i8* %108, i32 %115)
  %117 = load %struct.parse*, %struct.parse** %5, align 8
  %118 = getelementptr inbounds %struct.parse, %struct.parse* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = bitcast i32* %123 to i8*
  %125 = load %struct.parse*, %struct.parse** %5, align 8
  %126 = getelementptr inbounds %struct.parse, %struct.parse* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = bitcast i32* %130 to i8*
  %132 = call i32 (...) @HERE()
  %133 = load i32, i32* %8, align 4
  %134 = sub nsw i32 %132, %133
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = mul i64 %136, 4
  %138 = trunc i64 %137 to i32
  %139 = call i32 @memmove(i8* %124, i8* %131, i32 %138)
  %140 = load i32, i32* %10, align 4
  %141 = load %struct.parse*, %struct.parse** %5, align 8
  %142 = getelementptr inbounds %struct.parse, %struct.parse* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 %140, i32* %146, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.parse*, %struct.parse** %5, align 8
  %149 = getelementptr inbounds %struct.parse, %struct.parse* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %147, i32* %153, align 4
  br label %154

154:                                              ; preds = %93, %17
  ret void
}

declare dso_local i32 @HERE(...) #1

declare dso_local i32 @EMIT(i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
