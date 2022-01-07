; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_pinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_pinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"pmap_pinit: pmap = %08x\0A\00", align 1
@vector_page = common dso_local global i64 0, align 8
@KERNBASE = common dso_local global i64 0, align 8
@systempage = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@PMAP_ENTER_WIRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_pinit(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = ptrtoint %struct.TYPE_7__* %3 to i32
  %5 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = call i32 @PDEBUG(i32 1, i32 %5)
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = call i32 @pmap_alloc_l1(%struct.TYPE_7__* %7)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = call i32 @bzero(%struct.TYPE_9__* %11, i32 8)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = call i32 @CPU_ZERO(i32* %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = call i32 @TAILQ_INIT(i32* %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = call i32 @bzero(%struct.TYPE_9__* %20, i32 4)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load i64, i64* @vector_page, align 8
  %26 = load i64, i64* @KERNBASE, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = load i64, i64* @vector_page, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @systempage, i32 0, i32 0), align 4
  %32 = call i32 @PHYS_TO_VM_PAGE(i32 %31)
  %33 = load i32, i32* @VM_PROT_READ, align 4
  %34 = load i32, i32* @PMAP_ENTER_WIRED, align 4
  %35 = load i32, i32* @VM_PROT_READ, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @pmap_enter(%struct.TYPE_7__* %29, i64 %30, i32 %32, i32 %33, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %28, %1
  ret i32 1
}

declare dso_local i32 @PDEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @pmap_alloc_l1(%struct.TYPE_7__*) #1

declare dso_local i32 @bzero(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @pmap_enter(%struct.TYPE_7__*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
