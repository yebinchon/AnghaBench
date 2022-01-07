; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_msgpack_get_next_container.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_msgpack_get_next_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_stack = type { i32, %struct.TYPE_2__*, %struct.ucl_stack* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ucl_parser = type { %struct.TYPE_2__*, %struct.ucl_stack* }

@MSGPACK_CONTAINER_BIT = common dso_local global i32 0, align 4
@UCL_OBJECT = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ucl_stack* (%struct.ucl_parser*)* @ucl_msgpack_get_next_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ucl_stack* @ucl_msgpack_get_next_container(%struct.ucl_parser* %0) #0 {
  %2 = alloca %struct.ucl_stack*, align 8
  %3 = alloca %struct.ucl_parser*, align 8
  %4 = alloca %struct.ucl_stack*, align 8
  %5 = alloca i32, align 4
  store %struct.ucl_parser* %0, %struct.ucl_parser** %3, align 8
  store %struct.ucl_stack* null, %struct.ucl_stack** %4, align 8
  %6 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %7 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %6, i32 0, i32 1
  %8 = load %struct.ucl_stack*, %struct.ucl_stack** %7, align 8
  store %struct.ucl_stack* %8, %struct.ucl_stack** %4, align 8
  %9 = load %struct.ucl_stack*, %struct.ucl_stack** %4, align 8
  %10 = icmp eq %struct.ucl_stack* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.ucl_stack* null, %struct.ucl_stack** %2, align 8
  br label %52

12:                                               ; preds = %1
  %13 = load %struct.ucl_stack*, %struct.ucl_stack** %4, align 8
  %14 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MSGPACK_CONTAINER_BIT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %12
  %20 = load %struct.ucl_stack*, %struct.ucl_stack** %4, align 8
  %21 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MSGPACK_CONTAINER_BIT, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %19
  %29 = load %struct.ucl_stack*, %struct.ucl_stack** %4, align 8
  %30 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %29, i32 0, i32 2
  %31 = load %struct.ucl_stack*, %struct.ucl_stack** %30, align 8
  %32 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %33 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %32, i32 0, i32 1
  store %struct.ucl_stack* %31, %struct.ucl_stack** %33, align 8
  %34 = load %struct.ucl_stack*, %struct.ucl_stack** %4, align 8
  %35 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %38 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %37, i32 0, i32 0
  store %struct.TYPE_2__* %36, %struct.TYPE_2__** %38, align 8
  %39 = load %struct.ucl_stack*, %struct.ucl_stack** %4, align 8
  %40 = call i32 @free(%struct.ucl_stack* %39)
  %41 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %42 = call %struct.ucl_stack* @ucl_msgpack_get_next_container(%struct.ucl_parser* %41)
  store %struct.ucl_stack* %42, %struct.ucl_stack** %2, align 8
  br label %52

43:                                               ; preds = %19
  br label %44

44:                                               ; preds = %43, %12
  %45 = load %struct.ucl_stack*, %struct.ucl_stack** %4, align 8
  %46 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = icmp ne %struct.TYPE_2__* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.ucl_stack*, %struct.ucl_stack** %4, align 8
  store %struct.ucl_stack* %51, %struct.ucl_stack** %2, align 8
  br label %52

52:                                               ; preds = %44, %28, %11
  %53 = load %struct.ucl_stack*, %struct.ucl_stack** %2, align 8
  ret %struct.ucl_stack* %53
}

declare dso_local i32 @free(%struct.ucl_stack*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
