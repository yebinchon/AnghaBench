; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_rthdr.c_inet6_rth_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_rthdr.c_inet6_rth_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_rthdr = type { i32 }
%struct.ip6_rthdr0 = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @inet6_rth_init(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip6_rthdr*, align 8
  %11 = alloca %struct.ip6_rthdr0*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.ip6_rthdr*
  store %struct.ip6_rthdr* %13, %struct.ip6_rthdr** %10, align 8
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %44 [
    i32 128, label %15
  ]

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @inet6_rth_space(i32 128, i32 %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i8* null, i8** %5, align 8
  br label %47

21:                                               ; preds = %15
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 127
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21
  store i8* null, i8** %5, align 8
  br label %47

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @memset(i8* %29, i32 0, i32 %30)
  %32 = load %struct.ip6_rthdr*, %struct.ip6_rthdr** %10, align 8
  %33 = bitcast %struct.ip6_rthdr* %32 to %struct.ip6_rthdr0*
  store %struct.ip6_rthdr0* %33, %struct.ip6_rthdr0** %11, align 8
  %34 = load i32, i32* %9, align 4
  %35 = mul nsw i32 %34, 2
  %36 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %11, align 8
  %37 = getelementptr inbounds %struct.ip6_rthdr0, %struct.ip6_rthdr0* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %11, align 8
  %39 = getelementptr inbounds %struct.ip6_rthdr0, %struct.ip6_rthdr0* %38, i32 0, i32 1
  store i32 128, i32* %39, align 4
  %40 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %11, align 8
  %41 = getelementptr inbounds %struct.ip6_rthdr0, %struct.ip6_rthdr0* %40, i32 0, i32 3
  store i32 0, i32* %41, align 4
  %42 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %11, align 8
  %43 = getelementptr inbounds %struct.ip6_rthdr0, %struct.ip6_rthdr0* %42, i32 0, i32 2
  store i32 0, i32* %43, align 4
  br label %45

44:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %47

45:                                               ; preds = %28
  %46 = load i8*, i8** %6, align 8
  store i8* %46, i8** %5, align 8
  br label %47

47:                                               ; preds = %45, %44, %27, %20
  %48 = load i8*, i8** %5, align 8
  ret i8* %48
}

declare dso_local i32 @inet6_rth_space(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
