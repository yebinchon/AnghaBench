; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c_ibv_resolve_eth_l2_from_gid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c_ibv_resolve_eth_l2_from_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.ibv_ah_attr = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64* }
%struct.get_neigh_handler = type { i32 }
%union.ibv_gid = type { i64 }
%struct.peer_address = type { i32, i32 }
%struct.in6_addr = type { i32 }

@ETHERNET_LL_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NEIGH_GET_DEFAULT_TIMEOUT_MS = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_resolve_eth_l2_from_gid(%struct.ibv_context* %0, %struct.ibv_ah_attr* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ibv_context*, align 8
  %7 = alloca %struct.ibv_ah_attr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.get_neigh_handler, align 4
  %14 = alloca %union.ibv_gid, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.peer_address, align 4
  %17 = alloca %struct.peer_address, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %6, align 8
  store %struct.ibv_ah_attr* %1, %struct.ibv_ah_attr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load i32, i32* @ETHERNET_LL_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %19, align 4
  %25 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %26 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %7, align 8
  %27 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %7, align 8
  %30 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ibv_query_gid(%struct.ibv_context* %25, i32 %28, i32 %32, %union.ibv_gid* %14)
  store i32 %33, i32* %20, align 4
  %34 = load i32, i32* %20, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* %20, align 4
  store i32 %37, i32* %5, align 4
  br label %141

38:                                               ; preds = %4
  %39 = load i32, i32* @NEIGH_GET_DEFAULT_TIMEOUT_MS, align 4
  %40 = call i32 @neigh_init_resources(%struct.get_neigh_handler* %13, i32 %39)
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %20, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %20, align 4
  store i32 %44, i32* %5, align 4
  br label %141

45:                                               ; preds = %38
  %46 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %7, align 8
  %47 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = bitcast i64* %50 to %struct.in6_addr*
  %52 = call i64 @ipv6_addr_v4mapped(%struct.in6_addr* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @AF_INET, align 4
  br label %58

56:                                               ; preds = %45
  %57 = load i32, i32* @AF_INET6, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %10, align 4
  %60 = bitcast %union.ibv_gid* %14 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.in6_addr*
  %63 = call i64 @ipv6_addr_v4mapped(%struct.in6_addr* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @AF_INET, align 4
  br label %69

67:                                               ; preds = %58
  %68 = load i32, i32* @AF_INET6, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %7, align 8
  %73 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = call i64 @create_peer_from_gid(i32 %71, i64* %76, %struct.peer_address* %17)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  br label %138

80:                                               ; preds = %69
  %81 = load i32, i32* %11, align 4
  %82 = bitcast %union.ibv_gid* %14 to i64*
  %83 = call i64 @create_peer_from_gid(i32 %81, i64* %82, %struct.peer_address* %16)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %138

86:                                               ; preds = %80
  %87 = load i32, i32* %10, align 4
  %88 = getelementptr inbounds %struct.peer_address, %struct.peer_address* %17, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.peer_address, %struct.peer_address* %17, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @neigh_set_dst(%struct.get_neigh_handler* %13, i32 %87, i32 %89, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %138

95:                                               ; preds = %86
  %96 = load i32, i32* %11, align 4
  %97 = getelementptr inbounds %struct.peer_address, %struct.peer_address* %16, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.peer_address, %struct.peer_address* %16, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @neigh_set_src(%struct.get_neigh_handler* %13, i32 %96, i32 %98, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %138

104:                                              ; preds = %95
  %105 = call i32 @neigh_get_oif_from_src(%struct.get_neigh_handler* %13)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @neigh_set_oif(%struct.get_neigh_handler* %13, i32 %109)
  br label %112

111:                                              ; preds = %104
  br label %138

112:                                              ; preds = %108
  %113 = load i32, i32* @EHOSTUNREACH, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %19, align 4
  %115 = call i64 @process_get_neigh(%struct.get_neigh_handler* %13)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %138

118:                                              ; preds = %112
  %119 = call i32 @neigh_get_vlan_id_from_dev(%struct.get_neigh_handler* %13)
  store i32 %119, i32* %18, align 4
  %120 = load i32, i32* %18, align 4
  %121 = icmp sle i32 %120, 4095
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i32, i32* %18, align 4
  %124 = call i32 @neigh_set_vlan_id(%struct.get_neigh_handler* %13, i32 %123)
  br label %125

125:                                              ; preds = %122, %118
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* @ETHERNET_LL_SIZE, align 4
  %128 = sext i32 %127 to i64
  %129 = mul i64 4, %128
  %130 = trunc i64 %129 to i32
  %131 = call i32 @neigh_get_ll(%struct.get_neigh_handler* %13, i32* %126, i32 %130)
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %15, align 4
  %133 = icmp sle i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %138

135:                                              ; preds = %125
  %136 = load i32, i32* %18, align 4
  %137 = load i32*, i32** %9, align 8
  store i32 %136, i32* %137, align 4
  store i32 0, i32* %19, align 4
  br label %138

138:                                              ; preds = %135, %134, %117, %111, %103, %94, %85, %79
  %139 = call i32 @neigh_free_resources(%struct.get_neigh_handler* %13)
  %140 = load i32, i32* %19, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %138, %43, %36
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @ibv_query_gid(%struct.ibv_context*, i32, i32, %union.ibv_gid*) #1

declare dso_local i32 @neigh_init_resources(%struct.get_neigh_handler*, i32) #1

declare dso_local i64 @ipv6_addr_v4mapped(%struct.in6_addr*) #1

declare dso_local i64 @create_peer_from_gid(i32, i64*, %struct.peer_address*) #1

declare dso_local i64 @neigh_set_dst(%struct.get_neigh_handler*, i32, i32, i32) #1

declare dso_local i64 @neigh_set_src(%struct.get_neigh_handler*, i32, i32, i32) #1

declare dso_local i32 @neigh_get_oif_from_src(%struct.get_neigh_handler*) #1

declare dso_local i32 @neigh_set_oif(%struct.get_neigh_handler*, i32) #1

declare dso_local i64 @process_get_neigh(%struct.get_neigh_handler*) #1

declare dso_local i32 @neigh_get_vlan_id_from_dev(%struct.get_neigh_handler*) #1

declare dso_local i32 @neigh_set_vlan_id(%struct.get_neigh_handler*, i32) #1

declare dso_local i32 @neigh_get_ll(%struct.get_neigh_handler*, i32*, i32) #1

declare dso_local i32 @neigh_free_resources(%struct.get_neigh_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
