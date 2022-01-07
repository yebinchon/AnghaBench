; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_hash_to_b32.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_hash_to_b32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nsec3_hash_to_b32(i64* %0, i64 %1, i64* %2, i64 %3, i64* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i64* %0, i64** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i64, i64* %13, align 8
  %16 = load i64, i64* %9, align 8
  %17 = mul i64 %16, 2
  %18 = add i64 %17, 1
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %59

21:                                               ; preds = %6
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64*, i64** %12, align 8
  %25 = bitcast i64* %24 to i8*
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i64, i64* %13, align 8
  %28 = sub i64 %27, 1
  %29 = call i32 @sldns_b32_ntop_extended_hex(i64* %22, i64 %23, i8* %26, i64 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i64 0, i64* %7, align 8
  br label %59

33:                                               ; preds = %21
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64*, i64** %12, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* %14, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %14, align 4
  %40 = load i64, i64* %13, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = sub i64 %40, %42
  %44 = load i64, i64* %11, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  store i64 0, i64* %7, align 8
  br label %59

47:                                               ; preds = %33
  %48 = load i64*, i64** %12, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64*, i64** %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @memmove(i64* %51, i64* %52, i64 %53)
  %55 = load i64, i64* %11, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 %55, %57
  store i64 %58, i64* %7, align 8
  br label %59

59:                                               ; preds = %47, %46, %32, %20
  %60 = load i64, i64* %7, align 8
  ret i64 %60
}

declare dso_local i32 @sldns_b32_ntop_extended_hex(i64*, i64, i8*, i64) #1

declare dso_local i32 @memmove(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
