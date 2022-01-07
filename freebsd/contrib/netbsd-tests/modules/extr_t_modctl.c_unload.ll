; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/modules/extr_t_modctl.c_unload.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/modules/extr_t_modctl.c_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"Unloading module %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@MODCTL_UNLOAD = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"modctl(MODCTL_UNLOAD, %s) failed: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Module unload failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unload(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @check_permission()
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %7)
  store i32 0, i32* %5, align 4
  store i32 0, i32* @errno, align 4
  %9 = load i32, i32* @MODCTL_UNLOAD, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @__UNCONST(i8* %10)
  %12 = call i32 @modctl(i32 %9, i32 %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load i32, i32* @errno, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i8* @strerror(i32 %18)
  %20 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %17, i8* %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %14
  br label %26

26:                                               ; preds = %25, %2
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @check_permission(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @modctl(i32, i32) #1

declare dso_local i32 @__UNCONST(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @atf_tc_fail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
