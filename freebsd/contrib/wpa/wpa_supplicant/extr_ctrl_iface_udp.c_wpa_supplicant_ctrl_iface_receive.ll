; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_udp.c_wpa_supplicant_ctrl_iface_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_udp.c_wpa_supplicant_ctrl_iface_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.ctrl_iface_priv = type { i32, i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__, i32 }
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
@.str.9 = private unnamed_addr constant [7 x i8] c"LEVEL \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @wpa_supplicant_ctrl_iface_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_supplicant_ctrl_iface_receive(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpa_supplicant*, align 8
  %8 = alloca %struct.ctrl_iface_priv*, align 8
  %9 = alloca [4096 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr_in, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %21, %struct.wpa_supplicant** %7, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to %struct.ctrl_iface_priv*
  store %struct.ctrl_iface_priv* %23, %struct.ctrl_iface_priv** %8, align 8
  store i32 16, i32* %13, align 4
  store i8* null, i8** %14, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %24 = load i32, i32* @COOKIE_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %17, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %18, align 8
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %30 = bitcast %struct.sockaddr_in* %12 to %struct.sockaddr*
  %31 = call i32 @recvfrom(i32 %28, i8* %29, i32 4095, i32 0, %struct.sockaddr* %30, i32* %13)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %3
  %35 = load i32, i32* @MSG_ERROR, align 4
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @strerror(i32 %36)
  %38 = call i32 (i32, i8*, ...) @wpa_printf(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 1, i32* %19, align 4
  br label %190

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @htonl(i32 2130706433)
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @inet_ntoa(i64 %49)
  %51 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i32 1, i32* %19, align 4
  br label %190

52:                                               ; preds = %39
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 %54
  store i8 0, i8* %55, align 1
  %56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %57 = call i64 @os_strcmp(i8* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %8, align 8
  %61 = call i8* @wpa_supplicant_ctrl_iface_get_cookie(%struct.ctrl_iface_priv* %60, i64* %15)
  store i8* %61, i8** %14, align 8
  br label %150

62:                                               ; preds = %52
  %63 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %64 = call i64 @os_strncmp(i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %19, align 4
  br label %190

69:                                               ; preds = %62
  %70 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %71 = getelementptr inbounds i8, i8* %70, i64 7
  %72 = load i32, i32* @COOKIE_LEN, align 4
  %73 = call i64 @hexstr2bin(i8* %71, i32* %27, i32 %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @MSG_DEBUG, align 4
  %77 = call i32 (i32, i8*, ...) @wpa_printf(i32 %76, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %19, align 4
  br label %190

78:                                               ; preds = %69
  %79 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %8, align 8
  %80 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @COOKIE_LEN, align 4
  %83 = call i64 @os_memcmp(i32* %27, i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* @MSG_DEBUG, align 4
  %87 = call i32 (i32, i8*, ...) @wpa_printf(i32 %86, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %19, align 4
  br label %190

88:                                               ; preds = %78
  %89 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %90 = getelementptr inbounds i8, i8* %89, i64 7
  %91 = load i32, i32* @COOKIE_LEN, align 4
  %92 = mul nsw i32 2, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  store i8* %94, i8** %10, align 8
  br label %95

95:                                               ; preds = %100, %88
  %96 = load i8*, i8** %10, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 32
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %10, align 8
  br label %95

103:                                              ; preds = %95
  %104 = load i8*, i8** %10, align 8
  %105 = call i64 @os_strcmp(i8* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %8, align 8
  %109 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %108, i32 0, i32 0
  %110 = load i32, i32* %13, align 4
  %111 = call i64 @wpa_supplicant_ctrl_iface_attach(i32* %109, %struct.sockaddr_in* %12, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i64 1, i64* %15, align 8
  br label %115

114:                                              ; preds = %107
  store i32 1, i32* %16, align 4
  store i64 2, i64* %15, align 8
  br label %115

115:                                              ; preds = %114, %113
  br label %149

116:                                              ; preds = %103
  %117 = load i8*, i8** %10, align 8
  %118 = call i64 @os_strcmp(i8* %117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %116
  %121 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %8, align 8
  %122 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %121, i32 0, i32 0
  %123 = load i32, i32* %13, align 4
  %124 = call i64 @wpa_supplicant_ctrl_iface_detach(i32* %122, %struct.sockaddr_in* %12, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i64 1, i64* %15, align 8
  br label %128

127:                                              ; preds = %120
  store i64 2, i64* %15, align 8
  br label %128

128:                                              ; preds = %127, %126
  br label %148

129:                                              ; preds = %116
  %130 = load i8*, i8** %10, align 8
  %131 = call i64 @os_strncmp(i8* %130, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 6)
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %129
  %134 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %8, align 8
  %135 = load i32, i32* %13, align 4
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 6
  %138 = call i64 @wpa_supplicant_ctrl_iface_level(%struct.ctrl_iface_priv* %134, %struct.sockaddr_in* %12, i32 %135, i8* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  store i64 1, i64* %15, align 8
  br label %142

141:                                              ; preds = %133
  store i64 2, i64* %15, align 8
  br label %142

142:                                              ; preds = %141, %140
  br label %147

143:                                              ; preds = %129
  %144 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %145 = load i8*, i8** %10, align 8
  %146 = call i8* @wpa_supplicant_ctrl_iface_process(%struct.wpa_supplicant* %144, i8* %145, i64* %15)
  store i8* %146, i8** %14, align 8
  br label %147

147:                                              ; preds = %143, %142
  br label %148

148:                                              ; preds = %147, %128
  br label %149

149:                                              ; preds = %148, %115
  br label %150

150:                                              ; preds = %149, %59
  %151 = load i8*, i8** %14, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %163

153:                                              ; preds = %150
  %154 = load i32, i32* %4, align 4
  %155 = load i8*, i8** %14, align 8
  %156 = load i64, i64* %15, align 8
  %157 = trunc i64 %156 to i32
  %158 = bitcast %struct.sockaddr_in* %12 to %struct.sockaddr*
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @sendto(i32 %154, i8* %155, i32 %157, i32 0, %struct.sockaddr* %158, i32 %159)
  %161 = load i8*, i8** %14, align 8
  %162 = call i32 @os_free(i8* %161)
  br label %181

163:                                              ; preds = %150
  %164 = load i64, i64* %15, align 8
  %165 = icmp eq i64 %164, 1
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load i32, i32* %4, align 4
  %168 = bitcast %struct.sockaddr_in* %12 to %struct.sockaddr*
  %169 = load i32, i32* %13, align 4
  %170 = call i32 @sendto(i32 %167, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 5, i32 0, %struct.sockaddr* %168, i32 %169)
  br label %180

171:                                              ; preds = %163
  %172 = load i64, i64* %15, align 8
  %173 = icmp eq i64 %172, 2
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load i32, i32* %4, align 4
  %176 = bitcast %struct.sockaddr_in* %12 to %struct.sockaddr*
  %177 = load i32, i32* %13, align 4
  %178 = call i32 @sendto(i32 %175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 3, i32 0, %struct.sockaddr* %176, i32 %177)
  br label %179

179:                                              ; preds = %174, %171
  br label %180

180:                                              ; preds = %179, %166
  br label %181

181:                                              ; preds = %180, %153
  %182 = load i32, i32* %16, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %181
  %185 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %186 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @eapol_sm_notify_ctrl_attached(i32 %187)
  br label %189

189:                                              ; preds = %184, %181
  store i32 0, i32* %19, align 4
  br label %190

190:                                              ; preds = %189, %85, %75, %66, %45, %34
  %191 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %191)
  %192 = load i32, i32* %19, align 4
  switch i32 %192, label %194 [
    i32 0, label %193
    i32 1, label %193
  ]

193:                                              ; preds = %190, %190
  ret void

194:                                              ; preds = %190
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

declare dso_local i8* @wpa_supplicant_ctrl_iface_get_cookie(%struct.ctrl_iface_priv*, i64*) #2

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #2

declare dso_local i64 @hexstr2bin(i8*, i32*, i32) #2

declare dso_local i64 @os_memcmp(i32*, i32, i32) #2

declare dso_local i64 @wpa_supplicant_ctrl_iface_attach(i32*, %struct.sockaddr_in*, i32) #2

declare dso_local i64 @wpa_supplicant_ctrl_iface_detach(i32*, %struct.sockaddr_in*, i32) #2

declare dso_local i64 @wpa_supplicant_ctrl_iface_level(%struct.ctrl_iface_priv*, %struct.sockaddr_in*, i32, i8*) #2

declare dso_local i8* @wpa_supplicant_ctrl_iface_process(%struct.wpa_supplicant*, i8*, i64*) #2

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @os_free(i8*) #2

declare dso_local i32 @eapol_sm_notify_ctrl_attached(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
