; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_datagen.c_RDG_genBlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_datagen.c_RDG_genBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, double, i32*, i64*)* @RDG_genBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RDG_genBlock(i8* %0, i64 %1, i64 %2, double %3, i32* %4, i64* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store double %3, double* %10, align 8
  store i32* %4, i32** %11, align 8
  store i64* %5, i64** %12, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %13, align 8
  %28 = load double, double* %10, align 8
  %29 = fmul double 3.276800e+04, %28
  %30 = fptosi double %29 to i64
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %9, align 8
  store i64 %31, i64* %15, align 8
  store i64 1, i64* %16, align 8
  br label %32

32:                                               ; preds = %65, %6
  %33 = load double, double* %10, align 8
  %34 = fcmp oge double %33, 1.000000e+00
  br i1 %34, label %35, label %81

35:                                               ; preds = %32
  %36 = load i64*, i64** %12, align 8
  %37 = call i32 @RDG_rand(i64* %36)
  %38 = and i32 %37, 3
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %17, align 8
  %40 = load i64, i64* %17, align 8
  %41 = mul i64 %40, 2
  %42 = add i64 16, %41
  %43 = shl i64 1, %42
  store i64 %43, i64* %17, align 8
  %44 = load i64*, i64** %12, align 8
  %45 = call i32 @RDG_rand(i64* %44)
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %17, align 8
  %48 = sub i64 %47, 1
  %49 = and i64 %46, %48
  %50 = load i64, i64* %17, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %17, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %17, align 8
  %55 = add i64 %53, %54
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %35
  %58 = load i32*, i32** %13, align 8
  %59 = load i64, i64* %15, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %15, align 8
  %63 = sub i64 %61, %62
  %64 = call i32 @memset(i32* %60, i32 0, i64 %63)
  br label %169

65:                                               ; preds = %35
  %66 = load i32*, i32** %13, align 8
  %67 = load i64, i64* %15, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i64, i64* %17, align 8
  %70 = call i32 @memset(i32* %68, i32 0, i64 %69)
  %71 = load i64, i64* %17, align 8
  %72 = load i64, i64* %15, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %15, align 8
  %74 = load i64*, i64** %12, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @RDG_genChar(i64* %74, i32* %75)
  %77 = load i32*, i32** %13, align 8
  %78 = load i64, i64* %15, align 8
  %79 = sub i64 %78, 1
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  br label %32

81:                                               ; preds = %32
  %82 = load i64, i64* %15, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i64*, i64** %12, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @RDG_genChar(i64* %85, i32* %86)
  %88 = load i32*, i32** %13, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %87, i32* %89, align 4
  store i64 1, i64* %15, align 8
  br label %90

90:                                               ; preds = %84, %81
  br label %91

91:                                               ; preds = %168, %90
  %92 = load i64, i64* %15, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %169

95:                                               ; preds = %91
  %96 = load i64*, i64** %12, align 8
  %97 = call i64 @RDG_rand15Bits(i64* %96)
  %98 = load i64, i64* %14, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %147

100:                                              ; preds = %95
  %101 = load i64*, i64** %12, align 8
  %102 = call i64 @RDG_randLength(i64* %101)
  %103 = add nsw i64 %102, 4
  store i64 %103, i64* %18, align 8
  %104 = load i64, i64* %15, align 8
  %105 = load i64, i64* %18, align 8
  %106 = add i64 %104, %105
  %107 = load i64, i64* %8, align 8
  %108 = call i64 @MIN(i64 %106, i64 %107)
  store i64 %108, i64* %19, align 8
  %109 = load i64*, i64** %12, align 8
  %110 = call i32 @RDG_rand(i64* %109)
  %111 = and i32 %110, 15
  %112 = icmp eq i32 %111, 2
  %113 = zext i1 %112 to i32
  %114 = sext i32 %113 to i64
  store i64 %114, i64* %20, align 8
  %115 = load i64*, i64** %12, align 8
  %116 = call i64 @RDG_rand15Bits(i64* %115)
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %21, align 8
  %118 = load i64, i64* %20, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %100
  %121 = load i64, i64* %16, align 8
  br label %126

122:                                              ; preds = %100
  %123 = load i64, i64* %21, align 8
  %124 = load i64, i64* %15, align 8
  %125 = call i64 @MIN(i64 %123, i64 %124)
  br label %126

126:                                              ; preds = %122, %120
  %127 = phi i64 [ %121, %120 ], [ %125, %122 ]
  store i64 %127, i64* %22, align 8
  %128 = load i64, i64* %15, align 8
  %129 = load i64, i64* %22, align 8
  %130 = sub i64 %128, %129
  store i64 %130, i64* %23, align 8
  br label %131

131:                                              ; preds = %135, %126
  %132 = load i64, i64* %15, align 8
  %133 = load i64, i64* %19, align 8
  %134 = icmp ult i64 %132, %133
  br i1 %134, label %135, label %145

135:                                              ; preds = %131
  %136 = load i32*, i32** %13, align 8
  %137 = load i64, i64* %23, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %23, align 8
  %139 = getelementptr inbounds i32, i32* %136, i64 %137
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %13, align 8
  %142 = load i64, i64* %15, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %15, align 8
  %144 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32 %140, i32* %144, align 4
  br label %131

145:                                              ; preds = %131
  %146 = load i64, i64* %22, align 8
  store i64 %146, i64* %16, align 8
  br label %168

147:                                              ; preds = %95
  %148 = load i64*, i64** %12, align 8
  %149 = call i64 @RDG_randLength(i64* %148)
  store i64 %149, i64* %24, align 8
  %150 = load i64, i64* %15, align 8
  %151 = load i64, i64* %24, align 8
  %152 = add i64 %150, %151
  %153 = load i64, i64* %8, align 8
  %154 = call i64 @MIN(i64 %152, i64 %153)
  store i64 %154, i64* %25, align 8
  br label %155

155:                                              ; preds = %159, %147
  %156 = load i64, i64* %15, align 8
  %157 = load i64, i64* %25, align 8
  %158 = icmp ult i64 %156, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %155
  %160 = load i64*, i64** %12, align 8
  %161 = load i32*, i32** %11, align 8
  %162 = call i32 @RDG_genChar(i64* %160, i32* %161)
  %163 = load i32*, i32** %13, align 8
  %164 = load i64, i64* %15, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %15, align 8
  %166 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32 %162, i32* %166, align 4
  br label %155

167:                                              ; preds = %155
  br label %168

168:                                              ; preds = %167, %145
  br label %91

169:                                              ; preds = %57, %91
  ret void
}

declare dso_local i32 @RDG_rand(i64*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @RDG_genChar(i64*, i32*) #1

declare dso_local i64 @RDG_rand15Bits(i64*) #1

declare dso_local i64 @RDG_randLength(i64*) #1

declare dso_local i64 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
