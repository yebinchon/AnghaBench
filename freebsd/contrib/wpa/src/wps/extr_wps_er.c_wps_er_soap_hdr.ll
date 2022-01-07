; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_soap_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_soap_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.sockaddr_in = type { i32, i32 }

@.str = private unnamed_addr constant [89 x i8] c"POST %s HTTP/1.1\0D\0AHost: %s:%d\0D\0AContent-Type: text/xml; charset=\22utf-8\22\0D\0AContent-Length: \00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"        \0D\0ASOAPACTION: \22%s#%s\22\0D\0A\0D\0A\00", align 1
@urn_wfawlanconfig = common dso_local global i8* null, align 8
@soap_prefix = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"<u:%s xmlns:u=\22\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\22>\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"<%s>%s</%s>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.wpabuf*, i8*, i8*, i8*, %struct.sockaddr_in*, i8**, i8**)* @wps_er_soap_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @wps_er_soap_hdr(%struct.wpabuf* %0, i8* %1, i8* %2, i8* %3, %struct.sockaddr_in* %4, i8** %5, i8** %6) #0 {
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sockaddr_in*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.wpabuf*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.sockaddr_in* %4, %struct.sockaddr_in** %13, align 8
  store i8** %5, i8*** %14, align 8
  store i8** %6, i8*** %15, align 8
  %19 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %20 = icmp ne %struct.wpabuf* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %7
  %22 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %23 = call i32 @wpabuf_head(%struct.wpabuf* %22)
  %24 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %25 = call i32 @wpabuf_len(%struct.wpabuf* %24)
  %26 = call i8* @base64_encode(i32 %23, i32 %25, i64* %17)
  store i8* %26, i8** %16, align 8
  %27 = load i8*, i8** %16, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store %struct.wpabuf* null, %struct.wpabuf** %8, align 8
  br label %87

30:                                               ; preds = %21
  br label %32

31:                                               ; preds = %7
  store i8* null, i8** %16, align 8
  store i64 0, i64* %17, align 8
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i64, i64* %17, align 8
  %34 = add i64 1000, %33
  %35 = trunc i64 %34 to i32
  %36 = call %struct.wpabuf* @wpabuf_alloc(i32 %35)
  store %struct.wpabuf* %36, %struct.wpabuf** %18, align 8
  %37 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %38 = icmp eq %struct.wpabuf* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i8*, i8** %16, align 8
  %41 = call i32 @os_free(i8* %40)
  store %struct.wpabuf* null, %struct.wpabuf** %8, align 8
  br label %87

42:                                               ; preds = %32
  %43 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @inet_ntoa(i32 %47)
  %49 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @ntohs(i32 %51)
  %53 = call i32 (%struct.wpabuf*, i8*, i8*, ...) @wpabuf_printf(%struct.wpabuf* %43, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %48, i8* %52)
  %54 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %55 = call i8* @wpabuf_put(%struct.wpabuf* %54, i32 0)
  %56 = load i8**, i8*** %14, align 8
  store i8* %55, i8** %56, align 8
  %57 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %58 = load i8*, i8** @urn_wfawlanconfig, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 (%struct.wpabuf*, i8*, i8*, ...) @wpabuf_printf(%struct.wpabuf* %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %58, i8* %59)
  %61 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %62 = call i8* @wpabuf_put(%struct.wpabuf* %61, i32 0)
  %63 = load i8**, i8*** %15, align 8
  store i8* %62, i8** %63, align 8
  %64 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %65 = load i8*, i8** @soap_prefix, align 8
  %66 = call i32 @wpabuf_put_str(%struct.wpabuf* %64, i8* %65)
  %67 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 (%struct.wpabuf*, i8*, i8*, ...) @wpabuf_printf(%struct.wpabuf* %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  %70 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %71 = load i8*, i8** @urn_wfawlanconfig, align 8
  %72 = call i32 @wpabuf_put_str(%struct.wpabuf* %70, i8* %71)
  %73 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %74 = call i32 @wpabuf_put_str(%struct.wpabuf* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i8*, i8** %16, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %42
  %78 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i8*, i8** %16, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = call i32 (%struct.wpabuf*, i8*, i8*, ...) @wpabuf_printf(%struct.wpabuf* %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %79, i8* %80, i8* %81)
  %83 = load i8*, i8** %16, align 8
  %84 = call i32 @os_free(i8* %83)
  br label %85

85:                                               ; preds = %77, %42
  %86 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  store %struct.wpabuf* %86, %struct.wpabuf** %8, align 8
  br label %87

87:                                               ; preds = %85, %39, %29
  %88 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  ret %struct.wpabuf* %88
}

declare dso_local i8* @base64_encode(i32, i32, i64*) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @wpabuf_printf(%struct.wpabuf*, i8*, i8*, ...) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i8* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_str(%struct.wpabuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
