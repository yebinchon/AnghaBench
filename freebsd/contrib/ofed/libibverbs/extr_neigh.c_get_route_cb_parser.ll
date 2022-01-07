; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_neigh.c_get_route_cb_parser.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_neigh.c_get_route_cb_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_object = type { i32 }
%struct.get_neigh_handler = type { i32, i32*, i8*, i32*, i32 }
%struct.rtnl_route = type { i32 }
%struct.nl_addr = type { i32 }
%struct.rtnl_link = type { i32 }
%struct.rtnl_nexthop = type { i32 }

@RTN_BLACKHOLE = common dso_local global i32 0, align 4
@RTN_UNREACHABLE = common dso_local global i32 0, align 4
@RTN_PROHIBIT = common dso_local global i32 0, align 4
@RTN_THROW = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nl_object*, i8*)* @get_route_cb_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_route_cb_parser(%struct.nl_object* %0, i8* %1) #0 {
  %3 = alloca %struct.nl_object*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.get_neigh_handler*, align 8
  %6 = alloca %struct.rtnl_route*, align 8
  %7 = alloca %struct.nl_addr*, align 8
  %8 = alloca %struct.nl_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rtnl_link*, align 8
  %12 = alloca %struct.rtnl_nexthop*, align 8
  %13 = alloca %struct.nl_addr*, align 8
  store %struct.nl_object* %0, %struct.nl_object** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.get_neigh_handler*
  store %struct.get_neigh_handler* %15, %struct.get_neigh_handler** %5, align 8
  %16 = load %struct.nl_object*, %struct.nl_object** %3, align 8
  %17 = bitcast %struct.nl_object* %16 to %struct.rtnl_route*
  store %struct.rtnl_route* %17, %struct.rtnl_route** %6, align 8
  store %struct.nl_addr* null, %struct.nl_addr** %7, align 8
  %18 = load %struct.rtnl_route*, %struct.rtnl_route** %6, align 8
  %19 = call %struct.nl_addr* @rtnl_route_get_pref_src(%struct.rtnl_route* %18)
  store %struct.nl_addr* %19, %struct.nl_addr** %8, align 8
  %20 = load %struct.rtnl_route*, %struct.rtnl_route** %6, align 8
  %21 = call i32 @rtnl_route_get_type(%struct.rtnl_route* %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.rtnl_route*, %struct.rtnl_route** %6, align 8
  %23 = call %struct.rtnl_nexthop* @rtnl_route_nexthop_n(%struct.rtnl_route* %22, i32 0)
  store %struct.rtnl_nexthop* %23, %struct.rtnl_nexthop** %12, align 8
  %24 = load %struct.rtnl_nexthop*, %struct.rtnl_nexthop** %12, align 8
  %25 = icmp ne %struct.rtnl_nexthop* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.rtnl_nexthop*, %struct.rtnl_nexthop** %12, align 8
  %28 = call %struct.nl_addr* @rtnl_route_nh_get_gateway(%struct.rtnl_nexthop* %27)
  store %struct.nl_addr* %28, %struct.nl_addr** %7, align 8
  br label %29

29:                                               ; preds = %26, %2
  %30 = load %struct.rtnl_nexthop*, %struct.rtnl_nexthop** %12, align 8
  %31 = call i32 @rtnl_route_nh_get_ifindex(%struct.rtnl_nexthop* %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.nl_addr*, %struct.nl_addr** %7, align 8
  %33 = icmp ne %struct.nl_addr* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %5, align 8
  %36 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @nl_addr_put(i32* %37)
  %39 = load %struct.nl_addr*, %struct.nl_addr** %7, align 8
  %40 = call i8* @nl_addr_clone(%struct.nl_addr* %39)
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %5, align 8
  %43 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %42, i32 0, i32 3
  store i32* %41, i32** %43, align 8
  br label %44

44:                                               ; preds = %34, %29
  %45 = load i32, i32* @RTN_BLACKHOLE, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %60, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @RTN_UNREACHABLE, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @RTN_PROHIBIT, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @RTN_THROW, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56, %52, %48, %44
  %61 = load i32, i32* @ENETUNREACH, align 4
  store i32 %61, i32* @errno, align 4
  br label %127

62:                                               ; preds = %56
  %63 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %5, align 8
  %64 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %76, label %67

67:                                               ; preds = %62
  %68 = load %struct.nl_addr*, %struct.nl_addr** %8, align 8
  %69 = icmp ne %struct.nl_addr* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.nl_addr*, %struct.nl_addr** %8, align 8
  %72 = call i8* @nl_addr_clone(%struct.nl_addr* %71)
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %5, align 8
  %75 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %74, i32 0, i32 1
  store i32* %73, i32** %75, align 8
  br label %76

76:                                               ; preds = %70, %67, %62
  %77 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %5, align 8
  %78 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load i32, i32* %9, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %5, align 8
  %87 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %84, %81, %76
  %89 = load i32, i32* @RTN_LOCAL, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %88
  %93 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %5, align 8
  %94 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %5, align 8
  %97 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call %struct.rtnl_link* @rtnl_link_get(i32 %95, i32 %98)
  store %struct.rtnl_link* %99, %struct.rtnl_link** %11, align 8
  %100 = load %struct.rtnl_link*, %struct.rtnl_link** %11, align 8
  %101 = icmp eq %struct.rtnl_link* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  br label %127

103:                                              ; preds = %92
  %104 = load %struct.rtnl_link*, %struct.rtnl_link** %11, align 8
  %105 = call %struct.nl_addr* @rtnl_link_get_addr(%struct.rtnl_link* %104)
  store %struct.nl_addr* %105, %struct.nl_addr** %13, align 8
  %106 = load %struct.nl_addr*, %struct.nl_addr** %13, align 8
  %107 = icmp eq %struct.nl_addr* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %124

109:                                              ; preds = %103
  %110 = load %struct.nl_addr*, %struct.nl_addr** %13, align 8
  %111 = call i8* @nl_addr_clone(%struct.nl_addr* %110)
  %112 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %5, align 8
  %113 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = load %struct.rtnl_link*, %struct.rtnl_link** %11, align 8
  %115 = call i32 @rtnl_link_put(%struct.rtnl_link* %114)
  br label %123

116:                                              ; preds = %88
  %117 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %5, align 8
  %118 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %5, align 8
  %121 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %120, i32 0, i32 2
  %122 = call i32 @handle_encoded_mac(i32* %119, i8** %121)
  br label %123

123:                                              ; preds = %116, %109
  br label %139

124:                                              ; preds = %108
  %125 = load %struct.rtnl_link*, %struct.rtnl_link** %11, align 8
  %126 = call i32 @rtnl_link_put(%struct.rtnl_link* %125)
  br label %127

127:                                              ; preds = %124, %102, %60
  %128 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %5, align 8
  %129 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %127
  %133 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %5, align 8
  %134 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @nl_addr_put(i32* %135)
  %137 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %5, align 8
  %138 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %137, i32 0, i32 1
  store i32* null, i32** %138, align 8
  br label %139

139:                                              ; preds = %123, %132, %127
  ret void
}

declare dso_local %struct.nl_addr* @rtnl_route_get_pref_src(%struct.rtnl_route*) #1

declare dso_local i32 @rtnl_route_get_type(%struct.rtnl_route*) #1

declare dso_local %struct.rtnl_nexthop* @rtnl_route_nexthop_n(%struct.rtnl_route*, i32) #1

declare dso_local %struct.nl_addr* @rtnl_route_nh_get_gateway(%struct.rtnl_nexthop*) #1

declare dso_local i32 @rtnl_route_nh_get_ifindex(%struct.rtnl_nexthop*) #1

declare dso_local i32 @nl_addr_put(i32*) #1

declare dso_local i8* @nl_addr_clone(%struct.nl_addr*) #1

declare dso_local %struct.rtnl_link* @rtnl_link_get(i32, i32) #1

declare dso_local %struct.nl_addr* @rtnl_link_get_addr(%struct.rtnl_link*) #1

declare dso_local i32 @rtnl_link_put(%struct.rtnl_link*) #1

declare dso_local i32 @handle_encoded_mac(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
