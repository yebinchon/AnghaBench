; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_server.c_http_request_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_server.c_http_request_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_request = type { i32, i32, %struct.http_request*, %struct.http_server* }
%struct.http_server = type { i32, %struct.http_request* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_request_deinit(%struct.http_request* %0) #0 {
  %2 = alloca %struct.http_request*, align 8
  %3 = alloca %struct.http_request*, align 8
  %4 = alloca %struct.http_request*, align 8
  %5 = alloca %struct.http_server*, align 8
  store %struct.http_request* %0, %struct.http_request** %2, align 8
  %6 = load %struct.http_request*, %struct.http_request** %2, align 8
  %7 = icmp eq %struct.http_request* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %59

9:                                                ; preds = %1
  %10 = load %struct.http_request*, %struct.http_request** %2, align 8
  %11 = getelementptr inbounds %struct.http_request, %struct.http_request* %10, i32 0, i32 3
  %12 = load %struct.http_server*, %struct.http_server** %11, align 8
  store %struct.http_server* %12, %struct.http_server** %5, align 8
  store %struct.http_request* null, %struct.http_request** %4, align 8
  %13 = load %struct.http_server*, %struct.http_server** %5, align 8
  %14 = getelementptr inbounds %struct.http_server, %struct.http_server* %13, i32 0, i32 1
  %15 = load %struct.http_request*, %struct.http_request** %14, align 8
  store %struct.http_request* %15, %struct.http_request** %3, align 8
  br label %16

16:                                               ; preds = %43, %9
  %17 = load %struct.http_request*, %struct.http_request** %3, align 8
  %18 = icmp ne %struct.http_request* %17, null
  br i1 %18, label %19, label %48

19:                                               ; preds = %16
  %20 = load %struct.http_request*, %struct.http_request** %3, align 8
  %21 = load %struct.http_request*, %struct.http_request** %2, align 8
  %22 = icmp eq %struct.http_request* %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load %struct.http_request*, %struct.http_request** %4, align 8
  %25 = icmp ne %struct.http_request* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.http_request*, %struct.http_request** %3, align 8
  %28 = getelementptr inbounds %struct.http_request, %struct.http_request* %27, i32 0, i32 2
  %29 = load %struct.http_request*, %struct.http_request** %28, align 8
  %30 = load %struct.http_request*, %struct.http_request** %4, align 8
  %31 = getelementptr inbounds %struct.http_request, %struct.http_request* %30, i32 0, i32 2
  store %struct.http_request* %29, %struct.http_request** %31, align 8
  br label %38

32:                                               ; preds = %23
  %33 = load %struct.http_request*, %struct.http_request** %3, align 8
  %34 = getelementptr inbounds %struct.http_request, %struct.http_request* %33, i32 0, i32 2
  %35 = load %struct.http_request*, %struct.http_request** %34, align 8
  %36 = load %struct.http_server*, %struct.http_server** %5, align 8
  %37 = getelementptr inbounds %struct.http_server, %struct.http_server* %36, i32 0, i32 1
  store %struct.http_request* %35, %struct.http_request** %37, align 8
  br label %38

38:                                               ; preds = %32, %26
  %39 = load %struct.http_server*, %struct.http_server** %5, align 8
  %40 = getelementptr inbounds %struct.http_server, %struct.http_server* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 8
  br label %48

43:                                               ; preds = %19
  %44 = load %struct.http_request*, %struct.http_request** %3, align 8
  store %struct.http_request* %44, %struct.http_request** %4, align 8
  %45 = load %struct.http_request*, %struct.http_request** %3, align 8
  %46 = getelementptr inbounds %struct.http_request, %struct.http_request* %45, i32 0, i32 2
  %47 = load %struct.http_request*, %struct.http_request** %46, align 8
  store %struct.http_request* %47, %struct.http_request** %3, align 8
  br label %16

48:                                               ; preds = %38, %16
  %49 = load %struct.http_request*, %struct.http_request** %2, align 8
  %50 = getelementptr inbounds %struct.http_request, %struct.http_request* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @httpread_destroy(i32 %51)
  %53 = load %struct.http_request*, %struct.http_request** %2, align 8
  %54 = getelementptr inbounds %struct.http_request, %struct.http_request* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @close(i32 %55)
  %57 = load %struct.http_request*, %struct.http_request** %2, align 8
  %58 = call i32 @os_free(%struct.http_request* %57)
  br label %59

59:                                               ; preds = %48, %8
  ret void
}

declare dso_local i32 @httpread_destroy(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @os_free(%struct.http_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
