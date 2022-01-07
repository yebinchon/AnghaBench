; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_sockaddr_convert_from_un.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_sockaddr_convert_from_un.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_info = type { i32 }
%struct.sockaddr_un = type { i32 }
%struct.sockaddr = type { i32 }

@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket_info*, %struct.sockaddr_un*, i64, i32, %struct.sockaddr*, i64*)* @sockaddr_convert_from_un to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sockaddr_convert_from_un(%struct.socket_info* %0, %struct.sockaddr_un* %1, i64 %2, i32 %3, %struct.sockaddr* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket_info*, align 8
  %9 = alloca %struct.sockaddr_un*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i64*, align 8
  store %struct.socket_info* %0, %struct.socket_info** %8, align 8
  store %struct.sockaddr_un* %1, %struct.sockaddr_un** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.sockaddr* %4, %struct.sockaddr** %12, align 8
  store i64* %5, i64** %13, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %15 = icmp eq %struct.sockaddr* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %6
  %17 = load i64*, i64** %13, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %6
  store i32 0, i32* %7, align 4
  br label %42

20:                                               ; preds = %16
  %21 = load i64, i64* %10, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i64*, i64** %13, align 8
  store i64 0, i64* %24, align 8
  store i32 0, i32* %7, align 4
  br label %42

25:                                               ; preds = %20
  %26 = load i32, i32* %11, align 4
  switch i32 %26, label %39 [
    i32 131, label %27
  ]

27:                                               ; preds = %25
  %28 = load %struct.socket_info*, %struct.socket_info** %8, align 8
  %29 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %32 [
    i32 128, label %31
    i32 129, label %31
  ]

31:                                               ; preds = %27, %27
  br label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  store i32 %33, i32* @errno, align 4
  store i32 -1, i32* %7, align 4
  br label %42

34:                                               ; preds = %31
  %35 = load %struct.sockaddr_un*, %struct.sockaddr_un** %9, align 8
  %36 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %37 = load i64*, i64** %13, align 8
  %38 = call i32 @convert_un_in(%struct.sockaddr_un* %35, %struct.sockaddr* %36, i64* %37)
  store i32 %38, i32* %7, align 4
  br label %42

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %41, i32* @errno, align 4
  store i32 -1, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %34, %32, %23, %19
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @convert_un_in(%struct.sockaddr_un*, %struct.sockaddr*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
