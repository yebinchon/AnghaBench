; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/pflogd/extr_pflogd.c_set_pcap_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/pflogd/extr_pflogd.c_set_pcap_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_program = type { i32 }

@hpcap = common dso_local global i32 0, align 4
@filter = common dso_local global i32 0, align 4
@PCAP_OPT_FIL = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_pcap_filter() #0 {
  %1 = alloca %struct.bpf_program, align 4
  %2 = load i32, i32* @hpcap, align 4
  %3 = load i32, i32* @filter, align 4
  %4 = load i32, i32* @PCAP_OPT_FIL, align 4
  %5 = call i64 @pcap_compile(i32 %2, %struct.bpf_program* %1, i32 %3, i32 %4, i32 0)
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load i32, i32* @LOG_WARNING, align 4
  %9 = load i32, i32* @hpcap, align 4
  %10 = call i32 @pcap_geterr(i32 %9)
  %11 = call i32 @logmsg(i32 %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %23

12:                                               ; preds = %0
  %13 = load i32, i32* @hpcap, align 4
  %14 = call i64 @pcap_setfilter(i32 %13, %struct.bpf_program* %1)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32, i32* @LOG_WARNING, align 4
  %18 = load i32, i32* @hpcap, align 4
  %19 = call i32 @pcap_geterr(i32 %18)
  %20 = call i32 @logmsg(i32 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %16, %12
  %22 = call i32 @pcap_freecode(%struct.bpf_program* %1)
  br label %23

23:                                               ; preds = %21, %7
  ret void
}

declare dso_local i64 @pcap_compile(i32, %struct.bpf_program*, i32, i32, i32) #1

declare dso_local i32 @logmsg(i32, i8*, i32) #1

declare dso_local i32 @pcap_geterr(i32) #1

declare dso_local i64 @pcap_setfilter(i32, %struct.bpf_program*) #1

declare dso_local i32 @pcap_freecode(%struct.bpf_program*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
