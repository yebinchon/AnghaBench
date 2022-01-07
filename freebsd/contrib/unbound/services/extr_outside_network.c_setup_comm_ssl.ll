; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_setup_comm_ssl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_setup_comm_ssl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32, i32 }
%struct.outside_network = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"cannot create SSL object\00", align 1
@comm_ssl_shake_write = common dso_local global i32 0, align 4
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@X509_CHECK_FLAG_NO_PARTIAL_WILDCARDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comm_point*, %struct.outside_network*, i32, i8*)* @setup_comm_ssl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_comm_ssl(%struct.comm_point* %0, %struct.outside_network* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comm_point*, align 8
  %7 = alloca %struct.outside_network*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.comm_point* %0, %struct.comm_point** %6, align 8
  store %struct.outside_network* %1, %struct.outside_network** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %10 = load %struct.outside_network*, %struct.outside_network** %7, align 8
  %11 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @outgoing_ssl_fd(i32 %12, i32 %13)
  %15 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %16 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %18 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = call i32 @log_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %28

23:                                               ; preds = %4
  %24 = load i32, i32* @comm_ssl_shake_write, align 4
  %25 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %26 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i8*, i8** %9, align 8
  store i32 1, i32* %5, align 4
  br label %28

28:                                               ; preds = %23, %21
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @outgoing_ssl_fd(i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
