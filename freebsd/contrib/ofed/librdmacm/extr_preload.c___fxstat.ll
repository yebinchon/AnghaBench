; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c___fxstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c___fxstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32, %struct.stat*)* }
%struct.stat = type { i32 }

@fd_rsocket = common dso_local global i64 0, align 8
@real = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@S_IFMT = common dso_local global i32 0, align 4
@__S_IFSOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__fxstat(i32 %0, i32 %1, %struct.stat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.stat* %2, %struct.stat** %6, align 8
  %9 = call i32 (...) @init_preload()
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @fd_get(i32 %10, i32* %7)
  %12 = load i64, i64* @fd_rsocket, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %3
  %15 = load i32 (i32, i32, %struct.stat*)*, i32 (i32, i32, %struct.stat*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @real, i32 0, i32 0), align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.stat*, %struct.stat** %6, align 8
  %19 = call i32 %15(i32 %16, i32 %17, %struct.stat* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %14
  %23 = load %struct.stat*, %struct.stat** %6, align 8
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @S_IFMT, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = load i32, i32* @__S_IFSOCK, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.stat*, %struct.stat** %6, align 8
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %22, %14
  br label %40

34:                                               ; preds = %3
  %35 = load i32 (i32, i32, %struct.stat*)*, i32 (i32, i32, %struct.stat*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @real, i32 0, i32 0), align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.stat*, %struct.stat** %6, align 8
  %39 = call i32 %35(i32 %36, i32 %37, %struct.stat* %38)
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %34, %33
  %41 = load i32, i32* %8, align 4
  ret i32 %41
}

declare dso_local i32 @init_preload(...) #1

declare dso_local i64 @fd_get(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
