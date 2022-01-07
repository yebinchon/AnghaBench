; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_addr_in_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_addr_in_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_addr = type { i32, i32, %struct.auth_addr* }
%struct.sockaddr_storage = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_addr*, %struct.sockaddr_storage*, i32)* @addr_in_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_in_list(%struct.auth_addr* %0, %struct.sockaddr_storage* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.auth_addr*, align 8
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.auth_addr*, align 8
  store %struct.auth_addr* %0, %struct.auth_addr** %5, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.auth_addr*, %struct.auth_addr** %5, align 8
  store %struct.auth_addr* %9, %struct.auth_addr** %8, align 8
  br label %10

10:                                               ; preds = %25, %3
  %11 = load %struct.auth_addr*, %struct.auth_addr** %8, align 8
  %12 = icmp ne %struct.auth_addr* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.auth_addr*, %struct.auth_addr** %8, align 8
  %17 = getelementptr inbounds %struct.auth_addr, %struct.auth_addr* %16, i32 0, i32 1
  %18 = load %struct.auth_addr*, %struct.auth_addr** %8, align 8
  %19 = getelementptr inbounds %struct.auth_addr, %struct.auth_addr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @sockaddr_cmp_addr(%struct.sockaddr_storage* %14, i32 %15, i32* %17, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %30

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.auth_addr*, %struct.auth_addr** %8, align 8
  %27 = getelementptr inbounds %struct.auth_addr, %struct.auth_addr* %26, i32 0, i32 2
  %28 = load %struct.auth_addr*, %struct.auth_addr** %27, align 8
  store %struct.auth_addr* %28, %struct.auth_addr** %8, align 8
  br label %10

29:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i64 @sockaddr_cmp_addr(%struct.sockaddr_storage*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
