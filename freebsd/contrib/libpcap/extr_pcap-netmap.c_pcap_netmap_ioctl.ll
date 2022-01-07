; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-netmap.c_pcap_netmap_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-netmap.c_pcap_netmap_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.pcap_netmap* }
%struct.pcap_netmap = type { %struct.nm_desc* }
%struct.nm_desc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ifreq = type { i32, i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Error: cannot get device control socket.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32*)* @pcap_netmap_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_netmap_ioctl(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pcap_netmap*, align 8
  %9 = alloca %struct.nm_desc*, align 8
  %10 = alloca %struct.ifreq, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.pcap_netmap*, %struct.pcap_netmap** %14, align 8
  store %struct.pcap_netmap* %15, %struct.pcap_netmap** %8, align 8
  %16 = load %struct.pcap_netmap*, %struct.pcap_netmap** %8, align 8
  %17 = getelementptr inbounds %struct.pcap_netmap, %struct.pcap_netmap* %16, i32 0, i32 0
  %18 = load %struct.nm_desc*, %struct.nm_desc** %17, align 8
  store %struct.nm_desc* %18, %struct.nm_desc** %9, align 8
  %19 = load %struct.nm_desc*, %struct.nm_desc** %9, align 8
  %20 = getelementptr inbounds %struct.nm_desc, %struct.nm_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* @AF_INET, align 4
  %23 = load i32, i32* @SOCK_DGRAM, align 4
  %24 = call i32 @socket(i32 %22, i32 %23, i32 0)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %66

30:                                               ; preds = %3
  %31 = call i32 @bzero(%struct.ifreq* %10, i32 12)
  %32 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %10, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nm_desc*, %struct.nm_desc** %9, align 8
  %35 = getelementptr inbounds %struct.nm_desc, %struct.nm_desc* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strncpy(i32 %33, i32 %37, i32 4)
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %45 [
    i32 128, label %40
  ]

40:                                               ; preds = %30
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 65535
  %44 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %10, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %30, %40
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @ioctl(i32 %46, i32 %47, %struct.ifreq* %10)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  switch i32 %52, label %58 [
    i32 129, label %53
  ]

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %10, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 65535
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %51
  br label %59

59:                                               ; preds = %58, %45
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @close(i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 -1, i32 0
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %59, %27
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @bzero(%struct.ifreq*, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
