; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dlpi.c_open_dlpi_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dlpi.c_open_dlpi_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@PCAP_DEV_PREFIX = common dso_local global i32 0, align 4
@PCAP_ERROR_NO_SUCH_DEVICE = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@PCAP_ERROR_PERM_DENIED = common dso_local global i32 0, align 4
@PCAP_ERROR = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: No DLPI device found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i8*)* @open_dlpi_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_dlpi_device(i8* %0, i64* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [100 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [100 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 47
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strlcpy(i8* %18, i8* %19, i32 100)
  br label %28

21:                                               ; preds = %3
  %22 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %23 = load i32, i32* @PCAP_DEV_PREFIX, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 (i8*, i32, i8*, i8*, ...) @pcap_snprintf(i8* %22, i32 100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26)
  br label %28

28:                                               ; preds = %21, %17
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %30 = load i64*, i64** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i8* @split_dname(i8* %29, i64* %30, i8* %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @PCAP_ERROR_NO_SUCH_DEVICE, align 4
  store i32 %36, i32* %4, align 4
  br label %108

37:                                               ; preds = %28
  %38 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %40 = call i32 @strlcpy(i8* %38, i8* %39, i32 100)
  %41 = load i8*, i8** %10, align 8
  store i8 0, i8* %41, align 1
  %42 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %43 = load i32, i32* @O_RDWR, align 4
  %44 = call i32 @open(i8* %42, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %106

46:                                               ; preds = %37
  %47 = load i64, i64* @errno, align 8
  %48 = load i64, i64* @ENOENT, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %46
  %51 = load i64, i64* @errno, align 8
  %52 = load i64, i64* @EPERM, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* @errno, align 8
  %56 = load i64, i64* @EACCES, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54, %50
  %59 = load i32, i32* @PCAP_ERROR_PERM_DENIED, align 4
  store i32 %59, i32* %8, align 4
  br label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %65 = load i64, i64* @errno, align 8
  %66 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %67 = call i32 @pcap_fmt_errmsg_for_errno(i8* %63, i32 %64, i64 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %108

69:                                               ; preds = %46
  %70 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %71 = load i32, i32* @O_RDWR, align 4
  %72 = call i32 @open(i8* %70, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %104

74:                                               ; preds = %69
  %75 = load i64, i64* @errno, align 8
  %76 = load i64, i64* @ENOENT, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i32, i32* @PCAP_ERROR_NO_SUCH_DEVICE, align 4
  store i32 %79, i32* %8, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 (i8*, i32, i8*, i8*, ...) @pcap_snprintf(i8* %80, i32 %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  br label %102

84:                                               ; preds = %74
  %85 = load i64, i64* @errno, align 8
  %86 = load i64, i64* @EPERM, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i64, i64* @errno, align 8
  %90 = load i64, i64* @EACCES, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88, %84
  %93 = load i32, i32* @PCAP_ERROR_PERM_DENIED, align 4
  store i32 %93, i32* %8, align 4
  br label %96

94:                                               ; preds = %88
  %95 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = load i8*, i8** %7, align 8
  %98 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %99 = load i64, i64* @errno, align 8
  %100 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %101 = call i32 @pcap_fmt_errmsg_for_errno(i8* %97, i32 %98, i64 %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %96, %78
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %4, align 4
  br label %108

104:                                              ; preds = %69
  %105 = load i64*, i64** %6, align 8
  store i64 0, i64* %105, align 8
  br label %106

106:                                              ; preds = %104, %37
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %106, %102, %62, %35
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i8* @split_dname(i8*, i64*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i8*, i32, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
