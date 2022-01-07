; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_client.c_http_client_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_client.c_http_client_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_client = type { i64, i32, i32 }

@EVENT_TYPE_WRITE = common dso_local global i32 0, align 4
@http_client_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_client_free(%struct.http_client* %0) #0 {
  %2 = alloca %struct.http_client*, align 8
  store %struct.http_client* %0, %struct.http_client** %2, align 8
  %3 = load %struct.http_client*, %struct.http_client** %2, align 8
  %4 = icmp eq %struct.http_client* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %35

6:                                                ; preds = %1
  %7 = load %struct.http_client*, %struct.http_client** %2, align 8
  %8 = getelementptr inbounds %struct.http_client, %struct.http_client* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @httpread_destroy(i32 %9)
  %11 = load %struct.http_client*, %struct.http_client** %2, align 8
  %12 = getelementptr inbounds %struct.http_client, %struct.http_client* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @wpabuf_free(i32 %13)
  %15 = load %struct.http_client*, %struct.http_client** %2, align 8
  %16 = getelementptr inbounds %struct.http_client, %struct.http_client* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %6
  %20 = load %struct.http_client*, %struct.http_client** %2, align 8
  %21 = getelementptr inbounds %struct.http_client, %struct.http_client* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @EVENT_TYPE_WRITE, align 4
  %24 = call i32 @eloop_unregister_sock(i64 %22, i32 %23)
  %25 = load %struct.http_client*, %struct.http_client** %2, align 8
  %26 = getelementptr inbounds %struct.http_client, %struct.http_client* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @close(i64 %27)
  br label %29

29:                                               ; preds = %19, %6
  %30 = load i32, i32* @http_client_timeout, align 4
  %31 = load %struct.http_client*, %struct.http_client** %2, align 8
  %32 = call i32 @eloop_cancel_timeout(i32 %30, %struct.http_client* %31, i32* null)
  %33 = load %struct.http_client*, %struct.http_client** %2, align 8
  %34 = call i32 @os_free(%struct.http_client* %33)
  br label %35

35:                                               ; preds = %29, %5
  ret void
}

declare dso_local i32 @httpread_destroy(i32) #1

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @eloop_unregister_sock(i64, i32) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.http_client*, i32*) #1

declare dso_local i32 @os_free(%struct.http_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
