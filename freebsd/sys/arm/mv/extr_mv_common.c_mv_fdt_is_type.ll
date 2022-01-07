; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_common.c_mv_fdt_is_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_common.c_mv_fdt_is_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@FDT_TYPE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv_fdt_is_type(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [64 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @OF_getproplen(i32 %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %9 = icmp sle i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %14 = call i64 @OF_getprop(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %13, i32 64)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %24

17:                                               ; preds = %11
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @strncasecmp(i8* %18, i8* %19, i32 64)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %22, %16, %10
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @OF_getproplen(i32, i8*) #1

declare dso_local i64 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
