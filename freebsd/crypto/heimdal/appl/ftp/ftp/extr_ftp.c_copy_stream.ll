; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_ftp.c_copy_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_ftp.c_copy_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@copy_stream.bufsize = internal global i64 0, align 8
@copy_stream.buf = internal global i8* null, align 8
@HASHBYTES = common dso_local global i32 0, align 4
@hash = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"local\00", align 1
@errno = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"netout\00", align 1
@BLOCKSIZE = common dso_local global i64 0, align 8
@MAP_FAILED = common dso_local global i64 0, align 8
@MAP_SHARED = common dso_local global i32 0, align 4
@MS_ASYNC = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @copy_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_stream(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @HASHBYTES, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i8*, i8** @copy_stream.buf, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @fileno(i32* %13)
  %15 = call i64 @fstat(i32 %14, %struct.stat* %10)
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %17
  %20 = phi %struct.stat* [ %10, %17 ], [ null, %18 ]
  %21 = call i8* @alloc_buffer(i8* %12, i64* @copy_stream.bufsize, %struct.stat* %20)
  store i8* %21, i8** @copy_stream.buf, align 8
  %22 = load i8*, i8** @copy_stream.buf, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %81

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %61, %25
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @fileno(i32* %27)
  %29 = load i8*, i8** @copy_stream.buf, align 8
  %30 = load i64, i64* @copy_stream.bufsize, align 8
  %31 = call i32 @read(i32 %28, i8* %29, i64 %30)
  store i32 %31, i32* %6, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %26
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @fileno(i32* %34)
  %36 = load i8*, i8** @copy_stream.buf, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i8* @sec_write(i32 %35, i8* %36, i32 %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %62

43:                                               ; preds = %33
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %56, %43
  %48 = load i64, i64* @hash, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp sgt i32 %51, %52
  br label %54

54:                                               ; preds = %50, %47
  %55 = phi i1 [ false, %47 ], [ %53, %50 ]
  br i1 %55, label %56, label %61

56:                                               ; preds = %54
  %57 = call i32 @putchar(i8 signext 35)
  %58 = load i32, i32* @HASHBYTES, align 4
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %47

61:                                               ; preds = %54
  br label %26

62:                                               ; preds = %42, %26
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @sec_fflush(i32* %63)
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 @warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %62
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i64, i64* @errno, align 8
  %74 = load i64, i64* @EPIPE, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %72
  store i32 -1, i32* %7, align 4
  br label %79

79:                                               ; preds = %78, %69
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %24
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i8* @alloc_buffer(i8*, i64*, %struct.stat*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i8* @sec_write(i32, i8*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @sec_fflush(i32*) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
