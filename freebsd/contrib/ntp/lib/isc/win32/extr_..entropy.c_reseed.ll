; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_..entropy.c_reseed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_..entropy.c_reseed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @reseed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reseed(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = call i32 (...) @getpid()
  store i32 %10, i32* %4, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = call i32 @entropypool_adddata(%struct.TYPE_4__* %11, i32* %4, i32 4, i32 0)
  %13 = call i32 (...) @getppid()
  store i32 %13, i32* %4, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = call i32 @entropypool_adddata(%struct.TYPE_4__* %14, i32* %4, i32 4, i32 0)
  br label %16

16:                                               ; preds = %9, %1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 100
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = srem i32 %24, 50
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %37

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %16
  %30 = call i32 @TIME_NOW(i32* %3)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = call i32 @entropypool_adddata(%struct.TYPE_4__* %31, i32* %3, i32 4, i32 0)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %29, %27
  ret void
}

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @entropypool_adddata(%struct.TYPE_4__*, i32*, i32, i32) #1

declare dso_local i32 @getppid(...) #1

declare dso_local i32 @TIME_NOW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
