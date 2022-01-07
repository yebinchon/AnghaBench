; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/sys/extr_mlock_helper.c_set_vm_max_wired.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/sys/extr_mlock_helper.c_set_vm_max_wired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_MAX_WIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"could not open %s for writing: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"saving %s failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_vm_max_wired(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @VM_MAX_WIRED, align 4
  %6 = call i32* @fopen(i32 %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @VM_MAX_WIRED, align 4
  %11 = load i32, i32* @errno, align 4
  %12 = call i32 @strerror(i32 %11)
  %13 = call i32 @atf_tc_skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 %12)
  br label %26

14:                                               ; preds = %1
  %15 = call i32 @vm_max_wired_sysctl(i32* %4, i32* null)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @fprintf(i32* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = icmp sgt i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* @VM_MAX_WIRED, align 4
  %22 = call i32 @ATF_REQUIRE_MSG(i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @fclose(i32* %23)
  %25 = call i32 @vm_max_wired_sysctl(i32* null, i32* %2)
  br label %26

26:                                               ; preds = %14, %9
  ret void
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @atf_tc_skip(i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @vm_max_wired_sysctl(i32*, i32*) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i32) #1

declare dso_local i64 @fprintf(i32*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
