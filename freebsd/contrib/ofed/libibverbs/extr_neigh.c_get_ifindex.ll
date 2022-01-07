; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_neigh.c_get_ifindex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_neigh.c_get_ifindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.ifaddrs = type { i32, i32*, %struct.ifaddrs* }

@ENODEV = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*)* @get_ifindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ifindex(%struct.sockaddr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca %struct.ifaddrs*, align 8
  %5 = alloca %struct.ifaddrs*, align 8
  %6 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  %7 = load i32, i32* @ENODEV, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = call i32 @getifaddrs(%struct.ifaddrs** %4)
  %10 = icmp eq i32 -1, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @errno, align 4
  store i32 %12, i32* %2, align 4
  br label %45

13:                                               ; preds = %1
  %14 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  store %struct.ifaddrs* %14, %struct.ifaddrs** %5, align 8
  br label %15

15:                                               ; preds = %37, %13
  %16 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %17 = icmp ne %struct.ifaddrs* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  %19 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %20 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %37

24:                                               ; preds = %18
  %25 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %26 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %29 = call i64 @cmp_address(i32* %27, %struct.sockaddr* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %33 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @if_nametoindex(i32 %34)
  store i32 %35, i32* %6, align 4
  br label %41

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %23
  %38 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %39 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %38, i32 0, i32 2
  %40 = load %struct.ifaddrs*, %struct.ifaddrs** %39, align 8
  store %struct.ifaddrs* %40, %struct.ifaddrs** %5, align 8
  br label %15

41:                                               ; preds = %31, %15
  %42 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %43 = call i32 @freeifaddrs(%struct.ifaddrs* %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %11
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i64 @cmp_address(i32*, %struct.sockaddr*) #1

declare dso_local i32 @if_nametoindex(i32) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
