; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_util.c_vlan_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_util.c_vlan_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_sock = type { i32 }
%struct.rtnl_link = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"VLAN: vlan_add(if_name=%s, vid=%d, vlan_if_name=%s)\00", align 1
@IFNAMSIZ = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"VLAN: Interface name too long: '%s'\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"VLAN: failed to open netlink socket\00", align 1
@NETLINK_ROUTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"VLAN: failed to connect to netlink: %s\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"VLAN: interface %s does not exist\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"VLAN: interface %s already exists\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"VLAN: failed to allocate new link\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"vlan\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"VLAN: failed to set link type: %s\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"VLAN: failed to set link vlan id: %s\00", align 1
@NLM_F_CREATE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [58 x i8] c"VLAN: failed to create link %s for vlan %d on %s (%d): %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlan_add(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nl_sock*, align 8
  %11 = alloca %struct.rtnl_link*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 -1, i32* %9, align 4
  store %struct.nl_sock* null, %struct.nl_sock** %10, align 8
  store %struct.rtnl_link* null, %struct.rtnl_link** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 (i32, i8*, ...) @wpa_printf(i32 %13, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %15, i8* %16)
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @os_strlen(i8* %18)
  %20 = add nsw i64 %19, 1
  %21 = load i64, i64* @IFNAMSIZ, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @MSG_ERROR, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  store i32 -1, i32* %4, align 4
  br label %146

27:                                               ; preds = %3
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @os_strlen(i8* %28)
  %30 = add nsw i64 %29, 1
  %31 = load i64, i64* @IFNAMSIZ, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* @MSG_ERROR, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  store i32 -1, i32* %4, align 4
  br label %146

37:                                               ; preds = %27
  %38 = call %struct.nl_sock* (...) @nl_socket_alloc()
  store %struct.nl_sock* %38, %struct.nl_sock** %10, align 8
  %39 = load %struct.nl_sock*, %struct.nl_sock** %10, align 8
  %40 = icmp ne %struct.nl_sock* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @MSG_ERROR, align 4
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %132

