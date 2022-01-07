; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_unix.c_wpas_global_ctrl_iface_open_sock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_unix.c_wpas_global_ctrl_iface_open_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_global = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.ctrl_iface_global_priv = type { i32, i32 }
%struct.sockaddr_un = type { i32, i8*, i32 }
%struct.group = type { i64 }
%struct.sockaddr = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Global control interface '%s'\00", align 1
@PF_UNIX = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"socket(PF_UNIX): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"@abstract:\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"supp-global-ctrl-iface-init: bind(PF_UNIX;%s) failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Using Abstract control socket '%s'\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [68 x i8] c"supp-global-ctrl-iface-init(%s) (will try fixup): bind(PF_UNIX): %s\00", align 1
@.str.6 = private unnamed_addr constant [109 x i8] c"ctrl_iface exists, but does not allow connections - assuming it was leftover from forced program termination\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"Could not unlink existing ctrl_iface socket '%s': %s\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"supp-glb-iface-init: bind(PF_UNIX;%s): %s\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"Successfully replaced leftover ctrl_iface socket '%s'\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"ctrl_iface exists and seems to be in use - cannot override it\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"Delete '%s' manually if it is not used anymore\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Using UNIX control socket '%s'\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"ctrl_interface_group=%d (from group name '%s')\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"CTRL: Invalid group '%s'\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"ctrl_interface_group=%d\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"lchown[global_ctrl_interface=%s,gid=%d]: %s\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [36 x i8] c"chmod[global_ctrl_interface=%s]: %s\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"chmod[global_ctrl_interface=%s](S_IRWXU): %s\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [28 x i8] c"fcntl(ctrl, O_NONBLOCK): %s\00", align 1
@wpa_supplicant_global_ctrl_iface_receive = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_global*, %struct.ctrl_iface_global_priv*)* @wpas_global_ctrl_iface_open_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_global_ctrl_iface_open_sock(%struct.wpa_global* %0, %struct.ctrl_iface_global_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_global*, align 8
  %5 = alloca %struct.ctrl_iface_global_priv*, align 8
  %6 = alloca %struct.sockaddr_un, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.group*, align 8
  %12 = alloca i8*, align 8
  store %struct.wpa_global* %0, %struct.wpa_global** %4, align 8
  store %struct.ctrl_iface_global_priv* %1, %struct.ctrl_iface_global_priv** %5, align 8
  %13 = load %struct.wpa_global*, %struct.wpa_global** %4, align 8
  %14 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @PF_UNIX, align 4
  %21 = load i32, i32* @SOCK_DGRAM, align 4
  %22 = call i32 @socket(i32 %20, i32 %21, i32 0)
  %23 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %5, align 8
  %24 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %5, align 8
  %26 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load i32, i32* @MSG_ERROR, align 4
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 @strerror(i32 %31)
  %33 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %249

34:                                               ; preds = %2
  %35 = call i32 @os_memset(%struct.sockaddr_un* %6, i32 0, i32 24)
  %36 = load i32, i32* @AF_UNIX, align 4
  %37 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @os_strncmp(i8* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 0, i8* %44, align 1
  %45 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 10
  %50 = call i32 @os_strlcpy(i8* %47, i8* %49, i32 7)
  %51 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %5, align 8
  %52 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*
  %55 = call i64 @bind(i32 %53, %struct.sockaddr* %54, i32 24)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %41
  %58 = load i32, i32* @MSG_ERROR, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* @errno, align 4
  %61 = call i32 @strerror(i32 %60)
  %62 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i8* %59, i32 %61)
  br label %249

63:                                               ; preds = %41
  %64 = load i32, i32* @MSG_DEBUG, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 10
  %67 = call i32 (i32, i8*, ...) @wpa_printf(i32 %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  br label %215

68:                                               ; preds = %34
  %69 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @os_strlcpy(i8* %70, i8* %71, i32 8)
  %73 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %5, align 8
  %74 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*
  %77 = call i64 @bind(i32 %75, %struct.sockaddr* %76, i32 24)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %127

79:                                               ; preds = %68
  %80 = load i32, i32* @MSG_INFO, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* @errno, align 4
  %83 = call i32 @strerror(i32 %82)
  %84 = call i32 (i32, i8*, ...) @wpa_printf(i32 %80, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i8* %81, i32 %83)
  %85 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %5, align 8
  %86 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*
  %89 = call i64 @connect(i32 %87, %struct.sockaddr* %88, i32 24)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %120

91:                                               ; preds = %79
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = call i32 (i32, i8*, ...) @wpa_printf(i32 %92, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.6, i64 0, i64 0))
  %94 = load i8*, i8** %7, align 8
  %95 = call i64 @unlink(i8* %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load i32, i32* @MSG_ERROR, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = load i32, i32* @errno, align 4
  %101 = call i32 @strerror(i32 %100)
  %102 = call i32 (i32, i8*, ...) @wpa_printf(i32 %98, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* %99, i32 %101)
  br label %249

103:                                              ; preds = %91
  %104 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %5, align 8
  %105 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*
  %108 = call i64 @bind(i32 %106, %struct.sockaddr* %107, i32 24)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = load i32, i32* @MSG_ERROR, align 4
  %112 = load i8*, i8** %7, align 8
  %113 = load i32, i32* @errno, align 4
  %114 = call i32 @strerror(i32 %113)
  %115 = call i32 (i32, i8*, ...) @wpa_printf(i32 %111, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* %112, i32 %114)
  br label %249

116:                                              ; preds = %103
  %117 = load i32, i32* @MSG_DEBUG, align 4
  %118 = load i8*, i8** %7, align 8
  %119 = call i32 (i32, i8*, ...) @wpa_printf(i32 %117, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i8* %118)
  br label %126

120:                                              ; preds = %79
  %121 = load i32, i32* @MSG_INFO, align 4
  %122 = call i32 (i32, i8*, ...) @wpa_printf(i32 %121, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0))
  %123 = load i32, i32* @MSG_INFO, align 4
  %124 = load i8*, i8** %7, align 8
  %125 = call i32 (i32, i8*, ...) @wpa_printf(i32 %123, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i8* %124)
  br label %249

126:                                              ; preds = %116
  br label %127

127:                                              ; preds = %126, %68
  %128 = load i32, i32* @MSG_DEBUG, align 4
  %129 = load i8*, i8** %7, align 8
  %130 = call i32 (i32, i8*, ...) @wpa_printf(i32 %128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* %129)
  %131 = load %struct.wpa_global*, %struct.wpa_global** %4, align 8
  %132 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %202

136:                                              ; preds = %127
  %137 = load %struct.wpa_global*, %struct.wpa_global** %4, align 8
  %138 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  store i8* %140, i8** %9, align 8
  store i64 0, i64* %10, align 8
  %141 = load i8*, i8** %9, align 8
  %142 = call %struct.group* @getgrnam(i8* %141)
  store %struct.group* %142, %struct.group** %11, align 8
  %143 = load %struct.group*, %struct.group** %11, align 8
  %144 = icmp ne %struct.group* %143, null
  br i1 %144, label %145, label %154

145:                                              ; preds = %136
  %146 = load %struct.group*, %struct.group** %11, align 8
  %147 = getelementptr inbounds %struct.group, %struct.group* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %10, align 8
  %149 = load i32, i32* @MSG_DEBUG, align 4
  %150 = load i64, i64* %10, align 8
  %151 = trunc i64 %150 to i32
  %152 = load i8*, i8** %9, align 8
  %153 = call i32 (i32, i8*, ...) @wpa_printf(i32 %149, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i32 %151, i8* %152)
  br label %175

154:                                              ; preds = %136
  %155 = load i8*, i8** %9, align 8
  %156 = call i64 @strtol(i8* %155, i8** %12, i32 10)
  store i64 %156, i64* %10, align 8
  %157 = load i8*, i8** %9, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %154
  %162 = load i8*, i8** %12, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %161, %154
  %167 = load i32, i32* @MSG_ERROR, align 4
  %168 = load i8*, i8** %9, align 8
  %169 = call i32 (i32, i8*, ...) @wpa_printf(i32 %167, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i8* %168)
  br label %249

170:                                              ; preds = %161
  %171 = load i32, i32* @MSG_DEBUG, align 4
  %172 = load i64, i64* %10, align 8
  %173 = trunc i64 %172 to i32
  %174 = call i32 (i32, i8*, ...) @wpa_printf(i32 %171, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %170, %145
  %176 = load i8*, i8** %7, align 8
  %177 = load i64, i64* %10, align 8
  %178 = call i64 @lchown(i8* %176, i32 -1, i64 %177)
  %179 = icmp slt i64 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %175
  %181 = load i32, i32* @MSG_ERROR, align 4
  %182 = load i8*, i8** %7, align 8
  %183 = load i64, i64* %10, align 8
  %184 = trunc i64 %183 to i32
  %185 = load i32, i32* @errno, align 4
  %186 = call i32 @strerror(i32 %185)
  %187 = call i32 (i32, i8*, ...) @wpa_printf(i32 %181, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0), i8* %182, i32 %184, i32 %186)
  br label %249

188:                                              ; preds = %175
  %189 = load i8*, i8** %7, align 8
  %190 = load i32, i32* @S_IRWXU, align 4
  %191 = load i32, i32* @S_IRWXG, align 4
  %192 = or i32 %190, %191
  %193 = call i64 @chmod(i8* %189, i32 %192)
  %194 = icmp slt i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %188
  %196 = load i32, i32* @MSG_ERROR, align 4
  %197 = load i8*, i8** %7, align 8
  %198 = load i32, i32* @errno, align 4
  %199 = call i32 @strerror(i32 %198)
  %200 = call i32 (i32, i8*, ...) @wpa_printf(i32 %196, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i8* %197, i32 %199)
  br label %249

201:                                              ; preds = %188
  br label %214

202:                                              ; preds = %127
  %203 = load i8*, i8** %7, align 8
  %204 = load i32, i32* @S_IRWXU, align 4
  %205 = call i64 @chmod(i8* %203, i32 %204)
  %206 = icmp slt i64 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %202
  %208 = load i32, i32* @MSG_DEBUG, align 4
  %209 = load i8*, i8** %7, align 8
  %210 = load i32, i32* @errno, align 4
  %211 = call i32 @strerror(i32 %210)
  %212 = call i32 (i32, i8*, ...) @wpa_printf(i32 %208, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i64 0, i64 0), i8* %209, i32 %211)
  br label %213

