; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-npf.c_pcap_oid_set_request_npf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-npf.c_pcap_oid_set_request_npf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.pcap_win* }
%struct.pcap_win = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Couldn't allocate argument buffer for PacketRequest\00", align 1
@PCAP_ERROR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Error calling PacketRequest: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i8*, i64*)* @pcap_oid_set_request_npf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_oid_set_request_npf(%struct.TYPE_7__* %0, i32 %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.pcap_win*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load %struct.pcap_win*, %struct.pcap_win** %16, align 8
  store %struct.pcap_win* %17, %struct.pcap_win** %10, align 8
  %18 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i64*, i64** %9, align 8
  %24 = load i64, i64* %23, align 8
  %25 = add i64 16, %24
  %26 = trunc i64 %25 to i32
  %27 = call %struct.TYPE_8__* @malloc(i32 %26)
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %11, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %29 = icmp eq %struct.TYPE_8__* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %35 = call i32 (i32, i32, i8*, ...) @pcap_snprintf(i32 %33, i32 %34, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %36, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %77

37:                                               ; preds = %4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i64*, i64** %9, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i64*, i64** %9, align 8
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @memcpy(i32 %47, i8* %48, i64 %50)
  %52 = load %struct.pcap_win*, %struct.pcap_win** %10, align 8
  %53 = getelementptr inbounds %struct.pcap_win, %struct.pcap_win* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @TRUE, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %57 = call i32 @PacketRequest(i32 %54, i32 %55, %struct.TYPE_8__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %37
  %60 = call i32 (...) @GetLastError()
  %61 = call i32 @pcap_win32_err_to_str(i32 %60, i8* %22)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %66 = call i32 (i32, i32, i8*, ...) @pcap_snprintf(i32 %64, i32 %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %68 = call i32 @free(%struct.TYPE_8__* %67)
  %69 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %69, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %77

70:                                               ; preds = %37
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** %9, align 8
  store i64 %73, i64* %74, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %76 = call i32 @free(%struct.TYPE_8__* %75)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %77

77:                                               ; preds = %70, %59, %30
  %78 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_8__* @malloc(i32) #2

declare dso_local i32 @pcap_snprintf(i32, i32, i8*, ...) #2

declare dso_local i32 @memcpy(i32, i8*, i64) #2

declare dso_local i32 @PacketRequest(i32, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @pcap_win32_err_to_str(i32, i8*) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @free(%struct.TYPE_8__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
