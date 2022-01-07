; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_get_current_lwp.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_get_current_lwp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptrace_lwpinfo = type { i64 }

@target_has_execution = common dso_local global i32 0, align 4
@core_bfd = common dso_local global i32 0, align 4
@fbsd_core_get_first_lwp = common dso_local global i32 0, align 4
@PT_LWPINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"PT_LWPINFO\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @get_current_lwp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_current_lwp(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ptrace_lwpinfo, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @target_has_execution, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  store i64 0, i64* %5, align 8
  %9 = load i32, i32* @core_bfd, align 4
  %10 = load i32, i32* @fbsd_core_get_first_lwp, align 4
  %11 = call i32 @bfd_map_over_sections(i32 %9, i32 %10, i64* %5)
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %2, align 8
  br label %24

13:                                               ; preds = %1
  %14 = load i32, i32* @PT_LWPINFO, align 4
  %15 = load i32, i32* %3, align 4
  %16 = ptrtoint %struct.ptrace_lwpinfo* %4 to i32
  %17 = call i64 @ptrace(i32 %14, i32 %15, i32 %16, i32 8)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 @perror_with_name(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %13
  %22 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %4, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %2, align 8
  br label %24

24:                                               ; preds = %21, %8
  %25 = load i64, i64* %2, align 8
  ret i64 %25
}

declare dso_local i32 @bfd_map_over_sections(i32, i32, i64*) #1

declare dso_local i64 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
