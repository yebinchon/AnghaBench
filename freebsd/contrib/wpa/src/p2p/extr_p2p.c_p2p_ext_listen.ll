; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_ext_listen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_ext_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [62 x i8] c"Invalid Extended Listen Timing request: period=%u interval=%u\00", align 1
@p2p_ext_listen_timeout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Disabling Extended Listen Timing\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Enabling Extended Listen Timing: period %u msec, interval %u msec\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_ext_listen(%struct.p2p_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.p2p_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ugt i32 %8, 65535
  br i1 %9, label %29, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp ugt i32 %11, 65535
  br i1 %12, label %29, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp ugt i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %6, align 4
  %25 = icmp ugt i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26, %20, %13, %10, %3
  %30 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %30, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  store i32 -1, i32* %4, align 4
  br label %76

34:                                               ; preds = %26, %23
  %35 = load i32, i32* @p2p_ext_listen_timeout, align 4
  %36 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %37 = call i32 @eloop_cancel_timeout(i32 %35, %struct.p2p_data* %36, i32* null)
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %42 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %44 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  %45 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %46 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  store i32 0, i32* %4, align 4
  br label %76

47:                                               ; preds = %34
  %48 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %48, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %54 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %57 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %7, align 4
  %59 = udiv i32 %58, 1000
  %60 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %61 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %7, align 4
  %63 = urem i32 %62, 1000
  %64 = mul i32 %63, 1000
  %65 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %66 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %68 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %71 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @p2p_ext_listen_timeout, align 4
  %74 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %75 = call i32 @eloop_register_timeout(i32 %69, i32 %72, i32 %73, %struct.p2p_data* %74, i32* null)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %47, %40, %29
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, ...) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.p2p_data*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.p2p_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
