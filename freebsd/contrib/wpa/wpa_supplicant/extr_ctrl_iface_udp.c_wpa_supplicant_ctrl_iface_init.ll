; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_udp.c_wpa_supplicant_ctrl_iface_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_udp.c_wpa_supplicant_ctrl_iface_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctrl_iface_priv = type { i32, i32, %struct.wpa_supplicant* }
%struct.wpa_supplicant = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ctrl_iface_priv* }
%struct.sockaddr_in = type { i8*, i8*, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }

@WPA_CTRL_IFACE_PORT = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@COOKIE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"udp:\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Invalid ctrl_iface UDP port: %s\00", align 1
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"socket(PF_INET): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@WPA_CTRL_IFACE_PORT_LIMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"bind(AF_INET): %s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"udp:%d\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to malloc ctrl_interface\00", align 1
@wpa_supplicant_ctrl_iface_receive = common dso_local global i32 0, align 4
@wpa_supplicant_ctrl_iface_msg_cb = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ctrl_iface_priv* @wpa_supplicant_ctrl_iface_init(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.ctrl_iface_priv*, align 8
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.ctrl_iface_priv*, align 8
  %5 = alloca [40 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sockaddr_in, align 8
  %9 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  %10 = load i32, i32* @WPA_CTRL_IFACE_PORT, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @PF_INET, align 4
  store i32 %11, i32* %9, align 4
  %12 = call %struct.ctrl_iface_priv* @os_zalloc(i32 16)
  store %struct.ctrl_iface_priv* %12, %struct.ctrl_iface_priv** %4, align 8
  %13 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %4, align 8
  %14 = icmp eq %struct.ctrl_iface_priv* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.ctrl_iface_priv* null, %struct.ctrl_iface_priv** %2, align 8
  br label %156

16:                                               ; preds = %1
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %18 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %4, align 8
  %19 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %18, i32 0, i32 2
  store %struct.wpa_supplicant* %17, %struct.wpa_supplicant** %19, align 8
  %20 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %4, align 8
  %21 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %20, i32 0, i32 0
  store i32 -1, i32* %21, align 8
  %22 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %4, align 8
  %23 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @COOKIE_LEN, align 4
  %26 = call i32 @os_get_random(i32 %24, i32 %25)
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %28 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %30, align 8
  %32 = icmp eq %struct.ctrl_iface_priv* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %16
  %34 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %4, align 8
  store %struct.ctrl_iface_priv* %34, %struct.ctrl_iface_priv** %2, align 8
  br label %156

35:                                               ; preds = %16
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %37 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %39, align 8
  %41 = call i8* @os_strstr(%struct.ctrl_iface_priv* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %35
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 4
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @atoi(i8* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = load i32, i32* @MSG_ERROR, align 4
  %53 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %54 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %56, align 8
  %58 = call i32 @wpa_printf(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.ctrl_iface_priv* %57)
  br label %143

59:                                               ; preds = %44
  br label %60

60:                                               ; preds = %59, %35
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @SOCK_DGRAM, align 4
  %63 = call i32 @socket(i32 %61, i32 %62, i32 0)
  %64 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %4, align 8
  %65 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %4, align 8
  %67 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load i32, i32* @MSG_ERROR, align 4
  %72 = load i32, i32* @errno, align 4
  %73 = call %struct.ctrl_iface_priv* @strerror(i32 %72)
  %74 = call i32 @wpa_printf(i32 %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), %struct.ctrl_iface_priv* %73)
  br label %143

75:                                               ; preds = %60
  %76 = call i32 @os_memset(%struct.sockaddr_in* %8, i32 0, i32 32)
  %77 = load i32, i32* @AF_INET, align 4
  %78 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 3
  store i32 %77, i32* %78, align 4
  %79 = call i32 @htonl(i32 2130706433)
  %80 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %100, %75
  %83 = load i32, i32* %6, align 4
  %84 = call i8* @htons(i32 %83)
  %85 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i8* %84, i8** %85, align 8
  %86 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %4, align 8
  %87 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %90 = call i64 @bind(i32 %88, %struct.sockaddr* %89, i32 32)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %82
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* @WPA_CTRL_IFACE_PORT, align 4
  %96 = load i32, i32* %6, align 4
  %97 = sub nsw i32 %95, %96
  %98 = load i32, i32* @WPA_CTRL_IFACE_PORT_LIMIT, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %82

101:                                              ; preds = %92
  %102 = load i32, i32* @MSG_ERROR, align 4
  %103 = load i32, i32* @errno, align 4
  %104 = call %struct.ctrl_iface_priv* @strerror(i32 %103)
  %105 = call i32 @wpa_printf(i32 %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %struct.ctrl_iface_priv* %104)
  br label %143

106:                                              ; preds = %82
  %107 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @os_snprintf(i8* %107, i32 40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  %110 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %111 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %113, align 8
  %115 = call i32 @os_free(%struct.ctrl_iface_priv* %114)
  %116 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %117 = call %struct.ctrl_iface_priv* @os_strdup(i8* %116)
  %118 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %119 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store %struct.ctrl_iface_priv* %117, %struct.ctrl_iface_priv** %121, align 8
  %122 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %123 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %125, align 8
  %127 = icmp ne %struct.ctrl_iface_priv* %126, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %106
  %129 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %130 = load i32, i32* @MSG_ERROR, align 4
  %131 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %129, i32 %130, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %143

132:                                              ; preds = %106
  %133 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %4, align 8
  %134 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @wpa_supplicant_ctrl_iface_receive, align 4
  %137 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %138 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %4, align 8
  %139 = call i32 @eloop_register_read_sock(i32 %135, i32 %136, %struct.wpa_supplicant* %137, %struct.ctrl_iface_priv* %138)
  %140 = load i32, i32* @wpa_supplicant_ctrl_iface_msg_cb, align 4
  %141 = call i32 @wpa_msg_register_cb(i32 %140)
  %142 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %4, align 8
  store %struct.ctrl_iface_priv* %142, %struct.ctrl_iface_priv** %2, align 8
  br label %156

143:                                              ; preds = %128, %101, %70, %51
  %144 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %4, align 8
  %145 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp sge i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %4, align 8
  %150 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @close(i32 %151)
  br label %153

153:                                              ; preds = %148, %143
  %154 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %4, align 8
  %155 = call i32 @os_free(%struct.ctrl_iface_priv* %154)
  store %struct.ctrl_iface_priv* null, %struct.ctrl_iface_priv** %2, align 8
  br label %156

156:                                              ; preds = %153, %132, %33, %15
  %157 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %2, align 8
  ret %struct.ctrl_iface_priv* %157
}

declare dso_local %struct.ctrl_iface_priv* @os_zalloc(i32) #1

declare dso_local i32 @os_get_random(i32, i32) #1

declare dso_local i8* @os_strstr(%struct.ctrl_iface_priv*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, %struct.ctrl_iface_priv*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local %struct.ctrl_iface_priv* @strerror(i32) #1

declare dso_local i32 @os_memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @os_free(%struct.ctrl_iface_priv*) #1

declare dso_local %struct.ctrl_iface_priv* @os_strdup(i8*) #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*, ...) #1

declare dso_local i32 @eloop_register_read_sock(i32, i32, %struct.wpa_supplicant*, %struct.ctrl_iface_priv*) #1

declare dso_local i32 @wpa_msg_register_cb(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
