; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/sys/extr_t_msync.c_msync_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/sys/extr_t_msync.c_msync_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAP_FAILED = common dso_local global i8* null, align 8
@page = common dso_local global i64 0, align 8
@path = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"failed to open\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"write(2) failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_FILE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"failed to map\00", align 1
@off = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"failed to seek\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"failed to write garbage\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"failed to msync\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"msync did not synchronize\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @msync_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @msync_sync(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i8*, i8** @MAP_FAILED, align 8
  store i8* %12, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %13 = load i64, i64* @page, align 8
  %14 = call i8* @malloc(i64 %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %108

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* @page, align 8
  %21 = call i32 @memset(i8* %19, i8 signext 120, i64 %20)
  %22 = load i32, i32* @path, align 4
  %23 = load i32, i32* @O_RDWR, align 4
  %24 = load i32, i32* @O_CREAT, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @open(i32 %22, i32 %25, i32 448)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @free(i8* %30)
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %108

32:                                               ; preds = %18
  %33 = load i32, i32* %10, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* @page, align 8
  %36 = call i32 @write(i32 %33, i8* %34, i64 %35)
  %37 = icmp ne i32 %36, -1
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 @strerror(i32 %39)
  %41 = call i32 @ATF_REQUIRE_MSG(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i64, i64* @page, align 8
  %43 = load i32, i32* @PROT_READ, align 4
  %44 = load i32, i32* @PROT_WRITE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @MAP_FILE, align 4
  %47 = load i32, i32* @MAP_PRIVATE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %10, align 4
  %50 = call i8* @mmap(i32* null, i64 %42, i32 %45, i32 %48, i32 %49, i32 0)
  store i8* %50, i8** %7, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i8*, i8** @MAP_FAILED, align 8
  %53 = icmp eq i8* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %32
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %92

55:                                               ; preds = %32
  %56 = load i32, i32* %10, align 4
  %57 = load i64, i64* @off, align 8
  %58 = load i32, i32* @SEEK_SET, align 4
  %59 = call i64 @lseek(i32 %56, i64 %57, i32 %58)
  %60 = load i64, i64* @off, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %92

63:                                               ; preds = %55
  %64 = load i8*, i8** %4, align 8
  %65 = call i64 @strlen(i8* %64)
  store i64 %65, i64* %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i8*, i8** %4, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @write(i32 %66, i8* %67, i64 %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i64, i64* %9, align 8
  %72 = trunc i64 %71 to i32
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %92

75:                                               ; preds = %63
  %76 = load i8*, i8** %7, align 8
  %77 = load i64, i64* @page, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i64 @msync(i8* %76, i64 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %92

82:                                               ; preds = %75
  %83 = load i8*, i8** %7, align 8
  %84 = load i64, i64* @off, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8*, i8** %4, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call i64 @memcmp(i8* %85, i8* %86, i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  br label %92

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %90, %81, %74, %62, %54
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @free(i8* %93)
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @close(i32 %95)
  %97 = load i32, i32* @path, align 4
  %98 = call i32 @unlink(i32 %97)
  %99 = load i8*, i8** %7, align 8
  %100 = load i8*, i8** @MAP_FAILED, align 8
  %101 = icmp ne i8* %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %92
  %103 = load i8*, i8** %7, align 8
  %104 = load i64, i64* @page, align 8
  %105 = call i32 @munmap(i8* %103, i64 %104)
  br label %106

106:                                              ; preds = %102, %92
  %107 = load i8*, i8** %8, align 8
  store i8* %107, i8** %3, align 8
  br label %108

108:                                              ; preds = %106, %29, %17
  %109 = load i8*, i8** %3, align 8
  ret i8* %109
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i64) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @msync(i8*, i64, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @munmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
