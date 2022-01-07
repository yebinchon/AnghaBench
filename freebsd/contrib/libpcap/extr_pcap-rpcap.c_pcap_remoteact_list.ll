; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_pcap_remoteact_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_pcap_remoteact_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.activehosts = type { %struct.activehosts*, i32 }
%struct.sockaddr_storage = type { i32 }

@RPCAP_HOSTLIST_SIZE = common dso_local global i32 0, align 4
@activeHosts = common dso_local global %struct.activehosts* null, align 8
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"The string you provided is not able to keep the hostnames for all the active connections\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcap_remoteact_list(i8* %0, i8 signext %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.activehosts*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i32, i32* @RPCAP_HOSTLIST_SIZE, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load %struct.activehosts*, %struct.activehosts** @activeHosts, align 8
  store %struct.activehosts* %20, %struct.activehosts** %10, align 8
  store i64 0, i64* %11, align 8
  %21 = load i8*, i8** %6, align 8
  store i8 0, i8* %21, align 1
  br label %22

22:                                               ; preds = %52, %4
  %23 = load %struct.activehosts*, %struct.activehosts** %10, align 8
  %24 = icmp ne %struct.activehosts* %23, null
  br i1 %24, label %25, label %67

25:                                               ; preds = %22
  %26 = load %struct.activehosts*, %struct.activehosts** %10, align 8
  %27 = getelementptr inbounds %struct.activehosts, %struct.activehosts* %26, i32 0, i32 1
  %28 = bitcast i32* %27 to %struct.sockaddr_storage*
  %29 = load i32, i32* @RPCAP_HOSTLIST_SIZE, align 4
  %30 = load i32, i32* @NI_NUMERICHOST, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %33 = call i32 @sock_getascii_addrport(%struct.sockaddr_storage* %28, i8* %19, i32 %29, i32* null, i32 0, i32 %30, i8* %31, i32 %32)
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %68

36:                                               ; preds = %25
  %37 = load i64, i64* %11, align 8
  %38 = call i64 @strlen(i8* %19)
  %39 = add i64 %37, %38
  %40 = add i64 %39, 1
  store i64 %40, i64* %11, align 8
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %36
  %44 = load i64, i64* %11, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp uge i64 %44, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %43, %36
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %51 = call i32 @pcap_snprintf(i8* %49, i32 %50, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %68

52:                                               ; preds = %43
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %55 = call i32 @strlcat(i8* %53, i8* %19, i32 %54)
  %56 = load i8, i8* %7, align 1
  %57 = load i8*, i8** %6, align 8
  %58 = load i64, i64* %11, align 8
  %59 = sub i64 %58, 1
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  store i8 %56, i8* %60, align 1
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load %struct.activehosts*, %struct.activehosts** %10, align 8
  %65 = getelementptr inbounds %struct.activehosts, %struct.activehosts* %64, i32 0, i32 0
  %66 = load %struct.activehosts*, %struct.activehosts** %65, align 8
  store %struct.activehosts* %66, %struct.activehosts** %10, align 8
  br label %22

67:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %68

68:                                               ; preds = %67, %48, %35
  %69 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sock_getascii_addrport(%struct.sockaddr_storage*, i8*, i32, i32*, i32, i32, i8*, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
