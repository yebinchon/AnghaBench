; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/sys/extr_t_mmap.c_testloan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/sys/extr_t_mmap.c_testloan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZE = common dso_local global i32 0, align 4
@AF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"socketpair() failed\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"setsockopt() failed, SO_RCVBUF\00", align 1
@SO_SNDBUF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"setsockopt() failed, SO_SNDBUF\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"fcntl() failed\00", align 1
@page = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"write() failed\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"read() failed\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"too short read\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"data mismatch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testloan(i8* %0, i8* %1, i8 signext %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8 %2, i8* %7, align 1
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* @BUFSIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i32, i32* @BUFSIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %23 = load i32, i32* @BUFSIZE, align 4
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* @BUFSIZE, align 4
  %29 = call i32 @memcpy(i8* %22, i8* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %4
  %31 = load i32, i32* @AF_LOCAL, align 4
  %32 = load i32, i32* @SOCK_STREAM, align 4
  %33 = load i32, i32* @PF_UNSPEC, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %35 = call i64 @socketpair(i32 %31, i32 %32, i32 %33, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %30
  %40 = load i32, i32* @BUFSIZE, align 4
  store i32 %40, i32* %15, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SOL_SOCKET, align 4
  %44 = load i32, i32* @SO_RCVBUF, align 4
  %45 = call i64 @setsockopt(i32 %42, i32 %43, i32 %44, i32* %15, i32 4)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %39
  %50 = load i32, i32* @BUFSIZE, align 4
  store i32 %50, i32* %15, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SOL_SOCKET, align 4
  %54 = load i32, i32* @SO_SNDBUF, align 4
  %55 = call i64 @setsockopt(i32 %52, i32 %53, i32 %54, i32* %15, i32 4)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %49
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @F_SETFL, align 4
  %63 = load i32, i32* @O_NONBLOCK, align 4
  %64 = call i64 @fcntl(i32 %61, i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %59
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* @page, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i32, i32* @BUFSIZE, align 4
  %76 = load i32, i32* @page, align 4
  %77 = sub nsw i32 %75, %76
  %78 = call i32 @write(i32 %70, i8* %74, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %83

81:                                               ; preds = %68
  %82 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %68
  %84 = load i8*, i8** %6, align 8
  %85 = load i8, i8* %7, align 1
  %86 = load i32, i32* @BUFSIZE, align 4
  %87 = call i32 @memset(i8* %84, i8 signext %85, i32 %86)
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @page, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %19, i64 %91
  %93 = load i32, i32* @BUFSIZE, align 4
  %94 = load i32, i32* @page, align 4
  %95 = sub nsw i32 %93, %94
  %96 = call i32 @read(i32 %89, i8* %92, i32 %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %101

99:                                               ; preds = %83
  %100 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %83
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %101
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load i32, i32* @page, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %19, i64 %112
  %114 = load i32, i32* %13, align 4
  %115 = call i64 @memcmp(i8* %22, i8* %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %110, %107
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @close(i32 %121)
  %123 = icmp eq i64 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 @ATF_REQUIRE(i32 %124)
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @close(i32 %127)
  %129 = icmp eq i64 %128, 0
  %130 = zext i1 %129 to i32
  %131 = call i32 @ATF_REQUIRE(i32 %130)
  %132 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %132)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i64 @socketpair(i32, i32, i32, i32*) #2

declare dso_local i32 @atf_tc_fail(i8*) #2

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #2

declare dso_local i64 @fcntl(i32, i32, i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @ATF_REQUIRE(i32) #2

declare dso_local i64 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
