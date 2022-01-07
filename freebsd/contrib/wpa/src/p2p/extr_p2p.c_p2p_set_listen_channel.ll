; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_set_listen_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_set_listen_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i64, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [81 x i8] c"Listen channel was previously configured - do not override based on optimization\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Set Listen channel: reg_class %u channel %u\00", align 1
@P2P_IDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Defer setting listen channel\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_set_listen_channel(%struct.p2p_data* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.p2p_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* %8, align 8
  %12 = call i64 @p2p_channel_to_freq(i64 %10, i64 %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %67

15:                                               ; preds = %4
  %16 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %17 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load i64, i64* %9, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %27 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %26, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %67

28:                                               ; preds = %22, %15
  %29 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %30, i64 %31)
  %33 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %34 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @P2P_IDLE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %28
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %41 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %40, i32 0, i32 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i64 %39, i64* %43, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %46 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %45, i32 0, i32 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i64 %44, i64* %48, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %51 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %50, i32 0, i32 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 %49, i64* %53, align 8
  br label %66

54:                                               ; preds = %28
  %55 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %56 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %59 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %58, i32 0, i32 3
  store i64 %57, i64* %59, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %62 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %65 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %54, %38
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %25, %14
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @p2p_channel_to_freq(i64, i64) #1

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
