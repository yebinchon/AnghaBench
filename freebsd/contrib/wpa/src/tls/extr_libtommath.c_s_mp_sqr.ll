; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_libtommath.c_s_mp_sqr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_libtommath.c_s_mp_sqr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64* }

@MP_OKAY = common dso_local global i32 0, align 4
@MP_MASK = common dso_local global i64 0, align 8
@DIGIT_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_9__*)* @s_mp_sqr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_mp_sqr(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = mul nsw i32 2, %18
  %20 = add nsw i32 %19, 1
  %21 = call i32 @mp_init_size(%struct.TYPE_9__* %6, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @MP_OKAY, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %169

26:                                               ; preds = %2
  %27 = load i32, i32* %10, align 4
  %28 = mul nsw i32 2, %27
  %29 = add nsw i32 %28, 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %160, %26
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %163

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 2, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %37, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = mul nsw i32 %51, %59
  %61 = add nsw i32 %43, %60
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i64, i64* @MP_MASK, align 8
  %64 = trunc i64 %63 to i32
  %65 = and i32 %62, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %68, i64 %72
  store i64 %66, i64* %73, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i64, i64* @DIGIT_BIT, align 8
  %76 = trunc i64 %75 to i32
  %77 = ashr i32 %74, %76
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %12, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = mul nsw i32 2, %88
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %87, i64 %91
  store i64* %92, i64** %14, align 8
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %133, %35
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %136

99:                                               ; preds = %95
  %100 = load i64, i64* %13, align 8
  %101 = trunc i64 %100 to i32
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = mul nsw i32 %101, %109
  store i32 %110, i32* %11, align 4
  %111 = load i64*, i64** %14, align 8
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i64, i64* %12, align 8
  %119 = trunc i64 %118 to i32
  %120 = add nsw i32 %117, %119
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load i64, i64* @MP_MASK, align 8
  %123 = trunc i64 %122 to i32
  %124 = and i32 %121, %123
  %125 = sext i32 %124 to i64
  %126 = load i64*, i64** %14, align 8
  %127 = getelementptr inbounds i64, i64* %126, i32 1
  store i64* %127, i64** %14, align 8
  store i64 %125, i64* %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = load i64, i64* @DIGIT_BIT, align 8
  %130 = trunc i64 %129 to i32
  %131 = ashr i32 %128, %130
  %132 = sext i32 %131 to i64
  store i64 %132, i64* %12, align 8
  br label %133

133:                                              ; preds = %99
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %95

136:                                              ; preds = %95
  br label %137

137:                                              ; preds = %140, %136
  %138 = load i64, i64* %12, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %159

140:                                              ; preds = %137
  %141 = load i64*, i64** %14, align 8
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  %144 = load i64, i64* %12, align 8
  %145 = trunc i64 %144 to i32
  %146 = add nsw i32 %143, %145
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load i64, i64* @MP_MASK, align 8
  %149 = trunc i64 %148 to i32
  %150 = and i32 %147, %149
  %151 = sext i32 %150 to i64
  %152 = load i64*, i64** %14, align 8
  %153 = getelementptr inbounds i64, i64* %152, i32 1
  store i64* %153, i64** %14, align 8
  store i64 %151, i64* %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = load i64, i64* @DIGIT_BIT, align 8
  %156 = trunc i64 %155 to i32
  %157 = ashr i32 %154, %156
  %158 = sext i32 %157 to i64
  store i64 %158, i64* %12, align 8
  br label %137

159:                                              ; preds = %137
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %31

163:                                              ; preds = %31
  %164 = call i32 @mp_clamp(%struct.TYPE_9__* %6)
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %166 = call i32 @mp_exch(%struct.TYPE_9__* %6, %struct.TYPE_9__* %165)
  %167 = call i32 @mp_clear(%struct.TYPE_9__* %6)
  %168 = load i32, i32* @MP_OKAY, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %163, %24
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @mp_init_size(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @mp_clamp(%struct.TYPE_9__*) #1

declare dso_local i32 @mp_exch(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @mp_clear(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
