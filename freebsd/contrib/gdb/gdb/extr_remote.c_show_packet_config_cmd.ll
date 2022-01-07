; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_show_packet_config_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_show_packet_config_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_config = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"internal-error\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"Support for remote protocol `%s' (%s) packet is auto-detected, currently %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"Support for remote protocol `%s' (%s) packet is currently %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packet_config*)* @show_packet_config_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_packet_config_cmd(%struct.packet_config* %0) #0 {
  %2 = alloca %struct.packet_config*, align 8
  %3 = alloca i8*, align 8
  store %struct.packet_config* %0, %struct.packet_config** %2, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = load %struct.packet_config*, %struct.packet_config** %2, align 8
  %5 = getelementptr inbounds %struct.packet_config, %struct.packet_config* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %10 [
    i32 129, label %7
    i32 130, label %8
    i32 128, label %9
  ]

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %10

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %10

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %10

10:                                               ; preds = %1, %9, %8, %7
  %11 = load %struct.packet_config*, %struct.packet_config** %2, align 8
  %12 = getelementptr inbounds %struct.packet_config, %struct.packet_config* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %32 [
    i32 133, label %14
    i32 131, label %23
    i32 132, label %23
  ]

14:                                               ; preds = %10
  %15 = load %struct.packet_config*, %struct.packet_config** %2, align 8
  %16 = getelementptr inbounds %struct.packet_config, %struct.packet_config* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.packet_config*, %struct.packet_config** %2, align 8
  %19 = getelementptr inbounds %struct.packet_config, %struct.packet_config* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @printf_filtered(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i32 %17, i32 %20, i8* %21)
  br label %32

23:                                               ; preds = %10, %10
  %24 = load %struct.packet_config*, %struct.packet_config** %2, align 8
  %25 = getelementptr inbounds %struct.packet_config, %struct.packet_config* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.packet_config*, %struct.packet_config** %2, align 8
  %28 = getelementptr inbounds %struct.packet_config, %struct.packet_config* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @printf_filtered(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 %26, i32 %29, i8* %30)
  br label %32

32:                                               ; preds = %10, %23, %14
  ret void
}

declare dso_local i32 @printf_filtered(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
