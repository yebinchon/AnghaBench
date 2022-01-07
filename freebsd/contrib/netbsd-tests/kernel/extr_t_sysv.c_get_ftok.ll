; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_t_sysv.c_get_ftok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_t_sysv.c_get_ftok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"/tmp/t_sysv.XXXXXX\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"mkdtemp() failed: %d\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"/token_key\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"open() of temp file failed: %d\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"unlink() failed: %d\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"rmdir() failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_ftok(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  %6 = alloca [64 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %10 = call i32 @strlcpy(i8* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 64)
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %12 = call i8* @mkdtemp(i8* %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @ATF_REQUIRE_MSG(i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @strlcpy(i8* %18, i8* %19, i32 64)
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @strlcpy(i8* %21, i8* %22, i32 64)
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %25 = call i32 @strlcat(i8* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 64)
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %27 = load i32, i32* @O_RDWR, align 4
  %28 = load i32, i32* @O_CREAT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @O_EXCL, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @open(i8* %26, i32 %31, i32 384)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %40

35:                                               ; preds = %1
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @rmdir(i8* %36)
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  store i32 -1, i32* %2, align 4
  br label %60

40:                                               ; preds = %1
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @close(i32 %41)
  br label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @ftok(i8* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %48 = call i32 @unlink(i8* %47)
  %49 = icmp ne i32 %48, -1
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @ATF_REQUIRE_MSG(i32 %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %54 = call i32 @rmdir(i8* %53)
  %55 = icmp ne i32 %54, -1
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* @errno, align 4
  %58 = call i32 @ATF_REQUIRE_MSG(i32 %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %43, %35
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @mkdtemp(i8*) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @rmdir(i8*) #1

declare dso_local i32 @atf_tc_fail(i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ftok(i8*, i32) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
