; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_set_no_go_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_set_no_go_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.wpa_freq_range* }
%struct.wpa_freq_range = type { i32 }
%struct.wpa_freq_range_list = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Updated no GO chan list\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_set_no_go_freq(%struct.p2p_data* %0, %struct.wpa_freq_range_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p2p_data*, align 8
  %5 = alloca %struct.wpa_freq_range_list*, align 8
  %6 = alloca %struct.wpa_freq_range*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %4, align 8
  store %struct.wpa_freq_range_list* %1, %struct.wpa_freq_range_list** %5, align 8
  %7 = load %struct.wpa_freq_range_list*, %struct.wpa_freq_range_list** %5, align 8
  %8 = icmp eq %struct.wpa_freq_range_list* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.wpa_freq_range_list*, %struct.wpa_freq_range_list** %5, align 8
  %11 = getelementptr inbounds %struct.wpa_freq_range_list, %struct.wpa_freq_range_list* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %9, %2
  %15 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %16 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.wpa_freq_range*, %struct.wpa_freq_range** %17, align 8
  %19 = call i32 @os_free(%struct.wpa_freq_range* %18)
  %20 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %21 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store %struct.wpa_freq_range* null, %struct.wpa_freq_range** %22, align 8
  %23 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %24 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  store i32 0, i32* %3, align 4
  br label %63

26:                                               ; preds = %9
  %27 = load %struct.wpa_freq_range_list*, %struct.wpa_freq_range_list** %5, align 8
  %28 = getelementptr inbounds %struct.wpa_freq_range_list, %struct.wpa_freq_range_list* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.wpa_freq_range* @os_calloc(i32 %29, i32 4)
  store %struct.wpa_freq_range* %30, %struct.wpa_freq_range** %6, align 8
  %31 = load %struct.wpa_freq_range*, %struct.wpa_freq_range** %6, align 8
  %32 = icmp eq %struct.wpa_freq_range* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %63

34:                                               ; preds = %26
  %35 = load %struct.wpa_freq_range*, %struct.wpa_freq_range** %6, align 8
  %36 = load %struct.wpa_freq_range_list*, %struct.wpa_freq_range_list** %5, align 8
  %37 = getelementptr inbounds %struct.wpa_freq_range_list, %struct.wpa_freq_range_list* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.wpa_freq_range_list*, %struct.wpa_freq_range_list** %5, align 8
  %40 = getelementptr inbounds %struct.wpa_freq_range_list, %struct.wpa_freq_range_list* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = call i32 @os_memcpy(%struct.wpa_freq_range* %35, i32 %38, i32 %44)
  %46 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %47 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load %struct.wpa_freq_range*, %struct.wpa_freq_range** %48, align 8
  %50 = call i32 @os_free(%struct.wpa_freq_range* %49)
  %51 = load %struct.wpa_freq_range*, %struct.wpa_freq_range** %6, align 8
  %52 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %53 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store %struct.wpa_freq_range* %51, %struct.wpa_freq_range** %54, align 8
  %55 = load %struct.wpa_freq_range_list*, %struct.wpa_freq_range_list** %5, align 8
  %56 = getelementptr inbounds %struct.wpa_freq_range_list, %struct.wpa_freq_range_list* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %59 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %62 = call i32 @p2p_dbg(%struct.p2p_data* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %34, %33, %14
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @os_free(%struct.wpa_freq_range*) #1

declare dso_local %struct.wpa_freq_range* @os_calloc(i32, i32) #1

declare dso_local i32 @os_memcpy(%struct.wpa_freq_range*, i32, i32) #1

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
