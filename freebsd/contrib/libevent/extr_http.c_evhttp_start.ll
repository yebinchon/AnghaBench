; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evhttp* @evhttp_start(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.evhttp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.evhttp*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.evhttp* null, %struct.evhttp** %6, align 8
  %7 = call %struct.evhttp* (...) @evhttp_new_object()
  store %struct.evhttp* %7, %struct.evhttp** %6, align 8
  %8 = load %struct.evhttp*, %struct.evhttp** %6, align 8
  %9 = icmp eq %struct.evhttp* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.evhttp* null, %struct.evhttp** %3, align 8
  br label %22

11:                                               ; preds = %2
  %12 = load %struct.evhttp*, %struct.evhttp** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @evhttp_bind_socket(%struct.evhttp* %12, i8* %13, i32 %14)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.evhttp*, %struct.evhttp** %6, align 8
  %19 = call i32 @mm_free(%struct.evhttp* %18)
  store %struct.evhttp* null, %struct.evhttp** %3, align 8
  br label %22

20:                                               ; preds = %11
  %21 = load %struct.evhttp*, %struct.evhttp** %6, align 8
  store %struct.evhttp* %21, %struct.evhttp** %3, align 8
  br label %22

22:                                               ; preds = %20, %17, %10
  %23 = load %struct.evhttp*, %struct.evhttp** %3, align 8
  ret %struct.evhttp* %23
}

declare dso_local %struct.evhttp* @evhttp_new_object(...) #1

declare dso_local i32 @evhttp_bind_socket(%struct.evhttp*, i8*, i32) #1

declare dso_local i32 @mm_free(%struct.evhttp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
