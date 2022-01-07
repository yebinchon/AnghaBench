; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ui-out.c_ui_out_field_core_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ui-out.c_ui_out_field_core_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { i32 }

@TARGET_ADDR_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"08l\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"016l\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_out_field_core_addr(%struct.ui_out* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ui_out*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [20 x i8], align 16
  store %struct.ui_out* %0, %struct.ui_out** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @TARGET_ADDR_BIT, align 4
  %9 = icmp sle i32 %8, 32
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @local_hex_string_custom(i32 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @strcpy(i8* %11, i32 %13)
  br label %20

15:                                               ; preds = %3
  %16 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @local_hex_string_custom(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @strcpy(i8* %16, i32 %18)
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %24 = call i32 @ui_out_field_string(%struct.ui_out* %21, i8* %22, i8* %23)
  ret void
}

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @local_hex_string_custom(i32, i8*) #1

declare dso_local i32 @ui_out_field_string(%struct.ui_out*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
