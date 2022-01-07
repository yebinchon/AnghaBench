; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_client.c_http_client_get_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_client.c_http_client_get_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.http_client = type { %struct.wpabuf, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @http_client_get_body(%struct.http_client* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.http_client*, align 8
  store %struct.http_client* %0, %struct.http_client** %3, align 8
  %4 = load %struct.http_client*, %struct.http_client** %3, align 8
  %5 = getelementptr inbounds %struct.http_client, %struct.http_client* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %23

9:                                                ; preds = %1
  %10 = load %struct.http_client*, %struct.http_client** %3, align 8
  %11 = getelementptr inbounds %struct.http_client, %struct.http_client* %10, i32 0, i32 0
  %12 = load %struct.http_client*, %struct.http_client** %3, align 8
  %13 = getelementptr inbounds %struct.http_client, %struct.http_client* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @httpread_data_get(i32* %14)
  %16 = load %struct.http_client*, %struct.http_client** %3, align 8
  %17 = getelementptr inbounds %struct.http_client, %struct.http_client* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @httpread_length_get(i32* %18)
  %20 = call i32 @wpabuf_set(%struct.wpabuf* %11, i32 %15, i32 %19)
  %21 = load %struct.http_client*, %struct.http_client** %3, align 8
  %22 = getelementptr inbounds %struct.http_client, %struct.http_client* %21, i32 0, i32 0
  store %struct.wpabuf* %22, %struct.wpabuf** %2, align 8
  br label %23

23:                                               ; preds = %9, %8
  %24 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %24
}

declare dso_local i32 @wpabuf_set(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @httpread_data_get(i32*) #1

declare dso_local i32 @httpread_length_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
