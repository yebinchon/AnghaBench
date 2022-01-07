; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_func_lseek.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_func_lseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIO_FD_INVALID = common dso_local global i32 0, align 4
@FIO_FD_CONSOLE_IN = common dso_local global i32 0, align 4
@FIO_FD_CONSOLE_OUT = common dso_local global i32 0, align 4
@FILEIO_ESPIPE = common dso_local global i32 0, align 4
@FILEIO_EINVAL = common dso_local global i32 0, align 4
@remote_fio_no_longjmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @remote_fileio_func_lseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_fileio_func_lseek(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = call i64 @remote_fileio_extract_int(i8** %2, i64* %3)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (...) @remote_fileio_ioerror()
  br label %64

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @remote_fileio_map_fd(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @FIO_FD_INVALID, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = call i32 (...) @remote_fileio_badfd()
  br label %64

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @FIO_FD_CONSOLE_IN, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @FIO_FD_CONSOLE_OUT, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %22
  %31 = load i32, i32* @FILEIO_ESPIPE, align 4
  %32 = call i32 @remote_fileio_reply(i32 -1, i32 %31)
  br label %64

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33
  %35 = call i64 @remote_fileio_extract_long(i8** %2, i64* %4)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (...) @remote_fileio_ioerror()
  br label %64

39:                                               ; preds = %34
  %40 = load i64, i64* %4, align 8
  store i64 %40, i64* %7, align 8
  %41 = call i64 @remote_fileio_extract_int(i8** %2, i64* %3)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 (...) @remote_fileio_ioerror()
  br label %64

45:                                               ; preds = %39
  %46 = load i64, i64* %3, align 8
  %47 = call i64 @remote_fileio_seek_flag_to_host(i64 %46, i32* %6)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @FILEIO_EINVAL, align 4
  %51 = call i32 @remote_fileio_reply(i32 -1, i32 %50)
  br label %64

52:                                               ; preds = %45
  store i32 1, i32* @remote_fio_no_longjmp, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i64, i64* %7, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @lseek(i32 %53, i64 %54, i32 %55)
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp eq i64 %57, -1
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = call i32 @remote_fileio_return_errno(i32 -1)
  br label %64

61:                                               ; preds = %52
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @remote_fileio_return_success(i64 %62)
  br label %64

64:                                               ; preds = %11, %20, %30, %37, %43, %49, %61, %59
  ret void
}

declare dso_local i64 @remote_fileio_extract_int(i8**, i64*) #1

declare dso_local i32 @remote_fileio_ioerror(...) #1

declare dso_local i32 @remote_fileio_map_fd(i32) #1

declare dso_local i32 @remote_fileio_badfd(...) #1

declare dso_local i32 @remote_fileio_reply(i32, i32) #1

declare dso_local i64 @remote_fileio_extract_long(i8**, i64*) #1

declare dso_local i64 @remote_fileio_seek_flag_to_host(i64, i32*) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @remote_fileio_return_errno(i32) #1

declare dso_local i32 @remote_fileio_return_success(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
