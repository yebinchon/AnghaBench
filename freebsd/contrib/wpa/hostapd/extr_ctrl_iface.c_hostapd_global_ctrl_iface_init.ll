; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_global_ctrl_iface_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_global_ctrl_iface_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hapd_interfaces = type { i32, i8*, i8*, i64 }
%struct.sockaddr_un = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ctrl_iface not configured!\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Using existing control interface directory.\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"mkdir[ctrl_interface]: %s\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"lchown[ctrl_interface]: %s\00", align 1
@PF_UNIX = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"socket(PF_UNIX): %s\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"ctrl_iface bind(PF_UNIX) failed: %s\00", align 1
@.str.6 = private unnamed_addr constant [109 x i8] c"ctrl_iface exists, but does not allow connections - assuming it was leftover from forced program termination\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"Could not unlink existing ctrl_iface socket '%s': %s\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"bind(PF_UNIX): %s\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"Successfully replaced leftover ctrl_iface socket '%s'\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [62 x i8] c"ctrl_iface exists and seems to be in use - cannot override it\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"Delete '%s' manually if it is not used anymore\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"chmod[ctrl_interface/ifname]: %s\00", align 1
@hostapd_global_ctrl_iface_receive = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@COOKIE_LEN = common dso_local global i32 0, align 4
@HOSTAPD_GLOBAL_CTRL_IFACE_PORT = common dso_local global i32 0, align 4
@HOSTAPD_GLOBAL_CTRL_IFACE_PORT_LIMIT = common dso_local global i32 0, align 4
@gcookie = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_global_ctrl_iface_init(%struct.hapd_interfaces* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hapd_interfaces*, align 8
  %4 = alloca %struct.sockaddr_un, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.hapd_interfaces* %0, %struct.hapd_interfaces** %3, align 8
  store i32 -1, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %7 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %3, align 8
  %8 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %7, i32 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = call i32 (i32, i8*, ...) @wpa_printf(i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %198

14:                                               ; preds = %1
  %15 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %3, align 8
  %16 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* @S_IRWXU, align 4
  %19 = load i32, i32* @S_IRWXG, align 4
  %20 = or i32 %18, %19
  %21 = call i64 @mkdir(i8* %17, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %14
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @EEXIST, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %35

30:                                               ; preds = %23
  %31 = load i32, i32* @MSG_ERROR, align 4
  %32 = load i64, i64* @errno, align 8
  %33 = call i8* @strerror(i64 %32)
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  br label %183

35:                                               ; preds = %27
  br label %56

36:                                               ; preds = %14
  %37 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %3, align 8
  %38 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %3, align 8
  %43 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %3, align 8
  %46 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @lchown(i8* %44, i32 -1, i64 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load i32, i32* @MSG_ERROR, align 4
  %52 = load i64, i64* @errno, align 8
  %53 = call i8* @strerror(i64 %52)
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  br label %183

55:                                               ; preds = %41, %36
  br label %56

56:                                               ; preds = %55, %35
  %57 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %3, align 8
  %58 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @os_strlen(i8* %59)
  %61 = add nsw i32 %60, 1
  %62 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %3, align 8
  %63 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @os_strlen(i8* %64)
  %66 = add nsw i32 %61, %65
  %67 = sext i32 %66 to i64
  %68 = icmp uge i64 %67, 4
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  br label %183

70:                                               ; preds = %56
  %71 = load i32, i32* @PF_UNIX, align 4
  %72 = load i32, i32* @SOCK_DGRAM, align 4
  %73 = call i8* @socket(i32 %71, i32 %72, i32 0)
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load i32, i32* @MSG_ERROR, align 4
  %79 = load i64, i64* @errno, align 8
  %80 = call i8* @strerror(i64 %79)
  %81 = call i32 (i32, i8*, ...) @wpa_printf(i32 %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %80)
  br label %183

82:                                               ; preds = %70
  %83 = call i32 @os_memset(%struct.sockaddr_un* %4, i32 0, i32 12)
  %84 = load i32, i32* @AF_UNIX, align 4
  %85 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 2
  store i32 %84, i32* %85, align 4
  %86 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %3, align 8
  %87 = call i8* @hostapd_global_ctrl_iface_path(%struct.hapd_interfaces* %86)
  store i8* %87, i8** %6, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %183

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @os_strlcpy(i32 %93, i8* %94, i32 4)
  %96 = load i32, i32* %5, align 4
  %97 = bitcast %struct.sockaddr_un* %4 to %struct.sockaddr*
  %98 = call i64 @bind(i32 %96, %struct.sockaddr* %97, i32 12)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %144

100:                                              ; preds = %91
  %101 = load i32, i32* @MSG_DEBUG, align 4
  %102 = load i64, i64* @errno, align 8
  %103 = call i8* @strerror(i64 %102)
  %104 = call i32 (i32, i8*, ...) @wpa_printf(i32 %101, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %103)
  %105 = load i32, i32* %5, align 4
  %106 = bitcast %struct.sockaddr_un* %4 to %struct.sockaddr*
  %107 = call i64 @connect(i32 %105, %struct.sockaddr* %106, i32 12)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %135

109:                                              ; preds = %100
  %110 = load i32, i32* @MSG_DEBUG, align 4
  %111 = call i32 (i32, i8*, ...) @wpa_printf(i32 %110, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.6, i64 0, i64 0))
  %112 = load i8*, i8** %6, align 8
  %113 = call i64 @unlink(i8* %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load i32, i32* @MSG_ERROR, align 4
  %117 = load i8*, i8** %6, align 8
  %118 = load i64, i64* @errno, align 8
  %119 = call i8* @strerror(i64 %118)
  %120 = call i32 (i32, i8*, ...) @wpa_printf(i32 %116, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* %117, i8* %119)
  br label %183

121:                                              ; preds = %109
  %122 = load i32, i32* %5, align 4
  %123 = bitcast %struct.sockaddr_un* %4 to %struct.sockaddr*
  %124 = call i64 @bind(i32 %122, %struct.sockaddr* %123, i32 12)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load i32, i32* @MSG_ERROR, align 4
  %128 = load i64, i64* @errno, align 8
  %129 = call i8* @strerror(i64 %128)
  %130 = call i32 (i32, i8*, ...) @wpa_printf(i32 %127, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %129)
  br label %183

131:                                              ; preds = %121
  %132 = load i32, i32* @MSG_DEBUG, align 4
  %133 = load i8*, i8** %6, align 8
  %134 = call i32 (i32, i8*, ...) @wpa_printf(i32 %132, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i8* %133)
  br label %143

135:                                              ; preds = %100
  %136 = load i32, i32* @MSG_INFO, align 4
  %137 = call i32 (i32, i8*, ...) @wpa_printf(i32 %136, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0))
  %138 = load i32, i32* @MSG_INFO, align 4
  %139 = load i8*, i8** %6, align 8
  %140 = call i32 (i32, i8*, ...) @wpa_printf(i32 %138, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i8* %139)
  %141 = load i8*, i8** %6, align 8
  %142 = call i32 @os_free(i8* %141)
  store i8* null, i8** %6, align 8
  br label %183

143:                                              ; preds = %131
  br label %144

144:                                              ; preds = %143, %91
  %145 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %3, align 8
  %146 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %144
  %150 = load i8*, i8** %6, align 8
  %151 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %3, align 8
  %152 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @lchown(i8* %150, i32 -1, i64 %153)
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %149
  %157 = load i32, i32* @MSG_ERROR, align 4
  %158 = load i64, i64* @errno, align 8
  %159 = call i8* @strerror(i64 %158)
  %160 = call i32 (i32, i8*, ...) @wpa_printf(i32 %157, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %159)
  br label %183

161:                                              ; preds = %149, %144
  %162 = load i8*, i8** %6, align 8
  %163 = load i32, i32* @S_IRWXU, align 4
  %164 = load i32, i32* @S_IRWXG, align 4
  %165 = or i32 %163, %164
  %166 = call i64 @chmod(i8* %162, i32 %165)
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %161
  %169 = load i32, i32* @MSG_ERROR, align 4
  %170 = load i64, i64* @errno, align 8
  %171 = call i8* @strerror(i64 %170)
  %172 = call i32 (i32, i8*, ...) @wpa_printf(i32 %169, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i8* %171)
  br label %183

173:                                              ; preds = %161
  %174 = load i8*, i8** %6, align 8
  %175 = call i32 @os_free(i8* %174)
  %176 = load i32, i32* %5, align 4
  %177 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %3, align 8
  %178 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* @hostapd_global_ctrl_iface_receive, align 4
  %181 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %3, align 8
  %182 = call i64 @eloop_register_read_sock(i32 %179, i32 %180, %struct.hapd_interfaces* %181, i32* null)
  store i32 0, i32* %2, align 4
  br label %198

183:                                              ; preds = %168, %156, %135, %126, %115, %90, %77, %69, %50, %30
  %184 = load i32, i32* %5, align 4
  %185 = icmp sge i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i32, i32* %5, align 4
  %188 = call i32 @close(i32 %187)
  br label %189

189:                                              ; preds = %186, %183
  %190 = load i8*, i8** %6, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %197

192:                                              ; preds = %189
  %193 = load i8*, i8** %6, align 8
  %194 = call i64 @unlink(i8* %193)
  %195 = load i8*, i8** %6, align 8
  %196 = call i32 @os_free(i8* %195)
  br label %197

197:                                              ; preds = %192, %189
  store i32 -1, i32* %2, align 4
  br label %198

198:                                              ; preds = %197, %173, %11
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i64 @lchown(i8*, i32, i64) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i8* @socket(i32, i32, i32) #1

declare dso_local i32 @os_memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i8* @hostapd_global_ctrl_iface_path(%struct.hapd_interfaces*) #1

declare dso_local i32 @os_strlcpy(i32, i8*, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i64 @chmod(i8*, i32) #1

declare dso_local i64 @eloop_register_read_sock(i32, i32, %struct.hapd_interfaces*, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
