; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_full.c_vlan_read_ifnames.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_full.c_vlan_read_ifnames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i32 }
%struct.hostapd_data = type { i32 }
%struct.ifinfomsg = type { i32, i32, i32 }
%struct.rtattr = type { i64, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@IFLA_IFNAME = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"VLAN: RTM_%sLINK: ifi_index=%d ifname=%s ifi_family=%d ifi_flags=0x%x (%s%s%s%s)\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"DEL\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"NEW\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"[UP]\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IFF_RUNNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"[RUNNING]\00", align 1
@IFF_LOWER_UP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"[LOWER_UP]\00", align 1
@IFF_DORMANT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"[DORMANT]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlmsghdr*, i64, i32, %struct.hostapd_data*)* @vlan_read_ifnames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlan_read_ifnames(%struct.nlmsghdr* %0, i64 %1, i32 %2, %struct.hostapd_data* %3) #0 {
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hostapd_data*, align 8
  %9 = alloca %struct.ifinfomsg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rtattr*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.hostapd_data* %3, %struct.hostapd_data** %8, align 8
  %18 = load i32, i32* @IFNAMSIZ, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ult i64 %23, 12
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 1, i32* %16, align 4
  br label %156

26:                                               ; preds = %4
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %28 = call %struct.ifinfomsg* @NLMSG_DATA(%struct.nlmsghdr* %27)
  store %struct.ifinfomsg* %28, %struct.ifinfomsg** %9, align 8
  %29 = call i32 @NLMSG_ALIGN(i32 12)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %31 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  store i32 1, i32* %16, align 4
  br label %156

38:                                               ; preds = %26
  %39 = load %struct.ifinfomsg*, %struct.ifinfomsg** %9, align 8
  %40 = bitcast %struct.ifinfomsg* %39 to i8*
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = bitcast i8* %43 to %struct.rtattr*
  store %struct.rtattr* %44, %struct.rtattr** %13, align 8
  %45 = trunc i64 %20 to i32
  %46 = call i32 @os_memset(i8* %22, i32 0, i32 %45)
  %47 = call i32 @RTA_ALIGN(i32 16)
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %83, %38
  %49 = load %struct.rtattr*, %struct.rtattr** %13, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @RTA_OK(%struct.rtattr* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %87

53:                                               ; preds = %48
  %54 = load %struct.rtattr*, %struct.rtattr** %13, align 8
  %55 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IFLA_IFNAME, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %53
  %60 = load %struct.rtattr*, %struct.rtattr** %13, align 8
  %61 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %87

68:                                               ; preds = %59
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp uge i64 %70, %20
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = sub i64 %20, 1
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %17, align 4
  br label %75

75:                                               ; preds = %72, %68
  %76 = load %struct.rtattr*, %struct.rtattr** %13, align 8
  %77 = bitcast %struct.rtattr* %76 to i8*
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @os_memcpy(i8* %22, i8* %80, i32 %81)
  br label %83

83:                                               ; preds = %75, %53
  %84 = load %struct.rtattr*, %struct.rtattr** %13, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call %struct.rtattr* @RTA_NEXT(%struct.rtattr* %84, i32 %85)
  store %struct.rtattr* %86, %struct.rtattr** %13, align 8
  br label %48

87:                                               ; preds = %67, %48
  %88 = getelementptr inbounds i8, i8* %22, i64 0
  %89 = load i8, i8* %88, align 16
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  store i32 1, i32* %16, align 4
  br label %156

92:                                               ; preds = %87
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = call i64 @if_nametoindex(i8* %22)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 1, i32* %16, align 4
  br label %156

99:                                               ; preds = %95, %92
  %100 = load i32, i32* @MSG_DEBUG, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %105 = load %struct.ifinfomsg*, %struct.ifinfomsg** %9, align 8
  %106 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ifinfomsg*, %struct.ifinfomsg** %9, align 8
  %109 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ifinfomsg*, %struct.ifinfomsg** %9, align 8
  %112 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ifinfomsg*, %struct.ifinfomsg** %9, align 8
  %115 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @IFF_UP, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %122 = load %struct.ifinfomsg*, %struct.ifinfomsg** %9, align 8
  %123 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @IFF_RUNNING, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %130 = load %struct.ifinfomsg*, %struct.ifinfomsg** %9, align 8
  %131 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @IFF_LOWER_UP, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %138 = load %struct.ifinfomsg*, %struct.ifinfomsg** %9, align 8
  %139 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @IFF_DORMANT, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %146 = call i32 @wpa_printf(i32 %100, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i8* %104, i32 %107, i8* %22, i32 %110, i32 %113, i8* %121, i8* %129, i8* %137, i8* %145)
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %99
  %150 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %151 = call i32 @vlan_dellink(i8* %22, %struct.hostapd_data* %150)
  br label %155

152:                                              ; preds = %99
  %153 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %154 = call i32 @vlan_newlink(i8* %22, %struct.hostapd_data* %153)
  br label %155

155:                                              ; preds = %152, %149
  store i32 0, i32* %16, align 4
  br label %156

156:                                              ; preds = %155, %98, %91, %37, %25
  %157 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %157)
  %158 = load i32, i32* %16, align 4
  switch i32 %158, label %160 [
    i32 0, label %159
    i32 1, label %159
  ]

159:                                              ; preds = %156, %156
  ret void

160:                                              ; preds = %156
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ifinfomsg* @NLMSG_DATA(%struct.nlmsghdr*) #2

declare dso_local i32 @NLMSG_ALIGN(i32) #2

declare dso_local i32 @os_memset(i8*, i32, i32) #2

declare dso_local i32 @RTA_ALIGN(i32) #2

declare dso_local i64 @RTA_OK(%struct.rtattr*, i32) #2

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #2

declare dso_local %struct.rtattr* @RTA_NEXT(%struct.rtattr*, i32) #2

declare dso_local i64 @if_nametoindex(i8*) #2

declare dso_local i32 @wpa_printf(i32, i8*, i8*, i32, i8*, i32, i32, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @vlan_dellink(i8*, %struct.hostapd_data*) #2

declare dso_local i32 @vlan_newlink(i8*, %struct.hostapd_data*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
