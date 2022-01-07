; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_u4n7_t301.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_u4n7_t301.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.call = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@UNI_FAC_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"call %u/%s T301 tick\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mine\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"his\00", align 1
@UNI_CAUSE_LOC_USER = common dso_local global i32 0, align 4
@UNI_CAUSE_NO_RESP_ALERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.call*)* @u4n7_t301 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u4n7_t301(%struct.call* %0) #0 {
  %2 = alloca %struct.call*, align 8
  store %struct.call* %0, %struct.call** %2, align 8
  %3 = load %struct.call*, %struct.call** %2, align 8
  %4 = getelementptr inbounds %struct.call, %struct.call* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = load i32, i32* @UNI_FAC_TIMEOUT, align 4
  %7 = load %struct.call*, %struct.call** %2, align 8
  %8 = getelementptr inbounds %struct.call, %struct.call* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.call*, %struct.call** %2, align 8
  %11 = getelementptr inbounds %struct.call, %struct.call* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %16 = call i32 @VERBOSE(%struct.TYPE_2__* %5, i32 %6, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %9, i8* %15)
  %17 = load %struct.call*, %struct.call** %2, align 8
  %18 = getelementptr inbounds %struct.call, %struct.call* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @UNI_CAUSE_LOC_USER, align 4
  %23 = load i32, i32* @UNI_CAUSE_NO_RESP_ALERT, align 4
  %24 = call i32 @MK_IE_CAUSE(i32 %21, i32 %22, i32 %23)
  %25 = load %struct.call*, %struct.call** %2, align 8
  %26 = call i32 @clear_callD(%struct.call* %25)
  ret void
}

declare dso_local i32 @VERBOSE(%struct.TYPE_2__*, i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @MK_IE_CAUSE(i32, i32, i32) #1

declare dso_local i32 @clear_callD(%struct.call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
