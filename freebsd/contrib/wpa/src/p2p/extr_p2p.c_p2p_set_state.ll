; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_set_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"State %s -> %s\00", align 1
@P2P_IDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Apply change in listen channel\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_set_state(%struct.p2p_data* %0, i32 %1) #0 {
  %3 = alloca %struct.p2p_data*, align 8
  %4 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %6 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %7 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @p2p_state_txt(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @p2p_state_txt(i32 %10)
  %12 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %15 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @P2P_IDLE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %2
  %20 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %21 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %19
  %25 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %26 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %28 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %31 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i64 %29, i64* %33, align 8
  %34 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %35 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %38 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i64 %36, i64* %40, align 8
  %41 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %42 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %44 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %24, %19, %2
  ret void
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, ...) #1

declare dso_local i32 @p2p_state_txt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
