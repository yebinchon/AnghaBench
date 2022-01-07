; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_find_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_find_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt_addr = type { %struct.delegpt_addr*, i32, i32 }
%struct.delegpt = type { %struct.delegpt_addr* }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.delegpt_addr* @delegpt_find_addr(%struct.delegpt* %0, %struct.sockaddr_storage* %1, i32 %2) #0 {
  %4 = alloca %struct.delegpt_addr*, align 8
  %5 = alloca %struct.delegpt*, align 8
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.delegpt_addr*, align 8
  store %struct.delegpt* %0, %struct.delegpt** %5, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.delegpt*, %struct.delegpt** %5, align 8
  %10 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %9, i32 0, i32 0
  %11 = load %struct.delegpt_addr*, %struct.delegpt_addr** %10, align 8
  store %struct.delegpt_addr* %11, %struct.delegpt_addr** %8, align 8
  br label %12

12:                                               ; preds = %38, %3
  %13 = load %struct.delegpt_addr*, %struct.delegpt_addr** %8, align 8
  %14 = icmp ne %struct.delegpt_addr* %13, null
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  %16 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.delegpt_addr*, %struct.delegpt_addr** %8, align 8
  %19 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %18, i32 0, i32 1
  %20 = load %struct.delegpt_addr*, %struct.delegpt_addr** %8, align 8
  %21 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @sockaddr_cmp_addr(%struct.sockaddr_storage* %16, i32 %17, i32* %19, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %15
  %26 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %27 = bitcast %struct.sockaddr_storage* %26 to %struct.sockaddr_in*
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.delegpt_addr*, %struct.delegpt_addr** %8, align 8
  %31 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %30, i32 0, i32 1
  %32 = bitcast i32* %31 to %struct.sockaddr_in*
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %29, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load %struct.delegpt_addr*, %struct.delegpt_addr** %8, align 8
  store %struct.delegpt_addr* %37, %struct.delegpt_addr** %4, align 8
  br label %43

38:                                               ; preds = %25, %15
  %39 = load %struct.delegpt_addr*, %struct.delegpt_addr** %8, align 8
  %40 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %39, i32 0, i32 0
  %41 = load %struct.delegpt_addr*, %struct.delegpt_addr** %40, align 8
  store %struct.delegpt_addr* %41, %struct.delegpt_addr** %8, align 8
  br label %12

42:                                               ; preds = %12
  store %struct.delegpt_addr* null, %struct.delegpt_addr** %4, align 8
  br label %43

43:                                               ; preds = %42, %36
  %44 = load %struct.delegpt_addr*, %struct.delegpt_addr** %4, align 8
  ret %struct.delegpt_addr* %44
}

declare dso_local i64 @sockaddr_cmp_addr(%struct.sockaddr_storage*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
