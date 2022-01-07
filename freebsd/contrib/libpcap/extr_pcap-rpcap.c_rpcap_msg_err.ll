; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_rpcap_msg_err.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_rpcap_msg_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@SOCK_RECEIVEALL_YES = common dso_local global i32 0, align 4
@SOCK_EOF_IS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Read of error message from client failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @rpcap_msg_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpcap_msg_err(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %3
  %18 = load i32, i32* %4, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* @SOCK_RECEIVEALL_YES, align 4
  %23 = load i32, i32* @SOCK_EOF_IS_ERROR, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %26 = call i32 @sock_recv(i32 %18, i8* %19, i32 %21, i32 %24, i8* %13, i32 %25)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %31 = call i32 @pcap_snprintf(i8* %29, i32 %30, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i32 1, i32* %9, align 4
  br label %72

32:                                               ; preds = %17
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  store i8 0, i8* %37, align 1
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sub nsw i32 %39, %41
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @rpcap_discard(i32 %38, i32 %42, i8* %43)
  br label %71

45:                                               ; preds = %3
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  store i8 0, i8* %50, align 1
  br label %70

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @SOCK_RECEIVEALL_YES, align 4
  %56 = load i32, i32* @SOCK_EOF_IS_ERROR, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %59 = call i32 @sock_recv(i32 %52, i8* %53, i32 %54, i32 %57, i8* %13, i32 %58)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %64 = call i32 @pcap_snprintf(i8* %62, i32 %63, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i32 1, i32* %9, align 4
  br label %72

65:                                               ; preds = %51
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8 0, i8* %69, align 1
  br label %70

70:                                               ; preds = %65, %48
  br label %71

71:                                               ; preds = %70, %32
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %71, %61, %28
  %73 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %9, align 4
  switch i32 %74, label %76 [
    i32 0, label %75
    i32 1, label %75
  ]

75:                                               ; preds = %72, %72
  ret void

76:                                               ; preds = %72
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sock_recv(i32, i8*, i32, i32, i8*, i32) #2

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @rpcap_discard(i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
