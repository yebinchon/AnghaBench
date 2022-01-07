; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_assoc_req_ie_wlan_ap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_assoc_req_ie_wlan_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i64, i32, i64 }
%struct.wpabuf = type { i32 }
%struct.p2p_message = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"BSS P2P manageability %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@P2P_GROUP_CAPAB_GROUP_OWNER = common dso_local global i32 0, align 4
@P2P_DEV_CAPAB_CONCURRENT_OPER = common dso_local global i32 0, align 4
@P2P_DEV_CAPAB_INFRA_MANAGED = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_CROSS_CONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p2p_data*, i32*, i32*, i64, %struct.wpabuf*)* @p2p_assoc_req_ie_wlan_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p2p_assoc_req_ie_wlan_ap(%struct.p2p_data* %0, i32* %1, i32* %2, i64 %3, %struct.wpabuf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.p2p_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.p2p_message, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.wpabuf* %4, %struct.wpabuf** %11, align 8
  %18 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %19 = icmp eq %struct.wpabuf* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %124

21:                                               ; preds = %5
  %22 = call i32 @os_memset(%struct.p2p_message* %17, i32 0, i32 8)
  %23 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %24 = call i64 @p2p_parse_p2p_ie(%struct.wpabuf* %23, %struct.p2p_message* %17)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %124

27:                                               ; preds = %21
  %28 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %29 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %17, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %34 = call i32 @p2p_dbg(%struct.p2p_data* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %17, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %124

39:                                               ; preds = %27
  %40 = call %struct.wpabuf* @wpabuf_alloc(i32 200)
  store %struct.wpabuf* %40, %struct.wpabuf** %12, align 8
  %41 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %42 = icmp eq %struct.wpabuf* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 -1, i32* %6, align 4
  br label %124

44:                                               ; preds = %39
  %45 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %46 = call i32* @p2p_buf_add_ie_hdr(%struct.wpabuf* %45)
  store i32* %46, i32** %13, align 8
  store i32 0, i32* %16, align 4
  %47 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %48 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %44
  %52 = load i32, i32* @P2P_GROUP_CAPAB_GROUP_OWNER, align 4
  %53 = load i32, i32* %16, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %16, align 4
  %55 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %56 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @P2P_DEV_CAPAB_CONCURRENT_OPER, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %51
  %62 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %63 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @P2P_DEV_CAPAB_INFRA_MANAGED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %61
  %69 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %70 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @P2P_GROUP_CAPAB_CROSS_CONN, align 4
  %75 = load i32, i32* %16, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %16, align 4
  br label %77

77:                                               ; preds = %73, %68, %61, %51
  br label %78

78:                                               ; preds = %77, %44
  %79 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %80 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %81 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @p2p_buf_add_capability(%struct.wpabuf* %79, i32 %82, i32 %83)
  %85 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %86 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @P2P_DEV_CAPAB_CONCURRENT_OPER, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %78
  %92 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %93 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @P2P_DEV_CAPAB_INFRA_MANAGED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %100 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %101 = call i32 @p2p_buf_add_p2p_interface(%struct.wpabuf* %99, %struct.p2p_data* %100)
  br label %102

102:                                              ; preds = %98, %91, %78
  %103 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %104 = load i32*, i32** %13, align 8
  %105 = call i32 @p2p_buf_update_ie_hdr(%struct.wpabuf* %103, i32* %104)
  %106 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %107 = call i64 @wpabuf_len(%struct.wpabuf* %106)
  store i64 %107, i64* %14, align 8
  %108 = load i64, i64* %14, align 8
  %109 = load i64, i64* %10, align 8
  %110 = icmp ugt i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  store i32 -1, i32* %15, align 4
  br label %120

112:                                              ; preds = %102
  %113 = load i32*, i32** %9, align 8
  %114 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %115 = call i32 @wpabuf_head(%struct.wpabuf* %114)
  %116 = load i64, i64* %14, align 8
  %117 = call i32 @os_memcpy(i32* %113, i32 %115, i64 %116)
  %118 = load i64, i64* %14, align 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %15, align 4
  br label %120

120:                                              ; preds = %112, %111
  %121 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %122 = call i32 @wpabuf_free(%struct.wpabuf* %121)
  %123 = load i32, i32* %15, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %120, %43, %38, %26, %20
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i32 @os_memset(%struct.p2p_message*, i32, i32) #1

declare dso_local i64 @p2p_parse_p2p_ie(%struct.wpabuf*, %struct.p2p_message*) #1

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32* @p2p_buf_add_ie_hdr(%struct.wpabuf*) #1

declare dso_local i32 @p2p_buf_add_capability(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @p2p_buf_add_p2p_interface(%struct.wpabuf*, %struct.p2p_data*) #1

declare dso_local i32 @p2p_buf_update_ie_hdr(%struct.wpabuf*, i32*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @os_memcpy(i32*, i32, i64) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
