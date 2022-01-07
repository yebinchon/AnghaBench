; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_outnet_comm_point_for_http.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_outnet_comm_point_for_http.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.outside_network = type { i32, i32, i32 }
%struct.sockaddr_storage = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"malloc failure\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"cannot setup https\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"error setting up http request\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.comm_point* @outnet_comm_point_for_http(%struct.outside_network* %0, i32* %1, i8* %2, %struct.sockaddr_storage* %3, i32 %4, i32 %5, i32 %6, i8* %7, i8* %8) #0 {
  %10 = alloca %struct.comm_point*, align 8
  %11 = alloca %struct.outside_network*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.sockaddr_storage*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.comm_point*, align 8
  %21 = alloca i32, align 4
  store %struct.outside_network* %0, %struct.outside_network** %11, align 8
  store i32* %1, i32** %12, align 8
  store i8* %2, i8** %13, align 8
  store %struct.sockaddr_storage* %3, %struct.sockaddr_storage** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  %22 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %14, align 8
  %23 = load i32, i32* %15, align 4
  %24 = load %struct.outside_network*, %struct.outside_network** %11, align 8
  %25 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @outnet_get_tcp_fd(%struct.sockaddr_storage* %22, i32 %23, i32 %26)
  store i32 %27, i32* %21, align 4
  %28 = load i32, i32* %21, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %9
  store %struct.comm_point* null, %struct.comm_point** %10, align 8
  br label %99

31:                                               ; preds = %9
  %32 = load i32, i32* %21, align 4
  %33 = call i32 @fd_set_nonblock(i32 %32)
  %34 = load i32, i32* %21, align 4
  %35 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %14, align 8
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @outnet_tcp_connect(i32 %34, %struct.sockaddr_storage* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  store %struct.comm_point* null, %struct.comm_point** %10, align 8
  br label %99

40:                                               ; preds = %31
  %41 = load %struct.outside_network*, %struct.outside_network** %11, align 8
  %42 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load %struct.outside_network*, %struct.outside_network** %11, align 8
  %47 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.comm_point* @comm_point_create_http_out(i32 %43, i32 65552, i32* %44, i8* %45, i32 %48)
  store %struct.comm_point* %49, %struct.comm_point** %20, align 8
  %50 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %51 = icmp ne %struct.comm_point* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %40
  %53 = call i32 @log_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* %21, align 4
  %55 = call i32 @close(i32 %54)
  store %struct.comm_point* null, %struct.comm_point** %10, align 8
  br label %99

56:                                               ; preds = %40
  %57 = load i32, i32* %15, align 4
  %58 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %59 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %62 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %14, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @memcpy(i32* %63, %struct.sockaddr_storage* %64, i32 %65)
  %67 = load i32, i32* %17, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %56
  %70 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %71 = load %struct.outside_network*, %struct.outside_network** %11, align 8
  %72 = load i32, i32* %21, align 4
  %73 = load i8*, i8** %18, align 8
  %74 = call i32 @setup_comm_ssl(%struct.comm_point* %70, %struct.outside_network* %71, i32 %72, i8* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %69
  %77 = call i32 @log_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %79 = call i32 @comm_point_delete(%struct.comm_point* %78)
  store %struct.comm_point* null, %struct.comm_point** %10, align 8
  br label %99

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %56
  %82 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %83 = load i32, i32* %21, align 4
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @comm_point_start_listening(%struct.comm_point* %82, i32 %83, i32 %84)
  %86 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %87 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %18, align 8
  %90 = load i8*, i8** %19, align 8
  %91 = call i32 @setup_http_request(i32 %88, i8* %89, i8* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %81
  %94 = call i32 @log_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %95 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  %96 = call i32 @comm_point_delete(%struct.comm_point* %95)
  store %struct.comm_point* null, %struct.comm_point** %10, align 8
  br label %99

97:                                               ; preds = %81
  %98 = load %struct.comm_point*, %struct.comm_point** %20, align 8
  store %struct.comm_point* %98, %struct.comm_point** %10, align 8
  br label %99

99:                                               ; preds = %97, %93, %76, %52, %39, %30
  %100 = load %struct.comm_point*, %struct.comm_point** %10, align 8
  ret %struct.comm_point* %100
}

declare dso_local i32 @outnet_get_tcp_fd(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @fd_set_nonblock(i32) #1

declare dso_local i32 @outnet_tcp_connect(i32, %struct.sockaddr_storage*, i32) #1

declare dso_local %struct.comm_point* @comm_point_create_http_out(i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_storage*, i32) #1

declare dso_local i32 @setup_comm_ssl(%struct.comm_point*, %struct.outside_network*, i32, i8*) #1

declare dso_local i32 @comm_point_delete(%struct.comm_point*) #1

declare dso_local i32 @comm_point_start_listening(%struct.comm_point*, i32, i32) #1

declare dso_local i32 @setup_http_request(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
