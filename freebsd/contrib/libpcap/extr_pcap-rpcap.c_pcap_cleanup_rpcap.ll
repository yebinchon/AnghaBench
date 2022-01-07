; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_pcap_cleanup_rpcap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_pcap_cleanup_rpcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.activehosts = type { i64, %struct.activehosts* }
%struct.TYPE_3__ = type { %struct.pcap_rpcap* }
%struct.pcap_rpcap = type { i64, i64, i32*, i32 }
%struct.rpcap_header = type { i32 }

@activeHosts = common dso_local global %struct.activehosts* null, align 8
@RPCAP_MSG_CLOSE = common dso_local global i32 0, align 4
@RPCAP_MSG_ENDCAP_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @pcap_cleanup_rpcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcap_cleanup_rpcap(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.pcap_rpcap*, align 8
  %4 = alloca %struct.rpcap_header, align 4
  %5 = alloca %struct.activehosts*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %8, align 8
  store %struct.pcap_rpcap* %9, %struct.pcap_rpcap** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.activehosts*, %struct.activehosts** @activeHosts, align 8
  store %struct.activehosts* %10, %struct.activehosts** %5, align 8
  br label %11

11:                                               ; preds = %23, %1
  %12 = load %struct.activehosts*, %struct.activehosts** %5, align 8
  %13 = icmp ne %struct.activehosts* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load %struct.activehosts*, %struct.activehosts** %5, align 8
  %16 = getelementptr inbounds %struct.activehosts, %struct.activehosts* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %3, align 8
  %19 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 1, i32* %6, align 4
  br label %27

23:                                               ; preds = %14
  %24 = load %struct.activehosts*, %struct.activehosts** %5, align 8
  %25 = getelementptr inbounds %struct.activehosts, %struct.activehosts* %24, i32 0, i32 1
  %26 = load %struct.activehosts*, %struct.activehosts** %25, align 8
  store %struct.activehosts* %26, %struct.activehosts** %5, align 8
  br label %11

27:                                               ; preds = %22, %11
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %27
  %31 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %3, align 8
  %32 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @RPCAP_MSG_CLOSE, align 4
  %35 = call i32 @rpcap_createhdr(%struct.rpcap_header* %4, i32 %33, i32 %34, i32 0, i32 0)
  %36 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %3, align 8
  %37 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = bitcast %struct.rpcap_header* %4 to i8*
  %40 = call i64 @sock_send(i64 %38, i8* %39, i32 4, i32* null, i32 0)
  br label %72

41:                                               ; preds = %27
  %42 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %3, align 8
  %43 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @RPCAP_MSG_ENDCAP_REQ, align 4
  %46 = call i32 @rpcap_createhdr(%struct.rpcap_header* %4, i32 %44, i32 %45, i32 0, i32 0)
  %47 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %3, align 8
  %48 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = bitcast %struct.rpcap_header* %4 to i8*
  %51 = call i64 @sock_send(i64 %49, i8* %50, i32 4, i32* null, i32 0)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %41
  %54 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %3, align 8
  %55 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %3, align 8
  %58 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @RPCAP_MSG_ENDCAP_REQ, align 4
  %61 = call i64 @rpcap_process_msg_header(i64 %56, i32 %59, i32 %60, %struct.rpcap_header* %4, i32* null)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %53
  %64 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %3, align 8
  %65 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.rpcap_header, %struct.rpcap_header* %4, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @rpcap_discard(i64 %66, i32 %68, i32* null)
  br label %70

70:                                               ; preds = %63, %53
  br label %71

71:                                               ; preds = %70, %41
  br label %72

72:                                               ; preds = %71, %30
  %73 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %3, align 8
  %74 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %3, align 8
  %79 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @sock_close(i64 %80, i32* null, i32 0)
  %82 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %3, align 8
  %83 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %77, %72
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %84
  %88 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %3, align 8
  %89 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %3, align 8
  %94 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @sock_close(i64 %95, i32* null, i32 0)
  br label %97

97:                                               ; preds = %92, %87, %84
  %98 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %3, align 8
  %99 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %3, align 8
  %101 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %97
  %105 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %3, align 8
  %106 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @free(i32* %107)
  %109 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %3, align 8
  %110 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %109, i32 0, i32 2
  store i32* null, i32** %110, align 8
  br label %111

111:                                              ; preds = %104, %97
  %112 = call i32 (...) @sock_cleanup()
  ret void
}

declare dso_local i32 @rpcap_createhdr(%struct.rpcap_header*, i32, i32, i32, i32) #1

declare dso_local i64 @sock_send(i64, i8*, i32, i32*, i32) #1

declare dso_local i64 @rpcap_process_msg_header(i64, i32, i32, %struct.rpcap_header*, i32*) #1

declare dso_local i32 @rpcap_discard(i64, i32, i32*) #1

declare dso_local i32 @sock_close(i64, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @sock_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
