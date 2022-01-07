; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/sys/extr_t_socketpair.c_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/sys/extr_t_socketpair.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@F_GETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@SOCK_NONBLOCK = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %9

9:                                                ; preds = %13, %3
  %10 = load i32, i32* @O_RDONLY, align 4
  %11 = call i32 @open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, -1
  %16 = zext i1 %15 to i32
  %17 = call i32 @ATF_REQUIRE(i32 %16)
  br label %9

18:                                               ; preds = %9
  %19 = call i32 @closefrom(i32 3)
  %20 = icmp ne i32 %19, -1
  %21 = zext i1 %20 to i32
  %22 = call i32 @ATF_REQUIRE(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %24, %25
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %28 = call i64 @socketpair(i32 %23, i32 %26, i32 0, i32* %27)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @ATF_REQUIRE(i32 %30)
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 3
  %35 = zext i1 %34 to i32
  %36 = call i32 @ATF_REQUIRE(i32 %35)
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 4
  %40 = zext i1 %39 to i32
  %41 = call i32 @ATF_REQUIRE(i32 %40)
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @connected(i32 %43)
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @connected(i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @SOCK_CLOEXEC, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %18
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @F_GETFD, align 4
  %56 = call i32 @fcntl(i32 %54, i32 %55)
  %57 = load i32, i32* @FD_CLOEXEC, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @ATF_REQUIRE(i32 %60)
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @F_GETFD, align 4
  %65 = call i32 @fcntl(i32 %63, i32 %64)
  %66 = load i32, i32* @FD_CLOEXEC, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @ATF_REQUIRE(i32 %69)
  br label %90

71:                                               ; preds = %18
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @F_GETFD, align 4
  %75 = call i32 @fcntl(i32 %73, i32 %74)
  %76 = load i32, i32* @FD_CLOEXEC, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @ATF_REQUIRE(i32 %79)
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @F_GETFD, align 4
  %84 = call i32 @fcntl(i32 %82, i32 %83)
  %85 = load i32, i32* @FD_CLOEXEC, align 4
  %86 = and i32 %84, %85
  %87 = icmp eq i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @ATF_REQUIRE(i32 %88)
  br label %90

90:                                               ; preds = %71, %52
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @SOCK_NONBLOCK, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %90
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @F_GETFL, align 4
  %99 = call i32 @fcntl(i32 %97, i32 %98)
  %100 = load i32, i32* @O_NONBLOCK, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @ATF_REQUIRE(i32 %103)
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @F_GETFL, align 4
  %108 = call i32 @fcntl(i32 %106, i32 %107)
  %109 = load i32, i32* @O_NONBLOCK, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 @ATF_REQUIRE(i32 %112)
  br label %133

114:                                              ; preds = %90
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @F_GETFL, align 4
  %118 = call i32 @fcntl(i32 %116, i32 %117)
  %119 = load i32, i32* @O_NONBLOCK, align 4
  %120 = and i32 %118, %119
  %121 = icmp eq i32 %120, 0
  %122 = zext i1 %121 to i32
  %123 = call i32 @ATF_REQUIRE(i32 %122)
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @F_GETFL, align 4
  %127 = call i32 @fcntl(i32 %125, i32 %126)
  %128 = load i32, i32* @O_NONBLOCK, align 4
  %129 = and i32 %127, %128
  %130 = icmp eq i32 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @ATF_REQUIRE(i32 %131)
  br label %133

133:                                              ; preds = %114, %95
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @close(i32 %135)
  %137 = icmp ne i32 %136, -1
  %138 = zext i1 %137 to i32
  %139 = call i32 @ATF_REQUIRE(i32 %138)
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @close(i32 %141)
  %143 = icmp ne i32 %142, -1
  %144 = zext i1 %143 to i32
  %145 = call i32 @ATF_REQUIRE(i32 %144)
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @closefrom(i32) #1

declare dso_local i64 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @connected(i32) #1

declare dso_local i32 @fcntl(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
