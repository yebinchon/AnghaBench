; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_unx_unknown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_unx_unknown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.call = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.uni_msg = type { i32 }
%struct.uni_all = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@UNI_MSGACT_CLEAR = common dso_local global i64 0, align 8
@UNI_CAUSE_LOC_USER = common dso_local global i32 0, align 4
@UNI_CAUSE_MTYPE_NIMPL = common dso_local global i32 0, align 4
@UNI_MSGACT_IGNORE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.call*, %struct.uni_msg*, %struct.uni_all*)* @unx_unknown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unx_unknown(%struct.call* %0, %struct.uni_msg* %1, %struct.uni_all* %2) #0 {
  %4 = alloca %struct.call*, align 8
  %5 = alloca %struct.uni_msg*, align 8
  %6 = alloca %struct.uni_all*, align 8
  store %struct.call* %0, %struct.call** %4, align 8
  store %struct.uni_msg* %1, %struct.uni_msg** %5, align 8
  store %struct.uni_all* %2, %struct.uni_all** %6, align 8
  %7 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %8 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @UNI_MSGACT_CLEAR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %3
  %15 = load %struct.call*, %struct.call** %4, align 8
  %16 = getelementptr inbounds %struct.call, %struct.call* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @UNI_CAUSE_LOC_USER, align 4
  %21 = load i32, i32* @UNI_CAUSE_MTYPE_NIMPL, align 4
  %22 = call i32 @MK_IE_CAUSE(i32 %19, i32 %20, i32 %21)
  %23 = load %struct.call*, %struct.call** %4, align 8
  %24 = getelementptr inbounds %struct.call, %struct.call* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %29 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ADD_CAUSE_MTYPE(i32 %27, i32 %30)
  %32 = load %struct.call*, %struct.call** %4, align 8
  %33 = call i32 @clear_callD(%struct.call* %32)
  br label %60

34:                                               ; preds = %3
  %35 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %36 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @UNI_MSGACT_IGNORE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %59

43:                                               ; preds = %34
  %44 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %45 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %46 = load %struct.call*, %struct.call** %4, align 8
  %47 = getelementptr inbounds %struct.call, %struct.call* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = call i32 @uni_decode_body(%struct.uni_msg* %44, %struct.uni_all* %45, i32* %49)
  %51 = load %struct.call*, %struct.call** %4, align 8
  %52 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %53 = load i32, i32* @UNI_CAUSE_MTYPE_NIMPL, align 4
  %54 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %55 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = call i32 @uni_bad_message(%struct.call* %51, %struct.uni_all* %52, i32 %53, i32* %57, i32 -1)
  br label %59

59:                                               ; preds = %43, %42
  br label %60

60:                                               ; preds = %59, %14
  %61 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %62 = call i32 @uni_msg_destroy(%struct.uni_msg* %61)
  %63 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %64 = call i32 @UNI_FREE(%struct.uni_all* %63)
  ret void
}

declare dso_local i32 @MK_IE_CAUSE(i32, i32, i32) #1

declare dso_local i32 @ADD_CAUSE_MTYPE(i32, i32) #1

declare dso_local i32 @clear_callD(%struct.call*) #1

declare dso_local i32 @uni_decode_body(%struct.uni_msg*, %struct.uni_all*, i32*) #1

declare dso_local i32 @uni_bad_message(%struct.call*, %struct.uni_all*, i32, i32*, i32) #1

declare dso_local i32 @uni_msg_destroy(%struct.uni_msg*) #1

declare dso_local i32 @UNI_FREE(%struct.uni_all*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
