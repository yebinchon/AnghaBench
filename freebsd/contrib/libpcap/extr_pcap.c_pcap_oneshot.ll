; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap.c_pcap_oneshot.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap.c_pcap_oneshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_pkthdr = type { i32 }
%struct.oneshot_userdata = type { i32**, %struct.pcap_pkthdr* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcap_oneshot(i32* %0, %struct.pcap_pkthdr* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pcap_pkthdr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.oneshot_userdata*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.oneshot_userdata*
  store %struct.oneshot_userdata* %9, %struct.oneshot_userdata** %7, align 8
  %10 = load %struct.oneshot_userdata*, %struct.oneshot_userdata** %7, align 8
  %11 = getelementptr inbounds %struct.oneshot_userdata, %struct.oneshot_userdata* %10, i32 0, i32 1
  %12 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %11, align 8
  %13 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8
  %14 = bitcast %struct.pcap_pkthdr* %12 to i8*
  %15 = bitcast %struct.pcap_pkthdr* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.oneshot_userdata*, %struct.oneshot_userdata** %7, align 8
  %18 = getelementptr inbounds %struct.oneshot_userdata, %struct.oneshot_userdata* %17, i32 0, i32 0
  %19 = load i32**, i32*** %18, align 8
  store i32* %16, i32** %19, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
