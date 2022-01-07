; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type opaque
%struct.sockaddr_un = type { i32 }
%struct.socket_info = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swrap_bind(i32 %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_un, align 4
  %10 = alloca %struct.socket_info*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.socket_info* @find_socket_info(i32 %11)
  store %struct.socket_info* %12, %struct.socket_info** %10, align 8
  %13 = load %struct.socket_info*, %struct.socket_info** %10, align 8
  %14 = icmp ne %struct.socket_info* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @real_bind(i32 %16, %struct.sockaddr* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  br label %52

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.socket_info*, %struct.socket_info** %10, align 8
  %23 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @sockaddr_dup(%struct.sockaddr* %24, i32 %25)
  %27 = load %struct.socket_info*, %struct.socket_info** %10, align 8
  %28 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.socket_info*, %struct.socket_info** %10, align 8
  %30 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.socket_info*, %struct.socket_info** %10, align 8
  %33 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %32, i32 0, i32 2
  %34 = call i32 @sockaddr_convert_to_un(%struct.socket_info* %29, %struct.sockaddr* %30, i32 %31, %struct.sockaddr_un* %9, i32 1, i32* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %52

38:                                               ; preds = %20
  %39 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %9, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @unlink(i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = bitcast %struct.sockaddr_un* %9 to %struct.sockaddr*
  %44 = call i32 @real_bind(i32 %42, %struct.sockaddr* %43, i32 4)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load %struct.socket_info*, %struct.socket_info** %10, align 8
  %49 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %38
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %37, %15
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.socket_info* @find_socket_info(i32) #1

declare dso_local i32 @real_bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @sockaddr_dup(%struct.sockaddr*, i32) #1

declare dso_local i32 @sockaddr_convert_to_un(%struct.socket_info*, %struct.sockaddr*, i32, %struct.sockaddr_un*, i32, i32*) #1

declare dso_local i32 @unlink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
