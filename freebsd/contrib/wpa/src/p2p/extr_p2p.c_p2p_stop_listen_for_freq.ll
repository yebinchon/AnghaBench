; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_stop_listen_for_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_stop_listen_for_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 (i32)* }

@.str = private unnamed_addr constant [62 x i8] c"Skip stop_listen since we are on correct channel for response\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Clear drv_in_listen (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_stop_listen_for_freq(%struct.p2p_data* %0, i32 %1) #0 {
  %3 = alloca %struct.p2p_data*, align 8
  %4 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %9 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %7
  %14 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %15 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %20 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %19, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %56

21:                                               ; preds = %13, %7, %2
  %22 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %23 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %28 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %30 = call i32 @p2p_clear_timeout(%struct.p2p_data* %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %33 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %38 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %39 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %43 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %44

44:                                               ; preds = %36, %31
  %45 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %46 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32 (i32)*, i32 (i32)** %48, align 8
  %50 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %51 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 %49(i32 %54)
  br label %56

56:                                               ; preds = %44, %18
  ret void
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, ...) #1

declare dso_local i32 @p2p_clear_timeout(%struct.p2p_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
