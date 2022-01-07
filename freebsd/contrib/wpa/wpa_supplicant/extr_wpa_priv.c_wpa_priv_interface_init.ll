; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_interface_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_interface_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.wpa_priv_interface = type { i32, i8*, i8*, i8*, %struct.TYPE_2__*, i8* }
%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@wpa_drivers = common dso_local global %struct.TYPE_2__** null, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unsupported driver '%s'\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@PF_UNIX = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"socket(PF_UNIX): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"bind(PF_UNIX) failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"Socket exists, but does not allow connections - assuming it was leftover from forced program termination\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"Could not unlink existing ctrl_iface socket '%s': %s\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"wpa-priv-iface-init: bind(PF_UNIX): %s\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Successfully replaced leftover socket '%s'\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [58 x i8] c"Socket exists and seems to be in use - cannot override it\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"Delete '%s' manually if it is not used anymore\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"chmod: %s\00", align 1
@wpa_priv_receive = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_priv_interface* (i8*, i8*, i8*)* @wpa_priv_interface_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_priv_interface* @wpa_priv_interface_init(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.wpa_priv_interface*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wpa_priv_interface*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sockaddr_un, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i8* @os_strchr(i8* %13, i8 signext 58)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.wpa_priv_interface* null, %struct.wpa_priv_interface** %4, align 8
  br label %262

18:                                               ; preds = %3
  %19 = call %struct.wpa_priv_interface* @os_zalloc(i32 48)
  store %struct.wpa_priv_interface* %19, %struct.wpa_priv_interface** %8, align 8
  %20 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %21 = icmp eq %struct.wpa_priv_interface* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store %struct.wpa_priv_interface* null, %struct.wpa_priv_interface** %4, align 8
  br label %262

23:                                               ; preds = %18
  %24 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %25 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %28 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  store i64 %33, i64* %10, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i8* @dup_binstr(i8* %34, i64 %35)
  %37 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %38 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %40 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %23
  %44 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %45 = call i32 @wpa_priv_interface_deinit(%struct.wpa_priv_interface* %44)
  store %struct.wpa_priv_interface* null, %struct.wpa_priv_interface** %4, align 8
  br label %262

46:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %76, %46
  %48 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @wpa_drivers, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %48, i64 %50
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = icmp ne %struct.TYPE_2__* %52, null
  br i1 %53, label %54, label %79

54:                                               ; preds = %47
  %55 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %56 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @wpa_drivers, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %58, i64 %60
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @os_strcmp(i8* %57, i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %54
  %68 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @wpa_drivers, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %68, i64 %70
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %74 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %73, i32 0, i32 4
  store %struct.TYPE_2__* %72, %struct.TYPE_2__** %74, align 8
  br label %79

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %47

79:                                               ; preds = %67, %47
  %80 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %81 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %80, i32 0, i32 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = icmp eq %struct.TYPE_2__* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load i32, i32* @MSG_ERROR, align 4
  %86 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %87 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i32, i8*, ...) @wpa_printf(i32 %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %88)
  %90 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %91 = call i32 @wpa_priv_interface_deinit(%struct.wpa_priv_interface* %90)
  store %struct.wpa_priv_interface* null, %struct.wpa_priv_interface** %4, align 8
  br label %262

92:                                               ; preds = %79
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %9, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = call i8* @os_strdup(i8* %95)
  %97 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %98 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  %99 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %100 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %92
  %104 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %105 = call i32 @wpa_priv_interface_deinit(%struct.wpa_priv_interface* %104)
  store %struct.wpa_priv_interface* null, %struct.wpa_priv_interface** %4, align 8
  br label %262

106:                                              ; preds = %92
  %107 = load i8*, i8** %6, align 8
  %108 = call i32 @os_strlen(i8* %107)
  %109 = add nsw i32 %108, 1
  %110 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %111 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @os_strlen(i8* %112)
  %114 = add nsw i32 %109, %113
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %10, align 8
  %116 = load i64, i64* %10, align 8
  %117 = add i64 %116, 1
  %118 = call i8* @os_malloc(i64 %117)
  %119 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %120 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %119, i32 0, i32 3
  store i8* %118, i8** %120, align 8
  %121 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %122 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %121, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  %124 = icmp eq i8* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %106
  %126 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %127 = call i32 @wpa_priv_interface_deinit(%struct.wpa_priv_interface* %126)
  store %struct.wpa_priv_interface* null, %struct.wpa_priv_interface** %4, align 8
  br label %262

128:                                              ; preds = %106
  %129 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %130 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %129, i32 0, i32 3
  %131 = load i8*, i8** %130, align 8
  %132 = load i64, i64* %10, align 8
  %133 = add i64 %132, 1
  %134 = load i8*, i8** %6, align 8
  %135 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %136 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @os_snprintf(i8* %131, i64 %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %134, i8* %137)
  %139 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %140 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %139, i32 0, i32 3
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @os_strlen(i8* %141)
  %143 = sext i32 %142 to i64
  %144 = icmp uge i64 %143, 4
  br i1 %144, label %145, label %148

145:                                              ; preds = %128
  %146 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %147 = call i32 @wpa_priv_interface_deinit(%struct.wpa_priv_interface* %146)
  store %struct.wpa_priv_interface* null, %struct.wpa_priv_interface** %4, align 8
  br label %262

148:                                              ; preds = %128
  %149 = load i32, i32* @PF_UNIX, align 4
  %150 = load i32, i32* @SOCK_DGRAM, align 4
  %151 = call i32 @socket(i32 %149, i32 %150, i32 0)
  %152 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %153 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %155 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %148
  %159 = load i32, i32* @MSG_ERROR, align 4
  %160 = load i32, i32* @errno, align 4
  %161 = call i8* @strerror(i32 %160)
  %162 = call i32 (i32, i8*, ...) @wpa_printf(i32 %159, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %161)
  %163 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %164 = call i32 @wpa_priv_interface_deinit(%struct.wpa_priv_interface* %163)
  store %struct.wpa_priv_interface* null, %struct.wpa_priv_interface** %4, align 8
  br label %262

165:                                              ; preds = %148
  %166 = call i32 @os_memset(%struct.sockaddr_un* %11, i32 0, i32 8)
  %167 = load i32, i32* @AF_UNIX, align 4
  %168 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %11, i32 0, i32 1
  store i32 %167, i32* %168, align 4
  %169 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %11, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %172 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %171, i32 0, i32 3
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @os_strlcpy(i32 %170, i8* %173, i32 4)
  %175 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %176 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = bitcast %struct.sockaddr_un* %11 to %struct.sockaddr*
  %179 = call i64 @bind(i32 %177, %struct.sockaddr* %178, i32 8)
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %235

181:                                              ; preds = %165
  %182 = load i32, i32* @MSG_DEBUG, align 4
  %183 = load i32, i32* @errno, align 4
  %184 = call i8* @strerror(i32 %183)
  %185 = call i32 (i32, i8*, ...) @wpa_printf(i32 %182, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %184)
  %186 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %187 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = bitcast %struct.sockaddr_un* %11 to %struct.sockaddr*
  %190 = call i64 @connect(i32 %188, %struct.sockaddr* %189, i32 8)
  %191 = icmp slt i64 %190, 0
  br i1 %191, label %192, label %226

192:                                              ; preds = %181
  %193 = load i32, i32* @MSG_DEBUG, align 4
  %194 = call i32 (i32, i8*, ...) @wpa_printf(i32 %193, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0))
  %195 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %196 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %195, i32 0, i32 3
  %197 = load i8*, i8** %196, align 8
  %198 = call i64 @unlink(i8* %197)
  %199 = icmp slt i64 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %192
  %201 = load i32, i32* @MSG_ERROR, align 4
  %202 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %203 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %202, i32 0, i32 3
  %204 = load i8*, i8** %203, align 8
  %205 = load i32, i32* @errno, align 4
  %206 = call i8* @strerror(i32 %205)
  %207 = call i32 (i32, i8*, ...) @wpa_printf(i32 %201, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i8* %204, i8* %206)
  br label %259

