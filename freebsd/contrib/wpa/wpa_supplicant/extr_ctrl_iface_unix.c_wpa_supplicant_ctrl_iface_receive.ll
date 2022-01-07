; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_unix.c_wpa_supplicant_ctrl_iface_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_unix.c_wpa_supplicant_ctrl_iface_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.ctrl_iface_priv = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"recvfrom(ctrl_iface): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ATTACH\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DETACH\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"LEVEL \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"ctrl_sock-sendto\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"ctrl_iface sendto failed: %d - %s\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"Failed to reinitialize ctrl_iface socket\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Failed to send response to ATTACH - detaching\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @wpa_supplicant_ctrl_iface_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_supplicant_ctrl_iface_receive(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpa_supplicant*, align 8
  %8 = alloca %struct.ctrl_iface_priv*, align 8
  %9 = alloca [4096 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_storage, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %19, %struct.wpa_supplicant** %7, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.ctrl_iface_priv*
  store %struct.ctrl_iface_priv* %21, %struct.ctrl_iface_priv** %8, align 8
  store i32 4, i32* %12, align 4
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* %4, align 4
  %23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %24 = bitcast %struct.sockaddr_storage* %11 to %struct.sockaddr*
  %25 = call i32 @recvfrom(i32 %22, i8* %23, i32 4095, i32 0, %struct.sockaddr* %24, i32* %12)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load i32, i32* @MSG_ERROR, align 4
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @strerror(i32 %30)
  %32 = call i32 @wpa_printf(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %165

33:                                               ; preds = %3
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 %35
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %38 = call i64 @os_strcmp(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %8, align 8
  %42 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %12, align 4
  %44 = call i64 @wpa_supplicant_ctrl_iface_attach(i32* %42, %struct.sockaddr_storage* %11, i32 %43, i32 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i64 1, i64* %15, align 8
  br label %48

47:                                               ; preds = %40
  store i32 1, i32* %16, align 4
  store i64 2, i64* %15, align 8
  br label %48

48:                                               ; preds = %47, %46
  br label %86

49:                                               ; preds = %33
  %50 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %51 = call i64 @os_strcmp(i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %8, align 8
  %55 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %12, align 4
  %57 = call i64 @wpa_supplicant_ctrl_iface_detach(i32* %55, %struct.sockaddr_storage* %11, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i64 1, i64* %15, align 8
  br label %61

60:                                               ; preds = %53
  store i64 2, i64* %15, align 8
  br label %61

61:                                               ; preds = %60, %59
  br label %85

62:                                               ; preds = %49
  %63 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %64 = call i64 @os_strncmp(i8* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %8, align 8
  %68 = load i32, i32* %12, align 4
  %69 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %70 = getelementptr inbounds i8, i8* %69, i64 6
  %71 = call i64 @wpa_supplicant_ctrl_iface_level(%struct.ctrl_iface_priv* %67, %struct.sockaddr_storage* %11, i32 %68, i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i64 1, i64* %15, align 8
  br label %75

74:                                               ; preds = %66
  store i64 2, i64* %15, align 8
  br label %75

75:                                               ; preds = %74, %73
  br label %84

76:                                               ; preds = %62
  %77 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %78 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %79 = call i8* @wpa_supplicant_ctrl_iface_process(%struct.wpa_supplicant* %77, i8* %78, i64* %15)
  store i8* %79, i8** %14, align 8
  %80 = load i8*, i8** %14, align 8
  store i8* %80, i8** %13, align 8
  %81 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @os_memset(i8* %81, i32 0, i32 %82)
  br label %84

84:                                               ; preds = %76, %75
  br label %85

85:                                               ; preds = %84, %61
  br label %86

86:                                               ; preds = %85, %48
  %87 = load i8*, i8** %13, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = load i64, i64* %15, align 8
  %91 = icmp eq i64 %90, 1
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  store i64 5, i64* %15, align 8
  br label %101

93:                                               ; preds = %89, %86
  %94 = load i8*, i8** %13, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = load i64, i64* %15, align 8
  %98 = icmp eq i64 %97, 2
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  store i64 3, i64* %15, align 8
  br label %100

100:                                              ; preds = %99, %96, %93
  br label %101

101:                                              ; preds = %100, %92
  %102 = load i8*, i8** %13, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %155

104:                                              ; preds = %101
  %105 = load i32, i32* %4, align 4
  %106 = load i8*, i8** %13, align 8
  %107 = load i64, i64* %15, align 8
  %108 = call i32 @wpas_ctrl_sock_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %105, i8* %106, i64 %107)
  %109 = load i32, i32* %4, align 4
  %110 = load i8*, i8** %13, align 8
  %111 = load i64, i64* %15, align 8
  %112 = bitcast %struct.sockaddr_storage* %11 to %struct.sockaddr*
  %113 = load i32, i32* %12, align 4
  %114 = call i64 @sendto(i32 %109, i8* %110, i64 %111, i32 0, %struct.sockaddr* %112, i32 %113)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %154

116:                                              ; preds = %104
  %117 = load i32, i32* @errno, align 4
  store i32 %117, i32* %17, align 4
  %118 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %119 = load i32, i32* @MSG_DEBUG, align 4
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* %17, align 4
  %122 = call i32 @strerror(i32 %121)
  %123 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %118, i32 %119, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %120, i32 %122)
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* @ENOBUFS, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %116
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* @EAGAIN, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %127, %116
  %132 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %133 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %8, align 8
  %134 = call i32 @wpas_ctrl_iface_reinit(%struct.wpa_supplicant* %132, %struct.ctrl_iface_priv* %133)
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* %4, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %139 = load i32, i32* @MSG_DEBUG, align 4
  %140 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %138, i32 %139, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  br label %141

141:                                              ; preds = %137, %131
  br label %142

142:                                              ; preds = %141, %127
  %143 = load i32, i32* %16, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %142
  %146 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %147 = load i32, i32* @MSG_DEBUG, align 4
  %148 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %146, i32 %147, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  %149 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %8, align 8
  %150 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %149, i32 0, i32 0
  %151 = load i32, i32* %12, align 4
  %152 = call i64 @wpa_supplicant_ctrl_iface_detach(i32* %150, %struct.sockaddr_storage* %11, i32 %151)
  br label %153

153:                                              ; preds = %145, %142
  br label %154

154:                                              ; preds = %153, %104
  br label %155

155:                                              ; preds = %154, %101
  %156 = load i8*, i8** %14, align 8
  %157 = call i32 @os_free(i8* %156)
  %158 = load i32, i32* %16, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %162 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @eapol_sm_notify_ctrl_attached(i32 %163)
  br label %165

165:                                              ; preds = %28, %160, %155
  ret void
}

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i64 @wpa_supplicant_ctrl_iface_attach(i32*, %struct.sockaddr_storage*, i32, i32) #1

declare dso_local i64 @wpa_supplicant_ctrl_iface_detach(i32*, %struct.sockaddr_storage*, i32) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i64 @wpa_supplicant_ctrl_iface_level(%struct.ctrl_iface_priv*, %struct.sockaddr_storage*, i32, i8*) #1

declare dso_local i8* @wpa_supplicant_ctrl_iface_process(%struct.wpa_supplicant*, i8*, i64*) #1

declare dso_local i32 @os_memset(i8*, i32, i32) #1

declare dso_local i32 @wpas_ctrl_sock_debug(i8*, i32, i8*, i64) #1

declare dso_local i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*, ...) #1

declare dso_local i32 @wpas_ctrl_iface_reinit(%struct.wpa_supplicant*, %struct.ctrl_iface_priv*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @eapol_sm_notify_ctrl_attached(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
