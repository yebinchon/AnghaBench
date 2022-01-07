; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_evdns_base_get_nameserver_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_evdns_base_get_nameserver_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { %struct.nameserver* }
%struct.nameserver = type { i64, i32, %struct.nameserver* }
%struct.sockaddr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evdns_base_get_nameserver_addr(%struct.evdns_base* %0, i32 %1, %struct.sockaddr* %2, i64 %3) #0 {
  %5 = alloca %struct.evdns_base*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nameserver*, align 8
  store %struct.evdns_base* %0, %struct.evdns_base** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 -1, i32* %9, align 4
  %12 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %13 = call i32 @EVDNS_LOCK(%struct.evdns_base* %12)
  %14 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %15 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %14, i32 0, i32 0
  %16 = load %struct.nameserver*, %struct.nameserver** %15, align 8
  store %struct.nameserver* %16, %struct.nameserver** %11, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %36, %4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.nameserver*, %struct.nameserver** %11, align 8
  %23 = icmp ne %struct.nameserver* %22, null
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i1 [ false, %17 ], [ %23, %21 ]
  br i1 %25, label %26, label %42

26:                                               ; preds = %24
  %27 = load %struct.nameserver*, %struct.nameserver** %11, align 8
  %28 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %27, i32 0, i32 2
  %29 = load %struct.nameserver*, %struct.nameserver** %28, align 8
  %30 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %31 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %30, i32 0, i32 0
  %32 = load %struct.nameserver*, %struct.nameserver** %31, align 8
  %33 = icmp eq %struct.nameserver* %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %69

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  %39 = load %struct.nameserver*, %struct.nameserver** %11, align 8
  %40 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %39, i32 0, i32 2
  %41 = load %struct.nameserver*, %struct.nameserver** %40, align 8
  store %struct.nameserver* %41, %struct.nameserver** %11, align 8
  br label %17

42:                                               ; preds = %24
  %43 = load %struct.nameserver*, %struct.nameserver** %11, align 8
  %44 = icmp ne %struct.nameserver* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  br label %69

46:                                               ; preds = %42
  %47 = load %struct.nameserver*, %struct.nameserver** %11, align 8
  %48 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.nameserver*, %struct.nameserver** %11, align 8
  %54 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %9, align 4
  br label %69

57:                                               ; preds = %46
  %58 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %59 = load %struct.nameserver*, %struct.nameserver** %11, align 8
  %60 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %59, i32 0, i32 1
  %61 = load %struct.nameserver*, %struct.nameserver** %11, align 8
  %62 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @memcpy(%struct.sockaddr* %58, i32* %60, i64 %63)
  %65 = load %struct.nameserver*, %struct.nameserver** %11, align 8
  %66 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %57, %52, %45, %34
  %70 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %71 = call i32 @EVDNS_UNLOCK(%struct.evdns_base* %70)
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

declare dso_local i32 @EVDNS_LOCK(%struct.evdns_base*) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, i32*, i64) #1

declare dso_local i32 @EVDNS_UNLOCK(%struct.evdns_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
