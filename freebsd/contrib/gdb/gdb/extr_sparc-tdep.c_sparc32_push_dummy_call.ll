; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc32_push_dummy_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc32_push_dummy_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.regcache = type { i32 }
%struct.value = type { i32 }

@SPARC_O7_REGNUM = common dso_local global i32 0, align 4
@SPARC_SP_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, i32, %struct.regcache*, i32, i32, %struct.value**, i32, i32, i32)* @sparc32_push_dummy_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc32_push_dummy_call(%struct.gdbarch* %0, i32 %1, %struct.regcache* %2, i32 %3, i32 %4, %struct.value** %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.gdbarch*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.regcache*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.value**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.regcache* %2, %struct.regcache** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.value** %5, %struct.value*** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load i32, i32* %17, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %9
  %23 = load i32, i32* %13, align 4
  %24 = sub nsw i32 %23, 12
  br label %28

25:                                               ; preds = %9
  %26 = load i32, i32* %13, align 4
  %27 = sub nsw i32 %26, 8
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i32 [ %24, %22 ], [ %27, %25 ]
  store i32 %29, i32* %19, align 4
  %30 = load %struct.regcache*, %struct.regcache** %12, align 8
  %31 = load i32, i32* @SPARC_O7_REGNUM, align 4
  %32 = load i32, i32* %19, align 4
  %33 = call i32 @regcache_cooked_write_unsigned(%struct.regcache* %30, i32 %31, i32 %32)
  %34 = load %struct.regcache*, %struct.regcache** %12, align 8
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.value**, %struct.value*** %15, align 8
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* %18, align 4
  %40 = call i32 @sparc32_store_arguments(%struct.regcache* %34, i32 %35, %struct.value** %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = sub nsw i32 %41, 64
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = srem i32 %43, 8
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @gdb_assert(i32 %46)
  %48 = load %struct.regcache*, %struct.regcache** %12, align 8
  %49 = load i32, i32* @SPARC_SP_REGNUM, align 4
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @regcache_cooked_write_unsigned(%struct.regcache* %48, i32 %49, i32 %50)
  %52 = load i32, i32* %16, align 4
  ret i32 %52
}

declare dso_local i32 @regcache_cooked_write_unsigned(%struct.regcache*, i32, i32) #1

declare dso_local i32 @sparc32_store_arguments(%struct.regcache*, i32, %struct.value**, i32, i32, i32) #1

declare dso_local i32 @gdb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
