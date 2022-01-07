; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_pcap_cleanup_linux.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_pcap_cleanup_linux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32, %struct.pcap_linux* }
%struct.pcap_linux = type { i32, i8*, i8*, i32 }
%struct.ifreq = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.iwreq = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, i32 }

@MUST_CLEAR_PROMISC = common dso_local global i32 0, align 4
@SIOCGIFFLAGS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [130 x i8] c"Can't restore interface %s flags (SIOCGIFFLAGS failed: %s).\0APlease adjust manually.\0AHint: This can't happen with Linux >= 2.2.0.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [130 x i8] c"Can't restore interface %s flags (SIOCSIFFLAGS failed: %s).\0APlease adjust manually.\0AHint: This can't happen with Linux >= 2.2.0.\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@MUST_CLEAR_RFMON = common dso_local global i32 0, align 4
@MUST_DELETE_MONIF = common dso_local global i32 0, align 4
@SIOCSIWMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @pcap_cleanup_linux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcap_cleanup_linux(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.pcap_linux*, align 8
  %4 = alloca %struct.ifreq, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %7 = load %struct.pcap_linux*, %struct.pcap_linux** %6, align 8
  store %struct.pcap_linux* %7, %struct.pcap_linux** %3, align 8
  %8 = load %struct.pcap_linux*, %struct.pcap_linux** %3, align 8
  %9 = getelementptr inbounds %struct.pcap_linux, %struct.pcap_linux* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %76

12:                                               ; preds = %1
  %13 = load %struct.pcap_linux*, %struct.pcap_linux** %3, align 8
  %14 = getelementptr inbounds %struct.pcap_linux, %struct.pcap_linux* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MUST_CLEAR_PROMISC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %73

19:                                               ; preds = %12
  %20 = bitcast %struct.ifreq* %4 to %struct.iwreq*
  %21 = call i32 @memset(%struct.iwreq* %20, i32 0, i32 16)
  %22 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pcap_linux*, %struct.pcap_linux** %3, align 8
  %25 = getelementptr inbounds %struct.pcap_linux, %struct.pcap_linux* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strlcpy(i32 %23, i8* %26, i32 4)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SIOCGIFFLAGS, align 4
  %32 = bitcast %struct.ifreq* %4 to %struct.iwreq*
  %33 = call i32 @ioctl(i32 %30, i32 %31, %struct.iwreq* %32)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %43

35:                                               ; preds = %19
  %36 = load i32, i32* @stderr, align 4
  %37 = load %struct.pcap_linux*, %struct.pcap_linux** %3, align 8
  %38 = getelementptr inbounds %struct.pcap_linux, %struct.pcap_linux* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* @errno, align 4
  %41 = call i8* @strerror(i32 %40)
  %42 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str, i64 0, i64 0), i8* %39, i8* %41)
  br label %72

43:                                               ; preds = %19
  %44 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IFF_PROMISC, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %43
  %50 = load i32, i32* @IFF_PROMISC, align 4
  %51 = xor i32 %50, -1
  %52 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %51
  store i32 %54, i32* %52, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SIOCSIFFLAGS, align 4
  %59 = bitcast %struct.ifreq* %4 to %struct.iwreq*
  %60 = call i32 @ioctl(i32 %57, i32 %58, %struct.iwreq* %59)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %70

62:                                               ; preds = %49
  %63 = load i32, i32* @stderr, align 4
  %64 = load %struct.pcap_linux*, %struct.pcap_linux** %3, align 8
  %65 = getelementptr inbounds %struct.pcap_linux, %struct.pcap_linux* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* @errno, align 4
  %68 = call i8* @strerror(i32 %67)
  %69 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.1, i64 0, i64 0), i8* %66, i8* %68)
  br label %70

70:                                               ; preds = %62, %49
  br label %71

71:                                               ; preds = %70, %43
  br label %72

72:                                               ; preds = %71, %35
  br label %73

73:                                               ; preds = %72, %12
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %75 = call i32 @pcap_remove_from_pcaps_to_close(%struct.TYPE_11__* %74)
  br label %76

76:                                               ; preds = %73, %1
  %77 = load %struct.pcap_linux*, %struct.pcap_linux** %3, align 8
  %78 = getelementptr inbounds %struct.pcap_linux, %struct.pcap_linux* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.pcap_linux*, %struct.pcap_linux** %3, align 8
  %83 = getelementptr inbounds %struct.pcap_linux, %struct.pcap_linux* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @free(i8* %84)
  %86 = load %struct.pcap_linux*, %struct.pcap_linux** %3, align 8
  %87 = getelementptr inbounds %struct.pcap_linux, %struct.pcap_linux* %86, i32 0, i32 2
  store i8* null, i8** %87, align 8
  br label %88

88:                                               ; preds = %81, %76
  %89 = load %struct.pcap_linux*, %struct.pcap_linux** %3, align 8
  %90 = getelementptr inbounds %struct.pcap_linux, %struct.pcap_linux* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load %struct.pcap_linux*, %struct.pcap_linux** %3, align 8
  %95 = getelementptr inbounds %struct.pcap_linux, %struct.pcap_linux* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @free(i8* %96)
  %98 = load %struct.pcap_linux*, %struct.pcap_linux** %3, align 8
  %99 = getelementptr inbounds %struct.pcap_linux, %struct.pcap_linux* %98, i32 0, i32 1
  store i8* null, i8** %99, align 8
  br label %100

100:                                              ; preds = %93, %88
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %102 = call i32 @pcap_cleanup_live_common(%struct.TYPE_11__* %101)
  ret void
}

declare dso_local i32 @memset(%struct.iwreq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.iwreq*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @pcap_remove_from_pcaps_to_close(%struct.TYPE_11__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @pcap_cleanup_live_common(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
