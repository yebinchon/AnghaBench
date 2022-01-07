; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-osf.c_open_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-osf.c_open_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.read_map_ctxt = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@RLD_CONTEXT_ADDRESS = common dso_local global i32 0, align 4
@LDR_NULL_MODULE = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.read_map_ctxt*)* @open_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_map(%struct.read_map_ctxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.read_map_ctxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__, align 4
  store %struct.read_map_ctxt* %0, %struct.read_map_ctxt** %3, align 8
  %8 = load i32, i32* @RLD_CONTEXT_ADDRESS, align 4
  %9 = bitcast i32* %4 to i8*
  %10 = call i64 @target_read_memory(i32 %8, i8* %9, i32 4)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = bitcast %struct.TYPE_2__* %7 to i8*
  %16 = call i64 @target_read_memory(i32 %14, i8* %15, i32 8)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %28

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.read_map_ctxt*, %struct.read_map_ctxt** %3, align 8
  %23 = getelementptr inbounds %struct.read_map_ctxt, %struct.read_map_ctxt* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.read_map_ctxt*, %struct.read_map_ctxt** %3, align 8
  %27 = getelementptr inbounds %struct.read_map_ctxt, %struct.read_map_ctxt* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  store i32 1, i32* %2, align 4
  br label %28

28:                                               ; preds = %19, %18, %12
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @target_read_memory(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
