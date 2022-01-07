; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_unix.c_wpas_ctrl_iface_open_sock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_unix.c_wpas_ctrl_iface_open_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.ctrl_iface_priv = type { i32, i32 }
%struct.sockaddr_un = type { i32, i32, i32 }
%struct.group = type { i64 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"DIR=\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" GROUP=\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Using existing control interface directory.\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"mkdir[ctrl_interface=%s]: %s\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"ctrl_interface_group=%d (from group name '%s')\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"CTRL: Invalid group '%s'\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"ctrl_interface_group=%d\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"lchown[ctrl_interface=%s,gid=%d]: %s\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"CTRL: chmod[ctrl_interface]: %s\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"ctrl_iface path limit exceeded\00", align 1
@PF_UNIX = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"socket(PF_UNIX): %s\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [36 x i8] c"ctrl_iface bind(PF_UNIX) failed: %s\00", align 1
@.str.12 = private unnamed_addr constant [109 x i8] c"ctrl_iface exists, but does not allow connections - assuming it was leftover from forced program termination\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"Could not unlink existing ctrl_iface socket '%s': %s\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"supp-ctrl-iface-init: bind(PF_UNIX): %s\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"Successfully replaced leftover ctrl_iface socket '%s'\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [62 x i8] c"ctrl_iface exists and seems to be in use - cannot override it\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"Delete '%s' manually if it is not used anymore\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"chmod[ctrl_interface=%s]: %s\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [28 x i8] c"fcntl(ctrl, O_NONBLOCK): %s\00", align 1
@wpa_supplicant_ctrl_iface_receive = common dso_local global i32 0, align 4
@wpa_supplicant_ctrl_iface_msg_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.ctrl_iface_priv*)* @wpas_ctrl_iface_open_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_ctrl_iface_open_sock(%struct.wpa_supplicant* %0, %struct.ctrl_iface_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.ctrl_iface_priv*, align 8
  %6 = alloca %struct.sockaddr_un, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.group*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.ctrl_iface_priv* %1, %struct.ctrl_iface_priv** %5, align 8
  store i8* null, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @os_strdup(i32 %20)
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %311

25:                                               ; preds = %2
  %26 = load i8*, i8** %10, align 8
  %27 = call i64 @os_strncmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 4
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = call i8* @os_strstr(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i8*, i8** %12, align 8
  store i8 0, i8* %37, align 1
  %38 = load i8*, i8** %12, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 7
  store i8* %39, i8** %12, align 8
  br label %40

40:                                               ; preds = %36, %29
  br label %48

41:                                               ; preds = %25
  %42 = load i8*, i8** %10, align 8
  store i8* %42, i8** %11, align 8
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %44 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %12, align 8
  br label %48

48:                                               ; preds = %41, %40
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* @S_IRWXU, align 4
  %51 = load i32, i32* @S_IRWXG, align 4
  %52 = or i32 %50, %51
  %53 = call i64 @mkdir(i8* %49, i32 %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %48
  %56 = load i64, i64* @errno, align 8
  %57 = load i64, i64* @EEXIST, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = call i32 (i32, i8*, ...) @wpa_printf(i32 %60, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %68

62:                                               ; preds = %55
  %63 = load i32, i32* @MSG_ERROR, align 4
  %64 = load i8*, i8** %11, align 8
  %65 = load i64, i64* @errno, align 8
  %66 = call i8* @strerror(i64 %65)
  %67 = call i32 (i32, i8*, ...) @wpa_printf(i32 %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %64, i8* %66)
  br label %311

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %48
  %70 = load i8*, i8** %12, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %108

72:                                               ; preds = %69
  %73 = load i8*, i8** %12, align 8
  %74 = call %struct.group* @getgrnam(i8* %73)
  store %struct.group* %74, %struct.group** %13, align 8
  %75 = load %struct.group*, %struct.group** %13, align 8
  %76 = icmp ne %struct.group* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load %struct.group*, %struct.group** %13, align 8
  %79 = getelementptr inbounds %struct.group, %struct.group* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %8, align 8
  store i32 1, i32* %9, align 4
  %81 = load i32, i32* @MSG_DEBUG, align 4
  %82 = load i64, i64* %8, align 8
  %83 = trunc i64 %82 to i32
  %84 = load i8*, i8** %12, align 8
  %85 = call i32 (i32, i8*, ...) @wpa_printf(i32 %81, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %83, i8* %84)
  br label %107

86:                                               ; preds = %72
  %87 = load i8*, i8** %12, align 8
  %88 = call i64 @strtol(i8* %87, i8** %14, i32 10)
  store i64 %88, i64* %8, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %86
  %94 = load i8*, i8** %14, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93, %86
  %99 = load i32, i32* @MSG_ERROR, align 4
  %100 = load i8*, i8** %12, align 8
  %101 = call i32 (i32, i8*, ...) @wpa_printf(i32 %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %100)
  br label %311

102:                                              ; preds = %93
  store i32 1, i32* %9, align 4
  %103 = load i32, i32* @MSG_DEBUG, align 4
  %104 = load i64, i64* %8, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 (i32, i8*, ...) @wpa_printf(i32 %103, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %102, %77
  br label %108

108:                                              ; preds = %107, %69
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %108
  %112 = load i8*, i8** %11, align 8
  %113 = load i64, i64* %8, align 8
  %114 = call i64 @lchown(i8* %112, i32 -1, i64 %113)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load i32, i32* @MSG_ERROR, align 4
  %118 = load i8*, i8** %11, align 8
  %119 = load i64, i64* %8, align 8
  %120 = trunc i64 %119 to i32
  %121 = load i64, i64* @errno, align 8
  %122 = call i8* @strerror(i64 %121)
  %123 = call i32 (i32, i8*, ...) @wpa_printf(i32 %117, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8* %118, i32 %120, i8* %122)
  br label %311

124:                                              ; preds = %111, %108
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %145

127:                                              ; preds = %124
  %128 = load i8*, i8** %11, align 8
  %129 = load i32, i32* @S_IRUSR, align 4
  %130 = load i32, i32* @S_IWUSR, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @S_IXUSR, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @S_IRGRP, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @S_IXGRP, align 4
  %137 = or i32 %135, %136
  %138 = call i64 @chmod(i8* %128, i32 %137)
  %139 = icmp slt i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %127
  %141 = load i32, i32* @MSG_ERROR, align 4
  %142 = load i64, i64* @errno, align 8
  %143 = call i8* @strerror(i64 %142)
  %144 = call i32 (i32, i8*, ...) @wpa_printf(i32 %141, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %143)
  br label %311

145:                                              ; preds = %127, %124
  %146 = load i8*, i8** %11, align 8
  %147 = call i32 @os_strlen(i8* %146)
  %148 = add nsw i32 %147, 1
  %149 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %150 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @os_strlen(i8* %151)
  %153 = add nsw i32 %148, %152
  %154 = sext i32 %153 to i64
  %155 = icmp uge i64 %154, 4
  br i1 %155, label %156, label %159

156:                                              ; preds = %145
  %157 = load i32, i32* @MSG_ERROR, align 4
  %158 = call i32 (i32, i8*, ...) @wpa_printf(i32 %157, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %311

159:                                              ; preds = %145
  %160 = load i32, i32* @PF_UNIX, align 4
  %161 = load i32, i32* @SOCK_DGRAM, align 4
  %162 = call i32 @socket(i32 %160, i32 %161, i32 0)
  %163 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %5, align 8
  %164 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 4
  %165 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %5, align 8
  %166 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %159
  %170 = load i32, i32* @MSG_ERROR, align 4
  %171 = load i64, i64* @errno, align 8
  %172 = call i8* @strerror(i64 %171)
  %173 = call i32 (i32, i8*, ...) @wpa_printf(i32 %170, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %172)
  br label %311

174:                                              ; preds = %159
  %175 = call i32 @os_memset(%struct.sockaddr_un* %6, i32 0, i32 12)
  %176 = load i32, i32* @AF_UNIX, align 4
  %177 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i32 0, i32 2
  store i32 %176, i32* %177, align 4
  %178 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %179 = call i8* @wpa_supplicant_ctrl_iface_path(%struct.wpa_supplicant* %178)
  store i8* %179, i8** %7, align 8
  %180 = load i8*, i8** %7, align 8
  %181 = icmp eq i8* %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  br label %311

183:                                              ; preds = %174
  %184 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i8*, i8** %7, align 8
  %187 = call i32 @os_strlcpy(i32 %185, i8* %186, i32 4)
  %188 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %5, align 8
  %189 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*
  %192 = call i64 @bind(i32 %190, %struct.sockaddr* %191, i32 12)
  %193 = icmp slt i64 %192, 0
  br i1 %193, label %194, label %242

194:                                              ; preds = %183
  %195 = load i32, i32* @MSG_DEBUG, align 4
  %196 = load i64, i64* @errno, align 8
  %197 = call i8* @strerror(i64 %196)
  %198 = call i32 (i32, i8*, ...) @wpa_printf(i32 %195, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i8* %197)
  %199 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %5, align 8
  %200 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*
  %203 = call i64 @connect(i32 %201, %struct.sockaddr* %202, i32 12)
  %204 = icmp slt i64 %203, 0
  br i1 %204, label %205, label %233

205:                                              ; preds = %194
  %206 = load i32, i32* @MSG_DEBUG, align 4
  %207 = call i32 (i32, i8*, ...) @wpa_printf(i32 %206, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.12, i64 0, i64 0))
  %208 = load i8*, i8** %7, align 8
  %209 = call i64 @unlink(i8* %208)
  %210 = icmp slt i64 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %205
  %212 = load i32, i32* @MSG_ERROR, align 4
  %213 = load i8*, i8** %7, align 8
  %214 = load i64, i64* @errno, align 8
  %215 = call i8* @strerror(i64 %214)
  %216 = call i32 (i32, i8*, ...) @wpa_printf(i32 %212, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i8* %213, i8* %215)
  br label %311

217:                                              ; preds = %205
  %218 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %5, align 8
  %219 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*
  %222 = call i64 @bind(i32 %220, %struct.sockaddr* %221, i32 12)
  %223 = icmp slt i64 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %217
  %225 = load i32, i32* @MSG_ERROR, align 4
  %226 = load i64, i64* @errno, align 8
  %227 = call i8* @strerror(i64 %226)
  %228 = call i32 (i32, i8*, ...) @wpa_printf(i32 %225, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i8* %227)
  br label %311

229:                                              ; preds = %217
  %230 = load i32, i32* @MSG_DEBUG, align 4
  %231 = load i8*, i8** %7, align 8
  %232 = call i32 (i32, i8*, ...) @wpa_printf(i32 %230, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i64 0, i64 0), i8* %231)
  br label %241

233:                                              ; preds = %194
  %234 = load i32, i32* @MSG_INFO, align 4
  %235 = call i32 (i32, i8*, ...) @wpa_printf(i32 %234, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.16, i64 0, i64 0))
  %236 = load i32, i32* @MSG_INFO, align 4
  %237 = load i8*, i8** %7, align 8
  %238 = call i32 (i32, i8*, ...) @wpa_printf(i32 %236, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i64 0, i64 0), i8* %237)
  %239 = load i8*, i8** %7, align 8
  %240 = call i32 @os_free(i8* %239)
  store i8* null, i8** %7, align 8
  br label %311

241:                                              ; preds = %229
  br label %242

242:                                              ; preds = %241, %183
  %243 = load i32, i32* %9, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %258

245:                                              ; preds = %242
  %246 = load i8*, i8** %7, align 8
  %247 = load i64, i64* %8, align 8
  %248 = call i64 @lchown(i8* %246, i32 -1, i64 %247)
  %249 = icmp slt i64 %248, 0
  br i1 %249, label %250, label %258

250:                                              ; preds = %245
  %251 = load i32, i32* @MSG_ERROR, align 4
  %252 = load i8*, i8** %7, align 8
  %253 = load i64, i64* %8, align 8
  %254 = trunc i64 %253 to i32
  %255 = load i64, i64* @errno, align 8
  %256 = call i8* @strerror(i64 %255)
  %257 = call i32 (i32, i8*, ...) @wpa_printf(i32 %251, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8* %252, i32 %254, i8* %256)
  br label %311

258:                                              ; preds = %245, %242
  %259 = load i8*, i8** %7, align 8
  %260 = load i32, i32* @S_IRWXU, align 4
  %261 = load i32, i32* @S_IRWXG, align 4
  %262 = or i32 %260, %261
  %263 = call i64 @chmod(i8* %259, i32 %262)
  %264 = icmp slt i64 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %258
  %266 = load i32, i32* @MSG_ERROR, align 4
  %267 = load i8*, i8** %7, align 8
  %268 = load i64, i64* @errno, align 8
  %269 = call i8* @strerror(i64 %268)
  %270 = call i32 (i32, i8*, ...) @wpa_printf(i32 %266, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i8* %267, i8* %269)
  br label %311

271:                                              ; preds = %258
  %272 = load i8*, i8** %7, align 8
  %273 = call i32 @os_free(i8* %272)
  %274 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %5, align 8
  %275 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @F_GETFL, align 4
  %278 = call i64 (i32, i32, ...) @fcntl(i32 %276, i32 %277)
  %279 = trunc i64 %278 to i32
  store i32 %279, i32* %15, align 4
  %280 = load i32, i32* %15, align 4
  %281 = icmp sge i32 %280, 0
  br i1 %281, label %282, label %299

282:                                              ; preds = %271
  %283 = load i32, i32* @O_NONBLOCK, align 4
  %284 = load i32, i32* %15, align 4
  %285 = or i32 %284, %283
  store i32 %285, i32* %15, align 4
  %286 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %5, align 8
  %287 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @F_SETFL, align 4
  %290 = load i32, i32* %15, align 4
  %291 = call i64 (i32, i32, ...) @fcntl(i32 %288, i32 %289, i32 %290)
  %292 = icmp slt i64 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %282
  %294 = load i32, i32* @MSG_INFO, align 4
  %295 = load i64, i64* @errno, align 8
  %296 = call i8* @strerror(i64 %295)
  %297 = call i32 (i32, i8*, ...) @wpa_printf(i32 %294, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i8* %296)
  br label %298

298:                                              ; preds = %293, %282
  br label %299

299:                                              ; preds = %298, %271
  %300 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %5, align 8
  %301 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @wpa_supplicant_ctrl_iface_receive, align 4
  %304 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %305 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %5, align 8
  %306 = call i32 @eloop_register_read_sock(i32 %302, i32 %303, %struct.wpa_supplicant* %304, %struct.ctrl_iface_priv* %305)
  %307 = load i32, i32* @wpa_supplicant_ctrl_iface_msg_cb, align 4
  %308 = call i32 @wpa_msg_register_cb(i32 %307)
  %309 = load i8*, i8** %10, align 8
  %310 = call i32 @os_free(i8* %309)
  store i32 0, i32* %3, align 4
  br label %334

311:                                              ; preds = %265, %250, %233, %224, %211, %182, %169, %156, %140, %116, %98, %62, %24
  %312 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %5, align 8
  %313 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = icmp sge i32 %314, 0
  br i1 %315, label %316, label %323

316:                                              ; preds = %311
  %317 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %5, align 8
  %318 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @close(i32 %319)
  %321 = load %struct.ctrl_iface_priv*, %struct.ctrl_iface_priv** %5, align 8
  %322 = getelementptr inbounds %struct.ctrl_iface_priv, %struct.ctrl_iface_priv* %321, i32 0, i32 0
  store i32 -1, i32* %322, align 4
  br label %323

323:                                              ; preds = %316, %311
  %324 = load i8*, i8** %7, align 8
  %325 = icmp ne i8* %324, null
  br i1 %325, label %326, label %331

326:                                              ; preds = %323
  %327 = load i8*, i8** %7, align 8
  %328 = call i64 @unlink(i8* %327)
  %329 = load i8*, i8** %7, align 8
  %330 = call i32 @os_free(i8* %329)
  br label %331

331:                                              ; preds = %326, %323
  %332 = load i8*, i8** %10, align 8
  %333 = call i32 @os_free(i8* %332)
  store i32 -1, i32* %3, align 4
  br label %334

334:                                              ; preds = %331, %299
  %335 = load i32, i32* %3, align 4
  ret i32 %335
}

declare dso_local i8* @os_strdup(i32) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i8* @os_strstr(i8*, i8*) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @lchown(i8*, i32, i64) #1

declare dso_local i64 @chmod(i8*, i32) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @os_memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i8* @wpa_supplicant_ctrl_iface_path(%struct.wpa_supplicant*) #1

declare dso_local i32 @os_strlcpy(i32, i8*, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i64 @fcntl(i32, i32, ...) #1

declare dso_local i32 @eloop_register_read_sock(i32, i32, %struct.wpa_supplicant*, %struct.ctrl_iface_priv*) #1

declare dso_local i32 @wpa_msg_register_cb(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
