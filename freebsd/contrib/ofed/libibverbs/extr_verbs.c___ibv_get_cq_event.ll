; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c___ibv_get_cq_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c___ibv_get_cq_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_comp_channel = type { i32 }
%struct.ibv_cq = type { %struct.TYPE_3__*, i8* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ibv_cq*)* }
%struct.ibv_comp_event = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ibv_get_cq_event(%struct.ibv_comp_channel* %0, %struct.ibv_cq** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibv_comp_channel*, align 8
  %6 = alloca %struct.ibv_cq**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.ibv_comp_event, align 8
  store %struct.ibv_comp_channel* %0, %struct.ibv_comp_channel** %5, align 8
  store %struct.ibv_cq** %1, %struct.ibv_cq*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load %struct.ibv_comp_channel*, %struct.ibv_comp_channel** %5, align 8
  %10 = getelementptr inbounds %struct.ibv_comp_channel, %struct.ibv_comp_channel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @read(i32 %11, %struct.ibv_comp_event* %8, i32 8)
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 8
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %46

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ibv_comp_event, %struct.ibv_comp_event* %8, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ibv_cq*
  %20 = load %struct.ibv_cq**, %struct.ibv_cq*** %6, align 8
  store %struct.ibv_cq* %19, %struct.ibv_cq** %20, align 8
  %21 = load %struct.ibv_cq**, %struct.ibv_cq*** %6, align 8
  %22 = load %struct.ibv_cq*, %struct.ibv_cq** %21, align 8
  %23 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load i8**, i8*** %7, align 8
  store i8* %24, i8** %25, align 8
  %26 = load %struct.ibv_cq**, %struct.ibv_cq*** %6, align 8
  %27 = load %struct.ibv_cq*, %struct.ibv_cq** %26, align 8
  %28 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32 (%struct.ibv_cq*)*, i32 (%struct.ibv_cq*)** %31, align 8
  %33 = icmp ne i32 (%struct.ibv_cq*)* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %16
  %35 = load %struct.ibv_cq**, %struct.ibv_cq*** %6, align 8
  %36 = load %struct.ibv_cq*, %struct.ibv_cq** %35, align 8
  %37 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32 (%struct.ibv_cq*)*, i32 (%struct.ibv_cq*)** %40, align 8
  %42 = load %struct.ibv_cq**, %struct.ibv_cq*** %6, align 8
  %43 = load %struct.ibv_cq*, %struct.ibv_cq** %42, align 8
  %44 = call i32 %41(%struct.ibv_cq* %43)
  br label %45

45:                                               ; preds = %34, %16
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %15
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @read(i32, %struct.ibv_comp_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
