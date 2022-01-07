; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_monitor.c_nl80211_create_monitor_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_monitor.c_nl80211_create_monitor_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i32, i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8* }
%struct.sockaddr_ll = type { i32, i32 }
%struct.sockaddr = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"nl80211: Re-use existing monitor interface: refcount=%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"p2p-\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"mon-%s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"mon.%s\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"nl80211: Monitor interface name has been truncated to %s\00", align 1
@NL80211_IFTYPE_MONITOR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [80 x i8] c"nl80211: Driver does not support monitor interface type - try to run without it\00", align 1
@AF_PACKET = common dso_local global i32 0, align 4
@PF_PACKET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@ETH_P_ALL = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"nl80211: socket[PF_PACKET,SOCK_RAW] failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [78 x i8] c"Failed to set socket filter for monitor interface; do filtering in user space\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"nl80211: monitor socket bind failed: %s\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_PRIORITY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [43 x i8] c"nl80211: Failed to set socket priority: %s\00", align 1
@handle_monitor_read = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [48 x i8] c"nl80211: Could not register monitor read socket\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl80211_create_monitor_interface(%struct.wpa_driver_nl80211_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sockaddr_ll, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %3, align 8
  %11 = load i32, i32* @IFNAMSIZ, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %16 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %21 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %26 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %181

29:                                               ; preds = %1
  %30 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %31 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %30, i32 0, i32 5
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @os_strncmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load i32, i32* @IFNAMSIZ, align 4
  %39 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %40 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %39, i32 0, i32 5
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 4
  %45 = call i32 @snprintf(i8* %14, i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  br label %67

46:                                               ; preds = %29
  %47 = load i32, i32* @IFNAMSIZ, align 4
  %48 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %49 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %48, i32 0, i32 5
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @os_snprintf(i8* %14, i32 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = trunc i64 %12 to i32
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i8* %14)
  br label %66

60:                                               ; preds = %46
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %181

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %57
  br label %67

67:                                               ; preds = %66, %37
  %68 = load i32, i32* @IFNAMSIZ, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %14, i64 %70
  store i8 0, i8* %71, align 1
  %72 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %73 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  %74 = call i32 @nl80211_create_iface(%struct.wpa_driver_nl80211_data* %72, i8* %14, i32 %73, i32* null, i32 0, i32* null, i32* null, i32 0)
  %75 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %76 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %78 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @EOPNOTSUPP, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %67
  %84 = load i32, i32* @MSG_DEBUG, align 4
  %85 = call i32 (i32, i8*, ...) @wpa_printf(i32 %84, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.5, i64 0, i64 0))
  %86 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %87 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %83, %67
  %89 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %90 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %181

94:                                               ; preds = %88
  %95 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %96 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %95, i32 0, i32 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @linux_set_iface_flags(i32 %99, i8* %14, i32 1)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %178

103:                                              ; preds = %94
  %104 = call i32 @memset(%struct.sockaddr_ll* %6, i32 0, i32 8)
  %105 = load i32, i32* @AF_PACKET, align 4
  %106 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %6, i32 0, i32 1
  store i32 %105, i32* %106, align 4
  %107 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %108 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %6, i32 0, i32 0
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* @PF_PACKET, align 4
  %112 = load i32, i32* @SOCK_RAW, align 4
  %113 = load i32, i32* @ETH_P_ALL, align 4
  %114 = call i32 @htons(i32 %113)
  %115 = call i64 @socket(i32 %111, i32 %112, i32 %114)
  %116 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %117 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  %118 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %119 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %103
  %123 = load i32, i32* @MSG_ERROR, align 4
  %124 = load i32, i32* @errno, align 4
  %125 = call i32 @strerror(i32 %124)
  %126 = call i32 (i32, i8*, ...) @wpa_printf(i32 %123, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %125)
  br label %178

127:                                              ; preds = %103
  %128 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %129 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i64 @add_monitor_filter(i64 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load i32, i32* @MSG_INFO, align 4
  %135 = call i32 (i32, i8*, ...) @wpa_printf(i32 %134, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.7, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %127
  %137 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %138 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = bitcast %struct.sockaddr_ll* %6 to %struct.sockaddr*
  %141 = call i64 @bind(i64 %139, %struct.sockaddr* %140, i32 8)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %136
  %144 = load i32, i32* @MSG_ERROR, align 4
  %145 = load i32, i32* @errno, align 4
  %146 = call i32 @strerror(i32 %145)
  %147 = call i32 (i32, i8*, ...) @wpa_printf(i32 %144, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %146)
  br label %178

148:                                              ; preds = %136
  store i32 4, i32* %8, align 4
  store i32 20, i32* %7, align 4
  %149 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %150 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* @SOL_SOCKET, align 4
  %153 = load i32, i32* @SO_PRIORITY, align 4
  %154 = load i32, i32* %8, align 4
  %155 = call i64 @setsockopt(i64 %151, i32 %152, i32 %153, i32* %7, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %148
  %158 = load i32, i32* @MSG_ERROR, align 4
  %159 = load i32, i32* @errno, align 4
  %160 = call i32 @strerror(i32 %159)
  %161 = call i32 (i32, i8*, ...) @wpa_printf(i32 %158, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %160)
  br label %178

162:                                              ; preds = %148
  %163 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %164 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* @handle_monitor_read, align 4
  %167 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %168 = call i64 @eloop_register_read_sock(i64 %165, i32 %166, %struct.wpa_driver_nl80211_data* %167, i32* null)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %162
  %171 = load i32, i32* @MSG_INFO, align 4
  %172 = call i32 (i32, i8*, ...) @wpa_printf(i32 %171, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  br label %178

173:                                              ; preds = %162
  %174 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %175 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %181

178:                                              ; preds = %170, %157, %143, %122, %102
  %179 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %180 = call i32 @nl80211_remove_monitor_interface(%struct.wpa_driver_nl80211_data* %179)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %181

181:                                              ; preds = %178, %173, %93, %63, %19
  %182 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %182)
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @nl80211_create_iface(%struct.wpa_driver_nl80211_data*, i8*, i32, i32*, i32, i32*, i32*, i32) #2

declare dso_local i64 @linux_set_iface_flags(i32, i8*, i32) #2

declare dso_local i32 @memset(%struct.sockaddr_ll*, i32, i32) #2

declare dso_local i64 @socket(i32, i32, i32) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i64 @add_monitor_filter(i64) #2

declare dso_local i64 @bind(i64, %struct.sockaddr*, i32) #2

declare dso_local i64 @setsockopt(i64, i32, i32, i32*, i32) #2

declare dso_local i64 @eloop_register_read_sock(i64, i32, %struct.wpa_driver_nl80211_data*, i32*) #2

declare dso_local i32 @nl80211_remove_monitor_interface(%struct.wpa_driver_nl80211_data*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
