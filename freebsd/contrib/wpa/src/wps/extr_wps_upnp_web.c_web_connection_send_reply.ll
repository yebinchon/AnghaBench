; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_web.c_web_connection_send_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_web.c_web_connection_send_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_request = type { i32 }
%struct.wpabuf = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"WPS UPnP: Cannot allocate reply to POST\00", align 1
@HTTP_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"HTTP/1.1 200 OK\0D\0AContent-Type: text/xml; charset=\22utf-8\22\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"HTTP/1.1 %d Error\0D\0A\00", align 1
@http_connection_close = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"Content-Length: \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"        \0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@soap_prefix = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"<u:\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Response xmlns:u=\22\00", align 1
@urn_wfawlanconfig = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"\22>\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"<%s>\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"</%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"</u:\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Response>\0A\00", align 1
@soap_postfix = common dso_local global i8* null, align 8
@soap_error_prefix = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [27 x i8] c"<errorCode>%d</errorCode>\0A\00", align 1
@soap_error_postfix = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.http_request*, i32, i8*, i32, %struct.wpabuf*, i8*)* @web_connection_send_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @web_connection_send_reply(%struct.http_request* %0, i32 %1, i8* %2, i32 %3, %struct.wpabuf* %4, i8* %5) #0 {
  %7 = alloca %struct.http_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.wpabuf*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca [10 x i8], align 1
  store %struct.http_request* %0, %struct.http_request** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.wpabuf* %4, %struct.wpabuf** %11, align 8
  store i8* %5, i8** %12, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %20 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %21 = icmp ne %struct.wpabuf* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %6
  %23 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %24 = call i32 @wpabuf_head(%struct.wpabuf* %23)
  %25 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %26 = call i32 @wpabuf_len(%struct.wpabuf* %25)
  %27 = call i64 @base64_encode(i32 %24, i32 %26, i64* %17)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %14, align 8
  br label %30

29:                                               ; preds = %6
  store i8* null, i8** %14, align 8
  br label %30

