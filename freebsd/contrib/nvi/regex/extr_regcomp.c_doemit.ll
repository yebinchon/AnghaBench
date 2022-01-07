; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_doemit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_doemit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i64, i64, i64, i64*, i32* }

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
  %14 = icmp ult i64 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.parse*, %struct.parse** %4, align 8
  %18 = getelementptr inbounds %struct.parse, %struct.parse* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.parse*, %struct.parse** %4, align 8
  %21 = getelementptr inbounds %struct.parse, %struct.parse* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp uge i64 %19, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %12
  %25 = load %struct.parse*, %struct.parse** %4, align 8
  %26 = load %struct.parse*, %struct.parse** %4, align 8
  %27 = getelementptr inbounds %struct.parse, %struct.parse* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %28, 1
  %30 = udiv i64 %29, 2
  %31 = mul i64 %30, 3
  %32 = trunc i64 %31 to i32
  %33 = call i32 @enlarge(%struct.parse* %25, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %24
  br label %58

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %12
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.parse*, %struct.parse** %4, align 8
  %40 = getelementptr inbounds %struct.parse, %struct.parse* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.parse*, %struct.parse** %4, align 8
  %43 = getelementptr inbounds %struct.parse, %struct.parse* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32 %38, i32* %45, align 4
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.parse*, %struct.parse** %4, align 8
  %48 = getelementptr inbounds %struct.parse, %struct.parse* %47, i32 0, i32 3
  %49 = load i64*, i64** %48, align 8
  %50 = load %struct.parse*, %struct.parse** %4, align 8
  %51 = getelementptr inbounds %struct.parse, %struct.parse* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i64, i64* %49, i64 %52
  store i64 %46, i64* %53, align 8
  %54 = load %struct.parse*, %struct.parse** %4, align 8
  %55 = getelementptr inbounds %struct.parse, %struct.parse* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %55, align 8
  br label %58

58:                                               ; preds = %37, %35, %11
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @enlarge(%struct.parse*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
