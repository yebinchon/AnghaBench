; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_kern_windrv.c__x86_64_call1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_kern_windrv.c__x86_64_call1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpu_cc_ent = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@FPU_KERN_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_x86_64_call1(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fpu_cc_ent*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call %struct.fpu_cc_ent* (...) @request_fpu_cc_ent()
  store %struct.fpu_cc_ent* %8, %struct.fpu_cc_ent** %6, align 8
  %9 = icmp eq %struct.fpu_cc_ent* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOMEM, align 4
  store i32 %11, i32* %3, align 4
  br label %30

12:                                               ; preds = %2
  %13 = load i32, i32* @curthread, align 4
  %14 = load %struct.fpu_cc_ent*, %struct.fpu_cc_ent** %6, align 8
  %15 = getelementptr inbounds %struct.fpu_cc_ent, %struct.fpu_cc_ent* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FPU_KERN_NORMAL, align 4
  %18 = call i32 @fpu_kern_enter(i32 %13, i32 %16, i32 %17)
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @x86_64_call1(i8* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @curthread, align 4
  %23 = load %struct.fpu_cc_ent*, %struct.fpu_cc_ent** %6, align 8
  %24 = getelementptr inbounds %struct.fpu_cc_ent, %struct.fpu_cc_ent* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @fpu_kern_leave(i32 %22, i32 %25)
  %27 = load %struct.fpu_cc_ent*, %struct.fpu_cc_ent** %6, align 8
  %28 = call i32 @release_fpu_cc_ent(%struct.fpu_cc_ent* %27)
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %12, %10
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.fpu_cc_ent* @request_fpu_cc_ent(...) #1

declare dso_local i32 @fpu_kern_enter(i32, i32, i32) #1

declare dso_local i32 @x86_64_call1(i8*, i32) #1

declare dso_local i32 @fpu_kern_leave(i32, i32) #1

declare dso_local i32 @release_fpu_cc_ent(%struct.fpu_cc_ent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
