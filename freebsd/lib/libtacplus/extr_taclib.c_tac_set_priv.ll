; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_tac_set_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_tac_set_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tac_handle = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@TAC_PRIV_LVL_MIN = common dso_local global i32 0, align 4
@TAC_PRIV_LVL_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Attempt to set invalid privilege level\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tac_set_priv(%struct.tac_handle* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tac_handle*, align 8
  %5 = alloca i32, align 4
  store %struct.tac_handle* %0, %struct.tac_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @TAC_PRIV_LVL_MIN, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @TAC_PRIV_LVL_MAX, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.tac_handle*, %struct.tac_handle** %4, align 8
  %15 = call i32 @generr(%struct.tac_handle* %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %23

16:                                               ; preds = %9
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.tac_handle*, %struct.tac_handle** %4, align 8
  %19 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %17, i32* %22, align 4
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %16, %13
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @generr(%struct.tac_handle*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
