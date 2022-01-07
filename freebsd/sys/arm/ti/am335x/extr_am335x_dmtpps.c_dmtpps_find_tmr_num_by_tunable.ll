; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_dmtpps.c_dmtpps_find_tmr_num_by_tunable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_dmtpps.c_dmtpps_find_tmr_num_by_tunable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padinfo = type { i32, i32* }

@.str = private unnamed_addr constant [23 x i8] c"hw.am335x_dmtpps.input\00", align 1
@dmtpps_padinfo = common dso_local global %struct.padinfo* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"timer%d\00", align 1
@PADCONF_INPUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"am335x_dmtpps: unable to configure capture pin for %s to input mode\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"am335x_dmtpps: configured pin %s as input for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"am335x_dmtpps: unknown pin name '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dmtpps_find_tmr_num_by_tunable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmtpps_find_tmr_num_by_tunable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.padinfo*, align 8
  %3 = alloca [20 x i8], align 16
  %4 = alloca [12 x i8], align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %8 = call i32 @TUNABLE_STR_FETCH(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %7, i32 20)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %63

11:                                               ; preds = %0
  %12 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %13 = call i8* @dmtpps_translate_nickname(i8* %12)
  store i8* %13, i8** %5, align 8
  %14 = load %struct.padinfo*, %struct.padinfo** @dmtpps_padinfo, align 8
  store %struct.padinfo* %14, %struct.padinfo** %2, align 8
  br label %15

15:                                               ; preds = %57, %11
  %16 = load %struct.padinfo*, %struct.padinfo** %2, align 8
  %17 = getelementptr inbounds %struct.padinfo, %struct.padinfo* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %60

20:                                               ; preds = %15
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.padinfo*, %struct.padinfo** %2, align 8
  %23 = getelementptr inbounds %struct.padinfo, %struct.padinfo* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @strcmp(i8* %21, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %57

28:                                               ; preds = %20
  %29 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  %30 = load %struct.padinfo*, %struct.padinfo** %2, align 8
  %31 = getelementptr inbounds %struct.padinfo, %struct.padinfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @snprintf(i8* %29, i32 12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.padinfo*, %struct.padinfo** %2, align 8
  %35 = getelementptr inbounds %struct.padinfo, %struct.padinfo* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  %38 = load i32, i32* @PADCONF_INPUT, align 4
  %39 = call i32 @ti_pinmux_padconf_set(i32* %36, i8* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %28
  %43 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  %44 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  store i32 -1, i32* %1, align 4
  br label %63

45:                                               ; preds = %28
  %46 = load i64, i64* @bootverbose, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %50 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  %51 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %49, i8* %50)
  br label %52

52:                                               ; preds = %48, %45
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.padinfo*, %struct.padinfo** %2, align 8
  %55 = getelementptr inbounds %struct.padinfo, %struct.padinfo* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %1, align 4
  br label %63

57:                                               ; preds = %27
  %58 = load %struct.padinfo*, %struct.padinfo** %2, align 8
  %59 = getelementptr inbounds %struct.padinfo, %struct.padinfo* %58, i32 1
  store %struct.padinfo* %59, %struct.padinfo** %2, align 8
  br label %15

60:                                               ; preds = %15
  %61 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %62 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %61)
  store i32 -1, i32* %1, align 4
  br label %63

63:                                               ; preds = %60, %53, %42, %10
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local i32 @TUNABLE_STR_FETCH(i8*, i8*, i32) #1

declare dso_local i8* @dmtpps_translate_nickname(i8*) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @ti_pinmux_padconf_set(i32*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
