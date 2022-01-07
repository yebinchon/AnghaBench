; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdi.c_arm_rdi_files_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdi.c_arm_rdi_files_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_ops = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"nothing\00", align 1
@RDIInfo_Target = common dso_local global i32 0, align 4
@RDIError_NoError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"RDI_info: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Target supports Thumb code.\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Target can do profiling.\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Target is real hardware.\0A\00", align 1
@RDIInfo_Step = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Target can%s single-step.\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@RDIInfo_Icebreaker = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"Target includes an EmbeddedICE.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.target_ops*)* @arm_rdi_files_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_rdi_files_info(%struct.target_ops* %0) #0 {
  %2 = alloca %struct.target_ops*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.target_ops* %0, %struct.target_ops** %2, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %7 = load i32, i32* @RDIInfo_Target, align 4
  %8 = call i32 @angel_RDI_info(i32 %7, i64* %5, i64* %6)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @RDIError_NoError, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @rdi_error_message(i32 %13)
  %15 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load i64, i64* %5, align 8
  %18 = and i64 %17, 32768
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i64, i64* %5, align 8
  %24 = and i64 %23, 16384
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i64, i64* %5, align 8
  %30 = and i64 %29, 16
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i32, i32* @RDIInfo_Step, align 4
  %36 = call i32 @angel_RDI_info(i32 %35, i64* %5, i64* %6)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @RDIError_NoError, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @rdi_error_message(i32 %41)
  %43 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %34
  %45 = load i64, i64* %5, align 8
  %46 = and i64 %45, 4
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %50 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @RDIInfo_Icebreaker, align 4
  %52 = call i32 @angel_RDI_info(i32 %51, i64* %5, i64* %6)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @RDIError_NoError, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %44
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @rdi_error_message(i32 %57)
  %59 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %62

60:                                               ; preds = %44
  %61 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %56
  ret void
}

declare dso_local i32 @angel_RDI_info(i32, i64*, i64*) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @rdi_error_message(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
