; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_update_packet_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_update_packet_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_config = type { i32, i32 }

@PACKET_ENABLE = common dso_local global i32 0, align 4
@PACKET_DISABLE = common dso_local global i32 0, align 4
@PACKET_SUPPORT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packet_config*)* @update_packet_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_packet_config(%struct.packet_config* %0) #0 {
  %2 = alloca %struct.packet_config*, align 8
  store %struct.packet_config* %0, %struct.packet_config** %2, align 8
  %3 = load %struct.packet_config*, %struct.packet_config** %2, align 8
  %4 = getelementptr inbounds %struct.packet_config, %struct.packet_config* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %18 [
    i32 128, label %6
    i32 129, label %10
    i32 130, label %14
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @PACKET_ENABLE, align 4
  %8 = load %struct.packet_config*, %struct.packet_config** %2, align 8
  %9 = getelementptr inbounds %struct.packet_config, %struct.packet_config* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  br label %18

10:                                               ; preds = %1
  %11 = load i32, i32* @PACKET_DISABLE, align 4
  %12 = load %struct.packet_config*, %struct.packet_config** %2, align 8
  %13 = getelementptr inbounds %struct.packet_config, %struct.packet_config* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  br label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @PACKET_SUPPORT_UNKNOWN, align 4
  %16 = load %struct.packet_config*, %struct.packet_config** %2, align 8
  %17 = getelementptr inbounds %struct.packet_config, %struct.packet_config* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %1, %14, %10, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
