; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/sys/extr_t_pipe2.c_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/sys/extr_t_pipe2.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"closefrom failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@F_GETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@O_NOSIGPIPE = common dso_local global i32 0, align 4
@F_GETNOSIGPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32], align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %5

5:                                                ; preds = %9, %1
  %6 = load i32, i32* @O_RDONLY, align 4
  %7 = call i32 @open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = icmp slt i32 %7, 3
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, -1
  %12 = zext i1 %11 to i32
  %13 = call i32 @ATF_REQUIRE(i32 %12)
  br label %5

14:                                               ; preds = %5
  %15 = call i32 @closefrom(i32 3)
  %16 = icmp ne i32 %15, -1
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 @strerror(i32 %18)
  %20 = call i32 @ATF_REQUIRE_MSG(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %22 = load i32, i32* %2, align 4
  %23 = call i64 @pipe2(i32* %21, i32 %22)
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @ATF_REQUIRE(i32 %25)
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 3
  %30 = zext i1 %29 to i32
  %31 = call i32 @ATF_REQUIRE(i32 %30)
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 4
  %35 = zext i1 %34 to i32
  %36 = call i32 @ATF_REQUIRE(i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @O_CLOEXEC, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %14
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @F_GETFD, align 4
  %45 = call i32 @fcntl(i32 %43, i32 %44)
  %46 = load i32, i32* @FD_CLOEXEC, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @ATF_REQUIRE(i32 %49)
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @F_GETFD, align 4
  %54 = call i32 @fcntl(i32 %52, i32 %53)
  %55 = load i32, i32* @FD_CLOEXEC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @ATF_REQUIRE(i32 %58)
  br label %79

60:                                               ; preds = %14
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @F_GETFD, align 4
  %64 = call i32 @fcntl(i32 %62, i32 %63)
  %65 = load i32, i32* @FD_CLOEXEC, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @ATF_REQUIRE(i32 %68)
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @F_GETFD, align 4
  %73 = call i32 @fcntl(i32 %71, i32 %72)
  %74 = load i32, i32* @FD_CLOEXEC, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @ATF_REQUIRE(i32 %77)
  br label %79

79:                                               ; preds = %60, %41
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* @O_NONBLOCK, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %79
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @F_GETFL, align 4
  %88 = call i32 @fcntl(i32 %86, i32 %87)
  %89 = load i32, i32* @O_NONBLOCK, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @ATF_REQUIRE(i32 %92)
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @F_GETFL, align 4
  %97 = call i32 @fcntl(i32 %95, i32 %96)
  %98 = load i32, i32* @O_NONBLOCK, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @ATF_REQUIRE(i32 %101)
  br label %122

103:                                              ; preds = %79
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @F_GETFL, align 4
  %107 = call i32 @fcntl(i32 %105, i32 %106)
  %108 = load i32, i32* @O_NONBLOCK, align 4
  %109 = and i32 %107, %108
  %110 = icmp eq i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @ATF_REQUIRE(i32 %111)
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @F_GETFL, align 4
  %116 = call i32 @fcntl(i32 %114, i32 %115)
  %117 = load i32, i32* @O_NONBLOCK, align 4
  %118 = and i32 %116, %117
  %119 = icmp eq i32 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i32 @ATF_REQUIRE(i32 %120)
  br label %122

122:                                              ; preds = %103, %84
  %123 = load i32, i32* %2, align 4
  %124 = load i32, i32* @O_NOSIGPIPE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %122
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @F_GETNOSIGPIPE, align 4
  %131 = call i32 @fcntl(i32 %129, i32 %130)
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i32 @ATF_REQUIRE(i32 %133)
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @F_GETNOSIGPIPE, align 4
  %138 = call i32 @fcntl(i32 %136, i32 %137)
  %139 = icmp ne i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = call i32 @ATF_REQUIRE(i32 %140)
  br label %157

142:                                              ; preds = %122
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @F_GETNOSIGPIPE, align 4
  %146 = call i32 @fcntl(i32 %144, i32 %145)
  %147 = icmp eq i32 %146, 0
  %148 = zext i1 %147 to i32
  %149 = call i32 @ATF_REQUIRE(i32 %148)
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @F_GETNOSIGPIPE, align 4
  %153 = call i32 @fcntl(i32 %151, i32 %152)
  %154 = icmp eq i32 %153, 0
  %155 = zext i1 %154 to i32
  %156 = call i32 @ATF_REQUIRE(i32 %155)
  br label %157

157:                                              ; preds = %142, %127
  %158 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @close(i32 %159)
  %161 = icmp ne i32 %160, -1
  %162 = zext i1 %161 to i32
  %163 = call i32 @ATF_REQUIRE(i32 %162)
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @close(i32 %165)
  %167 = icmp ne i32 %166, -1
  %168 = zext i1 %167 to i32
  %169 = call i32 @ATF_REQUIRE(i32 %168)
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i32) #1

declare dso_local i32 @closefrom(i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @pipe2(i32*, i32) #1

declare dso_local i32 @fcntl(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
