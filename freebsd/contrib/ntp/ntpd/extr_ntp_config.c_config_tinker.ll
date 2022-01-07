; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_config_tinker.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_config.c_config_tinker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"config_tinker: attr-token=%d\00", align 1
@LOOP_ALLAN = common dso_local global i32 0, align 4
@LOOP_PHI = common dso_local global i32 0, align 4
@LOOP_FREQ = common dso_local global i32 0, align 4
@LOOP_HUFFPUFF = common dso_local global i32 0, align 4
@LOOP_PANIC = common dso_local global i32 0, align 4
@LOOP_MAX = common dso_local global i32 0, align 4
@LOOP_MAX_BACK = common dso_local global i32 0, align 4
@LOOP_MAX_FWD = common dso_local global i32 0, align 4
@LOOP_MINSTEP = common dso_local global i32 0, align 4
@LOOP_TICK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @config_tinker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_tinker(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.TYPE_8__* @HEAD_PFIFO(i32 %7)
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %3, align 8
  br label %9

9:                                                ; preds = %48, %1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, null
  br i1 %11, label %12, label %52

12:                                               ; preds = %9
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %16 [
    i32 137, label %21
    i32 136, label %23
    i32 135, label %25
    i32 134, label %27
    i32 133, label %29
    i32 132, label %31
    i32 131, label %33
    i32 130, label %35
    i32 129, label %37
    i32 128, label %39
  ]

16:                                               ; preds = %12
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @fatal_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %12, %16
  %22 = load i32, i32* @LOOP_ALLAN, align 4
  store i32 %22, i32* %4, align 4
  br label %41

23:                                               ; preds = %12
  %24 = load i32, i32* @LOOP_PHI, align 4
  store i32 %24, i32* %4, align 4
  br label %41

25:                                               ; preds = %12
  %26 = load i32, i32* @LOOP_FREQ, align 4
  store i32 %26, i32* %4, align 4
  br label %41

27:                                               ; preds = %12
  %28 = load i32, i32* @LOOP_HUFFPUFF, align 4
  store i32 %28, i32* %4, align 4
  br label %41

29:                                               ; preds = %12
  %30 = load i32, i32* @LOOP_PANIC, align 4
  store i32 %30, i32* %4, align 4
  br label %41

31:                                               ; preds = %12
  %32 = load i32, i32* @LOOP_MAX, align 4
  store i32 %32, i32* %4, align 4
  br label %41

33:                                               ; preds = %12
  %34 = load i32, i32* @LOOP_MAX_BACK, align 4
  store i32 %34, i32* %4, align 4
  br label %41

35:                                               ; preds = %12
  %36 = load i32, i32* @LOOP_MAX_FWD, align 4
  store i32 %36, i32* %4, align 4
  br label %41

37:                                               ; preds = %12
  %38 = load i32, i32* @LOOP_MINSTEP, align 4
  store i32 %38, i32* %4, align 4
  br label %41

39:                                               ; preds = %12
  %40 = load i32, i32* @LOOP_TICK, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %37, %35, %33, %31, %29, %27, %25, %23, %21
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @loop_config(i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %41
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %3, align 8
  br label %9

52:                                               ; preds = %9
  ret void
}

declare dso_local %struct.TYPE_8__* @HEAD_PFIFO(i32) #1

declare dso_local i32 @fatal_error(i8*, i32) #1

declare dso_local i32 @loop_config(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
