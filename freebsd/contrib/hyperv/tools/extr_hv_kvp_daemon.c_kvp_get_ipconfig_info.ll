; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_get_ipconfig_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_get_ipconfig_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_kvp_ipaddr_value = type { i32, i64, i64 }

@.str = private unnamed_addr constant [52 x i8] c"netstat -rn | grep %s | awk '/default/ {print $2 }'\00", align 1
@MAX_GATEWAY_SIZE = common dso_local global i32 0, align 4
@INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"netstat -rn inet6 | grep %s | awk '/default/ {print $2 }'\00", align 1
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"sh /usr/libexec/hyperv/hv_get_dns_info\00", align 1
@MAX_IP_ADDR_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"sh /usr/libexec/hyperv/hv_get_dhcp_info\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.hv_kvp_ipaddr_value*)* @kvp_get_ipconfig_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvp_get_ipconfig_info(i8* %0, %struct.hv_kvp_ipaddr_value* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hv_kvp_ipaddr_value*, align 8
  %5 = alloca [512 x i8], align 16
  %6 = alloca [128 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.hv_kvp_ipaddr_value* %1, %struct.hv_kvp_ipaddr_value** %4, align 8
  %9 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %9, i32 512, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %13 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %4, align 8
  %14 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = load i32, i32* @MAX_GATEWAY_SIZE, align 4
  %18 = mul nsw i32 %17, 2
  %19 = load i32, i32* @INET_ADDRSTRLEN, align 4
  %20 = call i32 @kvp_process_ipconfig_file(i8* %12, i8* %16, i32 %18, i32 %19, i32 0)
  %21 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %21, i32 512, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %25 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %4, align 8
  %26 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = load i32, i32* @MAX_GATEWAY_SIZE, align 4
  %30 = mul nsw i32 %29, 2
  %31 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %32 = call i32 @kvp_process_ipconfig_file(i8* %24, i8* %28, i32 %30, i32 %31, i32 1)
  %33 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %34 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %33, i32 512, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %35 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %36 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %4, align 8
  %37 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load i32, i32* @MAX_IP_ADDR_SIZE, align 4
  %41 = mul nsw i32 %40, 2
  %42 = load i32, i32* @INET_ADDRSTRLEN, align 4
  %43 = call i32 @kvp_process_ipconfig_file(i8* %35, i8* %39, i32 %41, i32 %42, i32 0)
  %44 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %44, i32 512, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %45)
  %47 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %48 = call i32* @popen(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %48, i32** %8, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %2
  br label %74

52:                                               ; preds = %2
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %54 = load i32*, i32** %8, align 8
  %55 = call i8* @fgets(i8* %53, i32 128, i32* %54)
  store i8* %55, i8** %7, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @pclose(i32* %59)
  br label %74

61:                                               ; preds = %52
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @strncmp(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 7)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %4, align 8
  %67 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %71

68:                                               ; preds = %61
  %69 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %4, align 8
  %70 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @pclose(i32* %72)
  br label %74

74:                                               ; preds = %71, %58, %51
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @kvp_process_ipconfig_file(i8*, i8*, i32, i32, i32) #1

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @pclose(i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
