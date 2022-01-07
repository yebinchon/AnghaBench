; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_compat-1_0.c___ibv_get_cq_event_1_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_compat-1_0.c___ibv_get_cq_event_1_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_comp_channel = type { i32 }
%struct.ibv_cq_1_0 = type { i8* }
%struct.ibv_cq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ibv_get_cq_event_1_0(%struct.ibv_comp_channel* %0, %struct.ibv_cq_1_0** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibv_comp_channel*, align 8
  %6 = alloca %struct.ibv_cq_1_0**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.ibv_cq*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.ibv_comp_channel* %0, %struct.ibv_comp_channel** %5, align 8
  store %struct.ibv_cq_1_0** %1, %struct.ibv_cq_1_0*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load %struct.ibv_comp_channel*, %struct.ibv_comp_channel** %5, align 8
  %12 = call i32 @ibv_get_cq_event(%struct.ibv_comp_channel* %11, %struct.ibv_cq** %8, i8** %9)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %26

17:                                               ; preds = %3
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.ibv_cq_1_0*
  %20 = load %struct.ibv_cq_1_0**, %struct.ibv_cq_1_0*** %6, align 8
  store %struct.ibv_cq_1_0* %19, %struct.ibv_cq_1_0** %20, align 8
  %21 = load %struct.ibv_cq_1_0**, %struct.ibv_cq_1_0*** %6, align 8
  %22 = load %struct.ibv_cq_1_0*, %struct.ibv_cq_1_0** %21, align 8
  %23 = getelementptr inbounds %struct.ibv_cq_1_0, %struct.ibv_cq_1_0* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8**, i8*** %7, align 8
  store i8* %24, i8** %25, align 8
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %17, %15
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @ibv_get_cq_event(%struct.ibv_comp_channel*, %struct.ibv_cq**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
