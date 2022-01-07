; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_func_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_func_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIO_FD_INVALID = common dso_local global i32 0, align 4
@remote_fio_no_longjmp = common dso_local global i32 0, align 4
@FIO_FD_CONSOLE_IN = common dso_local global i32 0, align 4
@FIO_FD_CONSOLE_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @remote_fileio_func_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_fileio_func_close(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = call i64 @remote_fileio_extract_int(i8** %2, i64* %3)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (...) @remote_fileio_ioerror()
  br label %37

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32 @remote_fileio_map_fd(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @FIO_FD_INVALID, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = call i32 (...) @remote_fileio_badfd()
  br label %37

18:                                               ; preds = %9
  store i32 1, i32* @remote_fio_no_longjmp, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @FIO_FD_CONSOLE_IN, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @FIO_FD_CONSOLE_OUT, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @close(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @remote_fileio_return_errno(i32 -1)
  br label %32

32:                                               ; preds = %30, %26, %22, %18
  %33 = load i64, i64* %3, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @remote_fileio_close_target_fd(i32 %34)
  %36 = call i32 @remote_fileio_return_success(i32 0)
  br label %37

37:                                               ; preds = %32, %16, %7
  ret void
}

declare dso_local i64 @remote_fileio_extract_int(i8**, i64*) #1

declare dso_local i32 @remote_fileio_ioerror(...) #1

declare dso_local i32 @remote_fileio_map_fd(i32) #1

declare dso_local i32 @remote_fileio_badfd(...) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @remote_fileio_return_errno(i32) #1

declare dso_local i32 @remote_fileio_close_target_fd(i32) #1

declare dso_local i32 @remote_fileio_return_success(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
