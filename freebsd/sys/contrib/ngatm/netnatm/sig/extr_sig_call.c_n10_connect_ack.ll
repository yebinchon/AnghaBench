; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_n10_connect_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_n10_connect_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.call = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.uni_msg = type { i32 }
%struct.uni_all = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.call*, %struct.uni_msg*, %struct.uni_all*)* @n10_connect_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n10_connect_ack(%struct.call* %0, %struct.uni_msg* %1, %struct.uni_all* %2) #0 {
  %4 = alloca %struct.call*, align 8
  %5 = alloca %struct.uni_msg*, align 8
  %6 = alloca %struct.uni_all*, align 8
  store %struct.call* %0, %struct.call** %4, align 8
  store %struct.uni_msg* %1, %struct.uni_msg** %5, align 8
  store %struct.uni_all* %2, %struct.uni_all** %6, align 8
  %7 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %8 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %9 = load %struct.call*, %struct.call** %4, align 8
  %10 = getelementptr inbounds %struct.call, %struct.call* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = call i32 @uni_decode_body(%struct.uni_msg* %7, %struct.uni_all* %8, i32* %12)
  %14 = load %struct.call*, %struct.call** %4, align 8
  %15 = getelementptr inbounds %struct.call, %struct.call* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %18 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @uni_verify(%struct.TYPE_8__* %16, i32 %21)
  switch i32 %22, label %53 [
    i32 134, label %23
    i32 133, label %30
    i32 130, label %35
    i32 131, label %35
    i32 129, label %35
    i32 128, label %35
    i32 132, label %48
  ]

23:                                               ; preds = %3
  %24 = load %struct.call*, %struct.call** %4, align 8
  %25 = getelementptr inbounds %struct.call, %struct.call* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = call i32 @uni_vfy_collect_ies(%struct.TYPE_8__* %26)
  %28 = load %struct.call*, %struct.call** %4, align 8
  %29 = call i32 @clear_callD(%struct.call* %28)
  br label %30

30:                                               ; preds = %3, %23
  %31 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %32 = call i32 @uni_msg_destroy(%struct.uni_msg* %31)
  %33 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %34 = call i32 @UNI_FREE(%struct.uni_all* %33)
  br label %53

35:                                               ; preds = %3, %3, %3, %3
  %36 = load %struct.call*, %struct.call** %4, align 8
  %37 = getelementptr inbounds %struct.call, %struct.call* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %40 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.call*, %struct.call** %4, align 8
  %44 = getelementptr inbounds %struct.call, %struct.call* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @map_callstate(i32 %45)
  %47 = call i32 @uni_respond_status_verify(%struct.TYPE_8__* %38, i32* %42, i32 %46, i32* null, i32 0)
  br label %48

48:                                               ; preds = %3, %35
  %49 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %50 = call i32 @uni_msg_destroy(%struct.uni_msg* %49)
  %51 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %52 = call i32 @UNI_FREE(%struct.uni_all* %51)
  br label %53

53:                                               ; preds = %30, %48, %3
  ret void
}

declare dso_local i32 @uni_decode_body(%struct.uni_msg*, %struct.uni_all*, i32*) #1

declare dso_local i32 @uni_verify(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @uni_vfy_collect_ies(%struct.TYPE_8__*) #1

declare dso_local i32 @clear_callD(%struct.call*) #1

declare dso_local i32 @uni_msg_destroy(%struct.uni_msg*) #1

declare dso_local i32 @UNI_FREE(%struct.uni_all*) #1

declare dso_local i32 @uni_respond_status_verify(%struct.TYPE_8__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @map_callstate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
