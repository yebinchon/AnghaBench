; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-snit.c_nit_setflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-snit.c_nit_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.strioctl = type { i32, i8*, i32, i32 }
%struct.timeval = type { i32, i32 }

@NIOCSCHUNK = common dso_local global i32 0, align 4
@I_STR = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"NIOCSCHUNK\00", align 1
@INFTIM = common dso_local global i32 0, align 4
@NIOCSTIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"NIOCSTIME\00", align 1
@NI_TIMESTAMP = common dso_local global i32 0, align 4
@NI_LEN = common dso_local global i32 0, align 4
@NI_DROPS = common dso_local global i32 0, align 4
@NI_PROMISC = common dso_local global i32 0, align 4
@NIOCSFLAGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"NIOCSFLAGS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @nit_setflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nit_setflags(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.strioctl, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.timeval, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %1
  %14 = load i32, i32* @NIOCSCHUNK, align 4
  %15 = getelementptr inbounds %struct.strioctl, %struct.strioctl* %5, i32 0, i32 2
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.strioctl, %struct.strioctl* %5, i32 0, i32 0
  store i32 8, i32* %16, align 8
  %17 = bitcast i64* %6 to i8*
  %18 = getelementptr inbounds %struct.strioctl, %struct.strioctl* %5, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @I_STR, align 4
  %23 = bitcast %struct.strioctl* %5 to i8*
  %24 = call i64 @ioctl(i32 %21, i32 %22, i8* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %13
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 @pcap_fmt_errmsg_for_errno(i32 %29, i32 %30, i32 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %112

33:                                               ; preds = %13
  br label %34

34:                                               ; preds = %33, %1
  %35 = load i32, i32* @INFTIM, align 4
  %36 = getelementptr inbounds %struct.strioctl, %struct.strioctl* %5, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %76

42:                                               ; preds = %34
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sdiv i32 %46, 1000
  %48 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %52, 1000
  %54 = srem i32 %53, 1000000
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @NIOCSTIME, align 4
  %57 = getelementptr inbounds %struct.strioctl, %struct.strioctl* %5, i32 0, i32 2
  store i32 %56, i32* %57, align 8
  %58 = getelementptr inbounds %struct.strioctl, %struct.strioctl* %5, i32 0, i32 0
  store i32 8, i32* %58, align 8
  %59 = bitcast %struct.timeval* %7 to i8*
  %60 = getelementptr inbounds %struct.strioctl, %struct.strioctl* %5, i32 0, i32 1
  store i8* %59, i8** %60, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @I_STR, align 4
  %65 = bitcast %struct.strioctl* %5 to i8*
  %66 = call i64 @ioctl(i32 %63, i32 %64, i8* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %42
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %73 = load i32, i32* @errno, align 4
  %74 = call i32 @pcap_fmt_errmsg_for_errno(i32 %71, i32 %72, i32 %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %112

75:                                               ; preds = %42
  br label %76

76:                                               ; preds = %75, %34
  %77 = load i32, i32* @NI_TIMESTAMP, align 4
  %78 = load i32, i32* @NI_LEN, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @NI_DROPS, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* %4, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %76
  %88 = load i32, i32* @NI_PROMISC, align 4
  %89 = load i32, i32* %4, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %87, %76
  %92 = load i32, i32* @NIOCSFLAGS, align 4
  %93 = getelementptr inbounds %struct.strioctl, %struct.strioctl* %5, i32 0, i32 2
  store i32 %92, i32* %93, align 8
  %94 = getelementptr inbounds %struct.strioctl, %struct.strioctl* %5, i32 0, i32 0
  store i32 4, i32* %94, align 8
  %95 = bitcast i32* %4 to i8*
  %96 = getelementptr inbounds %struct.strioctl, %struct.strioctl* %5, i32 0, i32 1
  store i8* %95, i8** %96, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @I_STR, align 4
  %101 = bitcast %struct.strioctl* %5 to i8*
  %102 = call i64 @ioctl(i32 %99, i32 %100, i8* %101)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %91
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %109 = load i32, i32* @errno, align 4
  %110 = call i32 @pcap_fmt_errmsg_for_errno(i32 %107, i32 %108, i32 %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %112

111:                                              ; preds = %91
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %104, %68, %26
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i64 @ioctl(i32, i32, i8*) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
