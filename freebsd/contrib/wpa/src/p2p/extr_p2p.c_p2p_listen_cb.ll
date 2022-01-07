; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_listen_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_listen_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Client discoverability remain-awake completed\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"Unexpected listen callback for freq=%u duration=%u (pending_listen_freq=%u)\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Starting Listen timeout(%u,%u) on freq=%u based on callback\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_listen_cb(%struct.p2p_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.p2p_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %9 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %14 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %13, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %16 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  br label %70

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %20 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %28 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %24, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %26, i32 %29)
  br label %70

31:                                               ; preds = %17
  %32 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %33 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %34 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %37 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %40 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %32, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %38, i32 %41)
  %43 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %44 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %43, i32 0, i32 4
  store i32 1, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %47 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %49 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %31
  %53 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %54 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %52, %31
  %58 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %59 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %60 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %63 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = add i32 %64, 20000
  %66 = call i32 @p2p_set_timeout(%struct.p2p_data* %58, i32 %61, i32 %65)
  br label %67

67:                                               ; preds = %57, %52
  %68 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %69 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %68, i32 0, i32 1
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %23, %12
  ret void
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, ...) #1

declare dso_local i32 @p2p_set_timeout(%struct.p2p_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
