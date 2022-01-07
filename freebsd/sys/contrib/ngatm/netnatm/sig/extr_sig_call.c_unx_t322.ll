; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_unx_t322.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_unx_t322.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.call = type { i64, %struct.TYPE_7__*, i64, i32, i64, i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.uni_all = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@UNI_FAC_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"call %u/%s T322 tick %d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mine\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"his\00", align 1
@UNI_STATUS_ENQ = common dso_local global i32 0, align 4
@t322 = common dso_local global i32 0, align 4
@UNI_CAUSE_LOC_USER = common dso_local global i32 0, align 4
@UNI_CAUSE_RECOVER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"322\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.call*)* @unx_t322 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unx_t322(%struct.call* %0) #0 {
  %2 = alloca %struct.call*, align 8
  %3 = alloca %struct.uni_all*, align 8
  store %struct.call* %0, %struct.call** %2, align 8
  %4 = load %struct.call*, %struct.call** %2, align 8
  %5 = getelementptr inbounds %struct.call, %struct.call* %4, i32 0, i32 1
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = load i32, i32* @UNI_FAC_TIMEOUT, align 4
  %8 = load %struct.call*, %struct.call** %2, align 8
  %9 = getelementptr inbounds %struct.call, %struct.call* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.call*, %struct.call** %2, align 8
  %12 = getelementptr inbounds %struct.call, %struct.call* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %17 = load %struct.call*, %struct.call** %2, align 8
  %18 = getelementptr inbounds %struct.call, %struct.call* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1
  %21 = call i32 @VERBOSE(%struct.TYPE_7__* %6, i32 %7, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %10, i8* %16, i64 %20)
  %22 = load %struct.call*, %struct.call** %2, align 8
  %23 = getelementptr inbounds %struct.call, %struct.call* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.call*, %struct.call** %2, align 8
  %27 = getelementptr inbounds %struct.call, %struct.call* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %25, %30
  br i1 %31, label %32, label %71

32:                                               ; preds = %1
  %33 = call %struct.uni_all* (...) @UNI_ALLOC()
  store %struct.uni_all* %33, %struct.uni_all** %3, align 8
  %34 = icmp ne %struct.uni_all* %33, null
  br i1 %34, label %35, label %62

35:                                               ; preds = %32
  %36 = load %struct.uni_all*, %struct.uni_all** %3, align 8
  %37 = load i32, i32* @UNI_STATUS_ENQ, align 4
  %38 = load %struct.call*, %struct.call** %2, align 8
  %39 = getelementptr inbounds %struct.call, %struct.call* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.call*, %struct.call** %2, align 8
  %42 = getelementptr inbounds %struct.call, %struct.call* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @MK_MSG_ORIG(%struct.uni_all* %36, i32 %37, i32 %40, i32 %46)
  %48 = load %struct.call*, %struct.call** %2, align 8
  %49 = getelementptr inbounds %struct.call, %struct.call* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.uni_all*, %struct.uni_all** %3, align 8
  %52 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  %55 = load %struct.uni_all*, %struct.uni_all** %3, align 8
  %56 = load %struct.call*, %struct.call** %2, align 8
  %57 = getelementptr inbounds %struct.call, %struct.call* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = call i32 @uni_send_output(%struct.uni_all* %55, %struct.TYPE_7__* %58)
  %60 = load %struct.uni_all*, %struct.uni_all** %3, align 8
  %61 = call i32 @UNI_FREE(%struct.uni_all* %60)
  br label %62

62:                                               ; preds = %35, %32
  %63 = load %struct.call*, %struct.call** %2, align 8
  %64 = load i32, i32* @t322, align 4
  %65 = load %struct.call*, %struct.call** %2, align 8
  %66 = getelementptr inbounds %struct.call, %struct.call* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @TIMER_START_CALL(%struct.call* %63, i32 %64, i32 %69)
  br label %90

71:                                               ; preds = %1
  %72 = load %struct.call*, %struct.call** %2, align 8
  %73 = getelementptr inbounds %struct.call, %struct.call* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load %struct.call*, %struct.call** %2, align 8
  %75 = getelementptr inbounds %struct.call, %struct.call* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @UNI_CAUSE_LOC_USER, align 4
  %80 = load i32, i32* @UNI_CAUSE_RECOVER, align 4
  %81 = call i32 @MK_IE_CAUSE(i32 %78, i32 %79, i32 %80)
  %82 = load %struct.call*, %struct.call** %2, align 8
  %83 = getelementptr inbounds %struct.call, %struct.call* %82, i32 0, i32 1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @ADD_CAUSE_TIMER(i32 %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.call*, %struct.call** %2, align 8
  %89 = call i32 @clear_callD(%struct.call* %88)
  br label %90

90:                                               ; preds = %71, %62
  ret void
}

declare dso_local i32 @VERBOSE(%struct.TYPE_7__*, i32, i32, i8*, i32, i8*, i64) #1

declare dso_local %struct.uni_all* @UNI_ALLOC(...) #1

declare dso_local i32 @MK_MSG_ORIG(%struct.uni_all*, i32, i32, i32) #1

declare dso_local i32 @uni_send_output(%struct.uni_all*, %struct.TYPE_7__*) #1

declare dso_local i32 @UNI_FREE(%struct.uni_all*) #1

declare dso_local i32 @TIMER_START_CALL(%struct.call*, i32, i32) #1

declare dso_local i32 @MK_IE_CAUSE(i32, i32, i32) #1

declare dso_local i32 @ADD_CAUSE_TIMER(i32, i8*) #1

declare dso_local i32 @clear_callD(%struct.call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
