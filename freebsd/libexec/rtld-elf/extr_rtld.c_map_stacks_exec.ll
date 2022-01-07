; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_map_stacks_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_map_stacks_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_stack_flags = common dso_local global i32 0, align 4
@PF_X = common dso_local global i32 0, align 4
@stack_prot = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"__pthread_map_stacks_exec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @map_stacks_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_stacks_exec(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca void ()*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @max_stack_flags, align 4
  %5 = load i32, i32* @PF_X, align 4
  %6 = and i32 %4, %5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @stack_prot, align 4
  %10 = load i32, i32* @PROT_EXEC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  br label %25

14:                                               ; preds = %8
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @get_program_var_addr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %15)
  %17 = inttoptr i64 %16 to void ()*
  store void ()* %17, void ()** %3, align 8
  %18 = load void ()*, void ()** %3, align 8
  %19 = icmp ne void ()* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i32, i32* @PROT_EXEC, align 4
  %22 = load i32, i32* @stack_prot, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* @stack_prot, align 4
  %24 = load void ()*, void ()** %3, align 8
  call void %24()
  br label %25

25:                                               ; preds = %13, %20, %14
  ret void
}

declare dso_local i64 @get_program_var_addr(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
