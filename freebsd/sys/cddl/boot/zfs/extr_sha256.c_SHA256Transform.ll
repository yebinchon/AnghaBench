; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/boot/zfs/extr_sha256.c_SHA256Transform.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/boot/zfs/extr_sha256.c_SHA256Transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA256_K = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @SHA256Transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SHA256Transform(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [64 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %42, %2
  %18 = load i32, i32* %13, align 4
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %47

20:                                               ; preds = %17
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 24
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 16
  %29 = or i32 %24, %28
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 8
  %34 = or i32 %29, %33
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %34, %37
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 %40
  store i32 %38, i32* %41, align 4
  br label %42

42:                                               ; preds = %20
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %13, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  store i32* %46, i32** %4, align 8
  br label %17

47:                                               ; preds = %17
  store i32 16, i32* %13, align 4
  br label %48

48:                                               ; preds = %80, %47
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %49, 64
  br i1 %50, label %51, label %83

51:                                               ; preds = %48
  %52 = load i32, i32* %13, align 4
  %53 = sub nsw i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @SIGMA1_256(i32 %56)
  %58 = load i32, i32* %13, align 4
  %59 = sub nsw i32 %58, 7
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %57, %62
  %64 = load i32, i32* %13, align 4
  %65 = sub nsw i32 %64, 15
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @SIGMA0_256(i32 %68)
  %70 = add nsw i32 %63, %69
  %71 = load i32, i32* %13, align 4
  %72 = sub nsw i32 %71, 16
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %70, %75
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 %78
  store i32 %76, i32* %79, align 4
  br label %80

80:                                               ; preds = %51
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %48

83:                                               ; preds = %48
  %84 = load i32*, i32** %3, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %5, align 4
  %87 = load i32*, i32** %3, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %6, align 4
  %90 = load i32*, i32** %3, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %7, align 4
  %93 = load i32*, i32** %3, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %8, align 4
  %96 = load i32*, i32** %3, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %9, align 4
  %99 = load i32*, i32** %3, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 5
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %10, align 4
  %102 = load i32*, i32** %3, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 6
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %11, align 4
  %105 = load i32*, i32** %3, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 7
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %108

108:                                              ; preds = %151, %83
  %109 = load i32, i32* %13, align 4
  %110 = icmp slt i32 %109, 64
  br i1 %110, label %111, label %154

111:                                              ; preds = %108
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @BIGSIGMA1_256(i32 %113)
  %115 = add nsw i32 %112, %114
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @Ch(i32 %116, i32 %117, i32 %118)
  %120 = add nsw i32 %115, %119
  %121 = load i32*, i32** @SHA256_K, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %120, %125
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %126, %130
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @BIGSIGMA0_256(i32 %132)
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @Maj(i32 %134, i32 %135, i32 %136)
  %138 = add nsw i32 %133, %137
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %11, align 4
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %14, align 4
  %144 = add nsw i32 %142, %143
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %6, align 4
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %5, align 4
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %15, align 4
  %150 = add nsw i32 %148, %149
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %111
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %13, align 4
  br label %108

154:                                              ; preds = %108
  %155 = load i32, i32* %5, align 4
  %156 = load i32*, i32** %3, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, %155
  store i32 %159, i32* %157, align 4
  %160 = load i32, i32* %6, align 4
  %161 = load i32*, i32** %3, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, %160
  store i32 %164, i32* %162, align 4
  %165 = load i32, i32* %7, align 4
  %166 = load i32*, i32** %3, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 2
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, %165
  store i32 %169, i32* %167, align 4
  %170 = load i32, i32* %8, align 4
  %171 = load i32*, i32** %3, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 3
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = load i32, i32* %9, align 4
  %176 = load i32*, i32** %3, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 4
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, %175
  store i32 %179, i32* %177, align 4
  %180 = load i32, i32* %10, align 4
  %181 = load i32*, i32** %3, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 5
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, %180
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* %11, align 4
  %186 = load i32*, i32** %3, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 6
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, %185
  store i32 %189, i32* %187, align 4
  %190 = load i32, i32* %12, align 4
  %191 = load i32*, i32** %3, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 7
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, %190
  store i32 %194, i32* %192, align 4
  ret void
}

declare dso_local i32 @SIGMA1_256(i32) #1

declare dso_local i32 @SIGMA0_256(i32) #1

declare dso_local i32 @BIGSIGMA1_256(i32) #1

declare dso_local i32 @Ch(i32, i32, i32) #1

declare dso_local i32 @BIGSIGMA0_256(i32) #1

declare dso_local i32 @Maj(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
