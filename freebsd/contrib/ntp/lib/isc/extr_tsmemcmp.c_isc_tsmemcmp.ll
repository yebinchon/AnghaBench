; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_tsmemcmp.c_isc_tsmemcmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_tsmemcmp.c_isc_tsmemcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHAR_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_tsmemcmp(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @CHAR_BIT, align 4
  %15 = shl i32 1, %14
  store volatile i32 %15, i32* %11, align 4
  br label %16

16:                                               ; preds = %48, %3
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 0, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %16
  %20 = load volatile i32, i32* %11, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8*, i8** %8, align 8
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = sub i32 %23, %26
  %28 = and i32 %20, %27
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load volatile i32, i32* %11, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = sub i32 %34, %37
  %39 = and i32 %31, %38
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load volatile i32, i32* %11, align 4
  %47 = and i32 %46, %45
  store volatile i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %19
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, -1
  store i64 %50, i64* %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %7, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %8, align 8
  br label %16

55:                                               ; preds = %16
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @CHAR_BIT, align 4
  %58 = lshr i32 %56, %57
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @CHAR_BIT, align 4
  %61 = lshr i32 %59, %60
  %62 = sub nsw i32 %58, %61
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
