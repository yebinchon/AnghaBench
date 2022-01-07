; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_listener.c_evconnlistener_set_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_listener.c_evconnlistener_set_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evconnlistener = type { i8*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evconnlistener_set_cb(%struct.evconnlistener* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.evconnlistener*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.evconnlistener* %0, %struct.evconnlistener** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.evconnlistener*, %struct.evconnlistener** %4, align 8
  %9 = call i32 @LOCK(%struct.evconnlistener* %8)
  %10 = load %struct.evconnlistener*, %struct.evconnlistener** %4, align 8
  %11 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.evconnlistener*, %struct.evconnlistener** %4, align 8
  %16 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 1, i32* %7, align 4
  br label %20

20:                                               ; preds = %19, %14, %3
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.evconnlistener*, %struct.evconnlistener** %4, align 8
  %23 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.evconnlistener*, %struct.evconnlistener** %4, align 8
  %26 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load %struct.evconnlistener*, %struct.evconnlistener** %4, align 8
  %31 = call i32 @evconnlistener_enable(%struct.evconnlistener* %30)
  br label %32

32:                                               ; preds = %29, %20
  %33 = load %struct.evconnlistener*, %struct.evconnlistener** %4, align 8
  %34 = call i32 @UNLOCK(%struct.evconnlistener* %33)
  ret void
}

declare dso_local i32 @LOCK(%struct.evconnlistener*) #1

declare dso_local i32 @evconnlistener_enable(%struct.evconnlistener*) #1

declare dso_local i32 @UNLOCK(%struct.evconnlistener*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
