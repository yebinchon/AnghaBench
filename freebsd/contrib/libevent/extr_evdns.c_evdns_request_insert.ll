; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_evdns_request_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_evdns_request_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.request*, %struct.request*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, %struct.request**)* @evdns_request_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evdns_request_insert(%struct.request* %0, %struct.request** %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.request**, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  store %struct.request** %1, %struct.request*** %4, align 8
  %5 = load %struct.request*, %struct.request** %3, align 8
  %6 = getelementptr inbounds %struct.request, %struct.request* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @ASSERT_LOCKED(i32 %7)
  %9 = load %struct.request*, %struct.request** %3, align 8
  %10 = call i32 @ASSERT_VALID_REQUEST(%struct.request* %9)
  %11 = load %struct.request**, %struct.request*** %4, align 8
  %12 = load %struct.request*, %struct.request** %11, align 8
  %13 = icmp ne %struct.request* %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load %struct.request*, %struct.request** %3, align 8
  %16 = load %struct.request**, %struct.request*** %4, align 8
  store %struct.request* %15, %struct.request** %16, align 8
  %17 = load %struct.request*, %struct.request** %3, align 8
  %18 = load %struct.request*, %struct.request** %3, align 8
  %19 = getelementptr inbounds %struct.request, %struct.request* %18, i32 0, i32 0
  store %struct.request* %17, %struct.request** %19, align 8
  %20 = load %struct.request*, %struct.request** %3, align 8
  %21 = getelementptr inbounds %struct.request, %struct.request* %20, i32 0, i32 1
  store %struct.request* %17, %struct.request** %21, align 8
  br label %42

22:                                               ; preds = %2
  %23 = load %struct.request**, %struct.request*** %4, align 8
  %24 = load %struct.request*, %struct.request** %23, align 8
  %25 = getelementptr inbounds %struct.request, %struct.request* %24, i32 0, i32 0
  %26 = load %struct.request*, %struct.request** %25, align 8
  %27 = load %struct.request*, %struct.request** %3, align 8
  %28 = getelementptr inbounds %struct.request, %struct.request* %27, i32 0, i32 0
  store %struct.request* %26, %struct.request** %28, align 8
  %29 = load %struct.request*, %struct.request** %3, align 8
  %30 = load %struct.request*, %struct.request** %3, align 8
  %31 = getelementptr inbounds %struct.request, %struct.request* %30, i32 0, i32 0
  %32 = load %struct.request*, %struct.request** %31, align 8
  %33 = getelementptr inbounds %struct.request, %struct.request* %32, i32 0, i32 1
  store %struct.request* %29, %struct.request** %33, align 8
  %34 = load %struct.request**, %struct.request*** %4, align 8
  %35 = load %struct.request*, %struct.request** %34, align 8
  %36 = load %struct.request*, %struct.request** %3, align 8
  %37 = getelementptr inbounds %struct.request, %struct.request* %36, i32 0, i32 1
  store %struct.request* %35, %struct.request** %37, align 8
  %38 = load %struct.request*, %struct.request** %3, align 8
  %39 = load %struct.request**, %struct.request*** %4, align 8
  %40 = load %struct.request*, %struct.request** %39, align 8
  %41 = getelementptr inbounds %struct.request, %struct.request* %40, i32 0, i32 0
  store %struct.request* %38, %struct.request** %41, align 8
  br label %42

42:                                               ; preds = %22, %14
  ret void
}

declare dso_local i32 @ASSERT_LOCKED(i32) #1

declare dso_local i32 @ASSERT_VALID_REQUEST(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
