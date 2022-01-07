; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_msgpack_is_container_finished.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_msgpack_is_container_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_stack = type { i32 }

@MSGPACK_CONTAINER_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucl_stack*)* @ucl_msgpack_is_container_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_msgpack_is_container_finished(%struct.ucl_stack* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ucl_stack*, align 8
  %4 = alloca i32, align 4
  store %struct.ucl_stack* %0, %struct.ucl_stack** %3, align 8
  %5 = load %struct.ucl_stack*, %struct.ucl_stack** %3, align 8
  %6 = icmp ne %struct.ucl_stack* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.ucl_stack*, %struct.ucl_stack** %3, align 8
  %10 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MSGPACK_CONTAINER_BIT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.ucl_stack*, %struct.ucl_stack** %3, align 8
  %17 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MSGPACK_CONTAINER_BIT, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %27

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %1
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %24
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
