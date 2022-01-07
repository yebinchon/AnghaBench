; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_ntpcal_periodic_extend.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_ntp_calendar.c_ntpcal_periodic_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ntpcal_periodic_extend(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i8 0, i8* %8, align 1
  store i8 0, i8* %9, align 1
  %10 = load i64, i64* %6, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = sub nsw i64 0, %13
  store i64 %14, i64* %6, align 8
  %15 = load i8, i8* %9, align 1
  %16 = sext i8 %15 to i32
  %17 = xor i32 %16, 1
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %9, align 1
  %19 = load i8, i8* %8, align 1
  %20 = sext i8 %19 to i32
  %21 = xor i32 %20, 1
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %8, align 1
  br label %23

23:                                               ; preds = %12, %3
  %24 = load i64, i64* %6, align 8
  %25 = icmp sgt i64 %24, 1
  br i1 %25, label %26, label %74

26:                                               ; preds = %23
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @int32_to_uint32_2cpl(i64 %31)
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @int32_to_uint32_2cpl(i64 %33)
  %35 = sub nsw i32 %32, %34
  store i32 %35, i32* %7, align 4
  br label %46

36:                                               ; preds = %26
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @int32_to_uint32_2cpl(i64 %37)
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @int32_to_uint32_2cpl(i64 %39)
  %41 = sub nsw i32 %38, %40
  store i32 %41, i32* %7, align 4
  %42 = load i8, i8* %8, align 1
  %43 = sext i8 %42 to i32
  %44 = xor i32 %43, 1
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %8, align 1
  br label %46

46:                                               ; preds = %36, %30
  %47 = load i64, i64* %6, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* %7, align 4
  %50 = srem i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %46
  %54 = load i8, i8* %8, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i64, i64* %6, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* %7, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %56, %53
  %62 = load i8, i8* %9, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* %7, align 4
  %66 = xor i32 %65, -1
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i32, i32* %7, align 4
  %70 = call i64 @uint32_2cpl_to_int32(i32 %69)
  %71 = load i64, i64* %4, align 8
  %72 = add nsw i64 %71, %70
  store i64 %72, i64* %4, align 8
  br label %73

73:                                               ; preds = %68, %46
  br label %74

74:                                               ; preds = %73, %23
  %75 = load i64, i64* %4, align 8
  ret i64 %75
}

declare dso_local i32 @int32_to_uint32_2cpl(i64) #1

declare dso_local i64 @uint32_2cpl_to_int32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
