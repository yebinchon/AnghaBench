; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_inet.c_broadcast_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_inet.c_broadcast_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iaddr = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i32, i32* } @broadcast_addr(i32 %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.iaddr, align 8
  %6 = alloca %struct.iaddr, align 8
  %7 = alloca %struct.iaddr, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %struct.iaddr* %6 to { i32, i32* }*
  %10 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %9, i32 0, i32 0
  store i32 %0, i32* %10, align 8
  %11 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %9, i32 0, i32 1
  store i32* %1, i32** %11, align 8
  %12 = bitcast %struct.iaddr* %7 to { i32, i32* }*
  %13 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %12, i32 0, i32 0
  store i32 %2, i32* %13, align 8
  %14 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %12, i32 0, i32 1
  store i32* %3, i32** %14, align 8
  %15 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %7, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %5, i32 0, i32 0
  store i32 0, i32* %21, align 8
  br label %56

22:                                               ; preds = %4
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %49, %22
  %24 = load i32, i32* %8, align 4
  %25 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %6, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %7, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %41, 255
  %43 = or i32 %34, %42
  %44 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %5, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %43, i32* %48, align 4
  br label %49

49:                                               ; preds = %28
  %50 = load i32, i32* %8, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %23

52:                                               ; preds = %23
  %53 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %5, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  br label %56

56:                                               ; preds = %52, %20
  %57 = bitcast %struct.iaddr* %5 to { i32, i32* }*
  %58 = load { i32, i32* }, { i32, i32* }* %57, align 8
  ret { i32, i32* } %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
