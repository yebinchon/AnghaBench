; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_verify.c_uni_respond_status_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_verify.c_uni_respond_status_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni = type { i32 }
%struct.uni_cref = type { i32 }
%struct.uni_ie_epref = type { i32, i32 }
%struct.uni_all = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@UNI_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uni_respond_status_verify(%struct.uni* %0, %struct.uni_cref* %1, i32 %2, %struct.uni_ie_epref* %3, i32 %4) #0 {
  %6 = alloca %struct.uni*, align 8
  %7 = alloca %struct.uni_cref*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.uni_ie_epref*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.uni_all*, align 8
  store %struct.uni* %0, %struct.uni** %6, align 8
  store %struct.uni_cref* %1, %struct.uni_cref** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.uni_ie_epref* %3, %struct.uni_ie_epref** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = call %struct.uni_all* (...) @UNI_ALLOC()
  store %struct.uni_all* %12, %struct.uni_all** %11, align 8
  %13 = icmp eq %struct.uni_all* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  br label %73

15:                                               ; preds = %5
  %16 = load %struct.uni*, %struct.uni** %6, align 8
  %17 = call i32 @uni_vfy_collect_ies(%struct.uni* %16)
  %18 = load %struct.uni_all*, %struct.uni_all** %11, align 8
  %19 = load i32, i32* @UNI_STATUS, align 4
  %20 = load %struct.uni_cref*, %struct.uni_cref** %7, align 8
  %21 = call i32 @MK_MSG_RESP(%struct.uni_all* %18, i32 %19, %struct.uni_cref* %20)
  %22 = load %struct.uni_all*, %struct.uni_all** %11, align 8
  %23 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @MK_IE_CALLSTATE(i32 %26, i32 %27)
  %29 = load %struct.uni*, %struct.uni** %6, align 8
  %30 = getelementptr inbounds %struct.uni, %struct.uni* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.uni_all*, %struct.uni_all** %11, align 8
  %33 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i32 %31, i32* %35, align 4
  %36 = load %struct.uni_ie_epref*, %struct.uni_ie_epref** %9, align 8
  %37 = icmp ne %struct.uni_ie_epref* %36, null
  br i1 %37, label %38, label %67

38:                                               ; preds = %15
  %39 = load %struct.uni_ie_epref*, %struct.uni_ie_epref** %9, align 8
  %40 = bitcast %struct.uni_ie_epref* %39 to i64*
  %41 = load i64, i64* %40, align 4
  %42 = call i64 @IE_ISGOOD(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %38
  %45 = load %struct.uni_all*, %struct.uni_all** %11, align 8
  %46 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.uni_ie_epref*, %struct.uni_ie_epref** %9, align 8
  %51 = getelementptr inbounds %struct.uni_ie_epref, %struct.uni_ie_epref* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.uni_ie_epref*, %struct.uni_ie_epref** %9, align 8
  %54 = getelementptr inbounds %struct.uni_ie_epref, %struct.uni_ie_epref* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @MK_IE_EPREF(i32 %49, i32 %52, i32 %58)
  %60 = load %struct.uni_all*, %struct.uni_all** %11, align 8
  %61 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @MK_IE_EPSTATE(i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %44, %38, %15
  %68 = load %struct.uni_all*, %struct.uni_all** %11, align 8
  %69 = load %struct.uni*, %struct.uni** %6, align 8
  %70 = call i32 @uni_send_output(%struct.uni_all* %68, %struct.uni* %69)
  %71 = load %struct.uni_all*, %struct.uni_all** %11, align 8
  %72 = call i32 @UNI_FREE(%struct.uni_all* %71)
  br label %73

73:                                               ; preds = %67, %14
  ret void
}

declare dso_local %struct.uni_all* @UNI_ALLOC(...) #1

declare dso_local i32 @uni_vfy_collect_ies(%struct.uni*) #1

declare dso_local i32 @MK_MSG_RESP(%struct.uni_all*, i32, %struct.uni_cref*) #1

declare dso_local i32 @MK_IE_CALLSTATE(i32, i32) #1

declare dso_local i64 @IE_ISGOOD(i64) #1

declare dso_local i32 @MK_IE_EPREF(i32, i32, i32) #1

declare dso_local i32 @MK_IE_EPSTATE(i32, i32) #1

declare dso_local i32 @uni_send_output(%struct.uni_all*, %struct.uni*) #1

declare dso_local i32 @UNI_FREE(%struct.uni_all*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
