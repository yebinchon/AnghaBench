; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_config_file.c_hostapd_config_parse_cipher.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_config_file.c_hostapd_config_parse_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Line %d: invalid cipher '%s'.\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Line %d: no cipher values configured.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hostapd_config_parse_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_config_parse_cipher(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @wpa_parse_cipher(i8* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* @MSG_ERROR, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %13, i8* %14)
  store i32 -1, i32* %3, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* @MSG_ERROR, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store i32 -1, i32* %3, align 4
  br label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %19, %11
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @wpa_parse_cipher(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
