; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_func_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_func_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.fio_stat = type { i32 }

@remote_fio_no_longjmp = common dso_local global i32 0, align 4
@FILEIO_EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @remote_fileio_func_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_fileio_func_stat(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca %struct.fio_stat, align 4
  store i8* %0, i8** %2, align 8
  %11 = call i64 @remote_fileio_extract_ptr_w_len(i8** %2, i64* %3, i32* %5)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 (...) @remote_fileio_ioerror()
  br label %76

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = call i8* @alloca(i32 %16)
  store i8* %17, i8** %7, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @remote_read_bytes(i64 %18, i8* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = call i32 (...) @remote_fileio_ioerror()
  br label %76

27:                                               ; preds = %15
  %28 = call i64 @remote_fileio_extract_long(i8** %2, i64* %8)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (...) @remote_fileio_ioerror()
  br label %76

32:                                               ; preds = %27
  %33 = load i64, i64* %8, align 8
  store i64 %33, i64* %3, align 8
  store i32 1, i32* @remote_fio_no_longjmp, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @stat(i8* %34, %struct.stat* %9)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i32 @remote_fileio_return_errno(i32 -1)
  br label %76

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @S_ISREG(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @S_ISDIR(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @FILEIO_EACCES, align 4
  %55 = call i32 @remote_fileio_reply(i32 -1, i32 %54)
  br label %76

56:                                               ; preds = %48, %43, %40
  %57 = load i64, i64* %3, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = call i32 @remote_fileio_to_fio_stat(%struct.stat* %9, %struct.fio_stat* %10)
  %61 = getelementptr inbounds %struct.fio_stat, %struct.fio_stat* %10, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @remote_fileio_to_fio_uint(i32 0, i32 %62)
  %64 = load i64, i64* %3, align 8
  %65 = bitcast %struct.fio_stat* %10 to i8*
  %66 = call i32 @remote_fileio_write_bytes(i64 %64, i8* %65, i32 4)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp ne i64 %68, 4
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = call i32 @remote_fileio_return_errno(i32 -1)
  br label %76

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %56
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @remote_fileio_return_success(i32 %74)
  br label %76

76:                                               ; preds = %73, %70, %53, %38, %30, %25, %13
  ret void
}

declare dso_local i64 @remote_fileio_extract_ptr_w_len(i8**, i64*, i32*) #1

declare dso_local i32 @remote_fileio_ioerror(...) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @remote_read_bytes(i64, i8*, i32) #1

declare dso_local i64 @remote_fileio_extract_long(i8**, i64*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @remote_fileio_return_errno(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @remote_fileio_reply(i32, i32) #1

declare dso_local i32 @remote_fileio_to_fio_stat(%struct.stat*, %struct.fio_stat*) #1

declare dso_local i32 @remote_fileio_to_fio_uint(i32, i32) #1

declare dso_local i32 @remote_fileio_write_bytes(i64, i8*, i32) #1

declare dso_local i32 @remote_fileio_return_success(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
