; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/sys/extr_sendfile_test.c_verify_source_and_dest.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/sys/extr_sendfile_test.c_verify_source_and_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"dest_file: \00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"open failed\00", align 1
@.str.2 = private unnamed_addr constant [89 x i8] c"number of bytes written out to %s (%ju) doesn't match the expected number of bytes (%zu)\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"lseek failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"mmap failed: %s\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"Will mmap in the source file from offset=%jd to length=%zu\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"Contents of source and destination do not match. '%s' != '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i64, i64)* @verify_source_and_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_source_and_dest(i8* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @atf_utils_cat_file(i8* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = call i32 @open(i8* %17, i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, -1
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %14, align 4
  %25 = call i64 @file_size_from_fd(i32 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @file_size_from_fd(i32 %26)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %7, align 8
  %33 = sub nsw i64 %31, %32
  br label %36

34:                                               ; preds = %4
  %35 = load i64, i64* %8, align 8
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i64 [ %33, %30 ], [ %35, %34 ]
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %11, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i64, i64* %13, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call i32 (i32, i64, i8*, i8*, ...) @ATF_REQUIRE_EQ_MSG(i32 %39, i64 %40, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i8* %41, i64 %42, i64 %43)
  %45 = load i32, i32* %6, align 4
  %46 = load i64, i64* %7, align 8
  %47 = load i32, i32* @SEEK_SET, align 4
  %48 = call i32 @lseek(i32 %45, i64 %46, i32 %47)
  %49 = sext i32 %48 to i64
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 @strerror(i32 %50)
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 (i32, i64, i8*, i8*, ...) @ATF_REQUIRE_EQ_MSG(i32 0, i64 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  %55 = load i64, i64* %13, align 8
  %56 = load i32, i32* @PROT_READ, align 4
  %57 = load i32, i32* @MAP_PRIVATE, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i8* @mmap(i32* null, i64 %55, i32 %56, i32 %57, i32 %58, i64 0)
  store i8* %59, i8** %9, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i8*, i8** @MAP_FAILED, align 8
  %62 = icmp ne i8* %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* @errno, align 4
  %65 = call i32 @strerror(i32 %64)
  %66 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %13, align 8
  %69 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i64 %67, i64 %68)
  %70 = load i64, i64* %13, align 8
  %71 = load i32, i32* @PROT_READ, align 4
  %72 = load i32, i32* @MAP_PRIVATE, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i64, i64* %7, align 8
  %75 = call i8* @mmap(i32* null, i64 %70, i32 %71, i32 %72, i32 %73, i64 %74)
  store i8* %75, i8** %10, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i8*, i8** @MAP_FAILED, align 8
  %78 = icmp ne i8* %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* @errno, align 4
  %81 = call i32 @strerror(i32 %80)
  %82 = call i32 (i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  %83 = load i8*, i8** %10, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = load i64, i64* %13, align 8
  %86 = call i32 @memcmp(i8* %83, i8* %84, i64 %85)
  %87 = sext i32 %86 to i64
  %88 = load i8*, i8** %10, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 (i32, i64, i8*, i8*, ...) @ATF_REQUIRE_EQ_MSG(i32 0, i64 %87, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i8* %88, i8* %89)
  %91 = load i8*, i8** %10, align 8
  %92 = load i64, i64* %13, align 8
  %93 = call i32 @munmap(i8* %91, i64 %92)
  %94 = load i8*, i8** %9, align 8
  %95 = load i64, i64* %13, align 8
  %96 = call i32 @munmap(i8* %94, i64 %95)
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @close(i32 %97)
  ret void
}

declare dso_local i32 @atf_utils_cat_file(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, ...) #1

declare dso_local i64 @file_size_from_fd(i32) #1

declare dso_local i32 @ATF_REQUIRE_EQ_MSG(i32, i64, i8*, i8*, ...) #1

declare dso_local i32 @lseek(i32, i64, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i64) #1

declare dso_local i32 @printf(i8*, i64, i64) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @munmap(i8*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
