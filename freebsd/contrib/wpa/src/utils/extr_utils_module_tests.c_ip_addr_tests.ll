; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_utils_module_tests.c_ip_addr_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_utils_module_tests.c_ip_addr_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_ip_addr = type { i64 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ip_addr tests\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"1.2.3.4\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"%d ip_addr test(s) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ip_addr_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_addr_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_ip_addr, align 8
  %4 = alloca [100 x i8], align 16
  store i32 0, i32* %2, align 4
  %5 = load i32, i32* @MSG_INFO, align 4
  %6 = call i32 (i32, i8*, ...) @wpa_printf(i32 %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %7 = call i64 @hostapd_parse_ip_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.hostapd_ip_addr* %3)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.hostapd_ip_addr, %struct.hostapd_ip_addr* %3, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AF_INET, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %37, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %16 = call i8* @hostapd_ip_txt(%struct.hostapd_ip_addr* null, i8* %15, i32 100)
  %17 = icmp ne i8* %16, null
  br i1 %17, label %37, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %20 = call i8* @hostapd_ip_txt(%struct.hostapd_ip_addr* %3, i8* %19, i32 1)
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %22 = icmp ne i8* %20, %21
  br i1 %22, label %37, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %25 = load i8, i8* %24, align 16
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %30 = call i8* @hostapd_ip_txt(%struct.hostapd_ip_addr* %3, i8* %29, i32 0)
  %31 = icmp ne i8* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %34 = call i8* @hostapd_ip_txt(%struct.hostapd_ip_addr* %3, i8* %33, i32 100)
  %35 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %36 = icmp ne i8* %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32, %28, %23, %18, %14, %9, %0
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %32
  %41 = call i64 @hostapd_parse_ip_addr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.hostapd_ip_addr* %3)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %63, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.hostapd_ip_addr, %struct.hostapd_ip_addr* %3, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @AF_INET6, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %63, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %50 = call i8* @hostapd_ip_txt(%struct.hostapd_ip_addr* %3, i8* %49, i32 1)
  %51 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %52 = icmp ne i8* %50, %51
  br i1 %52, label %63, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %55 = load i8, i8* %54, align 16
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %60 = call i8* @hostapd_ip_txt(%struct.hostapd_ip_addr* %3, i8* %59, i32 100)
  %61 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %62 = icmp ne i8* %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58, %53, %48, %43, %40
  %64 = load i32, i32* %2, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %2, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* @MSG_ERROR, align 4
  %71 = load i32, i32* %2, align 4
  %72 = call i32 (i32, i8*, ...) @wpa_printf(i32 %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  store i32 -1, i32* %1, align 4
  br label %74

73:                                               ; preds = %66
  store i32 0, i32* %1, align 4
  br label %74

74:                                               ; preds = %73, %69
  %75 = load i32, i32* %1, align 4
  ret i32 %75
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @hostapd_parse_ip_addr(i8*, %struct.hostapd_ip_addr*) #1

declare dso_local i8* @hostapd_ip_txt(%struct.hostapd_ip_addr*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