44:                                               ; preds = %37
  %45 = load %struct.nl_sock*, %struct.nl_sock** %10, align 8
  %46 = load i32, i32* @NETLINK_ROUTE, align 4
  %47 = call i32 @nl_connect(%struct.nl_sock* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load i32, i32* @MSG_ERROR, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @nl_geterror(i32 %52)
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  br label %132

55:                                               ; preds = %44
  %56 = load %struct.nl_sock*, %struct.nl_sock** %10, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @rtnl_link_get_kernel(%struct.nl_sock* %56, i32 0, i8* %57, %struct.rtnl_link** %11)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* @MSG_ERROR, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  br label %132

65:                                               ; preds = %55
  %66 = load %struct.rtnl_link*, %struct.rtnl_link** %11, align 8
  %67 = call i32 @rtnl_link_get_ifindex(%struct.rtnl_link* %66)
  store i32 %67, i32* %12, align 4
  %68 = load %struct.rtnl_link*, %struct.rtnl_link** %11, align 8
  %69 = call i32 @rtnl_link_put(%struct.rtnl_link* %68)
  store %struct.rtnl_link* null, %struct.rtnl_link** %11, align 8
  %70 = load %struct.nl_sock*, %struct.nl_sock** %10, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @rtnl_link_get_kernel(%struct.nl_sock* %70, i32 0, i8* %71, %struct.rtnl_link** %11)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %65
  %76 = load %struct.rtnl_link*, %struct.rtnl_link** %11, align 8
  %77 = call i32 @rtnl_link_put(%struct.rtnl_link* %76)
  store %struct.rtnl_link* null, %struct.rtnl_link** %11, align 8
  %78 = load i32, i32* @MSG_ERROR, align 4
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 (i32, i8*, ...) @wpa_printf(i32 %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %79)
  store i32 1, i32* %9, align 4
  br label %132

81:                                               ; preds = %65
  %82 = call %struct.rtnl_link* (...) @rtnl_link_alloc()
  store %struct.rtnl_link* %82, %struct.rtnl_link** %11, align 8
  %83 = load %struct.rtnl_link*, %struct.rtnl_link** %11, align 8
  %84 = icmp ne %struct.rtnl_link* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* @MSG_ERROR, align 4
  %87 = call i32 (i32, i8*, ...) @wpa_printf(i32 %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %132

88:                                               ; preds = %81
  %89 = load %struct.rtnl_link*, %struct.rtnl_link** %11, align 8
  %90 = call i32 @rtnl_link_set_type(%struct.rtnl_link* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i32, i32* @MSG_ERROR, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @nl_geterror(i32 %95)
  %97 = call i32 (i32, i8*, ...) @wpa_printf(i32 %94, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %96)
  br label %132

98:                                               ; preds = %88
  %99 = load %struct.rtnl_link*, %struct.rtnl_link** %11, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @rtnl_link_set_link(%struct.rtnl_link* %99, i32 %100)
  %102 = load %struct.rtnl_link*, %struct.rtnl_link** %11, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = call i32 @rtnl_link_set_name(%struct.rtnl_link* %102, i8* %103)
  %105 = load %struct.rtnl_link*, %struct.rtnl_link** %11, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @rtnl_link_vlan_set_id(%struct.rtnl_link* %105, i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %98
  %111 = load i32, i32* @MSG_ERROR, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @nl_geterror(i32 %112)
  %114 = call i32 (i32, i8*, ...) @wpa_printf(i32 %111, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %113)
  br label %132

115:                                              ; preds = %98
  %116 = load %struct.nl_sock*, %struct.nl_sock** %10, align 8
  %117 = load %struct.rtnl_link*, %struct.rtnl_link** %11, align 8
  %118 = load i32, i32* @NLM_F_CREATE, align 4
  %119 = call i32 @rtnl_link_add(%struct.nl_sock* %116, %struct.rtnl_link* %117, i32 %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %115
  %123 = load i32, i32* @MSG_ERROR, align 4
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load i8*, i8** %5, align 8
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @nl_geterror(i32 %128)
  %130 = call i32 (i32, i8*, ...) @wpa_printf(i32 %123, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i8* %124, i32 %125, i8* %126, i32 %127, i32 %129)
  br label %132

131:                                              ; preds = %115
  store i32 0, i32* %9, align 4
  br label %132

132:                                              ; preds = %131, %122, %110, %93, %85, %75, %61, %50, %41
  %133 = load %struct.rtnl_link*, %struct.rtnl_link** %11, align 8
  %134 = icmp ne %struct.rtnl_link* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load %struct.rtnl_link*, %struct.rtnl_link** %11, align 8
  %137 = call i32 @rtnl_link_put(%struct.rtnl_link* %136)
  br label %138

138:                                              ; preds = %135, %132
  %139 = load %struct.nl_sock*, %struct.nl_sock** %10, align 8
  %140 = icmp ne %struct.nl_sock* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load %struct.nl_sock*, %struct.nl_sock** %10, align 8
  %143 = call i32 @nl_socket_free(%struct.nl_sock* %142)
  br label %144

144:                                              ; preds = %141, %138
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %144, %33, %23
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local %struct.nl_sock* @nl_socket_alloc(...) #1

declare dso_local i32 @nl_connect(%struct.nl_sock*, i32) #1

declare dso_local i32 @nl_geterror(i32) #1

declare dso_local i32 @rtnl_link_get_kernel(%struct.nl_sock*, i32, i8*, %struct.rtnl_link**) #1

declare dso_local i32 @rtnl_link_get_ifindex(%struct.rtnl_link*) #1

declare dso_local i32 @rtnl_link_put(%struct.rtnl_link*) #1

declare dso_local %struct.rtnl_link* @rtnl_link_alloc(...) #1

declare dso_local i32 @rtnl_link_set_type(%struct.rtnl_link*, i8*) #1

declare dso_local i32 @rtnl_link_set_link(%struct.rtnl_link*, i32) #1

declare dso_local i32 @rtnl_link_set_name(%struct.rtnl_link*, i8*) #1

declare dso_local i32 @rtnl_link_vlan_set_id(%struct.rtnl_link*, i32) #1

declare dso_local i32 @rtnl_link_add(%struct.nl_sock*, %struct.rtnl_link*, i32) #1

declare dso_local i32 @nl_socket_free(%struct.nl_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
