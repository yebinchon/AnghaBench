; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_util.c_vlan_rem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_util.c_vlan_rem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_sock = type { i32 }
%struct.rtnl_link = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"VLAN: vlan_rem(if_name=%s)\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"VLAN: failed to open netlink socket\00", align 1
@NETLINK_ROUTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"VLAN: failed to connect to netlink: %s\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"VLAN: interface %s does not exists\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"VLAN: failed to remove link %s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlan_rem(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.nl_sock*, align 8
  %6 = alloca %struct.rtnl_link*, align 8
  store i8* %0, i8** %2, align 8
  store i32 -1, i32* %4, align 4
  store %struct.nl_sock* null, %struct.nl_sock** %5, align 8
  store %struct.rtnl_link* null, %struct.rtnl_link** %6, align 8
  %7 = load i32, i32* @MSG_DEBUG, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 (i32, i8*, ...) @wpa_printf(i32 %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = call %struct.nl_sock* (...) @nl_socket_alloc()
  store %struct.nl_sock* %10, %struct.nl_sock** %5, align 8
  %11 = load %struct.nl_sock*, %struct.nl_sock** %5, align 8
  %12 = icmp ne %struct.nl_sock* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @MSG_ERROR, align 4
  %15 = call i32 (i32, i8*, ...) @wpa_printf(i32 %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %50

16:                                               ; preds = %1
  %17 = load %struct.nl_sock*, %struct.nl_sock** %5, align 8
  %18 = load i32, i32* @NETLINK_ROUTE, align 4
  %19 = call i32 @nl_connect(%struct.nl_sock* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load i32, i32* @MSG_ERROR, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @nl_geterror(i32 %24)
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  br label %50

27:                                               ; preds = %16
  %28 = load %struct.nl_sock*, %struct.nl_sock** %5, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 @rtnl_link_get_kernel(%struct.nl_sock* %28, i32 0, i8* %29, %struct.rtnl_link** %6)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* @MSG_ERROR, align 4
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  br label %50

37:                                               ; preds = %27
  %38 = load %struct.nl_sock*, %struct.nl_sock** %5, align 8
  %39 = load %struct.rtnl_link*, %struct.rtnl_link** %6, align 8
  %40 = call i32 @rtnl_link_delete(%struct.nl_sock* %38, %struct.rtnl_link* %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i32, i32* @MSG_ERROR, align 4
  %45 = load i8*, i8** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @nl_geterror(i32 %46)
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %45, i32 %47)
  br label %50

49:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %43, %33, %22, %13
  %51 = load %struct.rtnl_link*, %struct.rtnl_link** %6, align 8
  %52 = icmp ne %struct.rtnl_link* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.rtnl_link*, %struct.rtnl_link** %6, align 8
  %55 = call i32 @rtnl_link_put(%struct.rtnl_link* %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.nl_sock*, %struct.nl_sock** %5, align 8
  %58 = icmp ne %struct.nl_sock* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.nl_sock*, %struct.nl_sock** %5, align 8
  %61 = call i32 @nl_socket_free(%struct.nl_sock* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.nl_sock* @nl_socket_alloc(...) #1

declare dso_local i32 @nl_connect(%struct.nl_sock*, i32) #1

declare dso_local i32 @nl_geterror(i32) #1

declare dso_local i32 @rtnl_link_get_kernel(%struct.nl_sock*, i32, i8*, %struct.rtnl_link**) #1

declare dso_local i32 @rtnl_link_delete(%struct.nl_sock*, %struct.rtnl_link*) #1

declare dso_local i32 @rtnl_link_put(%struct.rtnl_link*) #1

declare dso_local i32 @nl_socket_free(%struct.nl_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
