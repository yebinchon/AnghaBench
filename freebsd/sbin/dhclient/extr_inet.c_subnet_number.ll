; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_inet.c_subnet_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_inet.c_subnet_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iaddr = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32* } @subnet_number(i64 %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.iaddr, align 8
  %6 = alloca %struct.iaddr, align 8
  %7 = alloca %struct.iaddr, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %struct.iaddr* %6 to { i64, i32* }*
  %10 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %9, i32 0, i32 0
  store i64 %0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %9, i32 0, i32 1
  store i32* %1, i32** %11, align 8
  %12 = bitcast %struct.iaddr* %7 to { i64, i32* }*
  %13 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %12, i32 0, i32 0
  store i64 %2, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %12, i32 0, i32 1
  store i32* %3, i32** %14, align 8
  %15 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %5, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %6, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %7, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %55

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %6, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %5, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %51, %22
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %5, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %6, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %7, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %38, %44
  %46 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %5, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %45, i32* %50, align 4
  br label %51

51:                                               ; preds = %32
  %52 = load i32, i32* %8, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %26

54:                                               ; preds = %26
  br label %55

55:                                               ; preds = %54, %21
  %56 = bitcast %struct.iaddr* %5 to { i64, i32* }*
  %57 = load { i64, i32* }, { i64, i32* }* %56, align 8
  ret { i64, i32* } %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
