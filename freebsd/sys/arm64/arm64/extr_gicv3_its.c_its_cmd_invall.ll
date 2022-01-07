; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_cmd_invall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_cmd_invall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_col = type { i32 }
%struct.its_cmd_desc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.its_col* }

@ITS_CMD_INVALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.its_col*)* @its_cmd_invall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @its_cmd_invall(i32 %0, %struct.its_col* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.its_col*, align 8
  %5 = alloca %struct.its_cmd_desc, align 8
  store i32 %0, i32* %3, align 4
  store %struct.its_col* %1, %struct.its_col** %4, align 8
  %6 = load i32, i32* @ITS_CMD_INVALL, align 4
  %7 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %5, i32 0, i32 1
  store i32 %6, i32* %7, align 8
  %8 = load %struct.its_col*, %struct.its_col** %4, align 8
  %9 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %5, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.its_col* %8, %struct.its_col** %10, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @its_cmd_send(i32 %11, %struct.its_cmd_desc* %5)
  ret void
}

declare dso_local i32 @its_cmd_send(i32, %struct.its_cmd_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
