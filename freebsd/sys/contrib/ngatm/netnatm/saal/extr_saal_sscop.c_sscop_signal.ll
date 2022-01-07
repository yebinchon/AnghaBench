; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/saal/extr_saal_sscop.c_sscop_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/saal/extr_saal_sscop.c_sscop_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sscop = type { i64, i64, i32, i32 }
%struct.sscop_msg = type { i32 }
%struct.sscop_sig = type { i64, %struct.sscop_msg* }

@SSCOP_DBG_INSIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"got signal %s in state %s%s\00", align 1
@events = common dso_local global i32* null, align 8
@states = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c" -- queuing\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"sscop: cannot allocate signal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sscop*, i64, %struct.sscop_msg*)* @sscop_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sscop_signal(%struct.sscop* %0, i64 %1, %struct.sscop_msg* %2) #0 {
  %4 = alloca %struct.sscop*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sscop_msg*, align 8
  %7 = alloca %struct.sscop_sig*, align 8
  store %struct.sscop* %0, %struct.sscop** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.sscop_msg* %2, %struct.sscop_msg** %6, align 8
  %8 = load %struct.sscop*, %struct.sscop** %4, align 8
  %9 = load i32, i32* @SSCOP_DBG_INSIG, align 4
  %10 = load %struct.sscop*, %struct.sscop** %4, align 8
  %11 = load %struct.sscop*, %struct.sscop** %4, align 8
  %12 = getelementptr inbounds %struct.sscop, %struct.sscop* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** @events, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** @states, align 8
  %19 = load %struct.sscop*, %struct.sscop** %4, align 8
  %20 = getelementptr inbounds %struct.sscop, %struct.sscop* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sscop*, %struct.sscop** %4, align 8
  %25 = getelementptr inbounds %struct.sscop, %struct.sscop* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %30 = bitcast i8* %29 to %struct.sscop*
  %31 = call i32 @VERBOSE(%struct.sscop* %8, i32 %9, %struct.sscop* %30)
  %32 = load %struct.sscop_sig*, %struct.sscop_sig** %7, align 8
  %33 = call i32 @SIG_ALLOC(%struct.sscop_sig* %32)
  %34 = load %struct.sscop_sig*, %struct.sscop_sig** %7, align 8
  %35 = icmp eq %struct.sscop_sig* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %3
  %37 = call i32 @FAILURE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.sscop_msg*, %struct.sscop_msg** %6, align 8
  %39 = call i32 @SSCOP_MSG_FREE(%struct.sscop_msg* %38)
  br label %58

40:                                               ; preds = %3
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.sscop_sig*, %struct.sscop_sig** %7, align 8
  %43 = getelementptr inbounds %struct.sscop_sig, %struct.sscop_sig* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.sscop_msg*, %struct.sscop_msg** %6, align 8
  %45 = load %struct.sscop_sig*, %struct.sscop_sig** %7, align 8
  %46 = getelementptr inbounds %struct.sscop_sig, %struct.sscop_sig* %45, i32 0, i32 1
  store %struct.sscop_msg* %44, %struct.sscop_msg** %46, align 8
  %47 = load %struct.sscop*, %struct.sscop** %4, align 8
  %48 = getelementptr inbounds %struct.sscop, %struct.sscop* %47, i32 0, i32 2
  %49 = load %struct.sscop_sig*, %struct.sscop_sig** %7, align 8
  %50 = call i32 @SIGQ_APPEND(i32* %48, %struct.sscop_sig* %49)
  %51 = load %struct.sscop*, %struct.sscop** %4, align 8
  %52 = getelementptr inbounds %struct.sscop, %struct.sscop* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %40
  %56 = load %struct.sscop*, %struct.sscop** %4, align 8
  %57 = call i32 @handle_sigs(%struct.sscop* %56)
  br label %58

58:                                               ; preds = %36, %55, %40
  ret void
}

declare dso_local i32 @VERBOSE(%struct.sscop*, i32, %struct.sscop*) #1

declare dso_local i32 @SIG_ALLOC(%struct.sscop_sig*) #1

declare dso_local i32 @FAILURE(i8*) #1

declare dso_local i32 @SSCOP_MSG_FREE(%struct.sscop_msg*) #1

declare dso_local i32 @SIGQ_APPEND(i32*, %struct.sscop_sig*) #1

declare dso_local i32 @handle_sigs(%struct.sscop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
