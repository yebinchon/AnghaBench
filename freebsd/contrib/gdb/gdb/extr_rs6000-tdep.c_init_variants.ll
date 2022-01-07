; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_init_variants.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_init_variants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.variant = type { i32, i32, i32, i32, i64 }

@variants = common dso_local global %struct.variant* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_variants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_variants() #0 {
  %1 = alloca %struct.variant*, align 8
  %2 = load %struct.variant*, %struct.variant** @variants, align 8
  store %struct.variant* %2, %struct.variant** %1, align 8
  br label %3

3:                                                ; preds = %39, %0
  %4 = load %struct.variant*, %struct.variant** %1, align 8
  %5 = getelementptr inbounds %struct.variant, %struct.variant* %4, i32 0, i32 4
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %3
  %9 = load %struct.variant*, %struct.variant** %1, align 8
  %10 = getelementptr inbounds %struct.variant, %struct.variant* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load %struct.variant*, %struct.variant** %1, align 8
  %15 = getelementptr inbounds %struct.variant, %struct.variant* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.variant*, %struct.variant** %1, align 8
  %18 = getelementptr inbounds %struct.variant, %struct.variant* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @num_registers(i32 %16, i32 %19)
  %21 = load %struct.variant*, %struct.variant** %1, align 8
  %22 = getelementptr inbounds %struct.variant, %struct.variant* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  br label %23

23:                                               ; preds = %13, %8
  %24 = load %struct.variant*, %struct.variant** %1, align 8
  %25 = getelementptr inbounds %struct.variant, %struct.variant* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.variant*, %struct.variant** %1, align 8
  %30 = getelementptr inbounds %struct.variant, %struct.variant* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.variant*, %struct.variant** %1, align 8
  %33 = getelementptr inbounds %struct.variant, %struct.variant* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @num_pseudo_registers(i32 %31, i32 %34)
  %36 = load %struct.variant*, %struct.variant** %1, align 8
  %37 = getelementptr inbounds %struct.variant, %struct.variant* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %28, %23
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.variant*, %struct.variant** %1, align 8
  %41 = getelementptr inbounds %struct.variant, %struct.variant* %40, i32 1
  store %struct.variant* %41, %struct.variant** %1, align 8
  br label %3

42:                                               ; preds = %3
  ret void
}

declare dso_local i32 @num_registers(i32, i32) #1

declare dso_local i32 @num_pseudo_registers(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
