; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_radius/extr_pam_radius.c_build_access_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_radius/extr_pam_radius.c_build_access_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rad_handle = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.addrinfo = type { i64, i64 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@RAD_ACCESS_REQUEST = common dso_local global i32 0, align 4
@LOG_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"rad_create_request: %s\00", align 1
@RAD_USER_NAME = common dso_local global i32 0, align 4
@RAD_USER_PASSWORD = common dso_local global i32 0, align 4
@RAD_NAS_IDENTIFIER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"rad_put_string: %s\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@RAD_NAS_IP_ADDRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"rad_put_addr: %s\00", align 1
@RAD_CALLING_STATION_ID = common dso_local global i32 0, align 4
@RAD_STATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"rad_put_attr: %s\00", align 1
@RAD_SERVICE_TYPE = common dso_local global i32 0, align 4
@RAD_AUTHENTICATE_ONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"rad_put_int: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rad_handle*, i8*, i8*, i8*, i8*, i8*, i8*, i64)* @build_access_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_access_request(%struct.rad_handle* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.rad_handle*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.sockaddr_in*, align 8
  %22 = alloca %struct.addrinfo, align 8
  %23 = alloca %struct.addrinfo*, align 8
  %24 = alloca i32, align 4
  store %struct.rad_handle* %0, %struct.rad_handle** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  %25 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %19, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %20, align 8
  %29 = load %struct.rad_handle*, %struct.rad_handle** %10, align 8
  %30 = load i32, i32* @RAD_ACCESS_REQUEST, align 4
  %31 = call i32 @rad_create_request(%struct.rad_handle* %29, i32 %30)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %38

33:                                               ; preds = %8
  %34 = load i32, i32* @LOG_CRIT, align 4
  %35 = load %struct.rad_handle*, %struct.rad_handle** %10, align 8
  %36 = call i32 @rad_strerror(%struct.rad_handle* %35)
  %37 = call i32 @syslog(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %24, align 4
  br label %180

38:                                               ; preds = %8
  %39 = load i8*, i8** %13, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %14, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  %45 = load i8*, i8** %14, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %44, %38
  %49 = trunc i64 %26 to i32
  %50 = call i32 @gethostname(i8* %28, i32 %49)
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load i8*, i8** %13, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i8* %28, i8** %13, align 8
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i8*, i8** %14, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i8*, i8** %14, align 8
  %61 = call i64 @strlen(i8* %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i8* %28, i8** %14, align 8
  br label %64

64:                                               ; preds = %63, %59, %56
  br label %65

65:                                               ; preds = %64, %48
  br label %66

66:                                               ; preds = %65, %44, %41
  %67 = load i8*, i8** %11, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.rad_handle*, %struct.rad_handle** %10, align 8
  %71 = load i32, i32* @RAD_USER_NAME, align 4
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 @rad_put_string(%struct.rad_handle* %70, i32 %71, i8* %72)
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %93, label %75

75:                                               ; preds = %69, %66
  %76 = load i8*, i8** %12, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load %struct.rad_handle*, %struct.rad_handle** %10, align 8
  %80 = load i32, i32* @RAD_USER_PASSWORD, align 4
  %81 = load i8*, i8** %12, align 8
  %82 = call i32 @rad_put_string(%struct.rad_handle* %79, i32 %80, i8* %81)
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %93, label %84

84:                                               ; preds = %78, %75
  %85 = load i8*, i8** %13, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load %struct.rad_handle*, %struct.rad_handle** %10, align 8
  %89 = load i32, i32* @RAD_NAS_IDENTIFIER, align 4
  %90 = load i8*, i8** %13, align 8
  %91 = call i32 @rad_put_string(%struct.rad_handle* %88, i32 %89, i8* %90)
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %98

93:                                               ; preds = %87, %78, %69
  %94 = load i32, i32* @LOG_CRIT, align 4
  %95 = load %struct.rad_handle*, %struct.rad_handle** %10, align 8
  %96 = call i32 @rad_strerror(%struct.rad_handle* %95)
  %97 = call i32 @syslog(i32 %94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %24, align 4
  br label %180

98:                                               ; preds = %87, %84
  %99 = load i8*, i8** %14, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %139

101:                                              ; preds = %98
  %102 = call i32 @memset(%struct.addrinfo* %22, i32 0, i32 16)
  %103 = load i64, i64* @AF_INET, align 8
  %104 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %22, i32 0, i32 0
  store i64 %103, i64* %104, align 8
  %105 = load i8*, i8** %14, align 8
  %106 = call i64 @getaddrinfo(i8* %105, i32* null, %struct.addrinfo* %22, %struct.addrinfo** %23)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %138

108:                                              ; preds = %101
  %109 = load %struct.addrinfo*, %struct.addrinfo** %23, align 8
  %110 = icmp ne %struct.addrinfo* %109, null
  br i1 %110, label %111, label %138

111:                                              ; preds = %108
  %112 = load %struct.addrinfo*, %struct.addrinfo** %23, align 8
  %113 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @AF_INET, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %138

117:                                              ; preds = %111
  %118 = load %struct.addrinfo*, %struct.addrinfo** %23, align 8
  %119 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %121, %struct.sockaddr_in** %21, align 8
  %122 = load %struct.rad_handle*, %struct.rad_handle** %10, align 8
  %123 = load i32, i32* @RAD_NAS_IP_ADDRESS, align 4
  %124 = load %struct.sockaddr_in*, %struct.sockaddr_in** %21, align 8
  %125 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @rad_put_addr(%struct.rad_handle* %122, i32 %123, i32 %126)
  store i32 %127, i32* %18, align 4
  %128 = load %struct.addrinfo*, %struct.addrinfo** %23, align 8
  %129 = call i32 @freeaddrinfo(%struct.addrinfo* %128)
  %130 = load i32, i32* %18, align 4
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %137

132:                                              ; preds = %117
  %133 = load i32, i32* @LOG_CRIT, align 4
  %134 = load %struct.rad_handle*, %struct.rad_handle** %10, align 8
  %135 = call i32 @rad_strerror(%struct.rad_handle* %134)
  %136 = call i32 @syslog(i32 %133, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %135)
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %24, align 4
  br label %180

137:                                              ; preds = %117
  br label %138

138:                                              ; preds = %137, %111, %108, %101
  br label %139

139:                                              ; preds = %138, %98
  %140 = load i8*, i8** %15, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %153

142:                                              ; preds = %139
  %143 = load %struct.rad_handle*, %struct.rad_handle** %10, align 8
  %144 = load i32, i32* @RAD_CALLING_STATION_ID, align 4
  %145 = load i8*, i8** %15, align 8
  %146 = call i32 @rad_put_string(%struct.rad_handle* %143, i32 %144, i8* %145)
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %153

148:                                              ; preds = %142
  %149 = load i32, i32* @LOG_CRIT, align 4
  %150 = load %struct.rad_handle*, %struct.rad_handle** %10, align 8
  %151 = call i32 @rad_strerror(%struct.rad_handle* %150)
  %152 = call i32 @syslog(i32 %149, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %151)
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %24, align 4
  br label %180

153:                                              ; preds = %142, %139
  %154 = load i8*, i8** %16, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %168

156:                                              ; preds = %153
  %157 = load %struct.rad_handle*, %struct.rad_handle** %10, align 8
  %158 = load i32, i32* @RAD_STATE, align 4
  %159 = load i8*, i8** %16, align 8
  %160 = load i64, i64* %17, align 8
  %161 = call i32 @rad_put_attr(%struct.rad_handle* %157, i32 %158, i8* %159, i64 %160)
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %168

163:                                              ; preds = %156
  %164 = load i32, i32* @LOG_CRIT, align 4
  %165 = load %struct.rad_handle*, %struct.rad_handle** %10, align 8
  %166 = call i32 @rad_strerror(%struct.rad_handle* %165)
  %167 = call i32 @syslog(i32 %164, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %166)
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %24, align 4
  br label %180

168:                                              ; preds = %156, %153
  %169 = load %struct.rad_handle*, %struct.rad_handle** %10, align 8
  %170 = load i32, i32* @RAD_SERVICE_TYPE, align 4
  %171 = load i32, i32* @RAD_AUTHENTICATE_ONLY, align 4
  %172 = call i32 @rad_put_int(%struct.rad_handle* %169, i32 %170, i32 %171)
  %173 = icmp eq i32 %172, -1
  br i1 %173, label %174, label %179

174:                                              ; preds = %168
  %175 = load i32, i32* @LOG_CRIT, align 4
  %176 = load %struct.rad_handle*, %struct.rad_handle** %10, align 8
  %177 = call i32 @rad_strerror(%struct.rad_handle* %176)
  %178 = call i32 @syslog(i32 %175, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %177)
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %24, align 4
  br label %180

179:                                              ; preds = %168
  store i32 0, i32* %9, align 4
  store i32 1, i32* %24, align 4
  br label %180

180:                                              ; preds = %179, %174, %163, %148, %132, %93, %33
  %181 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %181)
  %182 = load i32, i32* %9, align 4
  ret i32 %182
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rad_create_request(%struct.rad_handle*, i32) #2

declare dso_local i32 @syslog(i32, i8*, i32) #2

declare dso_local i32 @rad_strerror(%struct.rad_handle*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @gethostname(i8*, i32) #2

declare dso_local i32 @rad_put_string(%struct.rad_handle*, i32, i8*) #2

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i64 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @rad_put_addr(%struct.rad_handle*, i32, i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

declare dso_local i32 @rad_put_attr(%struct.rad_handle*, i32, i8*, i64) #2

declare dso_local i32 @rad_put_int(%struct.rad_handle*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
