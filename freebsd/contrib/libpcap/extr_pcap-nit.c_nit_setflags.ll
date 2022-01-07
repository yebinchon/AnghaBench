; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-nit.c_nit_setflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-nit.c_nit_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i32, i64, i64 }
%struct.nit_ioc = type { i32, i64, i32, %struct.TYPE_5__, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@NT_ALLTYPES = common dso_local global i32 0, align 4
@BUFSPACE = common dso_local global i64 0, align 8
@CHUNKSIZE = common dso_local global i64 0, align 8
@NF_TIMEOUT = common dso_local global i32 0, align 4
@NF_PROMISC = common dso_local global i32 0, align 4
@SIOCSNIT = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"SIOCSNIT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @nit_setflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nit_setflags(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.nit_ioc, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = call i32 @memset(%struct.nit_ioc* %4, i32 0, i32 56)
  %6 = load i32, i32* @NT_ALLTYPES, align 4
  %7 = getelementptr inbounds %struct.nit_ioc, %struct.nit_ioc* %4, i32 0, i32 7
  store i32 %6, i32* %7, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds %struct.nit_ioc, %struct.nit_ioc* %4, i32 0, i32 6
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.nit_ioc, %struct.nit_ioc* %4, i32 0, i32 0
  store i32 4, i32* %12, align 8
  %13 = getelementptr inbounds %struct.nit_ioc, %struct.nit_ioc* %4, i32 0, i32 5
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.nit_ioc, %struct.nit_ioc* %4, i32 0, i32 1
  store i64 %23, i64* %24, align 8
  br label %28

25:                                               ; preds = %1
  %26 = load i64, i64* @BUFSPACE, align 8
  %27 = getelementptr inbounds %struct.nit_ioc, %struct.nit_ioc* %4, i32 0, i32 1
  store i64 %26, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %19
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.nit_ioc, %struct.nit_ioc* %4, i32 0, i32 4
  store i64 0, i64* %35, align 8
  br label %39

36:                                               ; preds = %28
  %37 = load i64, i64* @CHUNKSIZE, align 8
  %38 = getelementptr inbounds %struct.nit_ioc, %struct.nit_ioc* %4, i32 0, i32 4
  store i64 %37, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %34
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %39
  %46 = load i32, i32* @NF_TIMEOUT, align 4
  %47 = getelementptr inbounds %struct.nit_ioc, %struct.nit_ioc* %4, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sdiv i32 %53, 1000
  %55 = getelementptr inbounds %struct.nit_ioc, %struct.nit_ioc* %4, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %60, 1000
  %62 = srem i32 %61, 1000000
  %63 = getelementptr inbounds %struct.nit_ioc, %struct.nit_ioc* %4, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %45, %39
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i32, i32* @NF_PROMISC, align 4
  %73 = getelementptr inbounds %struct.nit_ioc, %struct.nit_ioc* %4, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %71, %65
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @SIOCSNIT, align 4
  %81 = call i64 @ioctl(i32 %79, i32 %80, %struct.nit_ioc* %4)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %88 = load i32, i32* @errno, align 4
  %89 = call i32 @pcap_fmt_errmsg_for_errno(i32 %86, i32 %87, i32 %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %91

90:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %83
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @memset(%struct.nit_ioc*, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.nit_ioc*) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
