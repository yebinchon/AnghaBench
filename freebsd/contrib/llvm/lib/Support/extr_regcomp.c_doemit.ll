; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_doemit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_doemit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i64, i32, i32, i32* }

@OPSHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32, i64)* @doemit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doemit(%struct.parse* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.parse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.parse* %0, %struct.parse** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load %struct.parse*, %struct.parse** %4, align 8
  %8 = getelementptr inbounds %struct.parse, %struct.parse* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %58

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load i32, i32* @OPSHIFT, align 4
  %15 = shl i32 1, %14
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.parse*, %struct.parse** %4, align 8
  %21 = getelementptr inbounds %struct.parse, %struct.parse* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.parse*, %struct.parse** %4, align 8
  %24 = getelementptr inbounds %struct.parse, %struct.parse* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %12
  %28 = load %struct.parse*, %struct.parse** %4, align 8
  %29 = load %struct.parse*, %struct.parse** %4, align 8
  %30 = getelementptr inbounds %struct.parse, %struct.parse* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  %33 = sdiv i32 %32, 2
  %34 = mul nsw i32 %33, 3
  %35 = call i32 @enlarge(%struct.parse* %28, i32 %34)
  br label %36

36:                                               ; preds = %27, %12
  %37 = load %struct.parse*, %struct.parse** %4, align 8
  %38 = getelementptr inbounds %struct.parse, %struct.parse* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.parse*, %struct.parse** %4, align 8
  %41 = getelementptr inbounds %struct.parse, %struct.parse* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @SOP(i32 %46, i64 %47)
  %49 = load %struct.parse*, %struct.parse** %4, align 8
  %50 = getelementptr inbounds %struct.parse, %struct.parse* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.parse*, %struct.parse** %4, align 8
  %53 = getelementptr inbounds %struct.parse, %struct.parse* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  store i32 %48, i32* %57, align 4
  br label %58

58:                                               ; preds = %36, %11
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @enlarge(%struct.parse*, i32) #1

declare dso_local i32 @SOP(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
