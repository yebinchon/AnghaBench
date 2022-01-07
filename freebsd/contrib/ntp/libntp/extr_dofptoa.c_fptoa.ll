; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_dofptoa.c_fptoa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_dofptoa.c_fptoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fptoa(i64 %0, i16 signext %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i16, align 2
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load i64, i64* %3, align 8
  %8 = icmp slt i64 %7, 0
  %9 = zext i1 %8 to i32
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i64, i64* %3, align 8
  %14 = sub nsw i64 0, %13
  store i64 %14, i64* %5, align 8
  br label %17

15:                                               ; preds = %2
  %16 = load i64, i64* %3, align 8
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i16, i16* %4, align 2
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i8* @dofptoa(i64 %18, i32 %19, i16 signext %20, i32 %21)
  ret i8* %22
}

declare dso_local i8* @dofptoa(i64, i32, i16 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
