; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_func_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_func_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@FILEIO_EACCES = common dso_local global i32 0, align 4
@remote_fio_no_longjmp = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOTEMPTY = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@EISDIR = common dso_local global i64 0, align 8
@PATH_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @remote_fileio_func_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_fileio_func_rename(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.stat, align 4
  %12 = alloca %struct.stat, align 4
  store i8* %0, i8** %2, align 8
  %13 = call i64 @remote_fileio_extract_ptr_w_len(i8** %2, i32* %3, i32* %4)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 (...) @remote_fileio_ioerror()
  br label %96

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = call i8* @alloca(i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @remote_read_bytes(i32 %20, i8* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = call i32 (...) @remote_fileio_ioerror()
  br label %96

29:                                               ; preds = %17
  %30 = call i64 @remote_fileio_extract_ptr_w_len(i8** %2, i32* %3, i32* %4)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (...) @remote_fileio_ioerror()
  br label %96

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = call i8* @alloca(i32 %35)
  store i8* %36, i8** %7, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @remote_read_bytes(i32 %37, i8* %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = call i32 (...) @remote_fileio_ioerror()
  br label %96

46:                                               ; preds = %34
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @stat(i8* %47, %struct.stat* %11)
  store i32 %48, i32* %9, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @stat(i8* %49, %struct.stat* %12)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @S_ISREG(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @S_ISDIR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %58, %53, %46
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @S_ISREG(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @S_ISDIR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71, %58
  %77 = load i32, i32* @FILEIO_EACCES, align 4
  %78 = call i32 @remote_fileio_reply(i32 -1, i32 %77)
  br label %96

79:                                               ; preds = %71, %66, %63
  store i32 1, i32* @remote_fio_no_longjmp, align 4
  %80 = load i8*, i8** %6, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @rename(i8* %80, i8* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load i64, i64* @errno, align 8
  %87 = load i64, i64* @ENOTEMPTY, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i64, i64* @EEXIST, align 8
  store i64 %90, i64* @errno, align 8
  br label %91

91:                                               ; preds = %89, %85
  %92 = call i32 @remote_fileio_return_errno(i32 -1)
  br label %96

93:                                               ; preds = %79
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @remote_fileio_return_success(i32 %94)
  br label %96

96:                                               ; preds = %15, %27, %32, %44, %76, %93, %91
  ret void
}

declare dso_local i64 @remote_fileio_extract_ptr_w_len(i8**, i32*, i32*) #1

declare dso_local i32 @remote_fileio_ioerror(...) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @remote_read_bytes(i32, i8*, i32) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @remote_fileio_reply(i32, i32) #1

declare dso_local i32 @rename(i8*, i8*) #1

declare dso_local i32 @remote_fileio_return_errno(i32) #1

declare dso_local i32 @remote_fileio_return_success(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
