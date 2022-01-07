; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslxref.c_XfCheckFieldRange.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslxref.c_XfCheckFieldRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_FIELD_UNIT_OFFSET = common dso_local global i32 0, align 4
@ASL_MSG_FIELD_UNIT_ACCESS_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64, i64, i64)* @XfCheckFieldRange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XfCheckFieldRange(i32* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %9, align 8
  %14 = add nsw i64 %12, %13
  store i64 %14, i64* %11, align 8
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %5
  %19 = load i32, i32* @ASL_ERROR, align 4
  %20 = load i32, i32* @ASL_MSG_FIELD_UNIT_OFFSET, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @AslError(i32 %19, i32 %20, i32* %21, i32* null)
  br label %35

23:                                               ; preds = %5
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i64 @ACPI_ROUND_UP(i64 %24, i64 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i32, i32* @ASL_ERROR, align 4
  %32 = load i32, i32* @ASL_MSG_FIELD_UNIT_ACCESS_WIDTH, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @AslError(i32 %31, i32 %32, i32* %33, i32* null)
  br label %35

35:                                               ; preds = %18, %30, %23
  ret void
}

declare dso_local i32 @AslError(i32, i32, i32*, i32*) #1

declare dso_local i64 @ACPI_ROUND_UP(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