30:                                               ; preds = %29, %22
  %31 = load i8*, i8** %14, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i8*, i8** %14, align 8
  %35 = call i32 @os_strlen(i8* %34)
  br label %37

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %33
  %38 = phi i32 [ %35, %33 ], [ 0, %36 ]
  %39 = add i32 1000, %38
  %40 = load i32, i32* %10, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  %44 = mul nsw i32 %43, 2
  br label %46

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32 [ %44, %42 ], [ 0, %45 ]
  %48 = add i32 %39, %47
  %49 = call %struct.wpabuf* @wpabuf_alloc(i32 %48)
  store %struct.wpabuf* %49, %struct.wpabuf** %13, align 8
  %50 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %51 = icmp eq %struct.wpabuf* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i32, i32* @MSG_INFO, align 4
  %54 = call i32 @wpa_printf(i32 %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %55 = load i8*, i8** %14, align 8
  %56 = call i32 @os_free(i8* %55)
  %57 = load %struct.http_request*, %struct.http_request** %7, align 8
  %58 = call i32 @http_request_deinit(%struct.http_request* %57)
  br label %177

59:                                               ; preds = %46
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @HTTP_OK, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %65 = call i32 @wpabuf_put_str(%struct.wpabuf* %64, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %70

66:                                               ; preds = %59
  %67 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 (%struct.wpabuf*, i8*, ...) @wpabuf_printf(%struct.wpabuf* %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66, %63
  %71 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %72 = load i8*, i8** @http_connection_close, align 8
  %73 = call i32 @wpabuf_put_str(%struct.wpabuf* %71, i8* %72)
  %74 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %75 = call i32 @wpabuf_put_str(%struct.wpabuf* %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %76 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %77 = call i8* @wpabuf_put(%struct.wpabuf* %76, i32 0)
  store i8* %77, i8** %15, align 8
  %78 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %79 = call i32 @wpabuf_put_str(%struct.wpabuf* %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %80 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %81 = call i32 @http_put_date(%struct.wpabuf* %80)
  %82 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %83 = call i32 @wpabuf_put_str(%struct.wpabuf* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %84 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %85 = call i8* @wpabuf_put(%struct.wpabuf* %84, i32 0)
  store i8* %85, i8** %16, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @HTTP_OK, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %133

89:                                               ; preds = %70
  %90 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %91 = load i8*, i8** @soap_prefix, align 8
  %92 = call i32 @wpabuf_put_str(%struct.wpabuf* %90, i8* %91)
  %93 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %94 = call i32 @wpabuf_put_str(%struct.wpabuf* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %95 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @wpabuf_put_data(%struct.wpabuf* %95, i8* %96, i32 %97)
  %99 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %100 = call i32 @wpabuf_put_str(%struct.wpabuf* %99, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %101 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %102 = load i8*, i8** @urn_wfawlanconfig, align 8
  %103 = call i32 @wpabuf_put_str(%struct.wpabuf* %101, i8* %102)
  %104 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %105 = call i32 @wpabuf_put_str(%struct.wpabuf* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %106 = load i8*, i8** %14, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %121

108:                                              ; preds = %89
  %109 = load i8*, i8** %12, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %121

111:                                              ; preds = %108
  %112 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %113 = load i8*, i8** %12, align 8
  %114 = call i32 (%struct.wpabuf*, i8*, ...) @wpabuf_printf(%struct.wpabuf* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %113)
  %115 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = call i32 @wpabuf_put_str(%struct.wpabuf* %115, i8* %116)
  %118 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %119 = load i8*, i8** %12, align 8
  %120 = call i32 (%struct.wpabuf*, i8*, ...) @wpabuf_printf(%struct.wpabuf* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %119)
  br label %121

121:                                              ; preds = %111, %108, %89
  %122 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %123 = call i32 @wpabuf_put_str(%struct.wpabuf* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %124 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @wpabuf_put_data(%struct.wpabuf* %124, i8* %125, i32 %126)
  %128 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %129 = call i32 @wpabuf_put_str(%struct.wpabuf* %128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %130 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %131 = load i8*, i8** @soap_postfix, align 8
  %132 = call i32 @wpabuf_put_str(%struct.wpabuf* %130, i8* %131)
  br label %149

133:                                              ; preds = %70
  %134 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %135 = load i8*, i8** @soap_prefix, align 8
  %136 = call i32 @wpabuf_put_str(%struct.wpabuf* %134, i8* %135)
  %137 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %138 = load i8*, i8** @soap_error_prefix, align 8
  %139 = call i32 @wpabuf_put_str(%struct.wpabuf* %137, i8* %138)
  %140 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %141 = load i32, i32* %8, align 4
  %142 = call i32 (%struct.wpabuf*, i8*, ...) @wpabuf_printf(%struct.wpabuf* %140, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %141)
  %143 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %144 = load i8*, i8** @soap_error_postfix, align 8
  %145 = call i32 @wpabuf_put_str(%struct.wpabuf* %143, i8* %144)
  %146 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %147 = load i8*, i8** @soap_postfix, align 8
  %148 = call i32 @wpabuf_put_str(%struct.wpabuf* %146, i8* %147)
  br label %149

149:                                              ; preds = %133, %121
  %150 = load i8*, i8** %14, align 8
  %151 = call i32 @os_free(i8* %150)
  %152 = load i8*, i8** %16, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %173

154:                                              ; preds = %149
  %155 = load i8*, i8** %15, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %173

157:                                              ; preds = %154
  %158 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %159 = call i8* @wpabuf_put(%struct.wpabuf* %158, i32 0)
  %160 = load i8*, i8** %16, align 8
  %161 = ptrtoint i8* %159 to i64
  %162 = ptrtoint i8* %160 to i64
  %163 = sub i64 %161, %162
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %18, align 4
  %165 = getelementptr inbounds [10 x i8], [10 x i8]* %19, i64 0, i64 0
  %166 = load i32, i32* %18, align 4
  %167 = call i32 @os_snprintf(i8* %165, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 %166)
  %168 = load i8*, i8** %15, align 8
  %169 = getelementptr inbounds [10 x i8], [10 x i8]* %19, i64 0, i64 0
  %170 = getelementptr inbounds [10 x i8], [10 x i8]* %19, i64 0, i64 0
  %171 = call i32 @os_strlen(i8* %170)
  %172 = call i32 @os_memcpy(i8* %168, i8* %169, i32 %171)
  br label %173

173:                                              ; preds = %157, %154, %149
  %174 = load %struct.http_request*, %struct.http_request** %7, align 8
  %175 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %176 = call i32 @http_request_send_and_deinit(%struct.http_request* %174, %struct.wpabuf* %175)
  br label %177

177:                                              ; preds = %173, %52
  ret void
}

declare dso_local i64 @base64_encode(i32, i32, i64*) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @http_request_deinit(%struct.http_request*) #1

declare dso_local i32 @wpabuf_put_str(%struct.wpabuf*, i8*) #1

declare dso_local i32 @wpabuf_printf(%struct.wpabuf*, i8*, ...) #1

declare dso_local i8* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @http_put_date(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i8*, i32) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #1

declare dso_local i32 @http_request_send_and_deinit(%struct.http_request*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
