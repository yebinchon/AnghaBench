; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/quad/extr_muldi3.c___lmulq.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/quad/extr_muldi3.c___lmulq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.uu = type { i64 }

@H = common dso_local global i64 0, align 8
@L = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @__lmulq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__lmulq(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %union.uu, align 8
  %19 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @HHALF(i64 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @LHALF(i64 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @HHALF(i64 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @LHALF(i64 %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %9, align 8
  %30 = mul nsw i64 %28, %29
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i64, i64* %14, align 8
  store i64 %37, i64* %3, align 8
  br label %148

38:                                               ; preds = %33, %2
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = sub nsw i64 %43, %44
  store i64 %45, i64* %10, align 8
  store i32 0, i32* %19, align 4
  br label %50

46:                                               ; preds = %38
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %6, align 8
  %49 = sub nsw i64 %47, %48
  store i64 %49, i64* %10, align 8
  store i32 1, i32* %19, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %8, align 8
  %57 = sub nsw i64 %55, %56
  store i64 %57, i64* %11, align 8
  br label %64

58:                                               ; preds = %50
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = sub nsw i64 %59, %60
  store i64 %61, i64* %11, align 8
  %62 = load i32, i32* %19, align 4
  %63 = xor i32 %62, 1
  store i32 %63, i32* %19, align 4
  br label %64

64:                                               ; preds = %58, %54
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %11, align 8
  %67 = mul nsw i64 %65, %66
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* %8, align 8
  %70 = mul nsw i64 %68, %69
  store i64 %70, i64* %12, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call i64 @HHALF(i64 %72)
  %74 = add nsw i64 %71, %73
  store i64 %74, i64* %15, align 8
  %75 = load i64, i64* %12, align 8
  %76 = call i64 @LHUP(i64 %75)
  store i64 %76, i64* %16, align 8
  %77 = load i32, i32* %19, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %64
  %80 = load i64, i64* %16, align 8
  store i64 %80, i64* %17, align 8
  %81 = load i64, i64* %13, align 8
  %82 = call i64 @LHUP(i64 %81)
  %83 = load i64, i64* %16, align 8
  %84 = sub nsw i64 %83, %82
  store i64 %84, i64* %16, align 8
  %85 = load i64, i64* %13, align 8
  %86 = call i64 @HHALF(i64 %85)
  %87 = load i64, i64* %16, align 8
  %88 = load i64, i64* %17, align 8
  %89 = icmp sgt i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %86, %91
  %93 = load i64, i64* %15, align 8
  %94 = sub nsw i64 %93, %92
  store i64 %94, i64* %15, align 8
  br label %111

95:                                               ; preds = %64
  %96 = load i64, i64* %16, align 8
  store i64 %96, i64* %17, align 8
  %97 = load i64, i64* %13, align 8
  %98 = call i64 @LHUP(i64 %97)
  %99 = load i64, i64* %16, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %16, align 8
  %101 = load i64, i64* %13, align 8
  %102 = call i64 @HHALF(i64 %101)
  %103 = load i64, i64* %16, align 8
  %104 = load i64, i64* %17, align 8
  %105 = icmp slt i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %102, %107
  %109 = load i64, i64* %15, align 8
  %110 = add nsw i64 %109, %108
  store i64 %110, i64* %15, align 8
  br label %111

111:                                              ; preds = %95, %79
  %112 = load i64, i64* %16, align 8
  store i64 %112, i64* %17, align 8
  %113 = load i64, i64* %14, align 8
  %114 = call i64 @LHUP(i64 %113)
  %115 = load i64, i64* %16, align 8
  %116 = add nsw i64 %115, %114
  store i64 %116, i64* %16, align 8
  %117 = load i64, i64* %14, align 8
  %118 = call i64 @HHALF(i64 %117)
  %119 = load i64, i64* %16, align 8
  %120 = load i64, i64* %17, align 8
  %121 = icmp slt i64 %119, %120
  %122 = zext i1 %121 to i32
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %118, %123
  %125 = load i64, i64* %15, align 8
  %126 = add nsw i64 %125, %124
  store i64 %126, i64* %15, align 8
  %127 = load i64, i64* %14, align 8
  %128 = load i64, i64* %16, align 8
  %129 = add nsw i64 %128, %127
  store i64 %129, i64* %16, align 8
  %130 = load i64, i64* %14, align 8
  %131 = icmp slt i64 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %111
  %133 = load i64, i64* %15, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %15, align 8
  br label %135

135:                                              ; preds = %132, %111
  %136 = load i64, i64* %15, align 8
  %137 = bitcast %union.uu* %18 to i64**
  %138 = load i64*, i64** %137, align 8
  %139 = load i64, i64* @H, align 8
  %140 = getelementptr inbounds i64, i64* %138, i64 %139
  store i64 %136, i64* %140, align 8
  %141 = load i64, i64* %16, align 8
  %142 = bitcast %union.uu* %18 to i64**
  %143 = load i64*, i64** %142, align 8
  %144 = load i64, i64* @L, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  store i64 %141, i64* %145, align 8
  %146 = bitcast %union.uu* %18 to i64*
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %3, align 8
  br label %148

148:                                              ; preds = %135, %36
  %149 = load i64, i64* %3, align 8
  ret i64 %149
}

declare dso_local i64 @HHALF(i64) #1

declare dso_local i64 @LHALF(i64) #1

declare dso_local i64 @LHUP(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
