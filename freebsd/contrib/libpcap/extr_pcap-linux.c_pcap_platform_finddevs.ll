; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_pcap_platform_finddevs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_pcap_platform_finddevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@can_be_bound = common dso_local global i32 0, align 4
@get_if_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"any\00", align 1
@PCAP_IF_UP = common dso_local global i32 0, align 4
@PCAP_IF_RUNNING = common dso_local global i32 0, align 4
@PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE = common dso_local global i32 0, align 4
@any_descr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcap_platform_finddevs(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* @can_be_bound, align 4
  %10 = load i32, i32* @get_if_flags, align 4
  %11 = call i32 @pcap_findalldevs_interfaces(i32* %7, i8* %8, i32 %9, i32 %10)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %44

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @scan_sys_class_net(i32* %15, i8* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %44

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32*, i32** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @scan_proc_net_dev(i32* %25, i8* %26)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %44

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %21
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @PCAP_IF_UP, align 4
  %34 = load i32, i32* @PCAP_IF_RUNNING, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @any_descr, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = call i32* @add_dev(i32* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i8* %39)
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %44

43:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %42, %29, %20, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @pcap_findalldevs_interfaces(i32*, i8*, i32, i32) #1

declare dso_local i32 @scan_sys_class_net(i32*, i8*) #1

declare dso_local i32 @scan_proc_net_dev(i32*, i8*) #1

declare dso_local i32* @add_dev(i32*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
