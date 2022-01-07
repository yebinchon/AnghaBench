; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ipfilter/netinet/extr_fil.c_ipf_main_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ipfilter/netinet/extr_fil.c_ipf_main_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ICMP_MAXTYPE = common dso_local global i32 0, align 4
@icmpreplytype4 = common dso_local global i32* null, align 8
@ICMP_ECHOREPLY = common dso_local global i32 0, align 4
@ICMP_ECHO = common dso_local global i64 0, align 8
@ICMP_TSTAMPREPLY = common dso_local global i32 0, align 4
@ICMP_TSTAMP = common dso_local global i64 0, align 8
@ICMP_IREQREPLY = common dso_local global i32 0, align 4
@ICMP_IREQ = common dso_local global i64 0, align 8
@ICMP_MASKREPLY = common dso_local global i32 0, align 4
@ICMP_MASKREQ = common dso_local global i64 0, align 8
@ICMP6_ECHO_REPLY = common dso_local global i32 0, align 4
@ICMP6_ECHO_REQUEST = common dso_local global i64 0, align 8
@ICMP6_MAXTYPE = common dso_local global i32 0, align 4
@ICMP6_MEMBERSHIP_QUERY = common dso_local global i64 0, align 8
@ICMP6_MEMBERSHIP_REPORT = common dso_local global i32 0, align 4
@ICMP6_NI_QUERY = common dso_local global i64 0, align 8
@ICMP6_NI_REPLY = common dso_local global i32 0, align 4
@ND_NEIGHBOR_ADVERT = common dso_local global i32 0, align 4
@ND_NEIGHBOR_SOLICIT = common dso_local global i64 0, align 8
@ND_ROUTER_ADVERT = common dso_local global i32 0, align 4
@ND_ROUTER_SOLICIT = common dso_local global i64 0, align 8
@icmpreplytype6 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipf_main_load() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %11, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @ICMP_MAXTYPE, align 4
  %5 = icmp sle i32 %3, %4
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load i32*, i32** @icmpreplytype4, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  store i32 -1, i32* %10, align 4
  br label %11

11:                                               ; preds = %6
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %1, align 4
  br label %2

14:                                               ; preds = %2
  %15 = load i32, i32* @ICMP_ECHOREPLY, align 4
  %16 = load i32*, i32** @icmpreplytype4, align 8
  %17 = load i64, i64* @ICMP_ECHO, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @ICMP_TSTAMPREPLY, align 4
  %20 = load i32*, i32** @icmpreplytype4, align 8
  %21 = load i64, i64* @ICMP_TSTAMP, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @ICMP_IREQREPLY, align 4
  %24 = load i32*, i32** @icmpreplytype4, align 8
  %25 = load i64, i64* @ICMP_IREQ, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @ICMP_MASKREPLY, align 4
  %28 = load i32*, i32** @icmpreplytype4, align 8
  %29 = load i64, i64* @ICMP_MASKREQ, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %27, i32* %30, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
