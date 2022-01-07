; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_func_system.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_func_system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@remote_fio_system_call_allowed = common dso_local global i32 0, align 4
@FILEIO_EPERM = common dso_local global i32 0, align 4
@remote_fio_no_longjmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @remote_fileio_func_system to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_fileio_func_system(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @remote_fio_system_call_allowed, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @FILEIO_EPERM, align 4
  %12 = call i32 @remote_fileio_reply(i32 -1, i32 %11)
  br label %41

13:                                               ; preds = %1
  %14 = call i64 @remote_fileio_extract_ptr_w_len(i8** %2, i32* %3, i32* %5)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 (...) @remote_fileio_ioerror()
  br label %41

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = call i8* @alloca(i32 %19)
  store i8* %20, i8** %7, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @remote_read_bytes(i32 %21, i8* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = call i32 (...) @remote_fileio_ioerror()
  br label %41

30:                                               ; preds = %18
  store i32 1, i32* @remote_fio_no_longjmp, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @system(i8* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @remote_fileio_return_errno(i32 -1)
  br label %41

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @WEXITSTATUS(i32 %38)
  %40 = call i32 @remote_fileio_return_success(i32 %39)
  br label %41

41:                                               ; preds = %10, %16, %28, %37, %35
  ret void
}

declare dso_local i32 @remote_fileio_reply(i32, i32) #1

declare dso_local i64 @remote_fileio_extract_ptr_w_len(i8**, i32*, i32*) #1

declare dso_local i32 @remote_fileio_ioerror(...) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @remote_read_bytes(i32, i8*, i32) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @remote_fileio_return_errno(i32) #1

declare dso_local i32 @remote_fileio_return_success(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
