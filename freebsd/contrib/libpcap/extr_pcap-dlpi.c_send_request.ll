; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dlpi.c_send_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dlpi.c_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i8*, i64 }

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"send_request: putmsg \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i8*, i8*)* @send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_request(i32 %0, i8* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.strbuf, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* %9, align 4
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %13, align 4
  %21 = call i64 @putmsg(i32 %19, %struct.strbuf* %12, %struct.strbuf* null, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = load i8*, i8** %11, align 8
  %25 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %26 = load i32, i32* @errno, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @pcap_fmt_errmsg_for_errno(i8* %24, i32 %25, i32 %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %27)
  store i32 -1, i32* %6, align 4
  br label %30

29:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i64 @putmsg(i32, %struct.strbuf*, %struct.strbuf*, i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
