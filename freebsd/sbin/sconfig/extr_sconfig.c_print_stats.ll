; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sconfig/extr_sconfig.c_print_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sconfig/extr_sconfig.c_print_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@SERIAL_GETSTAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"getting statistics\00", align 1
@sflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [76 x i8] c"        ------------Receive-----------      ------------Transmit----------\0A\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"Channel Interrupts  Packets     Errors      Interrupts  Packets     Errors\0A\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"        --------Receive---------------  --------Transmit--------------  Modem\0A\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"Channel Intrs   Bytes   Packets Errors  Intrs   Bytes   Packets Errors  Intrs\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@chan_name = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"\09%-12lu%-12lu%-12lu%-12lu%-12lu%-12lu\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\09%s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @print_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_stats(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.serial_statistics, align 8
  %6 = alloca [9 x i64], align 16
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SERIAL_GETSTAT, align 4
  %10 = call i64 @ioctl(i32 %8, i32 %9, %struct.serial_statistics* %5)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %89

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i64, i64* @sflag, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0))
  br label %26

23:                                               ; preds = %17
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %20
  br label %27

27:                                               ; preds = %26, %14
  %28 = getelementptr inbounds %struct.serial_statistics, %struct.serial_statistics* %5, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 0
  store i64 %29, i64* %30, align 16
  %31 = getelementptr inbounds %struct.serial_statistics, %struct.serial_statistics* %5, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 1
  store i64 %32, i64* %33, align 8
  %34 = getelementptr inbounds %struct.serial_statistics, %struct.serial_statistics* %5, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 2
  store i64 %35, i64* %36, align 16
  %37 = getelementptr inbounds %struct.serial_statistics, %struct.serial_statistics* %5, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 3
  store i64 %38, i64* %39, align 8
  %40 = getelementptr inbounds %struct.serial_statistics, %struct.serial_statistics* %5, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 4
  store i64 %41, i64* %42, align 16
  %43 = getelementptr inbounds %struct.serial_statistics, %struct.serial_statistics* %5, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 5
  store i64 %44, i64* %45, align 8
  %46 = getelementptr inbounds %struct.serial_statistics, %struct.serial_statistics* %5, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 6
  store i64 %47, i64* %48, align 16
  %49 = getelementptr inbounds %struct.serial_statistics, %struct.serial_statistics* %5, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 7
  store i64 %50, i64* %51, align 8
  %52 = getelementptr inbounds %struct.serial_statistics, %struct.serial_statistics* %5, i32 0, i32 8
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 8
  store i64 %53, i64* %54, align 16
  %55 = load i8*, i8** @chan_name, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %55)
  %57 = load i64, i64* @sflag, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %27
  %60 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 0
  %61 = load i64, i64* %60, align 16
  %62 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 2
  %63 = load i64, i64* %62, align 16
  %64 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 3
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 4
  %67 = load i64, i64* %66, align 16
  %68 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 6
  %69 = load i64, i64* %68, align 16
  %70 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 7
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i64 %61, i64 %63, i64 %65, i64 %67, i64 %69, i64 %71)
  br label %89

73:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %84, %73
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 9
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = call i8* @format_long(i64 %81)
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %77
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %74

87:                                               ; preds = %74
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %89

89:                                               ; preds = %12, %87, %59
  ret void
}

declare dso_local i64 @ioctl(i32, i32, %struct.serial_statistics*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @format_long(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
