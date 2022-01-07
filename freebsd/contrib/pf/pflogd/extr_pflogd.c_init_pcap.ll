; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/pflogd/extr_pflogd.c_init_pcap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/pflogd/extr_pflogd.c_init_pcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@interface = common dso_local global i32 0, align 4
@snaplen = common dso_local global i32 0, align 4
@PCAP_TO_MS = common dso_local global i32 0, align 4
@errbuf = common dso_local global i32 0, align 4
@hpcap = common dso_local global i32* null, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to initialize: %s\00", align 1
@DLT_PFLOG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid datalink type\00", align 1
@cur_snaplen = common dso_local global i32 0, align 4
@BIOCLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"BIOCLOCK: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_pcap() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @interface, align 4
  %3 = load i32, i32* @snaplen, align 4
  %4 = load i32, i32* @PCAP_TO_MS, align 4
  %5 = load i32, i32* @errbuf, align 4
  %6 = call i32* @pcap_open_live(i32 %2, i32 %3, i32 1, i32 %4, i32 %5)
  store i32* %6, i32** @hpcap, align 8
  %7 = load i32*, i32** @hpcap, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load i32, i32* @LOG_ERR, align 4
  %11 = load i32, i32* @errbuf, align 4
  %12 = call i32 (i32, i8*, ...) @logmsg(i32 %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 -1, i32* %1, align 4
  br label %38

13:                                               ; preds = %0
  %14 = load i32*, i32** @hpcap, align 8
  %15 = call i64 @pcap_datalink(i32* %14)
  %16 = load i64, i64* @DLT_PFLOG, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = call i32 (i32, i8*, ...) @logmsg(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32*, i32** @hpcap, align 8
  %22 = call i32 @pcap_close(i32* %21)
  store i32* null, i32** @hpcap, align 8
  store i32 -1, i32* %1, align 4
  br label %38

23:                                               ; preds = %13
  %24 = call i32 (...) @set_pcap_filter()
  %25 = load i32*, i32** @hpcap, align 8
  %26 = call i32 @pcap_snapshot(i32* %25)
  store i32 %26, i32* @snaplen, align 4
  store i32 %26, i32* @cur_snaplen, align 4
  %27 = load i32*, i32** @hpcap, align 8
  %28 = call i32 @pcap_fileno(i32* %27)
  %29 = load i32, i32* @BIOCLOCK, align 4
  %30 = call i64 @ioctl(i32 %28, i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load i32, i32* @LOG_ERR, align 4
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @strerror(i32 %34)
  %36 = call i32 (i32, i8*, ...) @logmsg(i32 %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  store i32 -1, i32* %1, align 4
  br label %38

37:                                               ; preds = %23
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %37, %32, %18, %9
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32* @pcap_open_live(i32, i32, i32, i32, i32) #1

declare dso_local i32 @logmsg(i32, i8*, ...) #1

declare dso_local i64 @pcap_datalink(i32*) #1

declare dso_local i32 @pcap_close(i32*) #1

declare dso_local i32 @set_pcap_filter(...) #1

declare dso_local i32 @pcap_snapshot(i32*) #1

declare dso_local i64 @ioctl(i32, i32) #1

declare dso_local i32 @pcap_fileno(i32*) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
