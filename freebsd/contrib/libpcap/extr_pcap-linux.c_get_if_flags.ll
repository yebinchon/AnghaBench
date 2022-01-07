; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_get_if_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_get_if_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i64, i32 }
%struct.ethtool_value = type { i64, i32 }

@PCAP_IF_LOOPBACK = common dso_local global i32 0, align 4
@PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Can't create socket to get ethtool information for %s\00", align 1
@PCAP_IF_WIRELESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"/sys/class/net/%s/type\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"%s: Can't generate path name string for /sys/class/net device\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@ETHTOOL_GLINK = common dso_local global i32 0, align 4
@PCAP_IF_CONNECTION_STATUS_CONNECTED = common dso_local global i32 0, align 4
@PCAP_IF_CONNECTION_STATUS_DISCONNECTED = common dso_local global i32 0, align 4
@SIOCETHTOOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i8*)* @get_if_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_if_flags(i8* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ifreq, align 8
  %12 = alloca %struct.ethtool_value, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PCAP_IF_LOOPBACK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32, i32* @PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  store i32 0, i32* %4, align 4
  br label %90

24:                                               ; preds = %3
  %25 = load i32, i32* @AF_INET, align 4
  %26 = load i32, i32* @SOCK_DGRAM, align 4
  %27 = call i32 @socket(i32 %25, i32 %26, i32 0)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %33 = load i32, i32* @errno, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @pcap_fmt_errmsg_for_errno(i8* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %34)
  store i32 -1, i32* %4, align 4
  br label %90

36:                                               ; preds = %24
  %37 = load i32, i32* %8, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @is_wifi(i32 %37, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, i32* @PCAP_IF_WIRELESS, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %87

46:                                               ; preds = %36
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @asprintf(i8** %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @pcap_snprintf(i8* %51, i32 %52, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @close(i32 %55)
  store i32 -1, i32* %4, align 4
  br label %90

57:                                               ; preds = %46
  %58 = load i8*, i8** %13, align 8
  %59 = call i32* @fopen(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %59, i32** %9, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %86

62:                                               ; preds = %57
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @fscanf(i32* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %10)
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load i32, i32* %10, align 4
  switch i32 %67, label %80 [
    i32 131, label %68
    i32 132, label %75
    i32 137, label %75
    i32 136, label %75
    i32 135, label %75
    i32 134, label %75
    i32 133, label %75
    i32 138, label %75
  ]

68:                                               ; preds = %66
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @close(i32 %69)
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @fclose(i32* %71)
  %73 = load i8*, i8** %13, align 8
  %74 = call i32 @free(i8* %73)
  store i32 0, i32* %4, align 4
  br label %90

75:                                               ; preds = %66, %66, %66, %66, %66, %66, %66
  %76 = load i32, i32* @PCAP_IF_WIRELESS, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %66, %75
  br label %81

81:                                               ; preds = %80, %62
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @fclose(i32* %82)
  %84 = load i8*, i8** %13, align 8
  %85 = call i32 @free(i8* %84)
  br label %86

86:                                               ; preds = %81, %57
  br label %87

87:                                               ; preds = %86, %41
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @close(i32 %88)
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %68, %50, %30, %19
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i8*, i32, i32, i8*, i8*) #1

declare dso_local i64 @is_wifi(i32, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fscanf(i32*, i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