213:                                              ; preds = %207, %202
  br label %214

214:                                              ; preds = %213, %201
  br label %215

215:                                              ; preds = %214, %63
  %216 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %5, align 8
  %217 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @F_GETFL, align 4
  %220 = call i64 (i32, i32, ...) @fcntl(i32 %218, i32 %219)
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %8, align 4
  %222 = load i32, i32* %8, align 4
  %223 = icmp sge i32 %222, 0
  br i1 %223, label %224, label %241

224:                                              ; preds = %215
  %225 = load i32, i32* @O_NONBLOCK, align 4
  %226 = load i32, i32* %8, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %8, align 4
  %228 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %5, align 8
  %229 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @F_SETFL, align 4
  %232 = load i32, i32* %8, align 4
  %233 = call i64 (i32, i32, ...) @fcntl(i32 %230, i32 %231, i32 %232)
  %234 = icmp slt i64 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %224
  %236 = load i32, i32* @MSG_INFO, align 4
  %237 = load i32, i32* @errno, align 4
  %238 = call i32 @strerror(i32 %237)
  %239 = call i32 (i32, i8*, ...) @wpa_printf(i32 %236, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i32 %238)
  br label %240

240:                                              ; preds = %235, %224
  br label %241

241:                                              ; preds = %240, %215
  %242 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %5, align 8
  %243 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @wpa_supplicant_global_ctrl_iface_receive, align 4
  %246 = load %struct.wpa_global*, %struct.wpa_global** %4, align 8
  %247 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %5, align 8
  %248 = call i32 @eloop_register_read_sock(i32 %244, i32 %245, %struct.wpa_global* %246, %struct.ctrl_iface_global_priv* %247)
  store i32 0, i32* %3, align 4
  br label %262

249:                                              ; preds = %195, %180, %166, %120, %110, %97, %57, %29
  %250 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %5, align 8
  %251 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = icmp sge i32 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %249
  %255 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %5, align 8
  %256 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @close(i32 %257)
  %259 = load %struct.ctrl_iface_global_priv*, %struct.ctrl_iface_global_priv** %5, align 8
  %260 = getelementptr inbounds %struct.ctrl_iface_global_priv, %struct.ctrl_iface_global_priv* %259, i32 0, i32 0
  store i32 -1, i32* %260, align 4
  br label %261

261:                                              ; preds = %254, %249
  store i32 -1, i32* %3, align 4
  br label %262

262:                                              ; preds = %261, %241
  %263 = load i32, i32* %3, align 4
  ret i32 %263
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @os_memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @os_strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @lchown(i8*, i32, i64) #1

declare dso_local i64 @chmod(i8*, i32) #1

declare dso_local i64 @fcntl(i32, i32, ...) #1

declare dso_local i32 @eloop_register_read_sock(i32, i32, %struct.wpa_global*, %struct.ctrl_iface_global_priv*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
