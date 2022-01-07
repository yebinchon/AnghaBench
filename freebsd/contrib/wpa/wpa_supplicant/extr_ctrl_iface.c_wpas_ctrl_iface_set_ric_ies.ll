; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_ctrl_iface_set_ric_ies.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_ctrl_iface_set_ric_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.wpabuf* }
%struct.wpabuf = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*)* @wpas_ctrl_iface_set_ric_ies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_ctrl_iface_set_ric_ies(%struct.wpa_supplicant* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @os_strcmp(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11, %2
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 0
  %18 = load %struct.wpabuf*, %struct.wpabuf** %17, align 8
  %19 = call i32 @wpabuf_free(%struct.wpabuf* %18)
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 0
  store %struct.wpabuf* null, %struct.wpabuf** %21, align 8
  store i32 0, i32* %3, align 4
  br label %36

22:                                               ; preds = %11
  %23 = load i8*, i8** %5, align 8
  %24 = call %struct.wpabuf* @wpabuf_parse_bin(i8* %23)
  store %struct.wpabuf* %24, %struct.wpabuf** %6, align 8
  %25 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %26 = icmp ne %struct.wpabuf* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %36

28:                                               ; preds = %22
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %30 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %29, i32 0, i32 0
  %31 = load %struct.wpabuf*, %struct.wpabuf** %30, align 8
  %32 = call i32 @wpabuf_free(%struct.wpabuf* %31)
  %33 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %35 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %34, i32 0, i32 0
  store %struct.wpabuf* %33, %struct.wpabuf** %35, align 8
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %28, %27, %15
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_parse_bin(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
