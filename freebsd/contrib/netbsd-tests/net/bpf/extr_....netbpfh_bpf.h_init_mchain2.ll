; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/bpf/extr_....netbpfh_bpf.h_init_mchain2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/bpf/extr_....netbpfh_bpf.h_init_mchain2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i8*, i64, %struct.mbuf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.mbuf*, %struct.mbuf*, i8*, i64, i64)* @init_mchain2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @init_mchain2(%struct.mbuf* %0, %struct.mbuf* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mbuf* %0, %struct.mbuf** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %12 = call i32 @memset(%struct.mbuf* %11, i32 0, i32 24)
  %13 = load i8*, i8** %8, align 8
  %14 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %15 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  br label %22

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi %struct.mbuf* [ %20, %19 ], [ null, %21 ]
  %24 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 2
  store %struct.mbuf* %23, %struct.mbuf** %25, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i64, i64* %10, align 8
  br label %33

31:                                               ; preds = %22
  %32 = load i64, i64* %9, align 8
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i64 [ %30, %29 ], [ %32, %31 ]
  %35 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %33
  %41 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %42 = call i32 @memset(%struct.mbuf* %41, i32 0, i32 24)
  %43 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %44 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %43, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %44, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %49 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = sub i64 %50, %51
  %53 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %54 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %40, %33
  %56 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %57 = bitcast %struct.mbuf* %56 to i32*
  ret i32* %57
}

declare dso_local i32 @memset(%struct.mbuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
