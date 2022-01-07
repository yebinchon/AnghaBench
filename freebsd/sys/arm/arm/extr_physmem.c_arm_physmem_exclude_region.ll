; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_physmem.c_arm_physmem_exclude_region.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_physmem.c_arm_physmem_exclude_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@excnt = common dso_local global i64 0, align 8
@exregions = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to exclude region %#jx-%#jx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arm_physmem_exclude_region(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @trunc_page(i64 %9)
  %11 = sub nsw i64 %8, %10
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @trunc_page(i64 %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %7, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i64 @round_page(i64 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* @excnt, align 8
  %19 = load i32, i32* @exregions, align 4
  %20 = call i64 @nitems(i32 %19)
  %21 = icmp sge i64 %18, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load i64, i64* %4, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = add nsw i64 %25, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %28)
  br label %30

30:                                               ; preds = %22, %3
  %31 = load i32, i32* @exregions, align 4
  %32 = load i64, i64* @excnt, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @insert_region(i32 %31, i64 %32, i64 %33, i64 %34, i32 %35)
  store i64 %36, i64* @excnt, align 8
  ret void
}

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i64 @nitems(i32) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

declare dso_local i64 @insert_region(i32, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
