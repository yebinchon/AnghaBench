; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter.c_ucl_add_tabs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter.c_ucl_add_tabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_emitter_functions = type { i32, i32 (i8, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucl_emitter_functions*, i32, i32)* @ucl_add_tabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucl_add_tabs(%struct.ucl_emitter_functions* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ucl_emitter_functions*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ucl_emitter_functions* %0, %struct.ucl_emitter_functions** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = icmp ugt i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %4, align 8
  %14 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %13, i32 0, i32 1
  %15 = load i32 (i8, i32, i32)*, i32 (i8, i32, i32)** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = mul i32 %16, 4
  %18 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %4, align 8
  %19 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 %15(i8 signext 32, i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %12, %9, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
