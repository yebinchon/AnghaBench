; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_setup_tcp_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_setup_tcp_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i64, i32, i32, i32, i64, i32, i64, i32 }

@comm_tcp = common dso_local global i64 0, align 8
@TCP_QUERY_TIMEOUT_MINIMUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comm_point*, i32, i32, i32)* @setup_tcp_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_tcp_handler(%struct.comm_point* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.comm_point*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comm_point* %0, %struct.comm_point** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %11 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @comm_tcp, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @log_assert(i32 %15)
  %17 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %18 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, -1
  %21 = zext i1 %20 to i32
  %22 = call i32 @log_assert(i32 %21)
  %23 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %24 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @sldns_buffer_clear(i32 %25)
  %27 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %28 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %27, i32 0, i32 2
  store i32 1, i32* %28, align 4
  %29 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %30 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %31, 100
  %33 = load i32, i32* %8, align 4
  %34 = sdiv i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 50
  br i1 %36, label %37, label %45

37:                                               ; preds = %4
  %38 = load i32, i32* %9, align 4
  %39 = icmp sle i32 %38, 65
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %42 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = sdiv i32 %43, 100
  store i32 %44, i32* %42, align 8
  br label %64

45:                                               ; preds = %37, %4
  %46 = load i32, i32* %9, align 4
  %47 = icmp sgt i32 %46, 65
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = icmp sle i32 %49, 80
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %53 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = sdiv i32 %54, 500
  store i32 %55, i32* %53, align 8
  br label %63

56:                                               ; preds = %48, %45
  %57 = load i32, i32* %9, align 4
  %58 = icmp sgt i32 %57, 80
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %61 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %60, i32 0, i32 3
  store i32 0, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %51
  br label %64

64:                                               ; preds = %63, %40
  %65 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %68 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @TCP_QUERY_TIMEOUT_MINIMUM, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* @TCP_QUERY_TIMEOUT_MINIMUM, align 4
  br label %78

74:                                               ; preds = %64
  %75 = load %struct.comm_point*, %struct.comm_point** %5, align 8
  %76 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  br label %78

78:                                               ; preds = %74, %72
  %79 = phi i32 [ %73, %72 ], [ %77, %74 ]
  %80 = call i32 @comm_point_start_listening(%struct.comm_point* %65, i32 %66, i32 %79)
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @sldns_buffer_clear(i32) #1

declare dso_local i32 @comm_point_start_listening(%struct.comm_point*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
