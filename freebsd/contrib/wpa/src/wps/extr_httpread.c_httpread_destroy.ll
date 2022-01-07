; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_httpread.c_httpread_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_httpread.c_httpread_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httpread = type { i32, %struct.httpread*, %struct.httpread* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"httpread_destroy(%p)\00", align 1
@httpread_timeout_handler = common dso_local global i32 0, align 4
@EVENT_TYPE_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @httpread_destroy(%struct.httpread* %0) #0 {
  %2 = alloca %struct.httpread*, align 8
  store %struct.httpread* %0, %struct.httpread** %2, align 8
  %3 = load i32, i32* @MSG_DEBUG, align 4
  %4 = load %struct.httpread*, %struct.httpread** %2, align 8
  %5 = call i32 @wpa_printf(i32 %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.httpread* %4)
  %6 = load %struct.httpread*, %struct.httpread** %2, align 8
  %7 = icmp ne %struct.httpread* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %32

9:                                                ; preds = %1
  %10 = load i32, i32* @httpread_timeout_handler, align 4
  %11 = load %struct.httpread*, %struct.httpread** %2, align 8
  %12 = call i32 @eloop_cancel_timeout(i32 %10, i32* null, %struct.httpread* %11)
  %13 = load %struct.httpread*, %struct.httpread** %2, align 8
  %14 = getelementptr inbounds %struct.httpread, %struct.httpread* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @EVENT_TYPE_READ, align 4
  %17 = call i32 @eloop_unregister_sock(i32 %15, i32 %16)
  %18 = load %struct.httpread*, %struct.httpread** %2, align 8
  %19 = getelementptr inbounds %struct.httpread, %struct.httpread* %18, i32 0, i32 2
  %20 = load %struct.httpread*, %struct.httpread** %19, align 8
  %21 = call i32 @os_free(%struct.httpread* %20)
  %22 = load %struct.httpread*, %struct.httpread** %2, align 8
  %23 = getelementptr inbounds %struct.httpread, %struct.httpread* %22, i32 0, i32 1
  %24 = load %struct.httpread*, %struct.httpread** %23, align 8
  %25 = call i32 @os_free(%struct.httpread* %24)
  %26 = load %struct.httpread*, %struct.httpread** %2, align 8
  %27 = call i32 @os_memset(%struct.httpread* %26, i32 0, i32 24)
  %28 = load %struct.httpread*, %struct.httpread** %2, align 8
  %29 = getelementptr inbounds %struct.httpread, %struct.httpread* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  %30 = load %struct.httpread*, %struct.httpread** %2, align 8
  %31 = call i32 @os_free(%struct.httpread* %30)
  br label %32

32:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, %struct.httpread*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, i32*, %struct.httpread*) #1

declare dso_local i32 @eloop_unregister_sock(i32, i32) #1

declare dso_local i32 @os_free(%struct.httpread*) #1

declare dso_local i32 @os_memset(%struct.httpread*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
