; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { %struct.TYPE_2__*, %struct.process* }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.process*)* @pfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfree(%struct.process* %0) #0 {
  %2 = alloca %struct.process*, align 8
  store %struct.process* %0, %struct.process** %2, align 8
  %3 = load %struct.process*, %struct.process** %2, align 8
  %4 = getelementptr inbounds %struct.process, %struct.process* %3, i32 0, i32 1
  %5 = load %struct.process*, %struct.process** %4, align 8
  %6 = call i32 @xfree(%struct.process* %5)
  %7 = load %struct.process*, %struct.process** %2, align 8
  %8 = getelementptr inbounds %struct.process, %struct.process* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load %struct.process*, %struct.process** %2, align 8
  %13 = getelementptr inbounds %struct.process, %struct.process* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %11
  %20 = load %struct.process*, %struct.process** %2, align 8
  %21 = getelementptr inbounds %struct.process, %struct.process* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.process*, %struct.process** %2, align 8
  %28 = getelementptr inbounds %struct.process, %struct.process* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call i32 @dfree(%struct.TYPE_2__* %29)
  br label %31

31:                                               ; preds = %26, %19
  br label %32

32:                                               ; preds = %31, %11, %1
  %33 = load %struct.process*, %struct.process** %2, align 8
  %34 = call i32 @xfree(%struct.process* %33)
  ret void
}

declare dso_local i32 @xfree(%struct.process*) #1

declare dso_local i32 @dfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
