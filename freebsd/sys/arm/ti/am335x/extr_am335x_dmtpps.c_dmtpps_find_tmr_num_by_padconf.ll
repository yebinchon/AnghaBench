; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_dmtpps.c_dmtpps_find_tmr_num_by_padconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_dmtpps.c_dmtpps_find_tmr_num_by_padconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padinfo = type { i32, i32* }

@dmtpps_padinfo = common dso_local global %struct.padinfo* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"timer%d\00", align 1
@RXACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dmtpps_find_tmr_num_by_padconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmtpps_find_tmr_num_by_padconf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.padinfo*, align 8
  %6 = alloca [12 x i8], align 1
  %7 = load %struct.padinfo*, %struct.padinfo** @dmtpps_padinfo, align 8
  store %struct.padinfo* %7, %struct.padinfo** %5, align 8
  br label %8

8:                                                ; preds = %40, %0
  %9 = load %struct.padinfo*, %struct.padinfo** %5, align 8
  %10 = getelementptr inbounds %struct.padinfo, %struct.padinfo* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %43

13:                                               ; preds = %8
  %14 = load %struct.padinfo*, %struct.padinfo** %5, align 8
  %15 = getelementptr inbounds %struct.padinfo, %struct.padinfo* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @ti_pinmux_padconf_get(i32* %16, i8** %4, i32* %3)
  store i32 %17, i32* %2, align 4
  %18 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %19 = load %struct.padinfo*, %struct.padinfo** %5, align 8
  %20 = getelementptr inbounds %struct.padinfo, %struct.padinfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @snprintf(i8* %18, i32 12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %13
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @RXACTIVE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @strcmp(i8* %31, i8* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.padinfo*, %struct.padinfo** %5, align 8
  %37 = getelementptr inbounds %struct.padinfo, %struct.padinfo* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %1, align 4
  br label %44

39:                                               ; preds = %30, %25, %13
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.padinfo*, %struct.padinfo** %5, align 8
  %42 = getelementptr inbounds %struct.padinfo, %struct.padinfo* %41, i32 1
  store %struct.padinfo* %42, %struct.padinfo** %5, align 8
  br label %8

43:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %44

44:                                               ; preds = %43, %35
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

declare dso_local i32 @ti_pinmux_padconf_get(i32*, i8**, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
