; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-libdlpi.c_pcap_read_libdlpi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-libdlpi.c_pcap_read_libdlpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32, i64, i64, i32*, %struct.pcap_dlpi* }
%struct.pcap_dlpi = type { i32 }

@DLPI_SUCCESS = common dso_local global i32 0, align 4
@DL_SYSERR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"dlpi_recv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32*)* @pcap_read_libdlpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_read_libdlpi(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pcap_dlpi*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 7
  %17 = load %struct.pcap_dlpi*, %struct.pcap_dlpi** %16, align 8
  store %struct.pcap_dlpi* %17, %struct.pcap_dlpi** %10, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 6
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %12, align 8
  br label %83

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %79, %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  store i32 -2, i32* %5, align 4
  br label %91

36:                                               ; preds = %28
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %13, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  store i32* %48, i32** %12, align 8
  %49 = load %struct.pcap_dlpi*, %struct.pcap_dlpi** %10, align 8
  %50 = getelementptr inbounds %struct.pcap_dlpi, %struct.pcap_dlpi* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @dlpi_recv(i32 %51, i32* null, i32* null, i32* %52, i64* %13, i32 -1, i32* null)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @DLPI_SUCCESS, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %36
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @DL_SYSERR, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i64, i64* @errno, align 8
  %63 = load i64, i64* @EINTR, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 0, i32* %11, align 4
  br label %79

66:                                               ; preds = %61, %57
  %67 = load %struct.pcap_dlpi*, %struct.pcap_dlpi** %10, align 8
  %68 = getelementptr inbounds %struct.pcap_dlpi, %struct.pcap_dlpi* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dlpi_linkname(i32 %69)
  %71 = load i32, i32* %14, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @pcap_libdlpi_err(i32 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %74)
  store i32 -1, i32* %5, align 4
  br label %91

76:                                               ; preds = %36
  %77 = load i64, i64* %13, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %76, %65
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %28, label %82

82:                                               ; preds = %79
  br label %83

83:                                               ; preds = %82, %23
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @pcap_process_pkts(%struct.TYPE_4__* %84, i32 %85, i32* %86, i32 %87, i32* %88, i32 %89)
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %83, %66, %33
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @dlpi_recv(i32, i32*, i32*, i32*, i64*, i32, i32*) #1

declare dso_local i32 @pcap_libdlpi_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dlpi_linkname(i32) #1

declare dso_local i32 @pcap_process_pkts(%struct.TYPE_4__*, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
