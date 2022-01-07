; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_server.c_http_server_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_server.c_http_server_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_server = type { i64, i32 }

@EVENT_TYPE_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_server_deinit(%struct.http_server* %0) #0 {
  %2 = alloca %struct.http_server*, align 8
  store %struct.http_server* %0, %struct.http_server** %2, align 8
  %3 = load %struct.http_server*, %struct.http_server** %2, align 8
  %4 = icmp eq %struct.http_server* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %28

6:                                                ; preds = %1
  %7 = load %struct.http_server*, %struct.http_server** %2, align 8
  %8 = getelementptr inbounds %struct.http_server, %struct.http_server* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %6
  %12 = load %struct.http_server*, %struct.http_server** %2, align 8
  %13 = getelementptr inbounds %struct.http_server, %struct.http_server* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @EVENT_TYPE_READ, align 4
  %16 = call i32 @eloop_unregister_sock(i64 %14, i32 %15)
  %17 = load %struct.http_server*, %struct.http_server** %2, align 8
  %18 = getelementptr inbounds %struct.http_server, %struct.http_server* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @close(i64 %19)
  br label %21

21:                                               ; preds = %11, %6
  %22 = load %struct.http_server*, %struct.http_server** %2, align 8
  %23 = getelementptr inbounds %struct.http_server, %struct.http_server* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @http_request_free_all(i32 %24)
  %26 = load %struct.http_server*, %struct.http_server** %2, align 8
  %27 = call i32 @os_free(%struct.http_server* %26)
  br label %28

28:                                               ; preds = %21, %5
  ret void
}

declare dso_local i32 @eloop_unregister_sock(i64, i32) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @http_request_free_all(i32) #1

declare dso_local i32 @os_free(%struct.http_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
