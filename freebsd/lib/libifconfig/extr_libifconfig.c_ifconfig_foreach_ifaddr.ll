; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig.c_ifconfig_foreach_ifaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig.c_ifconfig_foreach_ifaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { %struct.ifaddrs*, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ifconfig_foreach_ifaddr(i32* %0, %struct.ifaddrs* %1, i32 (i32*, %struct.ifaddrs*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ifaddrs*, align 8
  %7 = alloca i32 (i32*, %struct.ifaddrs*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ifaddrs*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.ifaddrs* %1, %struct.ifaddrs** %6, align 8
  store i32 (i32*, %struct.ifaddrs*, i8*)* %2, i32 (i32*, %struct.ifaddrs*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.ifaddrs*, %struct.ifaddrs** %6, align 8
  store %struct.ifaddrs* %10, %struct.ifaddrs** %9, align 8
  br label %11

11:                                               ; preds = %36, %4
  %12 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  %13 = icmp ne %struct.ifaddrs* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  %16 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  %21 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ifaddrs*, %struct.ifaddrs** %6, align 8
  %24 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @strcmp(i32 %22, i32 %25)
  %27 = icmp eq i64 %26, 0
  br label %28

28:                                               ; preds = %19, %14, %11
  %29 = phi i1 [ false, %14 ], [ false, %11 ], [ %27, %19 ]
  br i1 %29, label %30, label %40

30:                                               ; preds = %28
  %31 = load i32 (i32*, %struct.ifaddrs*, i8*)*, i32 (i32*, %struct.ifaddrs*, i8*)** %7, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 %31(i32* %32, %struct.ifaddrs* %33, i8* %34)
  br label %36

36:                                               ; preds = %30
  %37 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  %38 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %37, i32 0, i32 0
  %39 = load %struct.ifaddrs*, %struct.ifaddrs** %38, align 8
  store %struct.ifaddrs* %39, %struct.ifaddrs** %9, align 8
  br label %11

40:                                               ; preds = %28
  ret void
}

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
