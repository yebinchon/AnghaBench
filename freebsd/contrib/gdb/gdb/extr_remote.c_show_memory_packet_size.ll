; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_show_memory_packet_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_show_memory_packet_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_packet_config = type { i64, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"The %s is %ld. \00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Packets are fixed at %ld bytes.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Packets are limited to %ld bytes.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.memory_packet_config*)* @show_memory_packet_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_memory_packet_size(%struct.memory_packet_config* %0) #0 {
  %2 = alloca %struct.memory_packet_config*, align 8
  store %struct.memory_packet_config* %0, %struct.memory_packet_config** %2, align 8
  %3 = load %struct.memory_packet_config*, %struct.memory_packet_config** %2, align 8
  %4 = getelementptr inbounds %struct.memory_packet_config, %struct.memory_packet_config* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.memory_packet_config*, %struct.memory_packet_config** %2, align 8
  %7 = getelementptr inbounds %struct.memory_packet_config, %struct.memory_packet_config* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 (i8*, i32, ...) @printf_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %8)
  %10 = load %struct.memory_packet_config*, %struct.memory_packet_config** %2, align 8
  %11 = getelementptr inbounds %struct.memory_packet_config, %struct.memory_packet_config* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.memory_packet_config*, %struct.memory_packet_config** %2, align 8
  %16 = call i32 @get_memory_packet_size(%struct.memory_packet_config* %15)
  %17 = call i32 (i8*, i32, ...) @printf_filtered(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.memory_packet_config*, %struct.memory_packet_config** %2, align 8
  %20 = call i32 @get_memory_packet_size(%struct.memory_packet_config* %19)
  %21 = call i32 (i8*, i32, ...) @printf_filtered(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %14
  ret void
}

declare dso_local i32 @printf_filtered(i8*, i32, ...) #1

declare dso_local i32 @get_memory_packet_size(%struct.memory_packet_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
