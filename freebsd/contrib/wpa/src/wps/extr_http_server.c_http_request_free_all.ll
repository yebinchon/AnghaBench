; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_server.c_http_request_free_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_server.c_http_request_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_request = type { %struct.http_request* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.http_request*)* @http_request_free_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_request_free_all(%struct.http_request* %0) #0 {
  %2 = alloca %struct.http_request*, align 8
  %3 = alloca %struct.http_request*, align 8
  store %struct.http_request* %0, %struct.http_request** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.http_request*, %struct.http_request** %2, align 8
  %6 = icmp ne %struct.http_request* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load %struct.http_request*, %struct.http_request** %2, align 8
  store %struct.http_request* %8, %struct.http_request** %3, align 8
  %9 = load %struct.http_request*, %struct.http_request** %2, align 8
  %10 = getelementptr inbounds %struct.http_request, %struct.http_request* %9, i32 0, i32 0
  %11 = load %struct.http_request*, %struct.http_request** %10, align 8
  store %struct.http_request* %11, %struct.http_request** %2, align 8
  %12 = load %struct.http_request*, %struct.http_request** %3, align 8
  %13 = call i32 @http_request_deinit(%struct.http_request* %12)
  br label %4

14:                                               ; preds = %4
  ret void
}

declare dso_local i32 @http_request_deinit(%struct.http_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
