; ModuleID = '/home/carl/AnghaBench/freebsd/stand/powerpc/kboot/extr_main.c_kboot_get_kernel_machine_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/powerpc/kboot/extr_main.c_kboot_get_kernel_machine_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.old_utsname = type { i32 }

@kboot_get_kernel_machine_bits.bits = internal global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ppc64\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ppc64le\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kboot_get_kernel_machine_bits() #0 {
  %1 = alloca %struct.old_utsname, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @kboot_get_kernel_machine_bits.bits, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %0
  store i32 32, i32* @kboot_get_kernel_machine_bits.bits, align 4
  %6 = call i32 @memset(%struct.old_utsname* %1, i32 0, i32 4)
  %7 = call i32 @host_uname(%struct.old_utsname* %1)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.old_utsname, %struct.old_utsname* %1, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @strcmp(i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 64, i32* @kboot_get_kernel_machine_bits.bits, align 4
  br label %23

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.old_utsname, %struct.old_utsname* %1, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @strcmp(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 64, i32* @kboot_get_kernel_machine_bits.bits, align 4
  br label %22

22:                                               ; preds = %21, %16
  br label %23

23:                                               ; preds = %22, %15
  br label %24

24:                                               ; preds = %23, %5
  br label %25

25:                                               ; preds = %24, %0
  %26 = load i32, i32* @kboot_get_kernel_machine_bits.bits, align 4
  ret i32 %26
}

declare dso_local i32 @memset(%struct.old_utsname*, i32, i32) #1

declare dso_local i32 @host_uname(%struct.old_utsname*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
