; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_time.c_determine_days.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_time.c_determine_days.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32 }

@determine_days.ydays = internal constant [12 x i32] [i32 0, i32 31, i32 59, i32 90, i32 120, i32 151, i32 181, i32 212, i32 243, i32 273, i32 304, i32 334], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tm*)* @determine_days to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @determine_days(%struct.tm* %0) #0 {
  %2 = alloca %struct.tm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %2, align 8
  %7 = load %struct.tm*, %struct.tm** %2, align 8
  %8 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1900
  store i32 %10, i32* %3, align 4
  %11 = load %struct.tm*, %struct.tm** %2, align 8
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.tm*, %struct.tm** %2, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [12 x i32], [12 x i32]* @determine_days.ydays, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %20, %21
  %23 = sub nsw i32 %22, 1
  %24 = load %struct.tm*, %struct.tm** %2, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp sge i32 %26, 2
  br i1 %27, label %28, label %39

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @leap_year(i32 %29)
  %31 = load %struct.tm*, %struct.tm** %2, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %30
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 2
  store i32 %38, i32* %4, align 4
  br label %44

39:                                               ; preds = %1
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 14
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %28
  %45 = load i32, i32* %3, align 4
  %46 = sdiv i32 %45, 100
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %3, align 4
  %48 = srem i32 %47, 100
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = mul nsw i32 13, %50
  %52 = sdiv i32 %51, 5
  %53 = add nsw i32 %49, %52
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* %3, align 4
  %57 = sdiv i32 %56, 4
  %58 = add nsw i32 %55, %57
  %59 = load i32, i32* %6, align 4
  %60 = sdiv i32 %59, 4
  %61 = add nsw i32 %58, %60
  %62 = load i32, i32* %6, align 4
  %63 = mul nsw i32 5, %62
  %64 = add nsw i32 %61, %63
  %65 = add nsw i32 %64, 6
  %66 = srem i32 %65, 7
  %67 = load %struct.tm*, %struct.tm** %2, align 8
  %68 = getelementptr inbounds %struct.tm, %struct.tm* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  ret void
}

declare dso_local i64 @leap_year(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
