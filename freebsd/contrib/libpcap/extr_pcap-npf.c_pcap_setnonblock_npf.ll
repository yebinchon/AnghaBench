; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-npf.c_pcap_setnonblock_npf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-npf.c_pcap_setnonblock_npf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, %struct.pcap_win* }
%struct.TYPE_4__ = type { i32 }
%struct.pcap_win = type { i32, i32 }

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"PacketSetReadTimeout: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @pcap_setnonblock_npf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_setnonblock_npf(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcap_win*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load %struct.pcap_win*, %struct.pcap_win** %12, align 8
  store %struct.pcap_win* %13, %struct.pcap_win** %6, align 8
  %14 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 -1, i32* %7, align 4
  br label %27

22:                                               ; preds = %2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %22, %21
  %28 = load %struct.pcap_win*, %struct.pcap_win** %6, align 8
  %29 = getelementptr inbounds %struct.pcap_win, %struct.pcap_win* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @PacketSetReadTimeout(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %27
  %35 = call i32 (...) @GetLastError()
  %36 = call i32 @pcap_win32_err_to_str(i32 %35, i8* %18)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %41 = call i32 @pcap_snprintf(i32 %39, i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %48

42:                                               ; preds = %27
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, -1
  %45 = zext i1 %44 to i32
  %46 = load %struct.pcap_win*, %struct.pcap_win** %6, align 8
  %47 = getelementptr inbounds %struct.pcap_win, %struct.pcap_win* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %48

48:                                               ; preds = %42, %34
  %49 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PacketSetReadTimeout(i32, i32) #2

declare dso_local i32 @pcap_win32_err_to_str(i32, i8*) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @pcap_snprintf(i32, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
