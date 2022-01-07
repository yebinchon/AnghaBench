; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_xid_map_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_xid_map_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xid_map_entry = type { i32, i64, i64, i64, i32, i32 }
%struct.sunrpc_msg = type { i32 }
%struct.ip = type { i32, i32 }
%struct.ip6_hdr = type { i32, i32 }

@xid_map_hint = common dso_local global i32 0, align 4
@xid_map = common dso_local global %struct.xid_map_entry* null, align 8
@XIDMAPSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sunrpc_msg*, i32*, i64*, i64*)* @xid_map_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xid_map_find(%struct.sunrpc_msg* %0, i32* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sunrpc_msg*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xid_map_entry*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ip*, align 8
  %14 = alloca %struct.ip6_hdr*, align 8
  %15 = alloca i32, align 4
  store %struct.sunrpc_msg* %0, %struct.sunrpc_msg** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = bitcast i32* %16 to %struct.ip*
  store %struct.ip* %17, %struct.ip** %13, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = bitcast i32* %18 to %struct.ip6_hdr*
  store %struct.ip6_hdr* %19, %struct.ip6_hdr** %14, align 8
  %20 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %6, align 8
  %21 = getelementptr inbounds %struct.sunrpc_msg, %struct.sunrpc_msg* %20, i32 0, i32 0
  %22 = call i32 @UNALIGNED_MEMCPY(i64* %12, i32* %21, i32 8)
  %23 = load i32, i32* @xid_map_hint, align 4
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %100, %4
  %25 = load %struct.xid_map_entry*, %struct.xid_map_entry** @xid_map, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.xid_map_entry, %struct.xid_map_entry* %25, i64 %27
  store %struct.xid_map_entry* %28, %struct.xid_map_entry** %11, align 8
  store i32 1, i32* %15, align 4
  %29 = load %struct.xid_map_entry*, %struct.xid_map_entry** %11, align 8
  %30 = getelementptr inbounds %struct.xid_map_entry, %struct.xid_map_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ip*, %struct.ip** %13, align 8
  %33 = call i32 @IP_V(%struct.ip* %32)
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %24
  %36 = load %struct.xid_map_entry*, %struct.xid_map_entry** %11, align 8
  %37 = getelementptr inbounds %struct.xid_map_entry, %struct.xid_map_entry* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %24
  br label %93

42:                                               ; preds = %35
  %43 = load %struct.xid_map_entry*, %struct.xid_map_entry** %11, align 8
  %44 = getelementptr inbounds %struct.xid_map_entry, %struct.xid_map_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %78 [
    i32 4, label %46
    i32 6, label %62
  ]

46:                                               ; preds = %42
  %47 = load %struct.ip*, %struct.ip** %13, align 8
  %48 = getelementptr inbounds %struct.ip, %struct.ip* %47, i32 0, i32 1
  %49 = load %struct.xid_map_entry*, %struct.xid_map_entry** %11, align 8
  %50 = getelementptr inbounds %struct.xid_map_entry, %struct.xid_map_entry* %49, i32 0, i32 5
  %51 = call i32 @UNALIGNED_MEMCMP(i32* %48, i32* %50, i32 4)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load %struct.ip*, %struct.ip** %13, align 8
  %55 = getelementptr inbounds %struct.ip, %struct.ip* %54, i32 0, i32 0
  %56 = load %struct.xid_map_entry*, %struct.xid_map_entry** %11, align 8
  %57 = getelementptr inbounds %struct.xid_map_entry, %struct.xid_map_entry* %56, i32 0, i32 4
  %58 = call i32 @UNALIGNED_MEMCMP(i32* %55, i32* %57, i32 4)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53, %46
  store i32 0, i32* %15, align 4
  br label %61

61:                                               ; preds = %60, %53
  br label %79

62:                                               ; preds = %42
  %63 = load %struct.ip6_hdr*, %struct.ip6_hdr** %14, align 8
  %64 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %63, i32 0, i32 1
  %65 = load %struct.xid_map_entry*, %struct.xid_map_entry** %11, align 8
  %66 = getelementptr inbounds %struct.xid_map_entry, %struct.xid_map_entry* %65, i32 0, i32 5
  %67 = call i32 @UNALIGNED_MEMCMP(i32* %64, i32* %66, i32 4)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %62
  %70 = load %struct.ip6_hdr*, %struct.ip6_hdr** %14, align 8
  %71 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %70, i32 0, i32 0
  %72 = load %struct.xid_map_entry*, %struct.xid_map_entry** %11, align 8
  %73 = getelementptr inbounds %struct.xid_map_entry, %struct.xid_map_entry* %72, i32 0, i32 4
  %74 = call i32 @UNALIGNED_MEMCMP(i32* %71, i32* %73, i32 4)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69, %62
  store i32 0, i32* %15, align 4
  br label %77

77:                                               ; preds = %76, %69
  br label %79

78:                                               ; preds = %42
  store i32 0, i32* %15, align 4
  br label %79

79:                                               ; preds = %78, %77, %61
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* @xid_map_hint, align 4
  %84 = load %struct.xid_map_entry*, %struct.xid_map_entry** %11, align 8
  %85 = getelementptr inbounds %struct.xid_map_entry, %struct.xid_map_entry* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** %8, align 8
  store i64 %86, i64* %87, align 8
  %88 = load %struct.xid_map_entry*, %struct.xid_map_entry** %11, align 8
  %89 = getelementptr inbounds %struct.xid_map_entry, %struct.xid_map_entry* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i64*, i64** %9, align 8
  store i64 %90, i64* %91, align 8
  store i32 0, i32* %5, align 4
  br label %105

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92, %41
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* @XIDMAPSIZE, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %98, %93
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @xid_map_hint, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %24, label %104

104:                                              ; preds = %100
  store i32 -1, i32* %5, align 4
  br label %105

105:                                              ; preds = %104, %82
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @UNALIGNED_MEMCPY(i64*, i32*, i32) #1

declare dso_local i32 @IP_V(%struct.ip*) #1

declare dso_local i32 @UNALIGNED_MEMCMP(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
