; ModuleID = '/home/carl/AnghaBench/freebsd/stand/powerpc/ofw/extr_cas.c_ppc64_cas.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/powerpc/ofw/extr_cas.c_ppc64_cas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PVR_CPU_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"cas: failed to open / node\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ibm,client-architecture-support\00", align 1
@ibm_arch_vec = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"cas: failed to call CAS method\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"cas: error: 0x%08lX\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppc64_cas() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = call i32 (...) @mfpvr()
  %6 = load i32, i32* @PVR_CPU_MASK, align 4
  %7 = and i32 %5, %6
  switch i32 %7, label %9 [
    i32 131, label %8
    i32 130, label %8
    i32 129, label %8
    i32 128, label %8
  ]

8:                                                ; preds = %0, %0, %0, %0
  br label %10

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %37

10:                                               ; preds = %8
  %11 = call i64 (...) @ppc64_hv()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 0, i32* %1, align 4
  br label %37

14:                                               ; preds = %10
  %15 = call i32 @OF_open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %37

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @OF_call_method(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %21, i32 1, i32 1, i32* @ibm_arch_vec, i64* %4)
  store i32 %22, i32* %2, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %33

26:                                               ; preds = %20
  %27 = load i64, i64* %4, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i64, i64* %4, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %30)
  store i32 -1, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %32, %24
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @OF_close(i32 %34)
  %36 = load i32, i32* %2, align 4
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %33, %18, %13, %9
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @mfpvr(...) #1

declare dso_local i64 @ppc64_hv(...) #1

declare dso_local i32 @OF_open(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @OF_call_method(i8*, i32, i32, i32, i32*, i64*) #1

declare dso_local i32 @OF_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
