; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_register_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_register_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.regcache_descr = type { i32* }

@NUM_REGS = common dso_local global i32 0, align 4
@NUM_PSEUDO_REGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_size(%struct.gdbarch* %0, i32 %1) #0 {
  %3 = alloca %struct.gdbarch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regcache_descr*, align 8
  %6 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %8 = call %struct.regcache_descr* @regcache_descr(%struct.gdbarch* %7)
  store %struct.regcache_descr* %8, %struct.regcache_descr** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @NUM_REGS, align 4
  %14 = load i32, i32* @NUM_PSEUDO_REGS, align 4
  %15 = add nsw i32 %13, %14
  %16 = icmp slt i32 %12, %15
  br label %17

17:                                               ; preds = %11, %2
  %18 = phi i1 [ false, %2 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @gdb_assert(i32 %19)
  %21 = load %struct.regcache_descr*, %struct.regcache_descr** %5, align 8
  %22 = getelementptr inbounds %struct.regcache_descr, %struct.regcache_descr* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %29)
  %31 = icmp eq i32 %28, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @gdb_assert(i32 %32)
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local %struct.regcache_descr* @regcache_descr(%struct.gdbarch*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
