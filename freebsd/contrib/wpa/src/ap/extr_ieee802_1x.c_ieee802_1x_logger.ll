; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_logger.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_logger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }

@HOSTAPD_LEVEL_WARNING = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_INFO = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_DEBUG = common dso_local global i32 0, align 4
@HOSTAPD_MODULE_IEEE8021X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32, i8*)* @ieee802_1x_logger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee802_1x_logger(i8* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.hostapd_data*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.hostapd_data*
  store %struct.hostapd_data* %12, %struct.hostapd_data** %9, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %19 [
    i32 128, label %14
    i32 129, label %16
    i32 130, label %18
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* @HOSTAPD_LEVEL_WARNING, align 4
  store i32 %15, i32* %10, align 4
  br label %21

16:                                               ; preds = %4
  %17 = load i32, i32* @HOSTAPD_LEVEL_INFO, align 4
  store i32 %17, i32* %10, align 4
  br label %21

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %4, %18
  %20 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %19, %16, %14
  %22 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @HOSTAPD_MODULE_IEEE8021X, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @hostapd_logger(%struct.hostapd_data* %22, i32* %23, i32 %24, i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %26)
  ret void
}

declare dso_local i32 @hostapd_logger(%struct.hostapd_data*, i32*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
