; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_extract_ipv4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_extract_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32)* @extract_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_ipv4(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64*, i64** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sdiv i32 %7, 8
  %9 = add nsw i32 %8, 0
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i64, i64* %6, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* %4, align 4
  %15 = srem i32 %14, 8
  %16 = add nsw i32 24, %15
  %17 = shl i32 %13, %16
  %18 = load i64*, i64** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sdiv i32 %19, 8
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %18, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* %4, align 4
  %27 = srem i32 %26, 8
  %28 = add nsw i32 16, %27
  %29 = shl i32 %25, %28
  %30 = or i32 %17, %29
  %31 = load i64*, i64** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sdiv i32 %32, 8
  %34 = add nsw i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %31, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* %4, align 4
  %40 = srem i32 %39, 8
  %41 = add nsw i32 8, %40
  %42 = shl i32 %38, %41
  %43 = or i32 %30, %42
  %44 = load i64*, i64** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sdiv i32 %45, 8
  %47 = add nsw i32 %46, 3
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %44, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* %4, align 4
  %53 = srem i32 %52, 8
  %54 = add nsw i32 0, %53
  %55 = shl i32 %51, %54
  %56 = or i32 %43, %55
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %4, align 4
  %58 = sdiv i32 %57, 8
  %59 = add nsw i32 %58, 4
  %60 = icmp slt i32 %59, 16
  br i1 %60, label %61, label %76

61:                                               ; preds = %2
  %62 = load i64*, i64** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sdiv i32 %63, 8
  %65 = add nsw i32 %64, 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %62, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* %4, align 4
  %71 = srem i32 %70, 8
  %72 = sub nsw i32 8, %71
  %73 = ashr i32 %69, %72
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %61, %2
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
