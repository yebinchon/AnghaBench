; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_complete_beio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_complete_beio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_block_io = type { i32 (%struct.ctl_be_block_io*)*, %union.ctl_io* }
%union.ctl_io = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_be_block_io*)* @ctl_complete_beio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_complete_beio(%struct.ctl_be_block_io* %0) #0 {
  %2 = alloca %struct.ctl_be_block_io*, align 8
  %3 = alloca %union.ctl_io*, align 8
  store %struct.ctl_be_block_io* %0, %struct.ctl_be_block_io** %2, align 8
  %4 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %2, align 8
  %5 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %4, i32 0, i32 1
  %6 = load %union.ctl_io*, %union.ctl_io** %5, align 8
  store %union.ctl_io* %6, %union.ctl_io** %3, align 8
  %7 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %2, align 8
  %8 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %7, i32 0, i32 0
  %9 = load i32 (%struct.ctl_be_block_io*)*, i32 (%struct.ctl_be_block_io*)** %8, align 8
  %10 = icmp ne i32 (%struct.ctl_be_block_io*)* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %2, align 8
  %13 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %12, i32 0, i32 0
  %14 = load i32 (%struct.ctl_be_block_io*)*, i32 (%struct.ctl_be_block_io*)** %13, align 8
  %15 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %2, align 8
  %16 = call i32 %14(%struct.ctl_be_block_io* %15)
  br label %22

17:                                               ; preds = %1
  %18 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %2, align 8
  %19 = call i32 @ctl_free_beio(%struct.ctl_be_block_io* %18)
  %20 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %21 = call i32 @ctl_data_submit_done(%union.ctl_io* %20)
  br label %22

22:                                               ; preds = %17, %11
  ret void
}

declare dso_local i32 @ctl_free_beio(%struct.ctl_be_block_io*) #1

declare dso_local i32 @ctl_data_submit_done(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
