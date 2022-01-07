; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_outnet_comm_point_for_udp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_outnet_comm_point_for_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32 }
%struct.outside_network = type { i32, i32 }
%struct.sockaddr_storage = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"malloc failure\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.comm_point* @outnet_comm_point_for_udp(%struct.outside_network* %0, i32* %1, i8* %2, %struct.sockaddr_storage* %3, i32 %4) #0 {
  %6 = alloca %struct.comm_point*, align 8
  %7 = alloca %struct.outside_network*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sockaddr_storage*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.comm_point*, align 8
  %13 = alloca i32, align 4
  store %struct.outside_network* %0, %struct.outside_network** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.sockaddr_storage* %3, %struct.sockaddr_storage** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.outside_network*, %struct.outside_network** %7, align 8
  %15 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %10, align 8
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @fd_for_dest(%struct.outside_network* %14, %struct.sockaddr_storage* %15, i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store %struct.comm_point* null, %struct.comm_point** %6, align 8
  br label %40

21:                                               ; preds = %5
  %22 = load %struct.outside_network*, %struct.outside_network** %7, align 8
  %23 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load %struct.outside_network*, %struct.outside_network** %7, align 8
  %27 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call %struct.comm_point* @comm_point_create_udp(i32 %24, i32 %25, i32 %28, i32* %29, i8* %30)
  store %struct.comm_point* %31, %struct.comm_point** %12, align 8
  %32 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  %33 = icmp ne %struct.comm_point* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %21
  %35 = call i32 @log_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @close(i32 %36)
  store %struct.comm_point* null, %struct.comm_point** %6, align 8
  br label %40

38:                                               ; preds = %21
  %39 = load %struct.comm_point*, %struct.comm_point** %12, align 8
  store %struct.comm_point* %39, %struct.comm_point** %6, align 8
  br label %40

40:                                               ; preds = %38, %34, %20
  %41 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  ret %struct.comm_point* %41
}

declare dso_local i32 @fd_for_dest(%struct.outside_network*, %struct.sockaddr_storage*, i32) #1

declare dso_local %struct.comm_point* @comm_point_create_udp(i32, i32, i32, i32*, i8*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
