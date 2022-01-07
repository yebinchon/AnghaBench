; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_ssl_info_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_ssl_info_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { %struct.tls_context*, i32, i32 }
%struct.tls_context = type { i32, i32 (i32, i32, %union.tls_event_data*)* }
%union.tls_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"SSL: (where=0x%x ret=0x%x)\00", align 1
@SSL_ST_MASK = common dso_local global i32 0, align 4
@SSL_ST_CONNECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"SSL_connect\00", align 1
@SSL_ST_ACCEPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"SSL_accept\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@SSL_CB_LOOP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"SSL: %s:%s\00", align 1
@SSL_CB_ALERT = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"SSL: SSL3 alert: %s:%s:%s\00", align 1
@SSL_CB_READ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"read (remote end reported an error)\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"write (local SSL3 detected an error)\00", align 1
@SSL3_AL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT = common dso_local global i32 0, align 4
@SSL_CB_EXIT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"SSL: %s:%s in %s\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @ssl_info_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_info_cb(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tls_connection*, align 8
  %10 = alloca %union.tls_event_data, align 8
  %11 = alloca %struct.tls_context*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 (i32, i8*, ...) @wpa_printf(i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SSL_ST_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @SSL_ST_CONNECT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %33

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @SSL_ST_ACCEPT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %32

31:                                               ; preds = %25
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %32

32:                                               ; preds = %31, %30
  br label %33

33:                                               ; preds = %32, %24
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @SSL_CB_LOOP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @SSL_state_string_long(i32* %41)
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %40, i32 %42)
  br label %141

44:                                               ; preds = %33
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @SSL_CB_ALERT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %121

49:                                               ; preds = %44
  %50 = load i32*, i32** %4, align 8
  %51 = call %struct.tls_connection* @SSL_get_app_data(i32* %50)
  store %struct.tls_connection* %51, %struct.tls_connection** %9, align 8
  %52 = load i32, i32* @MSG_INFO, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @SSL_CB_READ, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0)
  %59 = load i32, i32* %6, align 4
  %60 = call i8* @SSL_alert_type_string_long(i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @SSL_alert_desc_string_long(i32 %61)
  %63 = call i32 (i32, i8*, ...) @wpa_printf(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %58, i8* %60, i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = ashr i32 %64, 8
  %66 = load i32, i32* @SSL3_AL_FATAL, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %49
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @SSL_CB_READ, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %75 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %83

78:                                               ; preds = %68
  %79 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %80 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %78, %73
  br label %84

84:                                               ; preds = %83, %49
  %85 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %86 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %85, i32 0, i32 0
  %87 = load %struct.tls_context*, %struct.tls_context** %86, align 8
  %88 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %87, i32 0, i32 1
  %89 = load i32 (i32, i32, %union.tls_event_data*)*, i32 (i32, i32, %union.tls_event_data*)** %88, align 8
  %90 = icmp ne i32 (i32, i32, %union.tls_event_data*)* %89, null
  br i1 %90, label %91, label %120

91:                                               ; preds = %84
  %92 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %93 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %92, i32 0, i32 0
  %94 = load %struct.tls_context*, %struct.tls_context** %93, align 8
  store %struct.tls_context* %94, %struct.tls_context** %11, align 8
  %95 = call i32 @os_memset(%union.tls_event_data* %10, i32 0, i32 24)
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @SSL_CB_READ, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = bitcast %union.tls_event_data* %10 to %struct.TYPE_2__*
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i8* @SSL_alert_type_string_long(i32 %104)
  %106 = bitcast %union.tls_event_data* %10 to %struct.TYPE_2__*
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @SSL_alert_desc_string_long(i32 %108)
  %110 = bitcast %union.tls_event_data* %10 to %struct.TYPE_2__*
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load %struct.tls_context*, %struct.tls_context** %11, align 8
  %113 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %112, i32 0, i32 1
  %114 = load i32 (i32, i32, %union.tls_event_data*)*, i32 (i32, i32, %union.tls_event_data*)** %113, align 8
  %115 = load %struct.tls_context*, %struct.tls_context** %11, align 8
  %116 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @TLS_ALERT, align 4
  %119 = call i32 %114(i32 %117, i32 %118, %union.tls_event_data* %10)
  br label %120

120:                                              ; preds = %91, %84
  br label %140

121:                                              ; preds = %44
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @SSL_CB_EXIT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %121
  %127 = load i32, i32* %6, align 4
  %128 = icmp sle i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  %130 = load i32, i32* @MSG_DEBUG, align 4
  %131 = load i8*, i8** %7, align 8
  %132 = load i32, i32* %6, align 4
  %133 = icmp eq i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @SSL_state_string_long(i32* %136)
  %138 = call i32 (i32, i8*, ...) @wpa_printf(i32 %130, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %131, i8* %135, i32 %137)
  br label %139

139:                                              ; preds = %129, %126, %121
  br label %140

140:                                              ; preds = %139, %120
  br label %141

141:                                              ; preds = %140, %38
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @SSL_state_string_long(i32*) #1

declare dso_local %struct.tls_connection* @SSL_get_app_data(i32*) #1

declare dso_local i8* @SSL_alert_type_string_long(i32) #1

declare dso_local i32 @SSL_alert_desc_string_long(i32) #1

declare dso_local i32 @os_memset(%union.tls_event_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
