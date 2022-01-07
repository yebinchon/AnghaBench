; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_sockaddr_convert_to_un.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_sockaddr_convert_to_un.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_info = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_un = type { i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket_info*, %struct.sockaddr*, i32, %struct.sockaddr_un*, i32, i32*)* @sockaddr_convert_to_un to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sockaddr_convert_to_un(%struct.socket_info* %0, %struct.sockaddr* %1, i32 %2, %struct.sockaddr_un* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket_info*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_un*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.socket_info* %0, %struct.socket_info** %8, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.sockaddr_un* %3, %struct.sockaddr_un** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %14 = load %struct.sockaddr_un*, %struct.sockaddr_un** %11, align 8
  %15 = icmp ne %struct.sockaddr_un* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %49

17:                                               ; preds = %6
  %18 = load i32, i32* @AF_UNIX, align 4
  %19 = load %struct.sockaddr_un*, %struct.sockaddr_un** %11, align 8
  %20 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %46 [
    i32 131, label %24
  ]

24:                                               ; preds = %17
  %25 = load %struct.socket_info*, %struct.socket_info** %8, align 8
  %26 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %29 [
    i32 128, label %28
    i32 129, label %28
  ]

28:                                               ; preds = %24, %24
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  store i32 %30, i32* @errno, align 4
  store i32 -1, i32* %7, align 4
  br label %49

31:                                               ; preds = %28
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.socket_info*, %struct.socket_info** %8, align 8
  %36 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %37 = load %struct.sockaddr_un*, %struct.sockaddr_un** %11, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @convert_in_un_alloc(%struct.socket_info* %35, %struct.sockaddr* %36, %struct.sockaddr_un* %37, i32* %38)
  store i32 %39, i32* %7, align 4
  br label %49

40:                                               ; preds = %31
  %41 = load %struct.socket_info*, %struct.socket_info** %8, align 8
  %42 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %43 = load %struct.sockaddr_un*, %struct.sockaddr_un** %11, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @convert_in_un_remote(%struct.socket_info* %41, %struct.sockaddr* %42, %struct.sockaddr_un* %43, i32* %44)
  store i32 %45, i32* %7, align 4
  br label %49

46:                                               ; preds = %17
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %48, i32* @errno, align 4
  store i32 -1, i32* %7, align 4
  br label %49

49:                                               ; preds = %47, %40, %34, %29, %16
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @convert_in_un_alloc(%struct.socket_info*, %struct.sockaddr*, %struct.sockaddr_un*, i32*) #1

declare dso_local i32 @convert_in_un_remote(%struct.socket_info*, %struct.sockaddr*, %struct.sockaddr_un*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
