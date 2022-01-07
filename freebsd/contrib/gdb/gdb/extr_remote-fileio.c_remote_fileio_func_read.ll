; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_func_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_func_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIO_FD_INVALID = common dso_local global i32 0, align 4
@remote_fileio_func_read.remaining_buf = internal global i8* null, align 8
@remote_fileio_func_read.remaining_length = internal global i32 0, align 4
@remote_fio_no_longjmp = common dso_local global i32 0, align 4
@gdb_stdtargin = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @remote_fileio_func_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_fileio_func_read(i8* %0) #0 {
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
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %14 = call i64 @remote_fileio_extract_int(i8** %2, i64* %3)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 (...) @remote_fileio_ioerror()
  br label %172

18:                                               ; preds = %1
  %19 = load i64, i64* %3, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @remote_fileio_map_fd(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @FIO_FD_INVALID, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 (...) @remote_fileio_badfd()
  br label %172

27:                                               ; preds = %18
  %28 = call i64 @remote_fileio_extract_long(i8** %2, i64* %5)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (...) @remote_fileio_ioerror()
  br label %172

32:                                               ; preds = %27
  %33 = load i64, i64* %5, align 8
  store i64 %33, i64* %6, align 8
  %34 = call i64 @remote_fileio_extract_int(i8** %2, i64* %4)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 (...) @remote_fileio_ioerror()
  br label %172

38:                                               ; preds = %32
  %39 = load i64, i64* %4, align 8
  store i64 %39, i64* %11, align 8
  %40 = load i32, i32* %7, align 4
  switch i32 %40, label %118 [
    i32 128, label %41
    i32 129, label %43
  ]

41:                                               ; preds = %38
  %42 = call i32 (...) @remote_fileio_badfd()
  br label %172

43:                                               ; preds = %38
  %44 = call i64 @xmalloc(i64 32768)
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %10, align 8
  %46 = load i8*, i8** @remote_fileio_func_read.remaining_buf, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %85

48:                                               ; preds = %43
  store i32 1, i32* @remote_fio_no_longjmp, align 4
  %49 = load i32, i32* @remote_fileio_func_read.remaining_length, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %11, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %48
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** @remote_fileio_func_read.remaining_buf, align 8
  %56 = load i64, i64* %11, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @memcpy(i8* %54, i8* %55, i32 %57)
  %59 = load i8*, i8** @remote_fileio_func_read.remaining_buf, align 8
  %60 = load i8*, i8** @remote_fileio_func_read.remaining_buf, align 8
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i32, i32* @remote_fileio_func_read.remaining_length, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %11, align 8
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @memmove(i8* %59, i8* %62, i32 %67)
  %69 = load i64, i64* %11, align 8
  %70 = load i32, i32* @remote_fileio_func_read.remaining_length, align 4
  %71 = sext i32 %70 to i64
  %72 = sub i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* @remote_fileio_func_read.remaining_length, align 4
  %74 = load i64, i64* %11, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %8, align 4
  br label %84

76:                                               ; preds = %48
  %77 = load i8*, i8** %10, align 8
  %78 = load i8*, i8** @remote_fileio_func_read.remaining_buf, align 8
  %79 = load i32, i32* @remote_fileio_func_read.remaining_length, align 4
  %80 = call i32 @memcpy(i8* %77, i8* %78, i32 %79)
  %81 = load i8*, i8** @remote_fileio_func_read.remaining_buf, align 8
  %82 = call i32 @xfree(i8* %81)
  store i8* null, i8** @remote_fileio_func_read.remaining_buf, align 8
  %83 = load i32, i32* @remote_fileio_func_read.remaining_length, align 4
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %76, %53
  br label %117

85:                                               ; preds = %43
  %86 = load i32, i32* @gdb_stdtargin, align 4
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @ui_file_read(i32 %86, i8* %87, i32 32767)
  store i32 %88, i32* %8, align 4
  store i32 1, i32* @remote_fio_no_longjmp, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %116

91:                                               ; preds = %85
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %11, align 8
  %95 = icmp ugt i64 %93, %94
  br i1 %95, label %96, label %116

96:                                               ; preds = %91
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %11, align 8
  %100 = sub i64 %98, %99
  %101 = call i64 @xmalloc(i64 %100)
  %102 = inttoptr i64 %101 to i8*
  store i8* %102, i8** @remote_fileio_func_read.remaining_buf, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %11, align 8
  %106 = sub i64 %104, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* @remote_fileio_func_read.remaining_length, align 4
  %108 = load i8*, i8** @remote_fileio_func_read.remaining_buf, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = load i64, i64* %11, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  %112 = load i32, i32* @remote_fileio_func_read.remaining_length, align 4
  %113 = call i32 @memcpy(i8* %108, i8* %111, i32 %112)
  %114 = load i64, i64* %11, align 8
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %96, %91, %85
  br label %117

117:                                              ; preds = %116, %84
  br label %148

118:                                              ; preds = %38
  %119 = load i64, i64* %11, align 8
  %120 = call i64 @xmalloc(i64 %119)
  %121 = inttoptr i64 %120 to i8*
  store i8* %121, i8** %10, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @SEEK_CUR, align 4
  %124 = call i32 @lseek(i32 %122, i32 0, i32 %123)
  store i32 %124, i32* %12, align 4
  store i32 1, i32* @remote_fio_no_longjmp, align 4
  %125 = load i32, i32* %7, align 4
  %126 = load i8*, i8** %10, align 8
  %127 = load i64, i64* %11, align 8
  %128 = call i32 @read(i32 %125, i8* %126, i64 %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %118
  %132 = load i32, i32* @errno, align 4
  %133 = load i32, i32* @EINTR, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %131
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @SEEK_CUR, align 4
  %138 = call i32 @lseek(i32 %136, i32 0, i32 %137)
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %13, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %135
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %12, align 4
  %145 = sub nsw i32 %143, %144
  store i32 %145, i32* %8, align 4
  br label %146

146:                                              ; preds = %142, %135
  br label %147

147:                                              ; preds = %146, %131, %118
  br label %148

148:                                              ; preds = %147, %117
  %149 = load i32, i32* %8, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %148
  %152 = load i64, i64* %6, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @remote_fileio_write_bytes(i64 %152, i8* %153, i32 %154)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %151
  store i32 -1, i32* %8, align 4
  br label %160

160:                                              ; preds = %159, %151
  br label %161

161:                                              ; preds = %160, %148
  %162 = load i32, i32* %8, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = call i32 @remote_fileio_return_errno(i32 -1)
  br label %169

166:                                              ; preds = %161
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @remote_fileio_return_success(i32 %167)
  br label %169

169:                                              ; preds = %166, %164
  %170 = load i8*, i8** %10, align 8
  %171 = call i32 @xfree(i8* %170)
  br label %172

172:                                              ; preds = %169, %41, %36, %30, %25, %16
  ret void
}

declare dso_local i64 @remote_fileio_extract_int(i8**, i64*) #1

declare dso_local i32 @remote_fileio_ioerror(...) #1

declare dso_local i32 @remote_fileio_map_fd(i32) #1

declare dso_local i32 @remote_fileio_badfd(...) #1

declare dso_local i64 @remote_fileio_extract_long(i8**, i64*) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @ui_file_read(i32, i8*, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i32 @remote_fileio_write_bytes(i64, i8*, i32) #1

declare dso_local i32 @remote_fileio_return_errno(i32) #1

declare dso_local i32 @remote_fileio_return_success(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
