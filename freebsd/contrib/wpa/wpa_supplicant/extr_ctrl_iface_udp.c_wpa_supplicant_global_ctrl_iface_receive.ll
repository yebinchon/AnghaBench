; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_udp.c_wpa_supplicant_global_ctrl_iface_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_udp.c_wpa_supplicant_global_ctrl_iface_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_global = type { i32 }
%struct.ctrl_iface_global_priv = type { i32, i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr = type { i32 }

@COOKIE_LEN = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"recvfrom(ctrl_iface): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"CTRL: Drop packet from unexpected source %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"GET_COOKIE\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"COOKIE=\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"CTLR: No cookie in the request - drop request\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"CTLR: Invalid cookie format in the request - drop request\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"CTLR: Invalid cookie in the request - drop request\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"ATTACH\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"DETACH\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @wpa_supplicant_global_ctrl_iface_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_supplicant_global_ctrl_iface_receive(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpa_global*, align 8
  %8 = alloca %struct.ctrl_iface_global_priv*, align 8
  %9 = alloca [4096 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr_in, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.wpa_global*
  store %struct.wpa_global* %20, %struct.wpa_global** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to %struct.ctrl_iface_global_priv*
  store %struct.ctrl_iface_global_priv* %22, %struct.ctrl_iface_global_priv** %8, align 8
  store i32 8, i32* %13, align 4
  store i8* null, i8** %14, align 8
  %23 = load i32, i32* @COOKIE_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %16, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %17, align 8
  %27 = load i32, i32* %4, align 4
  %28 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %29 = bitcast %struct.sockaddr_in* %12 to %struct.sockaddr*
  %30 = call i32 @recvfrom(i32 %27, i8* %28, i32 4095, i32 0, %struct.sockaddr* %29, i32* %13)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %3
  %34 = load i32, i32* @MSG_ERROR, align 4
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @strerror(i32 %35)
  %37 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 1, i32* %18, align 4
  br label %166

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @htonl(i32 2130706433)
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @inet_ntoa(i64 %48)
  %50 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  store i32 1, i32* %18, align 4
  br label %166

51:                                               ; preds = %38
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 %53
  store i8 0, i8* %54, align 1
  %55 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %56 = call i64 @os_strcmp(i8* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %8, align 8
  %60 = call i8* @wpa_supplicant_global_get_cookie(%struct.ctrl_iface_global_priv* %59, i64* %15)
  store i8* %60, i8** %14, align 8
  br label %134

61:                                               ; preds = %51
  %62 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %63 = call i64 @os_strncmp(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = call i32 (i32, i8*, ...) @wpa_printf(i32 %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %18, align 4
  br label %166

68:                                               ; preds = %61
  %69 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %70 = getelementptr inbounds i8, i8* %69, i64 7
  %71 = load i32, i32* @COOKIE_LEN, align 4
  %72 = call i64 @hexstr2bin(i8* %70, i32* %26, i32 %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = call i32 (i32, i8*, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %18, align 4
  br label %166

77:                                               ; preds = %68
  %78 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %8, align 8
  %79 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @COOKIE_LEN, align 4
  %82 = call i64 @os_memcmp(i32* %26, i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i32, i32* @MSG_DEBUG, align 4
  %86 = call i32 (i32, i8*, ...) @wpa_printf(i32 %85, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %18, align 4
  br label %166

87:                                               ; preds = %77
  %88 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %89 = getelementptr inbounds i8, i8* %88, i64 7
  %90 = load i32, i32* @COOKIE_LEN, align 4
  %91 = mul nsw i32 2, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  store i8* %93, i8** %10, align 8
  br label %94

94:                                               ; preds = %99, %87
  %95 = load i8*, i8** %10, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 32
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %10, align 8
  br label %94

102:                                              ; preds = %94
  %103 = load i8*, i8** %10, align 8
  %104 = call i64 @os_strcmp(i8* %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %102
  %107 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %8, align 8
  %108 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %107, i32 0, i32 0
  %109 = load i32, i32* %13, align 4
  %110 = call i64 @wpa_supplicant_ctrl_iface_attach(i32* %108, %struct.sockaddr_in* %12, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store i64 1, i64* %15, align 8
  br label %114

113:                                              ; preds = %106
  store i64 2, i64* %15, align 8
  br label %114

114:                                              ; preds = %113, %112
  br label %133

115:                                              ; preds = %102
  %116 = load i8*, i8** %10, align 8
  %117 = call i64 @os_strcmp(i8* %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %8, align 8
  %121 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %120, i32 0, i32 0
  %122 = load i32, i32* %13, align 4
  %123 = call i64 @wpa_supplicant_ctrl_iface_detach(i32* %121, %struct.sockaddr_in* %12, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  store i64 1, i64* %15, align 8
  br label %127

126:                                              ; preds = %119
  store i64 2, i64* %15, align 8
  br label %127

127:                                              ; preds = %126, %125
  br label %132

128:                                              ; preds = %115
  %129 = load %struct.wpa_global*, %struct.wpa_global** %7, align 8
  %130 = load i8*, i8** %10, align 8
  %131 = call i8* @wpa_supplicant_global_ctrl_iface_process(%struct.wpa_global* %129, i8* %130, i64* %15)
  store i8* %131, i8** %14, align 8
  br label %132

132:                                              ; preds = %128, %127
  br label %133

133:                                              ; preds = %132, %114
  br label %134

134:                                              ; preds = %133, %58
  %135 = load i8*, i8** %14, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %147

137:                                              ; preds = %134
  %138 = load i32, i32* %4, align 4
  %139 = load i8*, i8** %14, align 8
  %140 = load i64, i64* %15, align 8
  %141 = trunc i64 %140 to i32
  %142 = bitcast %struct.sockaddr_in* %12 to %struct.sockaddr*
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @sendto(i32 %138, i8* %139, i32 %141, i32 0, %struct.sockaddr* %142, i32 %143)
  %145 = load i8*, i8** %14, align 8
  %146 = call i32 @os_free(i8* %145)
  br label %165

147:                                              ; preds = %134
  %148 = load i64, i64* %15, align 8
  %149 = icmp eq i64 %148, 1
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i32, i32* %4, align 4
  %152 = bitcast %struct.sockaddr_in* %12 to %struct.sockaddr*
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @sendto(i32 %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 5, i32 0, %struct.sockaddr* %152, i32 %153)
  br label %164

155:                                              ; preds = %147
  %156 = load i64, i64* %15, align 8
  %157 = icmp eq i64 %156, 2
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load i32, i32* %4, align 4
  %160 = bitcast %struct.sockaddr_in* %12 to %struct.sockaddr*
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @sendto(i32 %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 3, i32 0, %struct.sockaddr* %160, i32 %161)
  br label %163

163:                                              ; preds = %158, %155
  br label %164

164:                                              ; preds = %163, %150
  br label %165

165:                                              ; preds = %164, %137
  store i32 0, i32* %18, align 4
  br label %166

166:                                              ; preds = %165, %84, %74, %65, %44, %33
  %167 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %167)
  %168 = load i32, i32* %18, align 4
  switch i32 %168, label %170 [
    i32 0, label %169
    i32 1, label %169
  ]

169:                                              ; preds = %166, %166
  ret void

170:                                              ; preds = %166
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i64 @htonl(i32) #2

declare dso_local i32 @inet_ntoa(i64) #2

declare dso_local i64 @os_strcmp(i8*, i8*) #2

declare dso_local i8* @wpa_supplicant_global_get_cookie(%struct.ctrl_iface_global_priv*, i64*) #2

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #2

declare dso_local i64 @hexstr2bin(i8*, i32*, i32) #2

declare dso_local i64 @os_memcmp(i32*, i32, i32) #2

declare dso_local i64 @wpa_supplicant_ctrl_iface_attach(i32*, %struct.sockaddr_in*, i32) #2

declare dso_local i64 @wpa_supplicant_ctrl_iface_detach(i32*, %struct.sockaddr_in*, i32) #2

declare dso_local i8* @wpa_supplicant_global_ctrl_iface_process(%struct.wpa_global*, i8*, i64*) #2

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @os_free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
