; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_smult_curve25519_ref.c_mainloop.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_smult_curve25519_ref.c_mainloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @mainloop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mainloop(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [64 x i32], align 16
  %6 = alloca [64 x i32], align 16
  %7 = alloca [64 x i32], align 16
  %8 = alloca [64 x i32], align 16
  %9 = alloca [64 x i32], align 16
  %10 = alloca [64 x i32], align 16
  %11 = alloca [64 x i32], align 16
  %12 = alloca [64 x i32], align 16
  %13 = alloca [64 x i32], align 16
  %14 = alloca [64 x i32], align 16
  %15 = alloca [64 x i32], align 16
  %16 = alloca [32 x i32], align 16
  %17 = alloca [32 x i32], align 16
  %18 = alloca [32 x i32], align 16
  %19 = alloca [32 x i32], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %20, align 4
  br label %23

23:                                               ; preds = %35, %2
  %24 = load i32, i32* %20, align 4
  %25 = icmp ult i32 %24, 32
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %20, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %20, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 %33
  store i32 %31, i32* %34, align 4
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %20, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %20, align 4
  br label %23

38:                                               ; preds = %23
  %39 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 32
  store i32 1, i32* %39, align 16
  store i32 33, i32* %20, align 4
  br label %40

40:                                               ; preds = %47, %38
  %41 = load i32, i32* %20, align 4
  %42 = icmp ult i32 %41, 64
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32, i32* %20, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 %45
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %20, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %20, align 4
  br label %40

50:                                               ; preds = %40
  %51 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  store i32 1, i32* %51, align 16
  store i32 1, i32* %20, align 4
  br label %52

52:                                               ; preds = %59, %50
  %53 = load i32, i32* %20, align 4
  %54 = icmp ult i32 %53, 64
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i32, i32* %20, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 %57
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %20, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %20, align 4
  br label %52

62:                                               ; preds = %52
  store i32 254, i32* %22, align 4
  br label %63

63:                                               ; preds = %177, %62
  %64 = load i32, i32* %22, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %180

66:                                               ; preds = %63
  %67 = load i8*, i8** %4, align 8
  %68 = load i32, i32* %22, align 4
  %69 = sdiv i32 %68, 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = load i32, i32* %22, align 4
  %75 = and i32 %74, 7
  %76 = ashr i32 %73, %75
  store i32 %76, i32* %21, align 4
  %77 = load i32, i32* %21, align 4
  %78 = and i32 %77, 1
  store i32 %78, i32* %21, align 4
  %79 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %80 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %81 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %82 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %83 = load i32, i32* %21, align 4
  %84 = call i32 @select(i32* %79, i32* %80, i32* %81, i32* %82, i32 %83)
  %85 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %86 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %87 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %88 = getelementptr inbounds i32, i32* %87, i64 32
  %89 = call i32 @add(i32* %85, i32* %86, i32* %88)
  %90 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %91 = getelementptr inbounds i32, i32* %90, i64 32
  %92 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %93 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %94 = getelementptr inbounds i32, i32* %93, i64 32
  %95 = call i32 @sub(i32* %91, i32* %92, i32* %94)
  %96 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 0
  %97 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %98 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %99 = getelementptr inbounds i32, i32* %98, i64 32
  %100 = call i32 @add(i32* %96, i32* %97, i32* %99)
  %101 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 0
  %102 = getelementptr inbounds i32, i32* %101, i64 32
  %103 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %104 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %105 = getelementptr inbounds i32, i32* %104, i64 32
  %106 = call i32 @sub(i32* %102, i32* %103, i32* %105)
  %107 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %108 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %109 = call i32 @square(i32* %107, i32* %108)
  %110 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %111 = getelementptr inbounds i32, i32* %110, i64 32
  %112 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %113 = getelementptr inbounds i32, i32* %112, i64 32
  %114 = call i32 @square(i32* %111, i32* %113)
  %115 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  %116 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 0
  %117 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %118 = getelementptr inbounds i32, i32* %117, i64 32
  %119 = call i32 @mult(i32* %115, i32* %116, i32* %118)
  %120 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  %121 = getelementptr inbounds i32, i32* %120, i64 32
  %122 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 0
  %123 = getelementptr inbounds i32, i32* %122, i64 32
  %124 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %125 = call i32 @mult(i32* %121, i32* %123, i32* %124)
  %126 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 0
  %127 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  %128 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  %129 = getelementptr inbounds i32, i32* %128, i64 32
  %130 = call i32 @add(i32* %126, i32* %127, i32* %129)
  %131 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 0
  %132 = getelementptr inbounds i32, i32* %131, i64 32
  %133 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  %134 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  %135 = getelementptr inbounds i32, i32* %134, i64 32
  %136 = call i32 @sub(i32* %132, i32* %133, i32* %135)
  %137 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 0
  %138 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 0
  %139 = getelementptr inbounds i32, i32* %138, i64 32
  %140 = call i32 @square(i32* %137, i32* %139)
  %141 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 0
  %142 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %143 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %144 = getelementptr inbounds i32, i32* %143, i64 32
  %145 = call i32 @sub(i32* %141, i32* %142, i32* %144)
  %146 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 0
  %147 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 0
  %148 = call i32 @mult121665(i32* %146, i32* %147)
  %149 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %150 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 0
  %151 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %152 = call i32 @add(i32* %149, i32* %150, i32* %151)
  %153 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %154 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %155 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %156 = getelementptr inbounds i32, i32* %155, i64 32
  %157 = call i32 @mult(i32* %153, i32* %154, i32* %156)
  %158 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %159 = getelementptr inbounds i32, i32* %158, i64 32
  %160 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 0
  %161 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %162 = call i32 @mult(i32* %159, i32* %160, i32* %161)
  %163 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %164 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 0
  %165 = call i32 @square(i32* %163, i32* %164)
  %166 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %167 = getelementptr inbounds i32, i32* %166, i64 32
  %168 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 0
  %169 = load i32*, i32** %3, align 8
  %170 = call i32 @mult(i32* %167, i32* %168, i32* %169)
  %171 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %172 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %173 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %174 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %175 = load i32, i32* %21, align 4
  %176 = call i32 @select(i32* %171, i32* %172, i32* %173, i32* %174, i32 %175)
  br label %177

177:                                              ; preds = %66
  %178 = load i32, i32* %22, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %22, align 4
  br label %63

180:                                              ; preds = %63
  store i32 0, i32* %20, align 4
  br label %181

181:                                              ; preds = %193, %180
  %182 = load i32, i32* %20, align 4
  %183 = icmp ult i32 %182, 64
  br i1 %183, label %184, label %196

184:                                              ; preds = %181
  %185 = load i32, i32* %20, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %3, align 8
  %190 = load i32, i32* %20, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  store i32 %188, i32* %192, align 4
  br label %193

193:                                              ; preds = %184
  %194 = load i32, i32* %20, align 4
  %195 = add i32 %194, 1
  store i32 %195, i32* %20, align 4
  br label %181

196:                                              ; preds = %181
  ret void
}

declare dso_local i32 @select(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @add(i32*, i32*, i32*) #1

declare dso_local i32 @sub(i32*, i32*, i32*) #1

declare dso_local i32 @square(i32*, i32*) #1

declare dso_local i32 @mult(i32*, i32*, i32*) #1

declare dso_local i32 @mult121665(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
