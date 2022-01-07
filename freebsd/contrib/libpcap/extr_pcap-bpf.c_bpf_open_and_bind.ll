; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-bpf.c_bpf_open_and_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-bpf.c_bpf_open_and_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32 }

@BIOCSETIF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PCAP_ERROR_NO_SUCH_DEVICE = common dso_local global i32 0, align 4
@PCAP_ERROR_IFACE_NOT_UP = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"BIOCSETIF: %s\00", align 1
@PCAP_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @bpf_open_and_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_open_and_bind(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifreq, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @bpf_open(i8* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %45

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @strncpy(i32 %16, i8* %17, i32 4)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @BIOCSETIF, align 4
  %21 = ptrtoint %struct.ifreq* %7 to i32
  %22 = call i64 @ioctl(i32 %19, i32 %20, i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %14
  %25 = load i32, i32* @errno, align 4
  switch i32 %25, label %34 [
    i32 128, label %26
    i32 129, label %30
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @close(i32 %27)
  %29 = load i32, i32* @PCAP_ERROR_NO_SUCH_DEVICE, align 4
  store i32 %29, i32* %3, align 4
  br label %45

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @close(i32 %31)
  %33 = load i32, i32* @PCAP_ERROR_IFACE_NOT_UP, align 4
  store i32 %33, i32* %3, align 4
  br label %45

34:                                               ; preds = %24
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %37 = load i32, i32* @errno, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @pcap_fmt_errmsg_for_errno(i8* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @close(i32 %40)
  %42 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %14
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %34, %30, %26, %12
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @bpf_open(i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
