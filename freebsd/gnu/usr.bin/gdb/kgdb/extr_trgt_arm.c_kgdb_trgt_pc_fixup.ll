; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_trgt_arm.c_kgdb_trgt_pc_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_trgt_arm.c_kgdb_trgt_pc_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minimal_symbol = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"exception_exit\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"swi_exit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kgdb_trgt_pc_fixup(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca %struct.minimal_symbol*, align 8
  %5 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %6 = load i64*, i64** %3, align 8
  %7 = load i64, i64* %6, align 8
  %8 = call %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i64 %7)
  store %struct.minimal_symbol* %8, %struct.minimal_symbol** %4, align 8
  %9 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %10 = icmp ne %struct.minimal_symbol* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %13 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.minimal_symbol* %12)
  %14 = call i64 @strcmp(i32 %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %55

17:                                               ; preds = %11
  %18 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %19 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.minimal_symbol* %18)
  %20 = call i64 @strcmp(i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %55

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %1
  %25 = load i64*, i64** %3, align 8
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, 4
  %28 = bitcast i32* %5 to i8*
  %29 = call i32 @target_read_memory(i64 %27, i8* %28, i32 4)
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, -402653185
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load i64*, i64** %3, align 8
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %34, 8
  %36 = load i64*, i64** %3, align 8
  store i64 %35, i64* %36, align 8
  store i32 0, i32* %2, align 4
  br label %55

37:                                               ; preds = %24
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, -16777216
  %40 = icmp eq i32 %39, -369098752
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load i64*, i64** %3, align 8
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, 8
  %45 = bitcast i32* %5 to i8*
  %46 = call i32 @target_read_memory(i64 %44, i8* %45, i32 4)
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, -509550577
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i64*, i64** %3, align 8
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, 8
  store i64 %52, i64* %50, align 8
  store i32 0, i32* %2, align 4
  br label %55

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %37
  store i32 -1, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %49, %32, %22, %16
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i64) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @DEPRECATED_SYMBOL_NAME(%struct.minimal_symbol*) #1

declare dso_local i32 @target_read_memory(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
