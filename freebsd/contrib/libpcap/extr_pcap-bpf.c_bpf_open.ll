; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-bpf.c_bpf_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-bpf.c_bpf_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bpf_open.cloning_device = internal constant [9 x i8] c"/dev/bpf\00", align 1
@bpf_open.no_cloning_bpf = internal global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@PCAP_ERROR_PERM_DENIED = common dso_local global i32 0, align 4
@PCAP_ERROR = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"(cannot open device) %s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"/dev/bpf%d\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"(there are no BPF devices)\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"(all BPF devices are busy)\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"(cannot open BPF device) %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bpf_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_open(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [19 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @bpf_open.no_cloning_bpf, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %40, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @O_RDWR, align 4
  %11 = call i32 @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @bpf_open.cloning_device, i64 0, i64 0), i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = load i32, i32* @errno, align 4
  %15 = icmp ne i32 %14, 129
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @errno, align 4
  %18 = icmp ne i32 %17, 128
  br i1 %18, label %23, label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* @O_RDONLY, align 4
  %21 = call i32 @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @bpf_open.cloning_device, i64 0, i64 0), i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %40

23:                                               ; preds = %19, %16
  %24 = load i32, i32* @errno, align 4
  %25 = icmp ne i32 %24, 128
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load i32, i32* @errno, align 4
  %28 = icmp eq i32 %27, 129
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @PCAP_ERROR_PERM_DENIED, align 4
  store i32 %30, i32* %4, align 4
  br label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = load i8*, i8** %3, align 8
  %35 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @pcap_fmt_errmsg_for_errno(i8* %34, i32 %35, i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @bpf_open.cloning_device, i64 0, i64 0))
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %107

39:                                               ; preds = %23
  store i32 1, i32* @bpf_open.no_cloning_bpf, align 4
  br label %40

40:                                               ; preds = %39, %19, %9, %1
  %41 = load i32, i32* @bpf_open.no_cloning_bpf, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %69, %43
  %45 = getelementptr inbounds [19 x i8], [19 x i8]* %6, i64 0, i64 0
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  %48 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %45, i32 19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %49 = getelementptr inbounds [19 x i8], [19 x i8]* %6, i64 0, i64 0
  %50 = load i32, i32* @O_RDWR, align 4
  %51 = call i32 @open(i8* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %61

54:                                               ; preds = %44
  %55 = load i32, i32* @errno, align 4
  %56 = icmp eq i32 %55, 129
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = getelementptr inbounds [19 x i8], [19 x i8]* %6, i64 0, i64 0
  %59 = load i32, i32* @O_RDONLY, align 4
  %60 = call i32 @open(i8* %58, i32 %59)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %54, %44
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* @errno, align 4
  %67 = load i32, i32* @EBUSY, align 4
  %68 = icmp eq i32 %66, %67
  br label %69

69:                                               ; preds = %65, %62
  %70 = phi i1 [ false, %62 ], [ %68, %65 ]
  br i1 %70, label %44, label %71

71:                                               ; preds = %69
  br label %72

72:                                               ; preds = %71, %40
  %73 = load i32, i32* %4, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %105

75:                                               ; preds = %72
  %76 = load i32, i32* @errno, align 4
  switch i32 %76, label %97 [
    i32 128, label %77
    i32 129, label %90
  ]

77:                                               ; preds = %75
  %78 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i8*, i8** %3, align 8
  %83 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %84 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %82, i32 %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %89

85:                                               ; preds = %77
  %86 = load i8*, i8** %3, align 8
  %87 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %88 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %86, i32 %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %85, %81
  br label %104

90:                                               ; preds = %75
  %91 = load i32, i32* @PCAP_ERROR_PERM_DENIED, align 4
  store i32 %91, i32* %4, align 4
  %92 = load i8*, i8** %3, align 8
  %93 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %94 = load i32, i32* @errno, align 4
  %95 = getelementptr inbounds [19 x i8], [19 x i8]* %6, i64 0, i64 0
  %96 = call i32 @pcap_fmt_errmsg_for_errno(i8* %92, i32 %93, i32 %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %95)
  br label %104

97:                                               ; preds = %75
  %98 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %98, i32* %4, align 4
  %99 = load i8*, i8** %3, align 8
  %100 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %101 = load i32, i32* @errno, align 4
  %102 = getelementptr inbounds [19 x i8], [19 x i8]* %6, i64 0, i64 0
  %103 = call i32 @pcap_fmt_errmsg_for_errno(i8* %99, i32 %100, i32 %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %97, %90, %89
  br label %105

105:                                              ; preds = %104, %72
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %33
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
