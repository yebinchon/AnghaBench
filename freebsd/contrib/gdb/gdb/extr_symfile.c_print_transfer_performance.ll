; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_print_transfer_performance.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_print_transfer_performance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@uiout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Transfer rate: \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"transfer-rate\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c" bits/sec\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"transferred-bits\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c" bits in <1 sec\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"write-rate\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c" bytes/write\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_transfer_performance(%struct.ui_file* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ui_file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ui_file* %0, %struct.ui_file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i32, i32* @uiout, align 4
  %10 = call i32 @ui_out_text(i32 %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* %8, align 8
  %12 = icmp ugt i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load i32, i32* @uiout, align 4
  %15 = load i64, i64* %6, align 8
  %16 = mul i64 %15, 8
  %17 = load i64, i64* %8, align 8
  %18 = udiv i64 %16, %17
  %19 = call i32 @ui_out_field_fmt(i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* @uiout, align 4
  %21 = call i32 @ui_out_text(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %29

22:                                               ; preds = %4
  %23 = load i32, i32* @uiout, align 4
  %24 = load i64, i64* %6, align 8
  %25 = mul i64 %24, 8
  %26 = call i32 @ui_out_field_fmt(i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @uiout, align 4
  %28 = call i32 @ui_out_text(i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %29

29:                                               ; preds = %22, %13
  %30 = load i64, i64* %7, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i32, i32* @uiout, align 4
  %34 = call i32 @ui_out_text(i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %35 = load i32, i32* @uiout, align 4
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = udiv i64 %36, %37
  %39 = call i32 @ui_out_field_fmt(i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @uiout, align 4
  %41 = call i32 @ui_out_text(i32 %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %42

42:                                               ; preds = %32, %29
  %43 = load i32, i32* @uiout, align 4
  %44 = call i32 @ui_out_text(i32 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ui_out_text(i32, i8*) #1

declare dso_local i32 @ui_out_field_fmt(i32, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
