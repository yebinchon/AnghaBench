; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibumad/extr_umad_str.c_umad_class_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibumad/extr_umad_str.c_umad_class_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"Subn\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"SubnAdm\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Perf\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"BM\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DevMgt\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ComMgt\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"SNMP\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"DevAdm\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"BootMgt\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"BIS\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"CongestionManagment\00", align 1
@UMAD_CLASS_VENDOR_RANGE1_START = common dso_local global i32 0, align 4
@UMAD_CLASS_VENDOR_RANGE1_END = common dso_local global i32 0, align 4
@UMAD_CLASS_VENDOR_RANGE2_START = common dso_local global i32 0, align 4
@UMAD_CLASS_VENDOR_RANGE2_END = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"Vendor\00", align 1
@UMAD_CLASS_APPLICATION_START = common dso_local global i32 0, align 4
@UMAD_CLASS_APPLICATION_END = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"Application\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @umad_class_str(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %16 [
    i32 128, label %5
    i32 129, label %5
    i32 130, label %6
    i32 132, label %7
    i32 138, label %8
    i32 133, label %9
    i32 136, label %10
    i32 131, label %11
    i32 134, label %12
    i32 137, label %13
    i32 139, label %14
    i32 135, label %15
  ]

5:                                                ; preds = %1, %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %44

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %44

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %44

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %44

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %44

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %44

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %44

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %44

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %44

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %44

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %44

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* @UMAD_CLASS_VENDOR_RANGE1_START, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @UMAD_CLASS_VENDOR_RANGE1_END, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %21, %17
  %26 = load i32, i32* @UMAD_CLASS_VENDOR_RANGE2_START, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @UMAD_CLASS_VENDOR_RANGE2_END, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %21
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %44

34:                                               ; preds = %29, %25
  %35 = load i32, i32* @UMAD_CLASS_APPLICATION_START, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @UMAD_CLASS_APPLICATION_END, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %44

43:                                               ; preds = %38, %34
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %44

44:                                               ; preds = %43, %42, %33, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %45 = load i8*, i8** %2, align 8
  ret i8* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
