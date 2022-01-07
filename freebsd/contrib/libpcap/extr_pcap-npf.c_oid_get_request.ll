; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-npf.c_oid_get_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-npf.c_oid_get_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Couldn't allocate argument buffer for PacketRequest\00", align 1
@PCAP_ERROR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Error calling PacketRequest: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i64*, i8*)* @oid_get_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oid_get_request(i32* %0, i32 %1, i8* %2, i64* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64* %3, i64** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i64*, i64** %10, align 8
  %16 = load i64, i64* %15, align 8
  %17 = add i64 16, %16
  %18 = trunc i64 %17 to i32
  %19 = call %struct.TYPE_5__* @malloc(i32 %18)
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %12, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %21 = icmp eq %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = load i8*, i8** %11, align 8
  %24 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %25 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %23, i32 %24, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %26, i32* %6, align 4
  br label %68

27:                                               ; preds = %5
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i64*, i64** %10, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %38 = call i32 @PacketRequest(i32* %35, i32 %36, %struct.TYPE_5__* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %27
  %41 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %42 = add nsw i32 %41, 1
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %13, align 8
  %45 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %14, align 8
  %46 = call i32 (...) @GetLastError()
  %47 = call i32 @pcap_win32_err_to_str(i32 %46, i8* %45)
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %50 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %48, i32 %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %52 = call i32 @free(%struct.TYPE_5__* %51)
  store i32 -1, i32* %6, align 4
  %53 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %53)
  br label %68

54:                                               ; preds = %27
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %10, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i64*, i64** %10, align 8
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @memcpy(i8* %59, i32 %62, i64 %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %67 = call i32 @free(%struct.TYPE_5__* %66)
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %54, %40, %22
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_5__* @malloc(i32) #1

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @PacketRequest(i32*, i32, %struct.TYPE_5__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pcap_win32_err_to_str(i32, i8*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
