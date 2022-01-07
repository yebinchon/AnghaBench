; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udaddy.c_alloc_nodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udaddy.c_alloc_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@connections = common dso_local global i32 0, align 4
@test = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [50 x i8] c"udaddy: unable to allocate memory for test nodes\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@dst_addr = common dso_local global i64 0, align 8
@hints = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @alloc_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_nodes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @connections, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 8, %5
  %7 = trunc i64 %6 to i32
  %8 = call %struct.TYPE_8__* @malloc(i32 %7)
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @test, i32 0, i32 0), align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @test, i32 0, i32 0), align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %0
  %12 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %1, align 4
  br label %74

15:                                               ; preds = %0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @test, i32 0, i32 0), align 8
  %17 = load i32, i32* @connections, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 8, %18
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memset(%struct.TYPE_8__* %16, i32 0, i32 %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %53, %15
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @connections, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @test, i32 0, i32 0), align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32 %27, i32* %32, align 4
  %33 = load i64, i64* @dst_addr, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %26
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @test, i32 0, i32 1), align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @test, i32 0, i32 0), align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @test, i32 0, i32 0), align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %44
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hints, i32 0, i32 0), align 4
  %47 = call i32 @rdma_create_id(i32 %36, i32* %41, %struct.TYPE_8__* %45, i32 %46)
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* %2, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %35
  br label %57

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51, %26
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %22

56:                                               ; preds = %22
  store i32 0, i32* %1, align 4
  br label %74

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %62, %57
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %3, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @test, i32 0, i32 0), align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @rdma_destroy_id(i32 %68)
  br label %58

70:                                               ; preds = %58
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @test, i32 0, i32 0), align 8
  %72 = call i32 @free(%struct.TYPE_8__* %71)
  %73 = load i32, i32* %2, align 4
  store i32 %73, i32* %1, align 4
  br label %74

74:                                               ; preds = %70, %56, %11
  %75 = load i32, i32* %1, align 4
  ret i32 %75
}

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @rdma_create_id(i32, i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @rdma_destroy_id(i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
