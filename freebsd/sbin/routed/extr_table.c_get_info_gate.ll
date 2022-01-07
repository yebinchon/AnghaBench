; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_get_info_gate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_get_info_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_dl = type { i64, i32 }
%struct.interface = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_LINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr**, %struct.sockaddr_in*)* @get_info_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_info_gate(%struct.sockaddr** %0, %struct.sockaddr_in* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr**, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca %struct.sockaddr_dl*, align 8
  %7 = alloca %struct.interface*, align 8
  store %struct.sockaddr** %0, %struct.sockaddr*** %4, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %5, align 8
  %8 = load %struct.sockaddr**, %struct.sockaddr*** %4, align 8
  %9 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %10 = bitcast %struct.sockaddr* %9 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %10, %struct.sockaddr_dl** %6, align 8
  %11 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %12 = icmp eq %struct.sockaddr_dl* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

14:                                               ; preds = %2
  %15 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %16 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AF_INET, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %49

21:                                               ; preds = %14
  %22 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %23 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AF_LINK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %49

28:                                               ; preds = %21
  %29 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %30 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.interface* @ifwithindex(i32 %31, i32 1)
  store %struct.interface* %32, %struct.interface** %7, align 8
  %33 = load %struct.interface*, %struct.interface** %7, align 8
  %34 = icmp eq %struct.interface* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %49

36:                                               ; preds = %28
  %37 = load %struct.interface*, %struct.interface** %7, align 8
  %38 = getelementptr inbounds %struct.interface, %struct.interface* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load i64, i64* @AF_INET, align 8
  %44 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %47 = bitcast %struct.sockaddr_in* %46 to %struct.sockaddr*
  %48 = load %struct.sockaddr**, %struct.sockaddr*** %4, align 8
  store %struct.sockaddr* %47, %struct.sockaddr** %48, align 8
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %36, %35, %27, %20, %13
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.interface* @ifwithindex(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
