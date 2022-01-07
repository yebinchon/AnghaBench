; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/boot/zfs/extr_sha256.c_SHA512Transform.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/boot/zfs/extr_sha256.c_SHA512Transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA512_K = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @SHA512Transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SHA512Transform(i32* %0, i32* %1) #0 {
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
  %16 = alloca [80 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %62, %2
  %18 = load i32, i32* %13, align 4
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %67

20:                                               ; preds = %17
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 56
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 48
  %29 = or i32 %24, %28
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 40
  %34 = or i32 %29, %33
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 32
  %39 = or i32 %34, %38
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 24
  %44 = or i32 %39, %43
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 16
  %49 = or i32 %44, %48
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 6
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 8
  %54 = or i32 %49, %53
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 7
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %54, %57
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [80 x i32], [80 x i32]* %16, i64 0, i64 %60
  store i32 %58, i32* %61, align 4
  br label %62

62:                                               ; preds = %20
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  store i32* %66, i32** %4, align 8
  br label %17

67:                                               ; preds = %17
  store i32 16, i32* %13, align 4
  br label %68

68:                                               ; preds = %100, %67
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %69, 80
  br i1 %70, label %71, label %103

71:                                               ; preds = %68
  %72 = load i32, i32* %13, align 4
  %73 = sub nsw i32 %72, 2
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [80 x i32], [80 x i32]* %16, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @SIGMA1_512(i32 %76)
  %78 = load i32, i32* %13, align 4
  %79 = sub nsw i32 %78, 7
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [80 x i32], [80 x i32]* %16, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %77, %82
  %84 = load i32, i32* %13, align 4
  %85 = sub nsw i32 %84, 15
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [80 x i32], [80 x i32]* %16, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @SIGMA0_512(i32 %88)
  %90 = add nsw i32 %83, %89
  %91 = load i32, i32* %13, align 4
  %92 = sub nsw i32 %91, 16
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [80 x i32], [80 x i32]* %16, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %90, %95
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [80 x i32], [80 x i32]* %16, i64 0, i64 %98
  store i32 %96, i32* %99, align 4
  br label %100

100:                                              ; preds = %71
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  br label %68

103:                                              ; preds = %68
  %104 = load i32*, i32** %3, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %5, align 4
  %107 = load i32*, i32** %3, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %6, align 4
  %110 = load i32*, i32** %3, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %7, align 4
  %113 = load i32*, i32** %3, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 3
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %8, align 4
  %116 = load i32*, i32** %3, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 4
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %9, align 4
  %119 = load i32*, i32** %3, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 5
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %10, align 4
  %122 = load i32*, i32** %3, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 6
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %11, align 4
  %125 = load i32*, i32** %3, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 7
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %128

128:                                              ; preds = %171, %103
  %129 = load i32, i32* %13, align 4
  %130 = icmp slt i32 %129, 80
  br i1 %130, label %131, label %174

131:                                              ; preds = %128
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @BIGSIGMA1_512(i32 %133)
  %135 = add nsw i32 %132, %134
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @Ch(i32 %136, i32 %137, i32 %138)
  %140 = add nsw i32 %135, %139
  %141 = load i32*, i32** @SHA512_K, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %140, %145
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [80 x i32], [80 x i32]* %16, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %146, %150
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @BIGSIGMA0_512(i32 %152)
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @Maj(i32 %154, i32 %155, i32 %156)
  %158 = add nsw i32 %153, %157
  store i32 %158, i32* %15, align 4
  %159 = load i32, i32* %11, align 4
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %10, align 4
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %9, align 4
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %162, %163
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %7, align 4
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %6, align 4
  store i32 %166, i32* %7, align 4
  %167 = load i32, i32* %5, align 4
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %15, align 4
  %170 = add nsw i32 %168, %169
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %131
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %13, align 4
  br label %128

174:                                              ; preds = %128
  %175 = load i32, i32* %5, align 4
  %176 = load i32*, i32** %3, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, %175
  store i32 %179, i32* %177, align 4
  %180 = load i32, i32* %6, align 4
  %181 = load i32*, i32** %3, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 1
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, %180
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* %7, align 4
  %186 = load i32*, i32** %3, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 2
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, %185
  store i32 %189, i32* %187, align 4
  %190 = load i32, i32* %8, align 4
  %191 = load i32*, i32** %3, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 3
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, %190
  store i32 %194, i32* %192, align 4
  %195 = load i32, i32* %9, align 4
  %196 = load i32*, i32** %3, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 4
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, %195
  store i32 %199, i32* %197, align 4
  %200 = load i32, i32* %10, align 4
  %201 = load i32*, i32** %3, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 5
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, %200
  store i32 %204, i32* %202, align 4
  %205 = load i32, i32* %11, align 4
  %206 = load i32*, i32** %3, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 6
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, %205
  store i32 %209, i32* %207, align 4
  %210 = load i32, i32* %12, align 4
  %211 = load i32*, i32** %3, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 7
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, %210
  store i32 %214, i32* %212, align 4
  ret void
}

declare dso_local i32 @SIGMA1_512(i32) #1

declare dso_local i32 @SIGMA0_512(i32) #1

declare dso_local i32 @BIGSIGMA1_512(i32) #1

declare dso_local i32 @Ch(i32, i32, i32) #1

declare dso_local i32 @BIGSIGMA0_512(i32) #1

declare dso_local i32 @Maj(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
