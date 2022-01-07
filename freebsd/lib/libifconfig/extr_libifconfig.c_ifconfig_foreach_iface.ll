; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig.c_ifconfig_foreach_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig.c_ifconfig_foreach_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.ifaddrs* }
%struct.ifaddrs = type { i8*, %struct.ifaddrs* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifconfig_foreach_iface(%struct.TYPE_6__* %0, i32 (%struct.TYPE_6__*, %struct.ifaddrs*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32 (%struct.TYPE_6__*, %struct.ifaddrs*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifaddrs*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 (%struct.TYPE_6__*, %struct.ifaddrs*, i8*)* %1, i32 (%struct.TYPE_6__*, %struct.ifaddrs*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = call i32 @ifconfig_getifaddrs(%struct.TYPE_6__* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %3
  store i8* null, i8** %9, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.ifaddrs*, %struct.ifaddrs** %16, align 8
  store %struct.ifaddrs* %17, %struct.ifaddrs** %8, align 8
  br label %18

18:                                               ; preds = %37, %14
  %19 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %20 = icmp ne %struct.ifaddrs* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = load i8*, i8** %9, align 8
  %23 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %24 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %22, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %29 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %9, align 8
  %31 = load i32 (%struct.TYPE_6__*, %struct.ifaddrs*, i8*)*, i32 (%struct.TYPE_6__*, %struct.ifaddrs*, i8*)** %5, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 %31(%struct.TYPE_6__* %32, %struct.ifaddrs* %33, i8* %34)
  br label %36

36:                                               ; preds = %27, %21
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %39 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %38, i32 0, i32 1
  %40 = load %struct.ifaddrs*, %struct.ifaddrs** %39, align 8
  store %struct.ifaddrs* %40, %struct.ifaddrs** %8, align 8
  br label %18

41:                                               ; preds = %18
  br label %42

42:                                               ; preds = %41, %3
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.ifaddrs*, %struct.ifaddrs** %44, align 8
  %46 = call i32 @freeifaddrs(%struct.ifaddrs* %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store %struct.ifaddrs* null, %struct.ifaddrs** %48, align 8
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @ifconfig_getifaddrs(%struct.TYPE_6__*) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
