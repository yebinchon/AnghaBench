; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc32_pseudo_register_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc32_pseudo_register_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.regcache = type { i32 }

@SPARC32_D0_REGNUM = common dso_local global i32 0, align 4
@SPARC32_D30_REGNUM = common dso_local global i32 0, align 4
@SPARC_F0_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gdbarch*, %struct.regcache*, i32, i8*)* @sparc32_pseudo_register_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sparc32_pseudo_register_write(%struct.gdbarch* %0, %struct.regcache* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.gdbarch*, align 8
  %6 = alloca %struct.regcache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %5, align 8
  store %struct.regcache* %1, %struct.regcache** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @SPARC32_D0_REGNUM, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @SPARC32_D30_REGNUM, align 4
  %15 = icmp sle i32 %13, %14
  br label %16

16:                                               ; preds = %12, %4
  %17 = phi i1 [ false, %4 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @gdb_assert(i32 %18)
  %20 = load i32, i32* @SPARC_F0_REGNUM, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SPARC32_D0_REGNUM, align 4
  %23 = sub nsw i32 %21, %22
  %24 = mul nsw i32 2, %23
  %25 = add nsw i32 %20, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.regcache*, %struct.regcache** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @regcache_raw_write(%struct.regcache* %26, i32 %27, i8* %28)
  %30 = load %struct.regcache*, %struct.regcache** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 4
  %35 = call i32 @regcache_raw_write(%struct.regcache* %30, i32 %32, i8* %34)
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @regcache_raw_write(%struct.regcache*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
