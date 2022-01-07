; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_client.c_http_client_url.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_client.c_http_client_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_client = type { i32 }
%struct.wpabuf = type { i32 }
%struct.sockaddr_in = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.1 = private unnamed_addr constant [139 x i8] c"GET %s HTTP/1.1\0D\0ACache-Control: no-cache\0D\0APragma: no-cache\0D\0AAccept: text/xml, application/xml\0D\0AUser-Agent: wpa_supplicant\0D\0AHost: %s:%d\0D\0A\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.http_client* @http_client_url(i8* %0, %struct.wpabuf* %1, i64 %2, {}* %3, i8* %4) #0 {
  %6 = alloca %struct.http_client*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca {}*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.sockaddr_in, align 4
  %13 = alloca %struct.http_client*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.wpabuf*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %8, align 8
  store i64 %2, i64* %9, align 8
  store {}* %3, {}** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %16, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @os_strncmp(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store %struct.http_client* null, %struct.http_client** %6, align 8
  br label %67

21:                                               ; preds = %5
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @http_client_url_parse(i8* %22, %struct.sockaddr_in* %12, i8** %15)
  store i8* %23, i8** %14, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store %struct.http_client* null, %struct.http_client** %6, align 8
  br label %67

27:                                               ; preds = %21
  %28 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %29 = icmp eq %struct.wpabuf* %28, null
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @os_strlen(i8* %31)
  %33 = add nsw i64 %32, 1000
  %34 = call %struct.wpabuf* @wpabuf_alloc(i64 %33)
  store %struct.wpabuf* %34, %struct.wpabuf** %16, align 8
  %35 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %36 = icmp eq %struct.wpabuf* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i8*, i8** %14, align 8
  %39 = call i32 @os_free(i8* %38)
  store %struct.http_client* null, %struct.http_client** %6, align 8
  br label %67

40:                                               ; preds = %30
  %41 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  store %struct.wpabuf* %41, %struct.wpabuf** %8, align 8
  %42 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @inet_ntoa(i32 %45)
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ntohs(i32 %48)
  %50 = call i32 @wpabuf_printf(%struct.wpabuf* %42, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %40, %27
  %52 = load i8*, i8** %14, align 8
  %53 = call i32 @os_free(i8* %52)
  %54 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load {}*, {}** %10, align 8
  %57 = bitcast {}* %56 to void (i8*, %struct.http_client*, i32)*
  %58 = load i8*, i8** %11, align 8
  %59 = call %struct.http_client* @http_client_addr(%struct.sockaddr_in* %12, %struct.wpabuf* %54, i64 %55, void (i8*, %struct.http_client*, i32)* %57, i8* %58)
  store %struct.http_client* %59, %struct.http_client** %13, align 8
  %60 = load %struct.http_client*, %struct.http_client** %13, align 8
  %61 = icmp eq %struct.http_client* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %64 = call i32 @wpabuf_free(%struct.wpabuf* %63)
  store %struct.http_client* null, %struct.http_client** %6, align 8
  br label %67

65:                                               ; preds = %51
  %66 = load %struct.http_client*, %struct.http_client** %13, align 8
  store %struct.http_client* %66, %struct.http_client** %6, align 8
  br label %67

67:                                               ; preds = %65, %62, %37, %26, %20
  %68 = load %struct.http_client*, %struct.http_client** %6, align 8
  ret %struct.http_client* %68
}

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i8* @http_client_url_parse(i8*, %struct.sockaddr_in*, i8**) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @wpabuf_printf(%struct.wpabuf*, i8*, i8*, i32, i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.http_client* @http_client_addr(%struct.sockaddr_in*, %struct.wpabuf*, i64, void (i8*, %struct.http_client*, i32)*, i8*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
