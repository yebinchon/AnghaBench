; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_get_params_to_use.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_get_params_to_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"Do you want to change our idea of what BIOS thinks ?\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"BIOS's idea of #cylinders\00", align 1
@dos_cyls = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"BIOS's idea of #heads\00", align 1
@dos_heads = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"BIOS's idea of #sectors\00", align 1
@dos_sectors = common dso_local global i32 0, align 4
@dos_cylsecs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Are you happy with this choice\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_params_to_use() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @print_params()
  %3 = call i64 @ok(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %20, %5
  %7 = load i32, i32* @dos_cyls, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @Decimal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32 %8, i32 0)
  %10 = load i32, i32* @dos_heads, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @Decimal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %10, i32 %11, i32 0)
  %13 = load i32, i32* @dos_sectors, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @Decimal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %13, i32 %14, i32 0)
  %16 = load i32, i32* @dos_heads, align 4
  %17 = load i32, i32* @dos_sectors, align 4
  %18 = mul nsw i32 %16, %17
  store i32 %18, i32* @dos_cylsecs, align 4
  %19 = call i32 (...) @print_params()
  br label %20

20:                                               ; preds = %6
  %21 = call i64 @ok(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %6, label %24

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %24, %0
  ret void
}

declare dso_local i32 @print_params(...) #1

declare dso_local i64 @ok(i8*) #1

declare dso_local i32 @Decimal(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
