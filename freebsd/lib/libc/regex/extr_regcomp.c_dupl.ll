; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_dupl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_dupl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.parse*, i64, i64)* @dupl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dupl(%struct.parse* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.parse*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.parse* %0, %struct.parse** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = call i64 (...) @HERE()
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = sub nsw i64 %11, %12
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp sge i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i64, i64* %9, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* %8, align 8
  store i64 %22, i64* %4, align 8
  br label %58

23:                                               ; preds = %3
  %24 = load %struct.parse*, %struct.parse** %5, align 8
  %25 = load %struct.parse*, %struct.parse** %5, align 8
  %26 = getelementptr inbounds %struct.parse, %struct.parse* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @enlarge(%struct.parse* %24, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %23
  %33 = load i64, i64* %8, align 8
  store i64 %33, i64* %4, align 8
  br label %58

34:                                               ; preds = %23
  %35 = load %struct.parse*, %struct.parse** %5, align 8
  %36 = getelementptr inbounds %struct.parse, %struct.parse* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.parse*, %struct.parse** %5, align 8
  %39 = getelementptr inbounds %struct.parse, %struct.parse* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.parse*, %struct.parse** %5, align 8
  %44 = getelementptr inbounds %struct.parse, %struct.parse* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = add nsw i64 %45, %46
  %48 = inttoptr i64 %47 to i8*
  %49 = load i64, i64* %9, align 8
  %50 = mul i64 %49, 4
  %51 = call i32 @memcpy(i8* %42, i8* %48, i64 %50)
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.parse*, %struct.parse** %5, align 8
  %54 = getelementptr inbounds %struct.parse, %struct.parse* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load i64, i64* %8, align 8
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %34, %32, %21
  %59 = load i64, i64* %4, align 8
  ret i64 %59
}

declare dso_local i64 @HERE(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @enlarge(%struct.parse*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
