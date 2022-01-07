; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_ctrl_pno.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_ctrl_pno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32* }

@.str = private unnamed_addr constant [6 x i8] c"freq=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*)* @wpas_ctrl_pno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_ctrl_pno(%struct.wpa_supplicant* %0, i8* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %7, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @atoi(i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @os_strchr(i8* %13, i8 signext 32)
  store i8* %14, i8** %5, align 8
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %16 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @os_free(i32* %17)
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %12
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @os_strstr(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 5
  %32 = call i32* @freq_range_to_channel_list(%struct.wpa_supplicant* %29, i8* %31)
  store i32* %32, i32** %7, align 8
  br label %33

33:                                               ; preds = %28, %21
  br label %34

34:                                               ; preds = %33, %12
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %37 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %39 = call i32 @wpas_start_pno(%struct.wpa_supplicant* %38)
  store i32 %39, i32* %8, align 4
  br label %43

40:                                               ; preds = %2
  %41 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %42 = call i32 @wpas_stop_pno(%struct.wpa_supplicant* %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %40, %34
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local i64 @atoi(i8*) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i8* @os_strstr(i8*, i8*) #1

declare dso_local i32* @freq_range_to_channel_list(%struct.wpa_supplicant*, i8*) #1

declare dso_local i32 @wpas_start_pno(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_stop_pno(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
