; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_respond_drop_party_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_respond_drop_party_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.call = type { i32, i32, i32 }
%struct.uni_ie_epref = type { i32, i32 }
%struct.uni_all = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@UNI_DROP_PARTY_ACK = common dso_local global i32 0, align 4
@UNI_CAUSE_LOC_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.call*, %struct.uni_ie_epref*, i32)* @respond_drop_party_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @respond_drop_party_ack(%struct.call* %0, %struct.uni_ie_epref* %1, i32 %2) #0 {
  %4 = alloca %struct.call*, align 8
  %5 = alloca %struct.uni_ie_epref*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uni_all*, align 8
  store %struct.call* %0, %struct.call** %4, align 8
  store %struct.uni_ie_epref* %1, %struct.uni_ie_epref** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call %struct.uni_all* (...) @UNI_ALLOC()
  store %struct.uni_all* %8, %struct.uni_all** %7, align 8
  %9 = icmp eq %struct.uni_all* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %54

11:                                               ; preds = %3
  %12 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %13 = load i32, i32* @UNI_DROP_PARTY_ACK, align 4
  %14 = load %struct.call*, %struct.call** %4, align 8
  %15 = getelementptr inbounds %struct.call, %struct.call* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.call*, %struct.call** %4, align 8
  %18 = getelementptr inbounds %struct.call, %struct.call* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @MK_MSG_ORIG(%struct.uni_all* %12, i32 %13, i32 %16, i32 %22)
  %24 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %25 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.uni_ie_epref*, %struct.uni_ie_epref** %5, align 8
  %30 = getelementptr inbounds %struct.uni_ie_epref, %struct.uni_ie_epref* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.uni_ie_epref*, %struct.uni_ie_epref** %5, align 8
  %33 = getelementptr inbounds %struct.uni_ie_epref, %struct.uni_ie_epref* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @MK_IE_EPREF(i32 %28, i32 %31, i32 %37)
  %39 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %40 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @UNI_CAUSE_LOC_USER, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @MK_IE_CAUSE(i32 %43, i32 %44, i32 %45)
  %47 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %48 = load %struct.call*, %struct.call** %4, align 8
  %49 = getelementptr inbounds %struct.call, %struct.call* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @uni_send_output(%struct.uni_all* %47, i32 %50)
  %52 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %53 = call i32 @UNI_FREE(%struct.uni_all* %52)
  br label %54

54:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.uni_all* @UNI_ALLOC(...) #1

declare dso_local i32 @MK_MSG_ORIG(%struct.uni_all*, i32, i32, i32) #1

declare dso_local i32 @MK_IE_EPREF(i32, i32, i32) #1

declare dso_local i32 @MK_IE_CAUSE(i32, i32, i32) #1

declare dso_local i32 @uni_send_output(%struct.uni_all*, i32) #1

declare dso_local i32 @UNI_FREE(%struct.uni_all*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
