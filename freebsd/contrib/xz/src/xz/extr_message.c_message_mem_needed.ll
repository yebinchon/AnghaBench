; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_message.c_message_mem_needed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_message.c_message_mem_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbosity = common dso_local global i32 0, align 4
@opt_mode = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"%s MiB of memory is required. The limiter is disabled.\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s B\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s MiB\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"%s MiB of memory is required. The limit is %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @message_mem_needed(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [128 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @verbosity, align 4
  %9 = icmp ugt i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %48

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @round_up_to_mib(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @opt_mode, align 4
  %15 = call i32 @hardware_memlimit_get(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @UINT64_MAX, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %4, align 4
  %23 = call i8* @uint64_to_str(i32 %22, i32 0)
  %24 = call i32 (i32, i32, i8*, ...) @message(i32 %20, i32 %21, i8* %23)
  br label %48

25:                                               ; preds = %11
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @UINT32_C(i32 1)
  %28 = shl i32 %27, 20
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %32 = load i32, i32* %5, align 4
  %33 = call i8* @uint64_to_str(i32 %32, i32 1)
  %34 = call i32 @snprintf(i8* %31, i32 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %41

35:                                               ; preds = %25
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @round_up_to_mib(i32 %37)
  %39 = call i8* @uint64_to_str(i32 %38, i32 1)
  %40 = call i32 @snprintf(i8* %36, i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32, i32* %4, align 4
  %45 = call i8* @uint64_to_str(i32 %44, i32 0)
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %47 = call i32 (i32, i32, i8*, ...) @message(i32 %42, i32 %43, i8* %45, i8* %46)
  br label %48

48:                                               ; preds = %41, %19, %10
  ret void
}

declare dso_local i32 @round_up_to_mib(i32) #1

declare dso_local i32 @hardware_memlimit_get(i32) #1

declare dso_local i32 @message(i32, i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @uint64_to_str(i32, i32) #1

declare dso_local i32 @UINT32_C(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
