; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_neigh.c_create_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_neigh.c_create_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.get_neigh_handler = type { i32, i32, i32 }
%struct.skt = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PORT_DISCARD = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.get_neigh_handler*, %struct.skt*, i32*)* @create_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_socket(%struct.get_neigh_handler* %0, %struct.skt* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.get_neigh_handler*, align 8
  %6 = alloca %struct.skt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.skt, align 4
  %10 = alloca i32, align 4
  store %struct.get_neigh_handler* %0, %struct.get_neigh_handler** %5, align 8
  store %struct.skt* %1, %struct.skt** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.skt*, %struct.skt** %6, align 8
  %12 = call i32 @memset(%struct.skt* %11, i32 0, i32 8)
  %13 = call i32 @memset(%struct.skt* %9, i32 0, i32 8)
  %14 = getelementptr inbounds %struct.skt, %struct.skt* %9, i32 0, i32 0
  store i32 4, i32* %14, align 4
  %15 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %5, align 8
  %16 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.skt, %struct.skt* %9, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.skt, %struct.skt* %9, i32 0, i32 0
  %21 = call i32 @nl_addr_fill_sockaddr(i32 %17, %struct.TYPE_5__* %19, i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %25, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %81

26:                                               ; preds = %3
  %27 = load %struct.skt*, %struct.skt** %6, align 8
  %28 = getelementptr inbounds %struct.skt, %struct.skt* %27, i32 0, i32 0
  store i32 4, i32* %28, align 4
  %29 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %5, align 8
  %30 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.skt*, %struct.skt** %6, align 8
  %33 = getelementptr inbounds %struct.skt, %struct.skt* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.skt*, %struct.skt** %6, align 8
  %36 = getelementptr inbounds %struct.skt, %struct.skt* %35, i32 0, i32 0
  %37 = call i32 @nl_addr_fill_sockaddr(i32 %31, %struct.TYPE_5__* %34, i32* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %41, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %81

42:                                               ; preds = %26
  %43 = load %struct.skt*, %struct.skt** %6, align 8
  %44 = getelementptr inbounds %struct.skt, %struct.skt* %43, i32 0, i32 1
  %45 = load i32, i32* @PORT_DISCARD, align 4
  %46 = load %struct.get_neigh_handler*, %struct.get_neigh_handler** %5, align 8
  %47 = getelementptr inbounds %struct.get_neigh_handler, %struct.get_neigh_handler* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @set_link_port(%struct.TYPE_4__* %44, i32 %45, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  br label %81

53:                                               ; preds = %42
  %54 = load %struct.skt*, %struct.skt** %6, align 8
  %55 = getelementptr inbounds %struct.skt, %struct.skt* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SOCK_DGRAM, align 4
  %60 = load i32, i32* @SOCK_CLOEXEC, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @socket(i32 %58, i32 %61, i32 0)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  store i32 -1, i32* %4, align 4
  br label %81

66:                                               ; preds = %53
  %67 = load i32, i32* %10, align 4
  %68 = getelementptr inbounds %struct.skt, %struct.skt* %9, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.skt, %struct.skt* %9, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @bind(i32 %67, %struct.TYPE_5__* %69, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @close(i32 %76)
  store i32 -1, i32* %4, align 4
  br label %81

78:                                               ; preds = %66
  %79 = load i32, i32* %10, align 4
  %80 = load i32*, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %78, %75, %65, %52, %40, %24
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @memset(%struct.skt*, i32, i32) #1

declare dso_local i32 @nl_addr_fill_sockaddr(i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @set_link_port(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @bind(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
