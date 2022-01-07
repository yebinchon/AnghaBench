; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_func_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_func_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@FILEIO_ENODEV = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@FILEIO_EISDIR = common dso_local global i32 0, align 4
@remote_fio_no_longjmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @remote_fileio_func_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_fileio_func_open(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.stat, align 4
  store i8* %0, i8** %2, align 8
  %12 = call i64 @remote_fileio_extract_ptr_w_len(i8** %2, i32* %3, i32* %4)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (...) @remote_fileio_ioerror()
  br label %94

16:                                               ; preds = %1
  %17 = call i64 @remote_fileio_extract_int(i8** %2, i64* %6)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 (...) @remote_fileio_ioerror()
  br label %94

21:                                               ; preds = %16
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @remote_fileio_oflags_to_host(i64 %22)
  store i32 %23, i32* %7, align 4
  %24 = call i64 @remote_fileio_extract_int(i8** %2, i64* %6)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 (...) @remote_fileio_ioerror()
  br label %94

28:                                               ; preds = %21
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @remote_fileio_mode_to_host(i64 %29, i32 1)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i8* @alloca(i32 %31)
  store i8* %32, i8** %10, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @remote_read_bytes(i32 %33, i8* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = call i32 (...) @remote_fileio_ioerror()
  br label %94

42:                                               ; preds = %28
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @stat(i8* %43, %struct.stat* %11)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %80, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @S_ISREG(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @S_ISDIR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @FILEIO_ENODEV, align 4
  %58 = call i32 @remote_fileio_reply(i32 -1, i32 %57)
  br label %94

59:                                               ; preds = %51, %46
  %60 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @S_ISDIR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @O_WRONLY, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @O_WRONLY, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @O_RDWR, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @O_RDWR, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70, %64
  %77 = load i32, i32* @FILEIO_EISDIR, align 4
  %78 = call i32 @remote_fileio_reply(i32 -1, i32 %77)
  br label %94

79:                                               ; preds = %70, %59
  br label %80

80:                                               ; preds = %79, %42
  store i32 1, i32* @remote_fio_no_longjmp, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @open(i8* %81, i32 %82, i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = call i32 @remote_fileio_return_errno(i32 -1)
  br label %94

89:                                               ; preds = %80
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @remote_fileio_fd_to_targetfd(i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @remote_fileio_return_success(i32 %92)
  br label %94

94:                                               ; preds = %89, %87, %76, %56, %40, %26, %19, %14
  ret void
}

declare dso_local i64 @remote_fileio_extract_ptr_w_len(i8**, i32*, i32*) #1

declare dso_local i32 @remote_fileio_ioerror(...) #1

declare dso_local i64 @remote_fileio_extract_int(i8**, i64*) #1

declare dso_local i32 @remote_fileio_oflags_to_host(i64) #1

declare dso_local i32 @remote_fileio_mode_to_host(i64, i32) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @remote_read_bytes(i32, i8*, i32) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @remote_fileio_reply(i32, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @remote_fileio_return_errno(i32) #1

declare dso_local i32 @remote_fileio_fd_to_targetfd(i32) #1

declare dso_local i32 @remote_fileio_return_success(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
