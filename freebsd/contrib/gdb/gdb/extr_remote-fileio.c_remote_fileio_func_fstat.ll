; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_func_fstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_func_fstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.fio_stat = type { i32 }
%struct.timeval = type { i64 }

@FIO_FD_INVALID = common dso_local global i32 0, align 4
@remote_fio_no_longjmp = common dso_local global i32 0, align 4
@FIO_FD_CONSOLE_IN = common dso_local global i32 0, align 4
@FIO_FD_CONSOLE_OUT = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @remote_fileio_func_fstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_fileio_func_fstat(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca %struct.fio_stat, align 4
  %11 = alloca %struct.timeval, align 8
  store i8* %0, i8** %2, align 8
  %12 = call i64 @remote_fileio_extract_int(i8** %2, i64* %7)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (...) @remote_fileio_ioerror()
  br label %101

16:                                               ; preds = %1
  %17 = load i64, i64* %7, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @remote_fileio_map_fd(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @FIO_FD_INVALID, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i32 (...) @remote_fileio_badfd()
  br label %101

25:                                               ; preds = %16
  %26 = call i64 @remote_fileio_extract_long(i8** %2, i64* %8)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (...) @remote_fileio_ioerror()
  br label %101

30:                                               ; preds = %25
  %31 = load i64, i64* %8, align 8
  store i64 %31, i64* %3, align 8
  store i32 1, i32* @remote_fio_no_longjmp, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @FIO_FD_CONSOLE_IN, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @FIO_FD_CONSOLE_OUT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %76

39:                                               ; preds = %35, %30
  %40 = getelementptr inbounds %struct.fio_stat, %struct.fio_stat* %10, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @remote_fileio_to_fio_uint(i32 1, i32 %41)
  %43 = load i32, i32* @S_IFCHR, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @FIO_FD_CONSOLE_IN, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @S_IRUSR, align 4
  br label %51

49:                                               ; preds = %39
  %50 = load i32, i32* @S_IWUSR, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = or i32 %43, %52
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  store i32 %53, i32* %54, align 8
  %55 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = call i32 (...) @getuid()
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 10
  store i32 %56, i32* %57, align 4
  %58 = call i32 (...) @getgid()
  %59 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 9
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8
  store i64 0, i64* %60, align 8
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 7
  store i64 0, i64* %61, align 8
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 2
  store i32 512, i32* %62, align 8
  %63 = call i32 @gettimeofday(%struct.timeval* %11, i32* null)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %51
  %66 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 3
  store i64 %67, i64* %68, align 8
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 4
  store i64 %67, i64* %69, align 8
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 5
  store i64 %67, i64* %70, align 8
  br label %75

71:                                               ; preds = %51
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 4
  store i64 0, i64* %73, align 8
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 5
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %71, %65
  store i32 0, i32* %5, align 4
  br label %79

76:                                               ; preds = %35
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @fstat(i32 %77, %struct.stat* %9)
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %76, %75
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 @remote_fileio_return_errno(i32 -1)
  br label %101

84:                                               ; preds = %79
  %85 = load i64, i64* %3, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = call i32 @remote_fileio_to_fio_stat(%struct.stat* %9, %struct.fio_stat* %10)
  %89 = load i64, i64* %3, align 8
  %90 = bitcast %struct.fio_stat* %10 to i8*
  %91 = call i32 @remote_fileio_write_bytes(i64 %89, i8* %90, i32 4)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp ne i64 %93, 4
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = call i32 @remote_fileio_return_errno(i32 -1)
  br label %101

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %84
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @remote_fileio_return_success(i32 %99)
  br label %101

101:                                              ; preds = %98, %95, %82, %28, %23, %14
  ret void
}

declare dso_local i64 @remote_fileio_extract_int(i8**, i64*) #1

declare dso_local i32 @remote_fileio_ioerror(...) #1

declare dso_local i32 @remote_fileio_map_fd(i32) #1

declare dso_local i32 @remote_fileio_badfd(...) #1

declare dso_local i64 @remote_fileio_extract_long(i8**, i64*) #1

declare dso_local i32 @remote_fileio_to_fio_uint(i32, i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @getgid(...) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @remote_fileio_return_errno(i32) #1

declare dso_local i32 @remote_fileio_to_fio_stat(%struct.stat*, %struct.fio_stat*) #1

declare dso_local i32 @remote_fileio_write_bytes(i64, i8*, i32) #1

declare dso_local i32 @remote_fileio_return_success(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
