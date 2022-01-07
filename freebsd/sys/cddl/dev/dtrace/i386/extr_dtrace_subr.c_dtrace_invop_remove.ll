; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/i386/extr_dtrace_subr.c_dtrace_invop_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/i386/extr_dtrace_subr.c_dtrace_invop_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i64, %struct.trapframe.0*, i64)*, %struct.TYPE_4__* }
%struct.trapframe.0 = type opaque
%struct.trapframe = type opaque

@dtrace_invop_hdlr = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"attempt to remove non-existent invop handler\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtrace_invop_remove(i32 (i64, %struct.trapframe*, i64)* %0) #0 {
  %2 = alloca i32 (i64, %struct.trapframe*, i64)*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32 (i64, %struct.trapframe*, i64)* %0, i32 (i64, %struct.trapframe*, i64)** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dtrace_invop_hdlr, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %6

6:                                                ; preds = %19, %1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = icmp eq %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %6
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32 (i64, %struct.trapframe.0*, i64)*, i32 (i64, %struct.trapframe.0*, i64)** %13, align 8
  %15 = load i32 (i64, %struct.trapframe*, i64)*, i32 (i64, %struct.trapframe*, i64)** %2, align 8
  %16 = bitcast i32 (i64, %struct.trapframe*, i64)* %15 to i32 (i64, %struct.trapframe.0*, i64)*
  %17 = icmp eq i32 (i64, %struct.trapframe.0*, i64)* %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %24

19:                                               ; preds = %11
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %4, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %3, align 8
  br label %6

24:                                               ; preds = %18
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = icmp eq %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dtrace_invop_hdlr, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = icmp eq %struct.TYPE_4__* %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** @dtrace_invop_hdlr, align 8
  br label %47

36:                                               ; preds = %24
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dtrace_invop_hdlr, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = icmp ne %struct.TYPE_4__* %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %46, align 8
  br label %47

47:                                               ; preds = %36, %27
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = call i32 @kmem_free(%struct.TYPE_4__* %48, i32 0)
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