208:                                              ; preds = %192
  %209 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %210 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = bitcast %struct.sockaddr_un* %11 to %struct.sockaddr*
  %213 = call i64 @bind(i32 %211, %struct.sockaddr* %212, i32 8)
  %214 = icmp slt i64 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %208
  %216 = load i32, i32* @MSG_ERROR, align 4
  %217 = load i32, i32* @errno, align 4
  %218 = call i8* @strerror(i32 %217)
  %219 = call i32 (i32, i8*, ...) @wpa_printf(i32 %216, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %218)
  br label %259

220:                                              ; preds = %208
  %221 = load i32, i32* @MSG_DEBUG, align 4
  %222 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %223 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %222, i32 0, i32 3
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 (i32, i8*, ...) @wpa_printf(i32 %221, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i8* %224)
  br label %234

226:                                              ; preds = %181
  %227 = load i32, i32* @MSG_INFO, align 4
  %228 = call i32 (i32, i8*, ...) @wpa_printf(i32 %227, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0))
  %229 = load i32, i32* @MSG_INFO, align 4
  %230 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %231 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %230, i32 0, i32 3
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 (i32, i8*, ...) @wpa_printf(i32 %229, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i8* %232)
  br label %259

234:                                              ; preds = %220
  br label %235

235:                                              ; preds = %234, %165
  %236 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %237 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %236, i32 0, i32 3
  %238 = load i8*, i8** %237, align 8
  %239 = load i32, i32* @S_IRWXU, align 4
  %240 = load i32, i32* @S_IRWXG, align 4
  %241 = or i32 %239, %240
  %242 = load i32, i32* @S_IRWXO, align 4
  %243 = or i32 %241, %242
  %244 = call i64 @chmod(i8* %238, i32 %243)
  %245 = icmp slt i64 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %235
  %247 = load i32, i32* @MSG_ERROR, align 4
  %248 = load i32, i32* @errno, align 4
  %249 = call i8* @strerror(i32 %248)
  %250 = call i32 (i32, i8*, ...) @wpa_printf(i32 %247, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %249)
  br label %259

