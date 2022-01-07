; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dos.c_pcap_stats_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dos.c_pcap_stats_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.pcap_stat_ex = type { i32 }
%struct.device = type { i32 (%struct.device*)*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"detailed device statistics not available\00", align 1
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"pkt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"pktdrvr doesn't have detailed statistics\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcap_stats_ex(%struct.TYPE_3__* %0, %struct.pcap_stat_ex* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.pcap_stat_ex*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.pcap_stat_ex* %1, %struct.pcap_stat_ex** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.device* @get_device(i32 %12)
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %9
  %16 = phi %struct.device* [ %13, %9 ], [ null, %14 ]
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = icmp ne %struct.device* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load i32 (%struct.device*)*, i32 (%struct.device*)** %21, align 8
  %23 = icmp ne i32 (%struct.device*)* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %19, %15
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %29 = call i32 @strlcpy(i32 %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 -1, i32* %3, align 4
  br label %50

30:                                               ; preds = %19
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @strnicmp(i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %41 = call i32 @strlcpy(i32 %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  store i32 -1, i32* %3, align 4
  br label %50

42:                                               ; preds = %30
  %43 = load %struct.pcap_stat_ex*, %struct.pcap_stat_ex** %5, align 8
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = getelementptr inbounds %struct.device, %struct.device* %44, i32 0, i32 0
  %46 = load i32 (%struct.device*)*, i32 (%struct.device*)** %45, align 8
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = call i32 %46(%struct.device* %47)
  %49 = call i32 @memcpy(%struct.pcap_stat_ex* %43, i32 %48, i32 4)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %42, %36, %24
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.device* @get_device(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @strnicmp(i32, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.pcap_stat_ex*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
