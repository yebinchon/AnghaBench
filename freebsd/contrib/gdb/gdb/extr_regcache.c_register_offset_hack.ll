; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_register_offset_hack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_register_offset_hack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.regcache_descr = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_offset_hack(%struct.gdbarch* %0, i32 %1) #0 {
  %3 = alloca %struct.gdbarch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regcache_descr*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %7 = call %struct.regcache_descr* @regcache_descr(%struct.gdbarch* %6)
  store %struct.regcache_descr* %7, %struct.regcache_descr** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.regcache_descr*, %struct.regcache_descr** %5, align 8
  %13 = getelementptr inbounds %struct.regcache_descr, %struct.regcache_descr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i1 [ false, %2 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @gdb_assert(i32 %18)
  %20 = load %struct.regcache_descr*, %struct.regcache_descr** %5, align 8
  %21 = getelementptr inbounds %struct.regcache_descr, %struct.regcache_descr* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  ret i32 %26
}

declare dso_local %struct.regcache_descr* @regcache_descr(%struct.gdbarch*) #1

declare dso_local i32 @gdb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