251:                                              ; preds = %235
  %252 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %253 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @wpa_priv_receive, align 4
  %256 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %257 = call i32 @eloop_register_read_sock(i32 %254, i32 %255, %struct.wpa_priv_interface* %256, i32* null)
  %258 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  store %struct.wpa_priv_interface* %258, %struct.wpa_priv_interface** %4, align 8
  br label %262

259:                                              ; preds = %246, %226, %215, %200
  %260 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %8, align 8
  %261 = call i32 @wpa_priv_interface_deinit(%struct.wpa_priv_interface* %260)
  store %struct.wpa_priv_interface* null, %struct.wpa_priv_interface** %4, align 8
  br label %262

262:                                              ; preds = %259, %251, %158, %145, %125, %103, %84, %43, %22, %17
  %263 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  ret %struct.wpa_priv_interface* %263
}

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local %struct.wpa_priv_interface* @os_zalloc(i32) #1

declare dso_local i8* @dup_binstr(i8*, i64) #1

declare dso_local i32 @wpa_priv_interface_deinit(%struct.wpa_priv_interface*) #1

declare dso_local i64 @os_strcmp(i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @os_strdup(i8*) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @os_snprintf(i8*, i64, i8*, i8*, i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @os_memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @os_strlcpy(i32, i8*, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i64 @chmod(i8*, i32) #1

declare dso_local i32 @eloop_register_read_sock(i32, i32, %struct.wpa_priv_interface*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
