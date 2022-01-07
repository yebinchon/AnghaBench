; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_o_time.c_OPENSSL_gmtime_adj.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_o_time.c_OPENSSL_gmtime_adj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OPENSSL_gmtime_adj(%struct.tm* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.tm* %0, %struct.tm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %13 = load %struct.tm*, %struct.tm** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @julian_adj(%struct.tm* %13, i32 %14, i64 %15, i64* %12, i32* %8)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %53

19:                                               ; preds = %3
  %20 = load i64, i64* %12, align 8
  %21 = call i32 @julian_to_date(i64 %20, i32* %9, i32* %10, i32* %11)
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 1900
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 9999
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %19
  store i32 0, i32* %4, align 4
  br label %53

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %29, 1900
  %31 = load %struct.tm*, %struct.tm** %5, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %10, align 4
  %34 = sub nsw i32 %33, 1
  %35 = load %struct.tm*, %struct.tm** %5, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.tm*, %struct.tm** %5, align 8
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sdiv i32 %40, 3600
  %42 = load %struct.tm*, %struct.tm** %5, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  %45 = sdiv i32 %44, 60
  %46 = srem i32 %45, 60
  %47 = load %struct.tm*, %struct.tm** %5, align 8
  %48 = getelementptr inbounds %struct.tm, %struct.tm* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %8, align 4
  %50 = srem i32 %49, 60
  %51 = load %struct.tm*, %struct.tm** %5, align 8
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  store i32 1, i32* %4, align 4
  br label %53

53:                                               ; preds = %28, %27, %18
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @julian_adj(%struct.tm*, i32, i64, i64*, i32*) #1

declare dso_local i32 @julian_to_date(i64, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
