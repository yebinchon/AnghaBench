; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_unx_send_add_party_rej.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_unx_send_add_party_rej.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.call = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.uni_all = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CALLST_U11 = common dso_local global i64 0, align 8
@CALLST_N12 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.call*, %struct.uni_all*)* @unx_send_add_party_rej to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unx_send_add_party_rej(%struct.call* %0, %struct.uni_all* %1) #0 {
  %3 = alloca %struct.call*, align 8
  %4 = alloca %struct.uni_all*, align 8
  store %struct.call* %0, %struct.call** %3, align 8
  store %struct.uni_all* %1, %struct.uni_all** %4, align 8
  %5 = load %struct.call*, %struct.call** %3, align 8
  %6 = call i64 @uni_party_act_count(%struct.call* %5, i32 2)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %2
  %9 = load %struct.call*, %struct.call** %3, align 8
  %10 = getelementptr inbounds %struct.call, %struct.call* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CALLST_U11, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %8
  %15 = load %struct.call*, %struct.call** %3, align 8
  %16 = getelementptr inbounds %struct.call, %struct.call* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CALLST_N12, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.uni_all*, %struct.uni_all** %4, align 8
  %22 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.call*, %struct.call** %3, align 8
  %27 = getelementptr inbounds %struct.call, %struct.call* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  %30 = load %struct.call*, %struct.call** %3, align 8
  %31 = call i32 @clear_callD(%struct.call* %30)
  br label %32

32:                                               ; preds = %20, %14, %8
  br label %39

33:                                               ; preds = %2
  %34 = load %struct.uni_all*, %struct.uni_all** %4, align 8
  %35 = load %struct.call*, %struct.call** %3, align 8
  %36 = getelementptr inbounds %struct.call, %struct.call* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = call i32 @uni_send_output(%struct.uni_all* %34, %struct.TYPE_6__* %37)
  br label %39

39:                                               ; preds = %33, %32
  %40 = load %struct.uni_all*, %struct.uni_all** %4, align 8
  %41 = call i32 @UNI_FREE(%struct.uni_all* %40)
  ret void
}

declare dso_local i64 @uni_party_act_count(%struct.call*, i32) #1

declare dso_local i32 @clear_callD(%struct.call*) #1

declare dso_local i32 @uni_send_output(%struct.uni_all*, %struct.TYPE_6__*) #1

declare dso_local i32 @UNI_FREE(%struct.uni_all*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
