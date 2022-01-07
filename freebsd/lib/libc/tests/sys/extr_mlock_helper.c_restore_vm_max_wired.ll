; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/sys/extr_mlock_helper.c_restore_vm_max_wired.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/sys/extr_mlock_helper.c_restore_vm_max_wired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_MAX_WIRED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"fopen failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"fscanf failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"old value in %s: %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @restore_vm_max_wired() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = load i8*, i8** @VM_MAX_WIRED, align 8
  %4 = call i32* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %28

9:                                                ; preds = %0
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @fscanf(i32* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64* %2)
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @fclose(i32* %15)
  br label %28

17:                                               ; preds = %9
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @fclose(i32* %18)
  %20 = load i8*, i8** @VM_MAX_WIRED, align 8
  %21 = load i64, i64* %2, align 8
  %22 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %20, i64 %21)
  %23 = load i64, i64* %2, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %28

26:                                               ; preds = %17
  %27 = call i32 @vm_max_wired_sysctl(i32* null, i64* %2)
  br label %28

28:                                               ; preds = %26, %25, %13, %7
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fscanf(i32*, i8*, i64*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @printf(i8*, i8*, i64) #1

declare dso_local i32 @vm_max_wired_sysctl(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
