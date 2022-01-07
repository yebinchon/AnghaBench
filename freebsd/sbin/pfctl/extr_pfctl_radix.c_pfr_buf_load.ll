; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfr_buf_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfr_buf_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_buffer = type { i32 }

@BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_buf_load(%struct.pfr_buffer* %0, i8* %1, i32 %2, i32 (%struct.pfr_buffer*, i8*, i32)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfr_buffer*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (%struct.pfr_buffer*, i8*, i32)*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pfr_buffer* %0, %struct.pfr_buffer** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 (%struct.pfr_buffer*, i8*, i32)* %3, i32 (%struct.pfr_buffer*, i8*, i32)** %9, align 8
  %15 = load i32, i32* @BUF_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %57

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load i32*, i32** @stdin, align 8
  store i32* %27, i32** %10, align 8
  br label %35

28:                                               ; preds = %22
  %29 = load i8*, i8** %7, align 8
  %30 = call i32* @pfctl_fopen(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %57

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %26
  br label %36

36:                                               ; preds = %47, %35
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @pfr_next_token(i8* %18, i32* %37)
  store i32 %38, i32* %13, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i32 (%struct.pfr_buffer*, i8*, i32)*, i32 (%struct.pfr_buffer*, i8*, i32)** %9, align 8
  %42 = load %struct.pfr_buffer*, %struct.pfr_buffer** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 %41(%struct.pfr_buffer* %42, i8* %18, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 -1, i32* %13, align 4
  br label %48

47:                                               ; preds = %40
  br label %36

48:                                               ; preds = %46, %36
  %49 = load i32*, i32** %10, align 8
  %50 = load i32*, i32** @stdin, align 8
  %51 = icmp ne i32* %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @fclose(i32* %53)
  br label %55

55:                                               ; preds = %52, %48
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %57

57:                                               ; preds = %55, %33, %21
  %58 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32* @pfctl_fopen(i8*, i8*) #2

declare dso_local i32 @pfr_next_token(i8*, i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
