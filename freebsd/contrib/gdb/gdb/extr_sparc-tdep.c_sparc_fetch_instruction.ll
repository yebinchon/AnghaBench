; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc_fetch_instruction.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc_fetch_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sparc_fetch_instruction(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x i8], align 1
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %9 = call i64 @target_read_memory(i32 %7, i8* %8, i32 4)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %31

12:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %26, %12
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = shl i64 %18, 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i64
  %25 = or i64 %19, %24
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %13

29:                                               ; preds = %13
  %30 = load i64, i64* %5, align 8
  store i64 %30, i64* %2, align 8
  br label %31

31:                                               ; preds = %29, %11
  %32 = load i64, i64* %2, align 8
  ret i64 %32
}

declare dso_local i64 @target_read_memory(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
