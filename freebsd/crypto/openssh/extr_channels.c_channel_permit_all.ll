; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_permit_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_permit_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.permission_set = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @channel_permit_all(%struct.ssh* %0, i32 %1) #0 {
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.permission_set*, align 8
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ssh*, %struct.ssh** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.permission_set* @permission_set_get(%struct.ssh* %6, i32 %7)
  store %struct.permission_set* %8, %struct.permission_set** %5, align 8
  %9 = load %struct.permission_set*, %struct.permission_set** %5, align 8
  %10 = getelementptr inbounds %struct.permission_set, %struct.permission_set* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.permission_set*, %struct.permission_set** %5, align 8
  %15 = getelementptr inbounds %struct.permission_set, %struct.permission_set* %14, i32 0, i32 1
  store i32 1, i32* %15, align 8
  br label %16

16:                                               ; preds = %13, %2
  ret void
}

declare dso_local %struct.permission_set* @permission_set_get(%struct.ssh*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
