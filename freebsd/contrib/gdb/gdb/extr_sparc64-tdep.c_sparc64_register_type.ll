; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_register_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-tdep.c_sparc64_register_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.type** }
%struct.type = type { i32 }
%struct.TYPE_3__ = type { %struct.type** }
%struct.gdbarch = type { i32 }

@SPARC64_NUM_REGS = common dso_local global i32 0, align 4
@SPARC64_NUM_PSEUDO_REGS = common dso_local global i32 0, align 4
@sparc64_pseudo_register_info = common dso_local global %struct.TYPE_4__* null, align 8
@sparc64_register_info = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.gdbarch*, i32)* @sparc64_register_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @sparc64_register_type(%struct.gdbarch* %0, i32 %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SPARC64_NUM_REGS, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SPARC64_NUM_REGS, align 4
  %12 = load i32, i32* @SPARC64_NUM_PSEUDO_REGS, align 4
  %13 = add nsw i32 %11, %12
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %9
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sparc64_pseudo_register_info, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SPARC64_NUM_REGS, align 4
  %19 = sub nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.type**, %struct.type*** %22, align 8
  %24 = load %struct.type*, %struct.type** %23, align 8
  store %struct.type* %24, %struct.type** %3, align 8
  br label %43

25:                                               ; preds = %9, %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SPARC64_NUM_REGS, align 4
  %31 = icmp slt i32 %29, %30
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i1 [ false, %25 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @gdb_assert(i32 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sparc64_register_info, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.type**, %struct.type*** %40, align 8
  %42 = load %struct.type*, %struct.type** %41, align 8
  store %struct.type* %42, %struct.type** %3, align 8
  br label %43

43:                                               ; preds = %32, %15
  %44 = load %struct.type*, %struct.type** %3, align 8
  ret %struct.type* %44
}

declare dso_local i32 @gdb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
