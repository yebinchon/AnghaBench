; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_update_interfaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_update_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i8*, i32, i64, i32, i32, %struct.TYPE_30__*, i32* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_30__*, %struct.TYPE_27__* }
%struct.TYPE_29__ = type { %struct.TYPE_30__*, i32 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"update_interfaces(%d)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@sys_interphase = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@ipv4_works = common dso_local global i32 0, align 4
@ipv6_works = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"examining \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"ignoring interface %s (%s) - by nic rules\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"listen interface %s (%s) - by nic rules\0A\00", align 1
@ISC_FALSE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"drop on interface %s (%s) - by nic rules\0A\00", align 1
@ISC_TRUE = common dso_local global i8* null, align 8
@INT_UP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"skipping interface %s (%s) - DOWN\0A\00", align 1
@INT_WILDCARD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"*multiple*\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"updating \00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c" present\0A\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [129 x i8] c"WARNING: conflicting enable configuration for interfaces %s and %s for address %s - unsupported configuration - address DISABLED\00", align 1
@IFS_EXISTS = common dso_local global i32 0, align 4
@IFS_CREATED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c" new - created\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c" new - creation FAILED\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [40 x i8] c"failed to init interface for address %s\00", align 1
@ep_list = common dso_local global %struct.TYPE_30__* null, align 8
@INT_MCASTIF = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"GONE - deleting\0A\00", align 1
@IFS_DELETED = common dso_local global i32 0, align 4
@loopback_interface = common dso_local global %struct.TYPE_30__* null, align 8
@broadcast_client_enabled = common dso_local global i64 0, align 8
@sys_bclient = common dso_local global i64 0, align 8
@INT_MCASTOPEN = common dso_local global i32 0, align 4
@remoteaddr_list = common dso_local global %struct.TYPE_27__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32 (i8*, %struct.TYPE_29__*)*, i8*)* @update_interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_interfaces(i32 %0, i32 (i8*, %struct.TYPE_29__*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32 (i8*, %struct.TYPE_29__*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_29__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_28__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_30__, align 8
  %16 = alloca %struct.TYPE_30__*, align 8
  %17 = alloca %struct.TYPE_30__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 (i8*, %struct.TYPE_29__*)* %1, i32 (i8*, %struct.TYPE_29__*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* inttoptr (i64 -1 to i32*), i32** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @DPRINTF(i32 3, i8* %20)
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %13, align 4
  store i32* null, i32** %10, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i64 @isc_interfaceiter_create(i32* %23, i32** %10)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @ISC_R_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %323

29:                                               ; preds = %3
  %30 = load i32, i32* @sys_interphase, align 4
  %31 = xor i32 %30, 1
  store i32 %31, i32* @sys_interphase, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = call i64 @isc_interfaceiter_first(i32* %32)
  store i64 %33, i64* %11, align 8
  br label %34

34:                                               ; preds = %246, %29
  %35 = load i64, i64* @ISC_R_SUCCESS, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %249

38:                                               ; preds = %34
  %39 = load i32*, i32** %10, align 8
  %40 = call i64 @isc_interfaceiter_current(i32* %39, %struct.TYPE_28__* %12)
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @ISC_R_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %249

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* @AF_INET, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load i32, i32* @AF_INET6, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %246

57:                                               ; preds = %52, %45
  %58 = load i32, i32* @AF_INET, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @ipv4_works, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  br label %246

65:                                               ; preds = %61, %57
  %66 = load i32, i32* @AF_INET6, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32, i32* @ipv6_works, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  br label %246

73:                                               ; preds = %69, %65
  %74 = call i32 @init_interface(%struct.TYPE_30__* %15)
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @convert_isc_if(%struct.TYPE_28__* %12, %struct.TYPE_30__* %15, i32 %75)
  %77 = call i32 @DPRINT_INTERFACE(i32 4, %struct.TYPE_30__* bitcast ([2 x i8]* @.str.2 to %struct.TYPE_30__*))
  %78 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @interface_action(i8* %79, i32* %80, i32 %82)
  switch i32 %83, label %113 [
    i32 129, label %84
    i32 128, label %92
    i32 130, label %102
  ]

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 4
  %88 = call i32 @stoa(i32* %87)
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = call i32 @DPRINTF(i32 4, i8* %90)
  br label %246

92:                                               ; preds = %73
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 4
  %96 = call i32 @stoa(i32* %95)
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = call i32 @DPRINTF(i32 4, i8* %98)
  %100 = load i64, i64* @ISC_FALSE, align 8
  %101 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 2
  store i64 %100, i64* %101, align 8
  br label %113

102:                                              ; preds = %73
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 4
  %106 = call i32 @stoa(i32* %105)
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = call i32 @DPRINTF(i32 4, i8* %108)
  %110 = load i8*, i8** @ISC_TRUE, align 8
  %111 = ptrtoint i8* %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 2
  store i64 %111, i64* %112, align 8
  br label %113

113:                                              ; preds = %73, %102, %92
  %114 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @INT_UP, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 4
  %123 = call i32 @stoa(i32* %122)
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i8*
  %126 = call i32 @DPRINTF(i32 4, i8* %125)
  br label %246

127:                                              ; preds = %113
  %128 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 4
  %129 = call i64 @is_wildcard_addr(i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  br label %246

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @is_anycast(i32* %133, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %246

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @is_valid(i32* %140, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %139
  br label %246

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 4
  %148 = load i32, i32* @INT_WILDCARD, align 4
  %149 = call %struct.TYPE_30__* @getinterface(i32* %147, i32 %148)
  store %struct.TYPE_30__* %149, %struct.TYPE_30__** %16, align 8
  %150 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %151 = icmp ne %struct.TYPE_30__* %150, null
  br i1 %151, label %152, label %216

152:                                              ; preds = %146
  %153 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %154 = call i64 @refresh_interface(%struct.TYPE_30__* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %216

156:                                              ; preds = %152
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @sys_interphase, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %173

162:                                              ; preds = %156
  %163 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %164 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @strlcpy(i8* %165, i8* %167, i32 8)
  %169 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %172 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %171, i32 0, i32 2
  store i64 %170, i64* %172, align 8
  br label %178

173:                                              ; preds = %156
  %174 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %175 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @strlcpy(i8* %176, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 8)
  br label %178

178:                                              ; preds = %173, %162
  %179 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %180 = call i32 @DPRINT_INTERFACE(i32 4, %struct.TYPE_30__* bitcast ([10 x i8]* @.str.9 to %struct.TYPE_30__*))
  %181 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %182 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %183, %185
  br i1 %186, label %187, label %201

187:                                              ; preds = %178
  %188 = load i32, i32* @LOG_ERR, align 4
  %189 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %192 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 4
  %195 = call i32 @stoa(i32* %194)
  %196 = call i32 (i32, i8*, i8*, ...) @msyslog(i32 %188, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.10, i64 0, i64 0), i8* %190, i8* %193, i32 %195)
  %197 = load i8*, i8** @ISC_TRUE, align 8
  %198 = ptrtoint i8* %197 to i64
  %199 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %200 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %199, i32 0, i32 2
  store i64 %198, i64* %200, align 8
  br label %201

201:                                              ; preds = %187, %178
  %202 = load i32, i32* @sys_interphase, align 4
  %203 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %204 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 8
  %205 = load i32, i32* @IFS_EXISTS, align 4
  %206 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  store i32 %205, i32* %206, align 8
  %207 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %208 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  store %struct.TYPE_30__* %207, %struct.TYPE_30__** %208, align 8
  %209 = load i32 (i8*, %struct.TYPE_29__*)*, i32 (i8*, %struct.TYPE_29__*)** %6, align 8
  %210 = icmp ne i32 (i8*, %struct.TYPE_29__*)* %209, null
  br i1 %210, label %211, label %215

211:                                              ; preds = %201
  %212 = load i32 (i8*, %struct.TYPE_29__*)*, i32 (i8*, %struct.TYPE_29__*)** %6, align 8
  %213 = load i8*, i8** %7, align 8
  %214 = call i32 %212(i8* %213, %struct.TYPE_29__* %9)
  br label %215

215:                                              ; preds = %211, %201
  br label %245

216:                                              ; preds = %152, %146
  %217 = load i32, i32* %5, align 4
  %218 = call %struct.TYPE_30__* @create_interface(i32 %217, %struct.TYPE_30__* %15)
  store %struct.TYPE_30__* %218, %struct.TYPE_30__** %16, align 8
  %219 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %220 = icmp ne %struct.TYPE_30__* %219, null
  br i1 %220, label %221, label %236

221:                                              ; preds = %216
  %222 = load i32, i32* @IFS_CREATED, align 4
  %223 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  store i32 %222, i32* %223, align 8
  %224 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %225 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  store %struct.TYPE_30__* %224, %struct.TYPE_30__** %225, align 8
  %226 = load i32 (i8*, %struct.TYPE_29__*)*, i32 (i8*, %struct.TYPE_29__*)** %6, align 8
  %227 = icmp ne i32 (i8*, %struct.TYPE_29__*)* %226, null
  br i1 %227, label %228, label %232

228:                                              ; preds = %221
  %229 = load i32 (i8*, %struct.TYPE_29__*)*, i32 (i8*, %struct.TYPE_29__*)** %6, align 8
  %230 = load i8*, i8** %7, align 8
  %231 = call i32 %229(i8* %230, %struct.TYPE_29__* %9)
  br label %232

232:                                              ; preds = %228, %221
  %233 = load i32, i32* @TRUE, align 4
  store i32 %233, i32* %13, align 4
  %234 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %235 = call i32 @DPRINT_INTERFACE(i32 3, %struct.TYPE_30__* bitcast ([16 x i8]* @.str.11 to %struct.TYPE_30__*))
  br label %244

236:                                              ; preds = %216
  %237 = call i32 @DPRINT_INTERFACE(i32 3, %struct.TYPE_30__* bitcast ([23 x i8]* @.str.12 to %struct.TYPE_30__*))
  %238 = load i32, i32* @LOG_INFO, align 4
  %239 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 4
  %240 = call i32 @stoa(i32* %239)
  %241 = sext i32 %240 to i64
  %242 = inttoptr i64 %241 to i8*
  %243 = call i32 (i32, i8*, i8*, ...) @msyslog(i32 %238, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i8* %242)
  br label %246

244:                                              ; preds = %232
  br label %245

245:                                              ; preds = %244, %215
  br label %246

246:                                              ; preds = %245, %236, %145, %138, %131, %119, %84, %72, %64, %56
  %247 = load i32*, i32** %10, align 8
  %248 = call i64 @isc_interfaceiter_next(i32* %247)
  store i64 %248, i64* %11, align 8
  br label %34

249:                                              ; preds = %44, %34
  %250 = call i32 @isc_interfaceiter_destroy(i32** %10)
  %251 = load %struct.TYPE_30__*, %struct.TYPE_30__** @ep_list, align 8
  store %struct.TYPE_30__* %251, %struct.TYPE_30__** %16, align 8
  br label %252

252:                                              ; preds = %308, %249
  %253 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %254 = icmp ne %struct.TYPE_30__* %253, null
  br i1 %254, label %255, label %310

255:                                              ; preds = %252
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %257 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %256, i32 0, i32 5
  %258 = load %struct.TYPE_30__*, %struct.TYPE_30__** %257, align 8
  store %struct.TYPE_30__* %258, %struct.TYPE_30__** %17, align 8
  %259 = load i32, i32* @INT_WILDCARD, align 4
  %260 = load i32, i32* @INT_MCASTIF, align 4
  %261 = or i32 %259, %260
  %262 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %263 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = and i32 %261, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %273, label %267

267:                                              ; preds = %255
  %268 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %269 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @sys_interphase, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %273, label %274

273:                                              ; preds = %267, %255
  br label %308

274:                                              ; preds = %267
  %275 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %276 = call i32 @DPRINT_INTERFACE(i32 3, %struct.TYPE_30__* bitcast ([17 x i8]* @.str.14 to %struct.TYPE_30__*))
  %277 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %278 = call i32 @remove_interface(%struct.TYPE_30__* %277)
  %279 = load i32, i32* @IFS_DELETED, align 4
  %280 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  store i32 %279, i32* %280, align 8
  %281 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %282 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  store %struct.TYPE_30__* %281, %struct.TYPE_30__** %282, align 8
  %283 = load i32 (i8*, %struct.TYPE_29__*)*, i32 (i8*, %struct.TYPE_29__*)** %6, align 8
  %284 = icmp ne i32 (i8*, %struct.TYPE_29__*)* %283, null
  br i1 %284, label %285, label %289

285:                                              ; preds = %274
  %286 = load i32 (i8*, %struct.TYPE_29__*)*, i32 (i8*, %struct.TYPE_29__*)** %6, align 8
  %287 = load i8*, i8** %7, align 8
  %288 = call i32 %286(i8* %287, %struct.TYPE_29__* %9)
  br label %289

289:                                              ; preds = %285, %274
  br label %290

290:                                              ; preds = %295, %289
  %291 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %292 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %291, i32 0, i32 6
  %293 = load i32*, i32** %292, align 8
  %294 = icmp ne i32* %293, null
  br i1 %294, label %295, label %300

295:                                              ; preds = %290
  %296 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %297 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %296, i32 0, i32 6
  %298 = load i32*, i32** %297, align 8
  %299 = call i32 @set_peerdstadr(i32* %298, i32* null)
  br label %290

300:                                              ; preds = %290
  %301 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %302 = load %struct.TYPE_30__*, %struct.TYPE_30__** @loopback_interface, align 8
  %303 = icmp eq %struct.TYPE_30__* %301, %302
  br i1 %303, label %304, label %305

304:                                              ; preds = %300
  store %struct.TYPE_30__* null, %struct.TYPE_30__** @loopback_interface, align 8
  br label %305

305:                                              ; preds = %304, %300
  %306 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %307 = call i32 @delete_interface(%struct.TYPE_30__* %306)
  br label %308

308:                                              ; preds = %305, %273
  %309 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  store %struct.TYPE_30__* %309, %struct.TYPE_30__** %16, align 8
  br label %252

310:                                              ; preds = %252
  %311 = call i32 (...) @refresh_all_peerinterfaces()
  %312 = load i64, i64* @broadcast_client_enabled, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %310
  %315 = call i32 (...) @io_setbclient()
  br label %316

316:                                              ; preds = %314, %310
  %317 = load i64, i64* @sys_bclient, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %316
  %320 = call i32 (...) @io_setbclient()
  br label %321

321:                                              ; preds = %319, %316
  %322 = load i32, i32* %13, align 4
  store i32 %322, i32* %4, align 4
  br label %323

323:                                              ; preds = %321, %28
  %324 = load i32, i32* %4, align 4
  ret i32 %324
}

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i64 @isc_interfaceiter_create(i32*, i32**) #1

declare dso_local i64 @isc_interfaceiter_first(i32*) #1

declare dso_local i64 @isc_interfaceiter_current(i32*, %struct.TYPE_28__*) #1

declare dso_local i32 @init_interface(%struct.TYPE_30__*) #1

declare dso_local i32 @convert_isc_if(%struct.TYPE_28__*, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @DPRINT_INTERFACE(i32, %struct.TYPE_30__*) #1

declare dso_local i32 @interface_action(i8*, i32*, i32) #1

declare dso_local i32 @stoa(i32*) #1

declare dso_local i64 @is_wildcard_addr(i32*) #1

declare dso_local i64 @is_anycast(i32*, i32) #1

declare dso_local i32 @is_valid(i32*, i32) #1

declare dso_local %struct.TYPE_30__* @getinterface(i32*, i32) #1

declare dso_local i64 @refresh_interface(%struct.TYPE_30__*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @msyslog(i32, i8*, i8*, ...) #1

declare dso_local %struct.TYPE_30__* @create_interface(i32, %struct.TYPE_30__*) #1

declare dso_local i64 @isc_interfaceiter_next(i32*) #1

declare dso_local i32 @isc_interfaceiter_destroy(i32**) #1

declare dso_local i32 @remove_interface(%struct.TYPE_30__*) #1

declare dso_local i32 @set_peerdstadr(i32*, i32*) #1

declare dso_local i32 @delete_interface(%struct.TYPE_30__*) #1

declare dso_local i32 @refresh_all_peerinterfaces(...) #1

declare dso_local i32 @io_setbclient(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
