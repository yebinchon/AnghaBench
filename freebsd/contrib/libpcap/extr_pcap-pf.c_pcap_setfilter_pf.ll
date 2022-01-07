; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-pf.c_pcap_setfilter_pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-pf.c_pcap_setfilter_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, %struct.pcap_pf* }
%struct.pcap_pf = type { i32 }
%struct.bpf_program = type { i32 }
%struct.bpf_version = type { i64, i64 }

@BIOCVERSION = common dso_local global i32 0, align 4
@BPF_MAJOR_VERSION = common dso_local global i64 0, align 8
@BPF_MINOR_VERSION = common dso_local global i64 0, align 8
@BIOCSETF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"BIOCSETF\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"tcpdump: Using kernel BPF filter\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"tcpdump: Requires BPF language %d.%d or higher; kernel is %d.%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"tcpdump: Filtering in user process\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.bpf_program*)* @pcap_setfilter_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_setfilter_pf(%struct.TYPE_4__* %0, %struct.bpf_program* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.bpf_program*, align 8
  %6 = alloca %struct.pcap_pf*, align 8
  %7 = alloca %struct.bpf_version, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.bpf_program* %1, %struct.bpf_program** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %10 = load %struct.pcap_pf*, %struct.pcap_pf** %9, align 8
  store %struct.pcap_pf* %10, %struct.pcap_pf** %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @BIOCVERSION, align 4
  %15 = ptrtoint %struct.bpf_version* %7 to i32
  %16 = call i64 @ioctl(i32 %13, i32 %14, i32 %15)
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.bpf_version, %struct.bpf_version* %7, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BPF_MAJOR_VERSION, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.bpf_version, %struct.bpf_version* %7, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BPF_MINOR_VERSION, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %23
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BIOCSETF, align 4
  %33 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %34 = ptrtoint %struct.bpf_program* %33 to i32
  %35 = call i64 @ioctl(i32 %31, i32 %32, i32 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @pcap_fmt_errmsg_for_errno(i32 %40, i32 4, i32 %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %70

43:                                               ; preds = %28
  %44 = load i32, i32* @stderr, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.pcap_pf*, %struct.pcap_pf** %6, align 8
  %47 = getelementptr inbounds %struct.pcap_pf, %struct.pcap_pf* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  store i32 0, i32* %3, align 4
  br label %70

50:                                               ; preds = %23, %18
  %51 = load i32, i32* @stderr, align 4
  %52 = load i64, i64* @BPF_MAJOR_VERSION, align 8
  %53 = load i64, i64* @BPF_MINOR_VERSION, align 8
  %54 = getelementptr inbounds %struct.bpf_version, %struct.bpf_version* %7, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.bpf_version, %struct.bpf_version* %7, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i64 %52, i64 %53, i64 %55, i64 %57)
  br label %59

59:                                               ; preds = %50, %2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %62 = call i64 @install_bpf_program(%struct.TYPE_4__* %60, %struct.bpf_program* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 -1, i32* %3, align 4
  br label %70

65:                                               ; preds = %59
  %66 = load i32, i32* @stderr, align 4
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.pcap_pf*, %struct.pcap_pf** %6, align 8
  %69 = getelementptr inbounds %struct.pcap_pf, %struct.pcap_pf* %68, i32 0, i32 0
  store i32 0, i32* %69, align 4
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %65, %64, %43, %37
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @install_bpf_program(%struct.TYPE_4__*, %struct.bpf_program*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
