; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_multiboot.c_num_modules.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_multiboot.c_num_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preloaded_file = type { %struct.kernel_module* }
%struct.kernel_module = type { %struct.kernel_module* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.preloaded_file*)* @num_modules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @num_modules(%struct.preloaded_file* %0) #0 {
  %2 = alloca %struct.preloaded_file*, align 8
  %3 = alloca %struct.kernel_module*, align 8
  %4 = alloca i32, align 4
  store %struct.preloaded_file* %0, %struct.preloaded_file** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.preloaded_file*, %struct.preloaded_file** %2, align 8
  %6 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %5, i32 0, i32 0
  %7 = load %struct.kernel_module*, %struct.kernel_module** %6, align 8
  store %struct.kernel_module* %7, %struct.kernel_module** %3, align 8
  br label %8

8:                                                ; preds = %14, %1
  %9 = load %struct.kernel_module*, %struct.kernel_module** %3, align 8
  %10 = icmp ne %struct.kernel_module* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %11
  %15 = load %struct.kernel_module*, %struct.kernel_module** %3, align 8
  %16 = getelementptr inbounds %struct.kernel_module, %struct.kernel_module* %15, i32 0, i32 0
  %17 = load %struct.kernel_module*, %struct.kernel_module** %16, align 8
  store %struct.kernel_module* %17, %struct.kernel_module** %3, align 8
  br label %8

18:                                               ; preds = %8
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
