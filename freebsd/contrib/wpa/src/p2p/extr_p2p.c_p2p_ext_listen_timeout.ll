; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_ext_listen_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_ext_listen_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i64, i64, i64, i32, i32, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i64 (i32)* }

@P2P_PENDING_PD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Operation in progress - skip Extended Listen timeout (%s)\00", align 1
@P2P_LISTEN_ONLY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [70 x i8] c"Previous Extended Listen operation had not been completed - try again\00", align 1
@P2P_IDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"Skip Extended Listen timeout in active state (%s)\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Extended Listen timeout\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"Failed to start Listen state for Extended Listen Timing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @p2p_ext_listen_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_ext_listen_timeout(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.p2p_data*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.p2p_data*
  store %struct.p2p_data* %7, %struct.p2p_data** %5, align 8
  %8 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %9 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %8, i32 0, i32 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %14 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %17 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %20 = call i32 @eloop_register_timeout(i32 %15, i32 %18, void (i8*, i8*)* @p2p_ext_listen_timeout, %struct.p2p_data* %19, i32* null)
  br label %21

21:                                               ; preds = %12, %2
  %22 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %23 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %22, i32 0, i32 5
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64 (i32)*, i64 (i32)** %25, align 8
  %27 = icmp ne i64 (i32)* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %21
  %29 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %30 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %29, i32 0, i32 5
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64 (i32)*, i64 (i32)** %32, align 8
  %34 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %35 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %34, i32 0, i32 5
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 %33(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %28, %21
  %42 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %43 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @P2P_PENDING_PD, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %49 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47, %28
  %53 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %54 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %55 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @p2p_state_txt(i64 %56)
  %58 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %53, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %107

59:                                               ; preds = %47, %41
  %60 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %61 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @P2P_LISTEN_ONLY, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %67 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %72 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %71, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %74 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %73, i32 0, i32 3
  store i32 0, i32* %74, align 8
  %75 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %76 = load i64, i64* @P2P_IDLE, align 8
  %77 = call i32 @p2p_set_state(%struct.p2p_data* %75, i64 %76)
  br label %78

78:                                               ; preds = %70, %65, %59
  %79 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %80 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @P2P_IDLE, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %86 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %87 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @p2p_state_txt(i64 %88)
  %90 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %85, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %107

91:                                               ; preds = %78
  %92 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %93 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %92, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %94 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %95 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %94, i32 0, i32 3
  store i32 1, i32* %95, align 8
  %96 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %97 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %98 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @p2p_listen(%struct.p2p_data* %96, i32 %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %91
  %103 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %104 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %103, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  %105 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %106 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %105, i32 0, i32 3
  store i32 0, i32* %106, align 8
  br label %107

107:                                              ; preds = %52, %84, %102, %91
  ret void
}

declare dso_local i32 @eloop_register_timeout(i32, i32, void (i8*, i8*)*, %struct.p2p_data*, i32*) #1

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, ...) #1

declare dso_local i32 @p2p_state_txt(i64) #1

declare dso_local i32 @p2p_set_state(%struct.p2p_data*, i64) #1

declare dso_local i64 @p2p_listen(%struct.p2p_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
