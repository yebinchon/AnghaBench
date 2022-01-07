; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_inet.c_addr_eq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_inet.c_addr_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iaddr = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addr_eq(i64 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iaddr, align 8
  %7 = alloca %struct.iaddr, align 8
  %8 = bitcast %struct.iaddr* %6 to { i64, i32 }*
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %0, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %1, i32* %10, align 8
  %11 = bitcast %struct.iaddr* %7 to { i64, i32 }*
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  store i64 %2, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  store i32 %3, i32* %13, align 8
  %14 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %6, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %7, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %30

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %6, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %7, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %6, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @memcmp(i32 %22, i32 %24, i64 %26)
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %20, %19
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i64 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
