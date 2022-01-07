; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/check/extr_sha256.c_transform.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/check/extr_sha256.c_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transform(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [16 x i32], align 16
  %6 = alloca [8 x i32], align 16
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @memcpy(i32* %8, i32* %9, i32 32)
  %11 = call i32 @R0(i32 0)
  %12 = call i32 @R0(i32 1)
  %13 = call i32 @R0(i32 2)
  %14 = call i32 @R0(i32 3)
  %15 = call i32 @R0(i32 4)
  %16 = call i32 @R0(i32 5)
  %17 = call i32 @R0(i32 6)
  %18 = call i32 @R0(i32 7)
  %19 = call i32 @R0(i32 8)
  %20 = call i32 @R0(i32 9)
  %21 = call i32 @R0(i32 10)
  %22 = call i32 @R0(i32 11)
  %23 = call i32 @R0(i32 12)
  %24 = call i32 @R0(i32 13)
  %25 = call i32 @R0(i32 14)
  %26 = call i32 @R0(i32 15)
  store i32 16, i32* %7, align 4
  br label %27

27:                                               ; preds = %47, %2
  %28 = load i32, i32* %7, align 4
  %29 = icmp ult i32 %28, 64
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = call i32 @R2(i32 0)
  %32 = call i32 @R2(i32 1)
  %33 = call i32 @R2(i32 2)
  %34 = call i32 @R2(i32 3)
  %35 = call i32 @R2(i32 4)
  %36 = call i32 @R2(i32 5)
  %37 = call i32 @R2(i32 6)
  %38 = call i32 @R2(i32 7)
  %39 = call i32 @R2(i32 8)
  %40 = call i32 @R2(i32 9)
  %41 = call i32 @R2(i32 10)
  %42 = call i32 @R2(i32 11)
  %43 = call i32 @R2(i32 12)
  %44 = call i32 @R2(i32 13)
  %45 = call i32 @R2(i32 14)
  %46 = call i32 @R2(i32 15)
  br label %47

47:                                               ; preds = %30
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %48, 16
  store i32 %49, i32* %7, align 4
  br label %27

50:                                               ; preds = %27
  %51 = call i64 @a(i32 0)
  %52 = load i32*, i32** %3, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %51
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  %58 = call i64 @b(i32 0)
  %59 = load i32*, i32** %3, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %58
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  %65 = call i64 @c(i32 0)
  %66 = load i32*, i32** %3, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 4
  %72 = call i64 @d(i32 0)
  %73 = load i32*, i32** %3, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %72
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  %79 = call i64 @e(i32 0)
  %80 = load i32*, i32** %3, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %79
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 4
  %86 = call i64 @f(i32 0)
  %87 = load i32*, i32** %3, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 5
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %86
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 4
  %93 = call i64 @g(i32 0)
  %94 = load i32*, i32** %3, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 6
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %93
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %95, align 4
  %100 = call i64 @h(i32 0)
  %101 = load i32*, i32** %3, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 7
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %100
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 4
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @R0(i32) #1

declare dso_local i32 @R2(i32) #1

declare dso_local i64 @a(i32) #1

declare dso_local i64 @b(i32) #1

declare dso_local i64 @c(i32) #1

declare dso_local i64 @d(i32) #1

declare dso_local i64 @e(i32) #1

declare dso_local i64 @f(i32) #1

declare dso_local i64 @g(i32) #1

declare dso_local i64 @h(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
