; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-bpf.c_pcap_setfilter_bpf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-bpf.c_pcap_setfilter_bpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32, %struct.pcap_bpf* }
%struct.pcap_bpf = type { i32 }
%struct.bpf_program = type { i32 }

@BIOCSETF = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"BIOCSETF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.bpf_program*)* @pcap_setfilter_bpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_setfilter_bpf(%struct.TYPE_4__* %0, %struct.bpf_program* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.bpf_program*, align 8
  %6 = alloca %struct.pcap_bpf*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.bpf_program* %1, %struct.bpf_program** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %9 = load %struct.pcap_bpf*, %struct.pcap_bpf** %8, align 8
  store %struct.pcap_bpf* %9, %struct.pcap_bpf** %6, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = call i32 @pcap_freecode(i32* %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BIOCSETF, align 4
  %17 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %18 = ptrtoint %struct.bpf_program* %17 to i32
  %19 = call i64 @ioctl(i32 %15, i32 %16, i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.pcap_bpf*, %struct.pcap_bpf** %6, align 8
  %23 = getelementptr inbounds %struct.pcap_bpf, %struct.pcap_bpf* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  store i32 0, i32* %3, align 4
  br label %46

26:                                               ; preds = %2
  %27 = load i64, i64* @errno, align 8
  %28 = load i64, i64* @EINVAL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %35 = load i64, i64* @errno, align 8
  %36 = call i32 @pcap_fmt_errmsg_for_errno(i32 %33, i32 %34, i64 %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %46

37:                                               ; preds = %26
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %40 = call i64 @install_bpf_program(%struct.TYPE_4__* %38, %struct.bpf_program* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 -1, i32* %3, align 4
  br label %46

43:                                               ; preds = %37
  %44 = load %struct.pcap_bpf*, %struct.pcap_bpf** %6, align 8
  %45 = getelementptr inbounds %struct.pcap_bpf, %struct.pcap_bpf* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %42, %30, %21
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @pcap_freecode(i32*) #1

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i64, i8*) #1

declare dso_local i64 @install_bpf_program(%struct.TYPE_4__*, %struct.bpf_program*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
