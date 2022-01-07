; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_unx_release_compl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_unx_release_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.call = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.uni_msg = type { i32 }
%struct.uni_all = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.call*, %struct.uni_msg*, %struct.uni_all*)* @unx_release_compl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unx_release_compl(%struct.call* %0, %struct.uni_msg* %1, %struct.uni_all* %2) #0 {
  %4 = alloca %struct.call*, align 8
  %5 = alloca %struct.uni_msg*, align 8
  %6 = alloca %struct.uni_all*, align 8
  store %struct.call* %0, %struct.call** %4, align 8
  store %struct.uni_msg* %1, %struct.uni_msg** %5, align 8
  store %struct.uni_all* %2, %struct.uni_all** %6, align 8
  %7 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %8 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %9 = load %struct.call*, %struct.call** %4, align 8
  %10 = getelementptr inbounds %struct.call, %struct.call* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = call i32 @uni_decode_body(%struct.uni_msg* %7, %struct.uni_all* %8, i32* %12)
  %14 = load %struct.call*, %struct.call** %4, align 8
  %15 = getelementptr inbounds %struct.call, %struct.call* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %18 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @uni_verify(%struct.TYPE_6__* %16, i32 %21)
  %23 = load %struct.call*, %struct.call** %4, align 8
  %24 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %25 = call i32 @uni_release_compl(%struct.call* %23, %struct.uni_all* %24)
  %26 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %27 = call i32 @uni_msg_destroy(%struct.uni_msg* %26)
  %28 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %29 = call i32 @UNI_FREE(%struct.uni_all* %28)
  ret void
}

declare dso_local i32 @uni_decode_body(%struct.uni_msg*, %struct.uni_all*, i32*) #1

declare dso_local i32 @uni_verify(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @uni_release_compl(%struct.call*, %struct.uni_all*) #1

declare dso_local i32 @uni_msg_destroy(%struct.uni_msg*) #1

declare dso_local i32 @UNI_FREE(%struct.uni_all*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
