; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_get_memory_packet_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_get_memory_packet_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_packet_config = type { i64, i64 }
%struct.remote_state = type { i64, i64 }

@MAX_REMOTE_PACKET_SIZE = common dso_local global i64 0, align 8
@MIN_REMOTE_PACKET_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.memory_packet_config*)* @get_memory_packet_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_memory_packet_size(%struct.memory_packet_config* %0) #0 {
  %2 = alloca %struct.memory_packet_config*, align 8
  %3 = alloca %struct.remote_state*, align 8
  %4 = alloca i64, align 8
  store %struct.memory_packet_config* %0, %struct.memory_packet_config** %2, align 8
  %5 = call %struct.remote_state* (...) @get_remote_state()
  store %struct.remote_state* %5, %struct.remote_state** %3, align 8
  %6 = load %struct.memory_packet_config*, %struct.memory_packet_config** %2, align 8
  %7 = getelementptr inbounds %struct.memory_packet_config, %struct.memory_packet_config* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.memory_packet_config*, %struct.memory_packet_config** %2, align 8
  %12 = getelementptr inbounds %struct.memory_packet_config, %struct.memory_packet_config* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i64 16384, i64* %4, align 8
  br label %20

16:                                               ; preds = %10
  %17 = load %struct.memory_packet_config*, %struct.memory_packet_config** %2, align 8
  %18 = getelementptr inbounds %struct.memory_packet_config, %struct.memory_packet_config* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %4, align 8
  br label %20

20:                                               ; preds = %16, %15
  br label %55

21:                                               ; preds = %1
  %22 = load %struct.remote_state*, %struct.remote_state** %3, align 8
  %23 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %4, align 8
  %25 = load %struct.memory_packet_config*, %struct.memory_packet_config** %2, align 8
  %26 = getelementptr inbounds %struct.memory_packet_config, %struct.memory_packet_config* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %21
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.memory_packet_config*, %struct.memory_packet_config** %2, align 8
  %32 = getelementptr inbounds %struct.memory_packet_config, %struct.memory_packet_config* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.memory_packet_config*, %struct.memory_packet_config** %2, align 8
  %37 = getelementptr inbounds %struct.memory_packet_config, %struct.memory_packet_config* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %4, align 8
  br label %39

39:                                               ; preds = %35, %29, %21
  %40 = load %struct.remote_state*, %struct.remote_state** %3, align 8
  %41 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.remote_state*, %struct.remote_state** %3, align 8
  %47 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.remote_state*, %struct.remote_state** %3, align 8
  %52 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %4, align 8
  br label %54

54:                                               ; preds = %50, %44, %39
  br label %55

55:                                               ; preds = %54, %20
  %56 = load i64, i64* %4, align 8
  %57 = icmp sgt i64 %56, 16384
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i64 16384, i64* %4, align 8
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i64, i64* %4, align 8
  %61 = icmp slt i64 %60, 16
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i64 16, i64* %4, align 8
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i64, i64* %4, align 8
  ret i64 %64
}

declare dso_local %struct.remote_state* @get_remote_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
