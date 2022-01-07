; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_xid_map_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_xid_map_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xid_map_entry = type { i32, i8*, i8*, i32, i32, i32 }
%struct.sunrpc_msg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ip = type { i32, i32 }
%struct.ip6_hdr = type { i32, i32 }

@xid_map = common dso_local global %struct.xid_map_entry* null, align 8
@xid_map_next = common dso_local global i64 0, align 8
@XIDMAPSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.sunrpc_msg*, i32*)* @xid_map_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xid_map_enter(i32* %0, %struct.sunrpc_msg* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sunrpc_msg*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ip*, align 8
  %9 = alloca %struct.ip6_hdr*, align 8
  %10 = alloca %struct.xid_map_entry*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.sunrpc_msg* %1, %struct.sunrpc_msg** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.ip* null, %struct.ip** %8, align 8
  store %struct.ip6_hdr* null, %struct.ip6_hdr** %9, align 8
  %11 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %6, align 8
  %12 = getelementptr inbounds %struct.sunrpc_msg, %struct.sunrpc_msg* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ND_TTEST(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %89

18:                                               ; preds = %3
  %19 = load i32*, i32** %7, align 8
  %20 = bitcast i32* %19 to %struct.ip*
  %21 = call i32 @IP_V(%struct.ip* %20)
  switch i32 %21, label %28 [
    i32 4, label %22
    i32 6, label %25
  ]

22:                                               ; preds = %18
  %23 = load i32*, i32** %7, align 8
  %24 = bitcast i32* %23 to %struct.ip*
  store %struct.ip* %24, %struct.ip** %8, align 8
  br label %29

25:                                               ; preds = %18
  %26 = load i32*, i32** %7, align 8
  %27 = bitcast i32* %26 to %struct.ip6_hdr*
  store %struct.ip6_hdr* %27, %struct.ip6_hdr** %9, align 8
  br label %29

28:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %89

29:                                               ; preds = %25, %22
  %30 = load %struct.xid_map_entry*, %struct.xid_map_entry** @xid_map, align 8
  %31 = load i64, i64* @xid_map_next, align 8
  %32 = getelementptr inbounds %struct.xid_map_entry, %struct.xid_map_entry* %30, i64 %31
  store %struct.xid_map_entry* %32, %struct.xid_map_entry** %10, align 8
  %33 = load i64, i64* @xid_map_next, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* @xid_map_next, align 8
  %35 = load i64, i64* @XIDMAPSIZE, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i64 0, i64* @xid_map_next, align 8
  br label %38

38:                                               ; preds = %37, %29
  %39 = load %struct.xid_map_entry*, %struct.xid_map_entry** %10, align 8
  %40 = getelementptr inbounds %struct.xid_map_entry, %struct.xid_map_entry* %39, i32 0, i32 5
  %41 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %6, align 8
  %42 = getelementptr inbounds %struct.sunrpc_msg, %struct.sunrpc_msg* %41, i32 0, i32 1
  %43 = call i32 @UNALIGNED_MEMCPY(i32* %40, i32* %42, i32 4)
  %44 = load %struct.ip*, %struct.ip** %8, align 8
  %45 = icmp ne %struct.ip* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %38
  %47 = load %struct.xid_map_entry*, %struct.xid_map_entry** %10, align 8
  %48 = getelementptr inbounds %struct.xid_map_entry, %struct.xid_map_entry* %47, i32 0, i32 0
  store i32 4, i32* %48, align 8
  %49 = load %struct.xid_map_entry*, %struct.xid_map_entry** %10, align 8
  %50 = getelementptr inbounds %struct.xid_map_entry, %struct.xid_map_entry* %49, i32 0, i32 4
  %51 = load %struct.ip*, %struct.ip** %8, align 8
  %52 = getelementptr inbounds %struct.ip, %struct.ip* %51, i32 0, i32 1
  %53 = call i32 @UNALIGNED_MEMCPY(i32* %50, i32* %52, i32 4)
  %54 = load %struct.xid_map_entry*, %struct.xid_map_entry** %10, align 8
  %55 = getelementptr inbounds %struct.xid_map_entry, %struct.xid_map_entry* %54, i32 0, i32 3
  %56 = load %struct.ip*, %struct.ip** %8, align 8
  %57 = getelementptr inbounds %struct.ip, %struct.ip* %56, i32 0, i32 0
  %58 = call i32 @UNALIGNED_MEMCPY(i32* %55, i32* %57, i32 4)
  br label %76

59:                                               ; preds = %38
  %60 = load %struct.ip6_hdr*, %struct.ip6_hdr** %9, align 8
  %61 = icmp ne %struct.ip6_hdr* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load %struct.xid_map_entry*, %struct.xid_map_entry** %10, align 8
  %64 = getelementptr inbounds %struct.xid_map_entry, %struct.xid_map_entry* %63, i32 0, i32 0
  store i32 6, i32* %64, align 8
  %65 = load %struct.xid_map_entry*, %struct.xid_map_entry** %10, align 8
  %66 = getelementptr inbounds %struct.xid_map_entry, %struct.xid_map_entry* %65, i32 0, i32 4
  %67 = load %struct.ip6_hdr*, %struct.ip6_hdr** %9, align 8
  %68 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %67, i32 0, i32 1
  %69 = call i32 @UNALIGNED_MEMCPY(i32* %66, i32* %68, i32 4)
  %70 = load %struct.xid_map_entry*, %struct.xid_map_entry** %10, align 8
  %71 = getelementptr inbounds %struct.xid_map_entry, %struct.xid_map_entry* %70, i32 0, i32 3
  %72 = load %struct.ip6_hdr*, %struct.ip6_hdr** %9, align 8
  %73 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %72, i32 0, i32 0
  %74 = call i32 @UNALIGNED_MEMCPY(i32* %71, i32* %73, i32 4)
  br label %75

75:                                               ; preds = %62, %59
  br label %76

76:                                               ; preds = %75, %46
  %77 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %6, align 8
  %78 = getelementptr inbounds %struct.sunrpc_msg, %struct.sunrpc_msg* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = call i8* @EXTRACT_32BITS(i32* %79)
  %81 = load %struct.xid_map_entry*, %struct.xid_map_entry** %10, align 8
  %82 = getelementptr inbounds %struct.xid_map_entry, %struct.xid_map_entry* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  %83 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %6, align 8
  %84 = getelementptr inbounds %struct.sunrpc_msg, %struct.sunrpc_msg* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = call i8* @EXTRACT_32BITS(i32* %85)
  %87 = load %struct.xid_map_entry*, %struct.xid_map_entry** %10, align 8
  %88 = getelementptr inbounds %struct.xid_map_entry, %struct.xid_map_entry* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  store i32 1, i32* %4, align 4
  br label %89

89:                                               ; preds = %76, %28, %17
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @ND_TTEST(i32) #1

declare dso_local i32 @IP_V(%struct.ip*) #1

declare dso_local i32 @UNALIGNED_MEMCPY(i32*, i32*, i32) #1

declare dso_local i8* @EXTRACT_32BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
