; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_evdns_getaddrinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_evdns_getaddrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { i32 }
%struct.evdns_getaddrinfo_request = type { %struct.TYPE_8__, %struct.TYPE_8__, i32, i32, %struct.evdns_base*, i8*, i32 (i32, %struct.evutil_addrinfo*, i8*)*, i32, %struct.evutil_addrinfo }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.evutil_addrinfo = type { i32, i64 }

@current_base = common dso_local global %struct.evdns_base* null, align 8
@EVDNS_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Call to getaddrinfo_async with no evdns_base configured.\00", align 1
@EVUTIL_EAI_FAIL = common dso_local global i32 0, align 4
@EVUTIL_AI_NUMERICHOST = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i64 0, align 8
@EVUTIL_EAI_NEED_RESOLVE = common dso_local global i32 0, align 4
@EVUTIL_EAI_MEMORY = common dso_local global i32 0, align 4
@DNS_IPv4_A = common dso_local global i32 0, align 4
@DNS_IPv6_AAAA = common dso_local global i32 0, align 4
@EVUTIL_AI_CANONNAME = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i64 0, align 8
@EVDNS_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Sending request for %s on ipv4 as %p\00", align 1
@evdns_getaddrinfo_gotresolve = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Sending request for %s on ipv6 as %p\00", align 1
@evdns_getaddrinfo_timeout_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evdns_getaddrinfo_request* @evdns_getaddrinfo(%struct.evdns_base* %0, i8* %1, i8* %2, %struct.evutil_addrinfo* %3, i32 (i32, %struct.evutil_addrinfo*, i8*)* %4, i8* %5) #0 {
  %7 = alloca %struct.evdns_getaddrinfo_request*, align 8
  %8 = alloca %struct.evdns_base*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.evutil_addrinfo*, align 8
  %12 = alloca i32 (i32, %struct.evutil_addrinfo*, i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.evdns_getaddrinfo_request*, align 8
  %15 = alloca %struct.evutil_addrinfo, align 8
  %16 = alloca %struct.evutil_addrinfo*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.evdns_base* %0, %struct.evdns_base** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.evutil_addrinfo* %3, %struct.evutil_addrinfo** %11, align 8
  store i32 (i32, %struct.evutil_addrinfo*, i8*)* %4, i32 (i32, %struct.evutil_addrinfo*, i8*)** %12, align 8
  store i8* %5, i8** %13, align 8
  store %struct.evutil_addrinfo* null, %struct.evutil_addrinfo** %16, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %20 = load %struct.evdns_base*, %struct.evdns_base** %8, align 8
  %21 = icmp ne %struct.evdns_base* %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %6
  %23 = load %struct.evdns_base*, %struct.evdns_base** @current_base, align 8
  store %struct.evdns_base* %23, %struct.evdns_base** %8, align 8
  %24 = load %struct.evdns_base*, %struct.evdns_base** %8, align 8
  %25 = icmp ne %struct.evdns_base* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @EVDNS_LOG_WARN, align 4
  %28 = call i32 (i32, i8*, ...) @log(i32 %27, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %29 = load i32 (i32, %struct.evutil_addrinfo*, i8*)*, i32 (i32, %struct.evutil_addrinfo*, i8*)** %12, align 8
  %30 = load i32, i32* @EVUTIL_EAI_FAIL, align 4
  %31 = load i8*, i8** %13, align 8
  %32 = call i32 %29(i32 %30, %struct.evutil_addrinfo* null, i8* %31)
  store %struct.evdns_getaddrinfo_request* null, %struct.evdns_getaddrinfo_request** %7, align 8
  br label %232

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %6
  %35 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %11, align 8
  %36 = icmp ne %struct.evutil_addrinfo* %35, null
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %11, align 8
  %39 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @EVUTIL_AI_NUMERICHOST, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  store %struct.evutil_addrinfo* null, %struct.evutil_addrinfo** %16, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %11, align 8
  %48 = call i32 @evutil_getaddrinfo(i8* %45, i8* %46, %struct.evutil_addrinfo* %47, %struct.evutil_addrinfo** %16)
  store i32 %48, i32* %17, align 4
  %49 = load i32 (i32, %struct.evutil_addrinfo*, i8*)*, i32 (i32, %struct.evutil_addrinfo*, i8*)** %12, align 8
  %50 = load i32, i32* %17, align 4
  %51 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %16, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 %49(i32 %50, %struct.evutil_addrinfo* %51, i8* %52)
  store %struct.evdns_getaddrinfo_request* null, %struct.evdns_getaddrinfo_request** %7, align 8
  br label %232

54:                                               ; preds = %37, %34
  %55 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %11, align 8
  %56 = icmp ne %struct.evutil_addrinfo* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %11, align 8
  %59 = call i32 @memcpy(%struct.evutil_addrinfo* %15, %struct.evutil_addrinfo* %58, i32 16)
  br label %64

60:                                               ; preds = %54
  %61 = call i32 @memset(%struct.evutil_addrinfo* %15, i32 0, i32 16)
  %62 = load i64, i64* @PF_UNSPEC, align 8
  %63 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %15, i32 0, i32 1
  store i64 %62, i64* %63, align 8
  br label %64

64:                                               ; preds = %60, %57
  %65 = call i32 @evutil_adjust_hints_for_addrconfig_(%struct.evutil_addrinfo* %15)
  %66 = load i8*, i8** %9, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @evutil_getaddrinfo_common_(i8* %66, i8* %67, %struct.evutil_addrinfo* %15, %struct.evutil_addrinfo** %16, i32* %18)
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* @EVUTIL_EAI_NEED_RESOLVE, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load i32 (i32, %struct.evutil_addrinfo*, i8*)*, i32 (i32, %struct.evutil_addrinfo*, i8*)** %12, align 8
  %74 = load i32, i32* %17, align 4
  %75 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %16, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = call i32 %73(i32 %74, %struct.evutil_addrinfo* %75, i8* %76)
  store %struct.evdns_getaddrinfo_request* null, %struct.evdns_getaddrinfo_request** %7, align 8
  br label %232

78:                                               ; preds = %64
  %79 = load %struct.evdns_base*, %struct.evdns_base** %8, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = load i32, i32* %18, align 4
  %82 = call i32 @evdns_getaddrinfo_fromhosts(%struct.evdns_base* %79, i8* %80, %struct.evutil_addrinfo* %15, i32 %81, %struct.evutil_addrinfo** %16)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %78
  %85 = load i32 (i32, %struct.evutil_addrinfo*, i8*)*, i32 (i32, %struct.evutil_addrinfo*, i8*)** %12, align 8
  %86 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %16, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = call i32 %85(i32 0, %struct.evutil_addrinfo* %86, i8* %87)
  store %struct.evdns_getaddrinfo_request* null, %struct.evdns_getaddrinfo_request** %7, align 8
  br label %232

89:                                               ; preds = %78
  %90 = call %struct.evdns_getaddrinfo_request* @mm_calloc(i32 1, i32 88)
  store %struct.evdns_getaddrinfo_request* %90, %struct.evdns_getaddrinfo_request** %14, align 8
  %91 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %92 = icmp ne %struct.evdns_getaddrinfo_request* %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %89
  %94 = load i32 (i32, %struct.evutil_addrinfo*, i8*)*, i32 (i32, %struct.evutil_addrinfo*, i8*)** %12, align 8
  %95 = load i32, i32* @EVUTIL_EAI_MEMORY, align 4
  %96 = load i8*, i8** %13, align 8
  %97 = call i32 %94(i32 %95, %struct.evutil_addrinfo* null, i8* %96)
  store %struct.evdns_getaddrinfo_request* null, %struct.evdns_getaddrinfo_request** %7, align 8
  br label %232

98:                                               ; preds = %89
  %99 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %100 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %99, i32 0, i32 8
  %101 = call i32 @memcpy(%struct.evutil_addrinfo* %100, %struct.evutil_addrinfo* %15, i32 16)
  %102 = load i32, i32* %18, align 4
  %103 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %104 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %103, i32 0, i32 7
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @DNS_IPv4_A, align 4
  %106 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %107 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 8
  %109 = load i32, i32* @DNS_IPv6_AAAA, align 4
  %110 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %111 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 8
  %113 = load i32 (i32, %struct.evutil_addrinfo*, i8*)*, i32 (i32, %struct.evutil_addrinfo*, i8*)** %12, align 8
  %114 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %115 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %114, i32 0, i32 6
  store i32 (i32, %struct.evutil_addrinfo*, i8*)* %113, i32 (i32, %struct.evutil_addrinfo*, i8*)** %115, align 8
  %116 = load i8*, i8** %13, align 8
  %117 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %118 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %117, i32 0, i32 5
  store i8* %116, i8** %118, align 8
  %119 = load %struct.evdns_base*, %struct.evdns_base** %8, align 8
  %120 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %121 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %120, i32 0, i32 4
  store %struct.evdns_base* %119, %struct.evdns_base** %121, align 8
  %122 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %15, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @EVUTIL_AI_CANONNAME, align 4
  %125 = and i32 %123, %124
  store i32 %125, i32* %19, align 4
  %126 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %15, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @PF_INET6, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %164

130:                                              ; preds = %98
  %131 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %132 = load i8*, i8** %9, align 8
  %133 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %134 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %133, i32 0, i32 1
  %135 = call i32 (i32, i8*, ...) @log(i32 %131, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %132, %struct.TYPE_8__* %134)
  %136 = load %struct.evdns_base*, %struct.evdns_base** %8, align 8
  %137 = load i8*, i8** %9, align 8
  %138 = load i32, i32* @evdns_getaddrinfo_gotresolve, align 4
  %139 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %140 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %139, i32 0, i32 1
  %141 = call %struct.TYPE_7__* @evdns_base_resolve_ipv4(%struct.evdns_base* %136, i8* %137, i32 0, i32 %138, %struct.TYPE_8__* %140)
  %142 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %143 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  store %struct.TYPE_7__* %141, %struct.TYPE_7__** %144, align 8
  %145 = load i32, i32* %19, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %163

147:                                              ; preds = %130
  %148 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %149 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = icmp ne %struct.TYPE_7__* %151, null
  br i1 %152, label %153, label %163

153:                                              ; preds = %147
  %154 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %155 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %154, i32 0, i32 3
  %156 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %157 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  store i32* %155, i32** %162, align 8
  br label %163

163:                                              ; preds = %153, %147, %130
  br label %164

164:                                              ; preds = %163, %98
  %165 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %15, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @PF_INET, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %203

169:                                              ; preds = %164
  %170 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %171 = load i8*, i8** %9, align 8
  %172 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %173 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %172, i32 0, i32 0
  %174 = call i32 (i32, i8*, ...) @log(i32 %170, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %171, %struct.TYPE_8__* %173)
  %175 = load %struct.evdns_base*, %struct.evdns_base** %8, align 8
  %176 = load i8*, i8** %9, align 8
  %177 = load i32, i32* @evdns_getaddrinfo_gotresolve, align 4
  %178 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %179 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %178, i32 0, i32 0
  %180 = call %struct.TYPE_7__* @evdns_base_resolve_ipv6(%struct.evdns_base* %175, i8* %176, i32 0, i32 %177, %struct.TYPE_8__* %179)
  %181 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %182 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  store %struct.TYPE_7__* %180, %struct.TYPE_7__** %183, align 8
  %184 = load i32, i32* %19, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %202

186:                                              ; preds = %169
  %187 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %188 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  %191 = icmp ne %struct.TYPE_7__* %190, null
  br i1 %191, label %192, label %202

192:                                              ; preds = %186
  %193 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %194 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %193, i32 0, i32 3
  %195 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %196 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  store i32* %194, i32** %201, align 8
  br label %202

202:                                              ; preds = %192, %186, %169
  br label %203

203:                                              ; preds = %202, %164
  %204 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %205 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %204, i32 0, i32 2
  %206 = load %struct.evdns_base*, %struct.evdns_base** %8, align 8
  %207 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @evdns_getaddrinfo_timeout_cb, align 4
  %210 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %211 = call i32 @evtimer_assign(i32* %205, i32 %208, i32 %209, %struct.evdns_getaddrinfo_request* %210)
  %212 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %213 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %214, align 8
  %216 = icmp ne %struct.TYPE_7__* %215, null
  br i1 %216, label %223, label %217

217:                                              ; preds = %203
  %218 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %219 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %220, align 8
  %222 = icmp ne %struct.TYPE_7__* %221, null
  br i1 %222, label %223, label %225

223:                                              ; preds = %217, %203
  %224 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  store %struct.evdns_getaddrinfo_request* %224, %struct.evdns_getaddrinfo_request** %7, align 8
  br label %232

225:                                              ; preds = %217
  %226 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %227 = call i32 @mm_free(%struct.evdns_getaddrinfo_request* %226)
  %228 = load i32 (i32, %struct.evutil_addrinfo*, i8*)*, i32 (i32, %struct.evutil_addrinfo*, i8*)** %12, align 8
  %229 = load i32, i32* @EVUTIL_EAI_FAIL, align 4
  %230 = load i8*, i8** %13, align 8
  %231 = call i32 %228(i32 %229, %struct.evutil_addrinfo* null, i8* %230)
  store %struct.evdns_getaddrinfo_request* null, %struct.evdns_getaddrinfo_request** %7, align 8
  br label %232

232:                                              ; preds = %225, %223, %93, %84, %72, %44, %26
  %233 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %7, align 8
  ret %struct.evdns_getaddrinfo_request* %233
}

declare dso_local i32 @log(i32, i8*, ...) #1

declare dso_local i32 @evutil_getaddrinfo(i8*, i8*, %struct.evutil_addrinfo*, %struct.evutil_addrinfo**) #1

declare dso_local i32 @memcpy(%struct.evutil_addrinfo*, %struct.evutil_addrinfo*, i32) #1

declare dso_local i32 @memset(%struct.evutil_addrinfo*, i32, i32) #1

declare dso_local i32 @evutil_adjust_hints_for_addrconfig_(%struct.evutil_addrinfo*) #1

declare dso_local i32 @evutil_getaddrinfo_common_(i8*, i8*, %struct.evutil_addrinfo*, %struct.evutil_addrinfo**, i32*) #1

declare dso_local i32 @evdns_getaddrinfo_fromhosts(%struct.evdns_base*, i8*, %struct.evutil_addrinfo*, i32, %struct.evutil_addrinfo**) #1

declare dso_local %struct.evdns_getaddrinfo_request* @mm_calloc(i32, i32) #1

declare dso_local %struct.TYPE_7__* @evdns_base_resolve_ipv4(%struct.evdns_base*, i8*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_7__* @evdns_base_resolve_ipv6(%struct.evdns_base*, i8*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @evtimer_assign(i32*, i32, i32, %struct.evdns_getaddrinfo_request*) #1

declare dso_local i32 @mm_free(%struct.evdns_getaddrinfo_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
