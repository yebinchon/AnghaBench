; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libdivsufsort/lib/extr_divsufsort.c_divbwt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libdivsufsort/lib/extr_divsufsort.c_divbwt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUCKET_A_SIZE = common dso_local global i32 0, align 4
@BUCKET_B_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @divbwt(i64* %0, i64* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i64*, i64** %6, align 8
  %17 = icmp eq i64* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = load i64*, i64** %7, align 8
  %20 = icmp eq i64* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18, %4
  store i32 -1, i32* %5, align 4
  br label %150

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = icmp sle i32 %26, 1
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i64*, i64** %6, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %31, %28
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %5, align 4
  br label %150

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39
  %41 = load i32*, i32** %8, align 8
  store i32* %41, i32** %10, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = call i64 @malloc(i32 %48)
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %10, align 8
  br label %51

51:                                               ; preds = %43, %40
  %52 = load i32, i32* @BUCKET_A_SIZE, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = call i64 @malloc(i32 %55)
  %57 = inttoptr i64 %56 to i32*
  store i32* %57, i32** %11, align 8
  %58 = load i32, i32* @BUCKET_B_SIZE, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = call i64 @malloc(i32 %61)
  %63 = inttoptr i64 %62 to i32*
  store i32* %63, i32** %12, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %137

66:                                               ; preds = %51
  %67 = load i32*, i32** %11, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %137

69:                                               ; preds = %66
  %70 = load i32*, i32** %12, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %137

72:                                               ; preds = %69
  %73 = load i64*, i64** %6, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @sort_typeBstar(i64* %73, i32* %74, i32* %75, i32* %76, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i64*, i64** %6, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @construct_BWT(i64* %79, i32* %80, i32* %81, i32* %82, i32 %83, i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load i64*, i64** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %86, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %7, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  store i64 %91, i64* %93, align 8
  store i32 0, i32* %15, align 4
  br label %94

94:                                               ; preds = %110, %72
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %94
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64*, i64** %7, align 8
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %105, i64 %108
  store i64 %104, i64* %109, align 8
  br label %110

110:                                              ; preds = %98
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %15, align 4
  br label %94

113:                                              ; preds = %94
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %15, align 4
  br label %116

116:                                              ; preds = %131, %113
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %134

120:                                              ; preds = %116
  %121 = load i32*, i32** %10, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = load i64*, i64** %7, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  store i64 %126, i64* %130, align 8
  br label %131

131:                                              ; preds = %120
  %132 = load i32, i32* %15, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %15, align 4
  br label %116

134:                                              ; preds = %116
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %14, align 4
  br label %138

137:                                              ; preds = %69, %66, %51
  store i32 -2, i32* %14, align 4
  br label %138

138:                                              ; preds = %137, %134
  %139 = load i32*, i32** %12, align 8
  %140 = call i32 @free(i32* %139)
  %141 = load i32*, i32** %11, align 8
  %142 = call i32 @free(i32* %141)
  %143 = load i32*, i32** %8, align 8
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %138
  %146 = load i32*, i32** %10, align 8
  %147 = call i32 @free(i32* %146)
  br label %148

148:                                              ; preds = %145, %138
  %149 = load i32, i32* %14, align 4
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %148, %37, %24
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @sort_typeBstar(i64*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @construct_BWT(i64*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
