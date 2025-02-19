; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-nit.c_pcap_inject_nit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-nit.c_pcap_inject_nit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.sockaddr = type { i32 }

@device = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"send\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i64)* @pcap_inject_nit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_inject_nit(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sockaddr, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = call i32 @memset(%struct.sockaddr* %8, i32 0, i32 4)
  %11 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %8, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @device, align 4
  %14 = call i32 @strncpy(i32 %12, i32 %13, i32 4)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @sendto(i32 %17, i8* %18, i64 %19, i32 0, %struct.sockaddr* %8, i32 4)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @pcap_fmt_errmsg_for_errno(i32 %26, i32 %27, i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %23
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @memset(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
