; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_ipfw_get_tracked_ifaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_ipfw_get_tracked_ifaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@IP_FW_XIFLIST = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__**)* @ipfw_get_tracked_ifaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipfw_get_tracked_ifaces(%struct.TYPE_6__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__**, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %3, align 8
  %7 = call i32 @memset(%struct.TYPE_6__* %4, i32 0, i32 16)
  store i64 16, i64* %6, align 8
  %8 = load i32, i32* @IP_FW_XIFLIST, align 4
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %10 = call i64 @do_get3(i32 %8, i32* %9, i64* %6)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load i64, i64* @errno, align 8
  %14 = load i64, i64* @ENOMEM, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i64, i64* @errno, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %2, align 4
  br label %46

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19, %1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call %struct.TYPE_6__* @calloc(i32 1, i64 %23)
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %5, align 8
  %25 = icmp eq %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i64, i64* @ENOMEM, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %46

29:                                               ; preds = %20
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* @IP_FW_XIFLIST, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = call i64 @do_get3(i32 %33, i32* %35, i64* %6)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = call i32 @free(%struct.TYPE_6__* %39)
  %41 = load i64, i64* @errno, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %2, align 4
  br label %46

43:                                               ; preds = %29
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %45, align 8
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %38, %26, %16
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @do_get3(i32, i32*, i64*) #1

declare dso_local %struct.TYPE_6__* @calloc(i32, i64) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
