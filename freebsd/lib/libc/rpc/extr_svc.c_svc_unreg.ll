; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc.c_svc_unreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc.c_svc_unreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_callout = type { %struct.svc_callout*, i32* }

@svc_lock = common dso_local global i32 0, align 4
@svc_head = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_unreg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_callout*, align 8
  %6 = alloca %struct.svc_callout*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @rpcb_unset(i32 %7, i32 %8, i32* null)
  %10 = call i32 @rwlock_wrlock(i32* @svc_lock)
  br label %11

11:                                               ; preds = %41, %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.svc_callout* @svc_find(i32 %12, i32 %13, %struct.svc_callout** %5, i32* null)
  store %struct.svc_callout* %14, %struct.svc_callout** %6, align 8
  %15 = icmp ne %struct.svc_callout* %14, null
  br i1 %15, label %16, label %44

16:                                               ; preds = %11
  %17 = load %struct.svc_callout*, %struct.svc_callout** %5, align 8
  %18 = icmp eq %struct.svc_callout* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load %struct.svc_callout*, %struct.svc_callout** %6, align 8
  %21 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** @svc_head, align 8
  br label %29

23:                                               ; preds = %16
  %24 = load %struct.svc_callout*, %struct.svc_callout** %6, align 8
  %25 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.svc_callout*, %struct.svc_callout** %5, align 8
  %28 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  br label %29

29:                                               ; preds = %23, %19
  %30 = load %struct.svc_callout*, %struct.svc_callout** %6, align 8
  %31 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.svc_callout*, %struct.svc_callout** %6, align 8
  %33 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %32, i32 0, i32 0
  %34 = load %struct.svc_callout*, %struct.svc_callout** %33, align 8
  %35 = icmp ne %struct.svc_callout* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.svc_callout*, %struct.svc_callout** %6, align 8
  %38 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %37, i32 0, i32 0
  %39 = load %struct.svc_callout*, %struct.svc_callout** %38, align 8
  %40 = call i32 @mem_free(%struct.svc_callout* %39, i32 9)
  br label %41

41:                                               ; preds = %36, %29
  %42 = load %struct.svc_callout*, %struct.svc_callout** %6, align 8
  %43 = call i32 @mem_free(%struct.svc_callout* %42, i32 16)
  br label %11

44:                                               ; preds = %11
  %45 = call i32 @rwlock_unlock(i32* @svc_lock)
  ret void
}

declare dso_local i32 @rpcb_unset(i32, i32, i32*) #1

declare dso_local i32 @rwlock_wrlock(i32*) #1

declare dso_local %struct.svc_callout* @svc_find(i32, i32, %struct.svc_callout**, i32*) #1

declare dso_local i32 @mem_free(%struct.svc_callout*, i32) #1

declare dso_local i32 @rwlock_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
