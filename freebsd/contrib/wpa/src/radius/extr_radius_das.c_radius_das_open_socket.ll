; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_das.c_radius_das_open_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_das.c_radius_das_open_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"RADIUS DAS: socket: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"RADIUS DAS: bind: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @radius_das_open_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radius_das_open_socket(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @PF_INET, align 4
  %7 = load i32, i32* @SOCK_DGRAM, align 4
  %8 = call i32 @socket(i32 %6, i32 %7, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @MSG_INFO, align 4
  %13 = load i32, i32* @errno, align 4
  %14 = call i32 @strerror(i32 %13)
  %15 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 -1, i32* %2, align 4
  br label %36

16:                                               ; preds = %1
  %17 = call i32 @os_memset(%struct.sockaddr_in* %5, i32 0, i32 8)
  %18 = load i32, i32* @AF_INET, align 4
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @htons(i32 %20)
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %25 = call i64 @bind(i32 %23, %struct.sockaddr* %24, i32 8)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %16
  %28 = load i32, i32* @MSG_INFO, align 4
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 @wpa_printf(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @close(i32 %32)
  store i32 -1, i32* %2, align 4
  br label %36

34:                                               ; preds = %16
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %27, %11
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @os_memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
