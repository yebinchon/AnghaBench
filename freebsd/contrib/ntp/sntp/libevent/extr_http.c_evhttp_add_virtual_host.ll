; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_add_virtual_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_add_virtual_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp = type { i32, i32*, i32 }

@next_vhost = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evhttp_add_virtual_host(%struct.evhttp* %0, i8* %1, %struct.evhttp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evhttp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.evhttp*, align 8
  store %struct.evhttp* %0, %struct.evhttp** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.evhttp* %2, %struct.evhttp** %7, align 8
  %8 = load %struct.evhttp*, %struct.evhttp** %7, align 8
  %9 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.evhttp*, %struct.evhttp** %7, align 8
  %14 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %13, i32 0, i32 2
  %15 = call i32* @TAILQ_FIRST(i32* %14)
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %3
  store i32 -1, i32* %4, align 4
  br label %34

18:                                               ; preds = %12
  %19 = load i8*, i8** %6, align 8
  %20 = call i32* @mm_strdup(i8* %19)
  %21 = load %struct.evhttp*, %struct.evhttp** %7, align 8
  %22 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.evhttp*, %struct.evhttp** %7, align 8
  %24 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %34

28:                                               ; preds = %18
  %29 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %30 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %29, i32 0, i32 0
  %31 = load %struct.evhttp*, %struct.evhttp** %7, align 8
  %32 = load i32, i32* @next_vhost, align 4
  %33 = call i32 @TAILQ_INSERT_TAIL(i32* %30, %struct.evhttp* %31, i32 %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %28, %27, %17
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32* @TAILQ_FIRST(i32*) #1

declare dso_local i32* @mm_strdup(i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.evhttp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
