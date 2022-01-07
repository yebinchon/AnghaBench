; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/saal/extr_saal_sscop.c_sscop_save_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/saal/extr_saal_sscop.c_sscop_save_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sscop = type { i32 }
%struct.sscop_msg = type { i32 }
%struct.sscop_sig = type { %struct.sscop_msg*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"sscop: cannot allocate signal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sscop*, i32, %struct.sscop_msg*)* @sscop_save_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sscop_save_signal(%struct.sscop* %0, i32 %1, %struct.sscop_msg* %2) #0 {
  %4 = alloca %struct.sscop*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sscop_msg*, align 8
  %7 = alloca %struct.sscop_sig*, align 8
  store %struct.sscop* %0, %struct.sscop** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sscop_msg* %2, %struct.sscop_msg** %6, align 8
  %8 = load %struct.sscop_sig*, %struct.sscop_sig** %7, align 8
  %9 = call i32 @SIG_ALLOC(%struct.sscop_sig* %8)
  %10 = load %struct.sscop_sig*, %struct.sscop_sig** %7, align 8
  %11 = icmp eq %struct.sscop_sig* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = call i32 @FAILURE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.sscop_msg*, %struct.sscop_msg** %6, align 8
  %15 = call i32 @SSCOP_MSG_FREE(%struct.sscop_msg* %14)
  br label %27

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.sscop_sig*, %struct.sscop_sig** %7, align 8
  %19 = getelementptr inbounds %struct.sscop_sig, %struct.sscop_sig* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.sscop_msg*, %struct.sscop_msg** %6, align 8
  %21 = load %struct.sscop_sig*, %struct.sscop_sig** %7, align 8
  %22 = getelementptr inbounds %struct.sscop_sig, %struct.sscop_sig* %21, i32 0, i32 0
  store %struct.sscop_msg* %20, %struct.sscop_msg** %22, align 8
  %23 = load %struct.sscop*, %struct.sscop** %4, align 8
  %24 = getelementptr inbounds %struct.sscop, %struct.sscop* %23, i32 0, i32 0
  %25 = load %struct.sscop_sig*, %struct.sscop_sig** %7, align 8
  %26 = call i32 @SIGQ_APPEND(i32* %24, %struct.sscop_sig* %25)
  br label %27

27:                                               ; preds = %16, %12
  ret void
}

declare dso_local i32 @SIG_ALLOC(%struct.sscop_sig*) #1

declare dso_local i32 @FAILURE(i8*) #1

declare dso_local i32 @SSCOP_MSG_FREE(%struct.sscop_msg*) #1

declare dso_local i32 @SIGQ_APPEND(i32*, %struct.sscop_sig*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
