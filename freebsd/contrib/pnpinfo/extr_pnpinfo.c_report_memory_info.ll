; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pnpinfo/extr_pnpinfo.c_report_memory_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pnpinfo/extr_pnpinfo.c_report_memory_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Memory Range: Writeable\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Memory Range: Not writeable (ROM)\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Memory Range: Read-cacheable, write-through\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Memory Range: Non-cacheable\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Memory Range: Decode supports high address\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Memory Range: Decode supports range length\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Memory Range: 8-bit memory only\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Memory Range: 16-bit memory only\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"Memory Range: 8-bit and 16-bit memory supported\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Memory Range: Memory is shadowable\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Memory Range: Memory is not shadowable\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Memory Range: Memory is an expansion ROM\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"Memory Range: Memory is not an expansion ROM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @report_memory_info(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %10

8:                                                ; preds = %1
  %9 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %6
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %11, 2
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %18

16:                                               ; preds = %10
  %17 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i32, i32* %2, align 4
  %20 = and i32 %19, 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %26

24:                                               ; preds = %18
  %25 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i32, i32* %2, align 4
  %28 = and i32 %27, 24
  %29 = ashr i32 %28, 3
  switch i32 %29, label %36 [
    i32 0, label %30
    i32 1, label %32
    i32 2, label %34
  ]

30:                                               ; preds = %26
  %31 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %36

32:                                               ; preds = %26
  %33 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %36

34:                                               ; preds = %26
  %35 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0))
  br label %36

36:                                               ; preds = %26, %34, %32, %30
  %37 = load i32, i32* %2, align 4
  %38 = and i32 %37, 32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %44

42:                                               ; preds = %36
  %43 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %40
  %45 = load i32, i32* %2, align 4
  %46 = and i32 %45, 64
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  br label %52

50:                                               ; preds = %44
  %51 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %48
  ret void
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
