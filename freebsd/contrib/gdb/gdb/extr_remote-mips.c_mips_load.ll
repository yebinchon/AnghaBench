; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"mips_load:  Couldn't get into monitor mode.\00", align 1
@mips_monitor = common dso_local global i64 0, align 8
@MON_IDT = common dso_local global i64 0, align 8
@deprecated_register_valid = common dso_local global i64* null, align 8
@PC_REGNUM = common dso_local global i64 0, align 8
@exec_bfd = common dso_local global i64 0, align 8
@null_ptid = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @mips_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_load(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i64 (...) @mips_exit_debug()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %2
  %10 = load i64, i64* @mips_monitor, align 8
  %11 = load i64, i64* @MON_IDT, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @pmon_load_fast(i8* %14)
  br label %19

16:                                               ; preds = %9
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @mips_load_srec(i8* %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = call i32 (...) @mips_initialize()
  %21 = load i64, i64* @mips_monitor, align 8
  %22 = load i64, i64* @MON_IDT, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i64*, i64** @deprecated_register_valid, align 8
  %26 = load i64, i64* @PC_REGNUM, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i64, i64* @exec_bfd, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i64, i64* @exec_bfd, align 8
  %33 = call i32 @bfd_get_start_address(i64 %32)
  %34 = call i32 @write_pc(i32 %33)
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32, i32* @null_ptid, align 4
  store i32 %36, i32* @inferior_ptid, align 4
  %37 = call i32 (...) @clear_symtab_users()
  ret void
}

declare dso_local i64 @mips_exit_debug(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @pmon_load_fast(i8*) #1

declare dso_local i32 @mips_load_srec(i8*) #1

declare dso_local i32 @mips_initialize(...) #1

declare dso_local i32 @write_pc(i32) #1

declare dso_local i32 @bfd_get_start_address(i64) #1

declare dso_local i32 @clear_symtab_users(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
