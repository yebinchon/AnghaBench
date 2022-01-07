; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_func_unlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_func_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@FILEIO_ENODEV = common dso_local global i32 0, align 4
@remote_fio_no_longjmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @remote_fileio_func_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_fileio_func_unlink(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  store i8* %0, i8** %2, align 8
  %9 = call i64 @remote_fileio_extract_ptr_w_len(i8** %2, i32* %3, i32* %4)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (...) @remote_fileio_ioerror()
  br label %52

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = call i8* @alloca(i32 %14)
  store i8* %15, i8** %6, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @remote_read_bytes(i32 %16, i8* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = call i32 (...) @remote_fileio_ioerror()
  br label %52

25:                                               ; preds = %13
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @stat(i8* %26, %struct.stat* %8)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @S_ISREG(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @S_ISDIR(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @FILEIO_ENODEV, align 4
  %41 = call i32 @remote_fileio_reply(i32 -1, i32 %40)
  br label %52

42:                                               ; preds = %34, %29, %25
  store i32 1, i32* @remote_fio_no_longjmp, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @unlink(i8* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 @remote_fileio_return_errno(i32 -1)
  br label %52

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @remote_fileio_return_success(i32 %50)
  br label %52

52:                                               ; preds = %11, %23, %39, %49, %47
  ret void
}

declare dso_local i64 @remote_fileio_extract_ptr_w_len(i8**, i32*, i32*) #1

declare dso_local i32 @remote_fileio_ioerror(...) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @remote_read_bytes(i32, i8*, i32) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @remote_fileio_reply(i32, i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @remote_fileio_return_errno(i32) #1

declare dso_local i32 @remote_fileio_return_success(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
