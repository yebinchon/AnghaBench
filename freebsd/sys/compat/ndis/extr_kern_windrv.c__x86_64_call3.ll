; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_kern_windrv.c__x86_64_call3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_kern_windrv.c__x86_64_call3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpu_cc_ent = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@FPU_KERN_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_x86_64_call3(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fpu_cc_ent*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = call %struct.fpu_cc_ent* (...) @request_fpu_cc_ent()
  store %struct.fpu_cc_ent* %12, %struct.fpu_cc_ent** %10, align 8
  %13 = icmp eq %struct.fpu_cc_ent* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @ENOMEM, align 4
  store i32 %15, i32* %5, align 4
  br label %36

16:                                               ; preds = %4
  %17 = load i32, i32* @curthread, align 4
  %18 = load %struct.fpu_cc_ent*, %struct.fpu_cc_ent** %10, align 8
  %19 = getelementptr inbounds %struct.fpu_cc_ent, %struct.fpu_cc_ent* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FPU_KERN_NORMAL, align 4
  %22 = call i32 @fpu_kern_enter(i32 %17, i32 %20, i32 %21)
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @x86_64_call3(i8* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* @curthread, align 4
  %29 = load %struct.fpu_cc_ent*, %struct.fpu_cc_ent** %10, align 8
  %30 = getelementptr inbounds %struct.fpu_cc_ent, %struct.fpu_cc_ent* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @fpu_kern_leave(i32 %28, i32 %31)
  %33 = load %struct.fpu_cc_ent*, %struct.fpu_cc_ent** %10, align 8
  %34 = call i32 @release_fpu_cc_ent(%struct.fpu_cc_ent* %33)
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %16, %14
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.fpu_cc_ent* @request_fpu_cc_ent(...) #1

declare dso_local i32 @fpu_kern_enter(i32, i32, i32) #1

declare dso_local i32 @x86_64_call3(i8*, i32, i32, i32) #1

declare dso_local i32 @fpu_kern_leave(i32, i32) #1

declare dso_local i32 @release_fpu_cc_ent(%struct.fpu_cc_ent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
