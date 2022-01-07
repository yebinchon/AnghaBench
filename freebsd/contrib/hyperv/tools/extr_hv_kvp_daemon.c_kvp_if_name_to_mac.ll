; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_if_name_to_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_if_name_to_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i32, i64, %struct.ifaddrs* }
%struct.sockaddr_dl = type { i64 }
%struct.ether_addr = type { i32 }

@IFT_ETHER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @kvp_if_name_to_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @kvp_if_name_to_mac(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ifaddrs*, align 8
  %5 = alloca %struct.ifaddrs*, align 8
  %6 = alloca %struct.sockaddr_dl*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %3, align 8
  %8 = call i32 @getifaddrs(%struct.ifaddrs** %4)
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %1
  %12 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  store %struct.ifaddrs* %12, %struct.ifaddrs** %5, align 8
  br label %13

13:                                               ; preds = %37, %11
  %14 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %15 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %17, %struct.sockaddr_dl** %6, align 8
  %18 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %19 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IFT_ETHER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %13
  %24 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %25 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %2, align 8
  %28 = call i64 @strcmp(i32 %26, i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %32 = call i64 @LLADDR(%struct.sockaddr_dl* %31)
  %33 = inttoptr i64 %32 to %struct.ether_addr*
  %34 = call i32 @ether_ntoa(%struct.ether_addr* %33)
  %35 = call i8* @strdup(i32 %34)
  store i8* %35, i8** %3, align 8
  br label %42

36:                                               ; preds = %23, %13
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %39 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %38, i32 0, i32 2
  %40 = load %struct.ifaddrs*, %struct.ifaddrs** %39, align 8
  store %struct.ifaddrs* %40, %struct.ifaddrs** %4, align 8
  %41 = icmp ne %struct.ifaddrs* %40, null
  br i1 %41, label %13, label %42

42:                                               ; preds = %37, %30
  %43 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %44 = call i32 @freeifaddrs(%struct.ifaddrs* %43)
  br label %45

45:                                               ; preds = %42, %1
  %46 = load i8*, i8** %3, align 8
  ret i8* %46
}

declare dso_local i32 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @ether_ntoa(%struct.ether_addr*) #1

declare dso_local i64 @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
