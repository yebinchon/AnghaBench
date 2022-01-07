; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_call_se.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_call_se.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.call = type { i32, %struct.TYPE_2__*, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.uni_all = type { i32 }

@UNI_STATUS_ENQ = common dso_local global i32 0, align 4
@t322 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.call*)* @call_se to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_se(%struct.call* %0) #0 {
  %2 = alloca %struct.call*, align 8
  %3 = alloca %struct.uni_all*, align 8
  store %struct.call* %0, %struct.call** %2, align 8
  %4 = load %struct.call*, %struct.call** %2, align 8
  %5 = getelementptr inbounds %struct.call, %struct.call* %4, i32 0, i32 5
  store i64 0, i64* %5, align 8
  %6 = load %struct.call*, %struct.call** %2, align 8
  %7 = getelementptr inbounds %struct.call, %struct.call* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %48

11:                                               ; preds = %1
  %12 = load %struct.call*, %struct.call** %2, align 8
  %13 = getelementptr inbounds %struct.call, %struct.call* %12, i32 0, i32 4
  %14 = call i32 @memset(i32* %13, i32 0, i32 4)
  %15 = call %struct.uni_all* (...) @UNI_ALLOC()
  store %struct.uni_all* %15, %struct.uni_all** %3, align 8
  %16 = icmp ne %struct.uni_all* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %11
  %18 = load %struct.uni_all*, %struct.uni_all** %3, align 8
  %19 = load i32, i32* @UNI_STATUS_ENQ, align 4
  %20 = load %struct.call*, %struct.call** %2, align 8
  %21 = getelementptr inbounds %struct.call, %struct.call* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.call*, %struct.call** %2, align 8
  %24 = getelementptr inbounds %struct.call, %struct.call* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @MK_MSG_ORIG(%struct.uni_all* %18, i32 %19, i32 %22, i32 %28)
  %30 = load %struct.uni_all*, %struct.uni_all** %3, align 8
  %31 = load %struct.call*, %struct.call** %2, align 8
  %32 = getelementptr inbounds %struct.call, %struct.call* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = call i32 @uni_send_output(%struct.uni_all* %30, %struct.TYPE_2__* %33)
  %35 = load %struct.uni_all*, %struct.uni_all** %3, align 8
  %36 = call i32 @UNI_FREE(%struct.uni_all* %35)
  br label %37

37:                                               ; preds = %17, %11
  %38 = load %struct.call*, %struct.call** %2, align 8
  %39 = load i32, i32* @t322, align 4
  %40 = load %struct.call*, %struct.call** %2, align 8
  %41 = getelementptr inbounds %struct.call, %struct.call* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @TIMER_START_CALL(%struct.call* %38, i32 %39, i32 %44)
  %46 = load %struct.call*, %struct.call** %2, align 8
  %47 = getelementptr inbounds %struct.call, %struct.call* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %48

48:                                               ; preds = %37, %10
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.uni_all* @UNI_ALLOC(...) #1

declare dso_local i32 @MK_MSG_ORIG(%struct.uni_all*, i32, i32, i32) #1

declare dso_local i32 @uni_send_output(%struct.uni_all*, %struct.TYPE_2__*) #1

declare dso_local i32 @UNI_FREE(%struct.uni_all*) #1

declare dso_local i32 @TIMER_START_CALL(%struct.call*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
