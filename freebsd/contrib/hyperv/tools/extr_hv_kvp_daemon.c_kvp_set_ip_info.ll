; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_set_ip_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_set_ip_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_kvp_ipaddr_value = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"/var/db/hyperv\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"hv_set_ip_data\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"FreeBSD Failed to open config file\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"HWADDR\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"IF_NAME\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"IP_ADDR\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"SUBNET\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"GATEWAY\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"DNS\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"DHCP\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"sh /usr/libexec/hyperv/hv_set_ifconfig\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Failed to write config file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.hv_kvp_ipaddr_value*)* @kvp_set_ip_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvp_set_ip_info(i8* %0, %struct.hv_kvp_ipaddr_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hv_kvp_ipaddr_value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32*, align 8
  %9 = alloca [512 x i8], align 16
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.hv_kvp_ipaddr_value* %1, %struct.hv_kvp_ipaddr_value** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %12 = call i32 @snprintf(i8* %11, i32 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %14 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @LOG_ERR, align 4
  %19 = call i32 @KVP_LOG(i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %20 = load i32, i32* @errno, align 4
  store i32 %20, i32* %3, align 4
  br label %115

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = call i8* @kvp_if_name_to_mac(i8* %22)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %6, align 4
  br label %107

28:                                               ; preds = %21
  %29 = load i32*, i32** %8, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @kvp_write_file(i32* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %107

35:                                               ; preds = %28
  %36 = load i32*, i32** %8, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @kvp_write_file(i32* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %107

42:                                               ; preds = %35
  %43 = load i32*, i32** %8, align 8
  %44 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %5, align 8
  %45 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @kvp_write_file(i32* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %107

52:                                               ; preds = %42
  %53 = load i32*, i32** %8, align 8
  %54 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %5, align 8
  %55 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 @kvp_write_file(i32* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %107

62:                                               ; preds = %52
  %63 = load i32*, i32** %8, align 8
  %64 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %5, align 8
  %65 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 @kvp_write_file(i32* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %107

72:                                               ; preds = %62
  %73 = load i32*, i32** %8, align 8
  %74 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %5, align 8
  %75 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 @kvp_write_file(i32* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %107

82:                                               ; preds = %72
  %83 = load %struct.hv_kvp_ipaddr_value*, %struct.hv_kvp_ipaddr_value** %5, align 8
  %84 = getelementptr inbounds %struct.hv_kvp_ipaddr_value, %struct.hv_kvp_ipaddr_value* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32*, i32** %8, align 8
  %89 = call i32 @kvp_write_file(i32* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  store i32 %89, i32* %6, align 4
  br label %93

90:                                               ; preds = %82
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @kvp_write_file(i32* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %107

97:                                               ; preds = %93
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @free(i8* %98)
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @fclose(i32* %100)
  %102 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %103 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %104 = call i32 @snprintf(i8* %102, i32 512, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), i8* %103)
  %105 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %106 = call i32 @system(i8* %105)
  store i32 0, i32* %3, align 4
  br label %115

107:                                              ; preds = %96, %81, %71, %61, %51, %41, %34, %26
  %108 = load i32, i32* @LOG_ERR, align 4
  %109 = call i32 @KVP_LOG(i32 %108, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0))
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 @free(i8* %110)
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @fclose(i32* %112)
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %107, %97, %17
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @KVP_LOG(i32, i8*) #1

declare dso_local i8* @kvp_if_name_to_mac(i8*) #1

declare dso_local i32 @kvp_write_file(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @system(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
