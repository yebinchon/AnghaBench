; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_func_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_func_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIO_FD_INVALID = common dso_local global i32 0, align 4
@remote_fio_no_longjmp = common dso_local global i32 0, align 4
@gdb_stdtarg = common dso_local global i32 0, align 4
@gdb_stdtargerr = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @remote_fileio_func_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_fileio_func_write(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %12 = call i64 @remote_fileio_extract_int(i8** %2, i64* %3)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (...) @remote_fileio_ioerror()
  br label %105

16:                                               ; preds = %1
  %17 = load i64, i64* %3, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @remote_fileio_map_fd(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @FIO_FD_INVALID, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i32 (...) @remote_fileio_badfd()
  br label %105

25:                                               ; preds = %16
  %26 = call i64 @remote_fileio_extract_long(i8** %2, i64* %5)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (...) @remote_fileio_ioerror()
  br label %105

30:                                               ; preds = %25
  %31 = load i64, i64* %5, align 8
  store i64 %31, i64* %6, align 8
  %32 = call i64 @remote_fileio_extract_int(i8** %2, i64* %4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 (...) @remote_fileio_ioerror()
  br label %105

36:                                               ; preds = %30
  %37 = load i64, i64* %4, align 8
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i64 @xmalloc(i64 %38)
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %10, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @remote_read_bytes(i64 %41, i8* %42, i64 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %11, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @xfree(i8* %50)
  %52 = call i32 (...) @remote_fileio_ioerror()
  br label %105

53:                                               ; preds = %36
  store i32 1, i32* @remote_fio_no_longjmp, align 4
  %54 = load i32, i32* %7, align 4
  switch i32 %54, label %80 [
    i32 129, label %55
    i32 128, label %57
  ]

55:                                               ; preds = %53
  %56 = call i32 (...) @remote_fileio_badfd()
  br label %105

57:                                               ; preds = %53
  %58 = load i64, i64* %3, align 8
  %59 = icmp eq i64 %58, 1
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @gdb_stdtarg, align 4
  br label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @gdb_stdtargerr, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = load i8*, i8** %10, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @ui_file_write(i32 %65, i8* %66, i64 %67)
  %69 = load i64, i64* %3, align 8
  %70 = icmp eq i64 %69, 1
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @gdb_stdtarg, align 4
  br label %75

73:                                               ; preds = %64
  %74 = load i32, i32* @gdb_stdtargerr, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = call i32 @gdb_flush(i32 %76)
  %78 = load i64, i64* %11, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %8, align 4
  br label %94

80:                                               ; preds = %53
  %81 = load i32, i32* %7, align 4
  %82 = load i8*, i8** %10, align 8
  %83 = load i64, i64* %11, align 8
  %84 = call i32 @write(i32 %81, i8* %82, i64 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load i32, i32* @errno, align 4
  %89 = load i32, i32* @EACCES, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* @EBADF, align 4
  store i32 %92, i32* @errno, align 4
  br label %93

93:                                               ; preds = %91, %87, %80
  br label %94

94:                                               ; preds = %93, %75
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 @remote_fileio_return_errno(i32 -1)
  br label %102

99:                                               ; preds = %94
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @remote_fileio_return_success(i32 %100)
  br label %102

102:                                              ; preds = %99, %97
  %103 = load i8*, i8** %10, align 8
  %104 = call i32 @xfree(i8* %103)
  br label %105

105:                                              ; preds = %102, %55, %49, %34, %28, %23, %14
  ret void
}

declare dso_local i64 @remote_fileio_extract_int(i8**, i64*) #1

declare dso_local i32 @remote_fileio_ioerror(...) #1

declare dso_local i32 @remote_fileio_map_fd(i32) #1

declare dso_local i32 @remote_fileio_badfd(...) #1

declare dso_local i64 @remote_fileio_extract_long(i8**, i64*) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i32 @remote_read_bytes(i64, i8*, i64) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @ui_file_write(i32, i8*, i64) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i32 @write(i32, i8*, i64) #1

declare dso_local i32 @remote_fileio_return_errno(i32) #1

declare dso_local i32 @remote_fileio_return_success(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
