; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_connection_incoming_fail.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_connection_incoming_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32, i32 (%struct.evhttp_request*, i32)*, i32*, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evhttp_request*, i32)* @evhttp_connection_incoming_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evhttp_connection_incoming_fail(%struct.evhttp_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evhttp_request*, align 8
  %5 = alloca i32, align 4
  store %struct.evhttp_request* %0, %struct.evhttp_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %24 [
    i32 128, label %7
    i32 131, label %7
    i32 130, label %23
    i32 133, label %23
    i32 129, label %23
    i32 132, label %23
  ]

7:                                                ; preds = %2, %2
  %8 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %9 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %14 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %18 = load i32, i32* @next, align 4
  %19 = call i32 @TAILQ_REMOVE(i32* %16, %struct.evhttp_request* %17, i32 %18)
  %20 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %21 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %20, i32 0, i32 4
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %21, align 8
  br label %22

22:                                               ; preds = %12, %7
  store i32 -1, i32* %3, align 4
  br label %58

23:                                               ; preds = %2, %2, %2, %2
  br label %24

24:                                               ; preds = %2, %23
  %25 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %26 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %31 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @mm_free(i32* %32)
  %34 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %35 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %34, i32 0, i32 3
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %29, %24
  %37 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %38 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %43 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @evhttp_uri_free(i32* %44)
  %46 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %47 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %46, i32 0, i32 2
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %41, %36
  %49 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %50 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %49, i32 0, i32 1
  %51 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %50, align 8
  %52 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %53 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %54 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 %51(%struct.evhttp_request* %52, i32 %55)
  br label %57

57:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %22
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.evhttp_request*, i32) #1

declare dso_local i32 @mm_free(i32*) #1

declare dso_local i32 @evhttp_uri_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
