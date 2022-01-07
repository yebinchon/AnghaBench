; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_dupl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_dupl.c"
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
  br label %65

23:                                               ; preds = %3
  %24 = load %struct.parse*, %struct.parse** %5, align 8
  %25 = load %struct.parse*, %struct.parse** %5, align 8
  %26 = getelementptr inbounds %struct.parse, %struct.parse* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @enlarge(%struct.parse* %24, i64 %29)
  %31 = load %struct.parse*, %struct.parse** %5, align 8
  %32 = getelementptr inbounds %struct.parse, %struct.parse* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.parse*, %struct.parse** %5, align 8
  %35 = getelementptr inbounds %struct.parse, %struct.parse* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = add nsw i64 %36, %37
  %39 = icmp sge i64 %33, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.parse*, %struct.parse** %5, align 8
  %43 = getelementptr inbounds %struct.parse, %struct.parse* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.parse*, %struct.parse** %5, align 8
  %46 = getelementptr inbounds %struct.parse, %struct.parse* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.parse*, %struct.parse** %5, align 8
  %51 = getelementptr inbounds %struct.parse, %struct.parse* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = add nsw i64 %52, %53
  %55 = inttoptr i64 %54 to i8*
  %56 = load i64, i64* %9, align 8
  %57 = mul i64 %56, 4
  %58 = call i32 @memmove(i8* %49, i8* %55, i64 %57)
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.parse*, %struct.parse** %5, align 8
  %61 = getelementptr inbounds %struct.parse, %struct.parse* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, %59
  store i64 %63, i64* %61, align 8
  %64 = load i64, i64* %8, align 8
  store i64 %64, i64* %4, align 8
  br label %65

65:                                               ; preds = %23, %21
  %66 = load i64, i64* %4, align 8
  ret i64 %66
}

declare dso_local i64 @HERE(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @enlarge(%struct.parse*, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
