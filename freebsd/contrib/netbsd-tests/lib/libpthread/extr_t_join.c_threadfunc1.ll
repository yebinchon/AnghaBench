; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_t_join.c_threadfunc1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_t_join.c_threadfunc1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EDEADLK = common dso_local global i32 0, align 4
@error = common dso_local global i32 0, align 4
@STACKSIZE = common dso_local global i64 0, align 8
@threadfunc2 = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @threadfunc1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @threadfunc1(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [25 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %5, align 8
  %9 = call i32 (...) @pthread_self()
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @pthread_join(i32 %10, i8** null)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @ATF_REQUIRE(i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @EDEADLK, align 4
  %18 = call i32 @ATF_REQUIRE_EQ(i32 %16, i32 %17)
  %19 = call i64 @pthread_attr_init(i32* %8)
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @ATF_REQUIRE(i32 %21)
  store i64 0, i64* %6, align 8
  br label %23

23:                                               ; preds = %78, %1
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds [25 x i32], [25 x i32]* %3, i64 0, i64 0
  %26 = call i64 @__arraycount(i32* %25)
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %81

28:                                               ; preds = %23
  store i32 1, i32* @error, align 4
  %29 = load i64, i64* @STACKSIZE, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, 1
  %32 = mul i64 %29, %31
  %33 = call i64 @pthread_attr_setstacksize(i32* %8, i64 %32)
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @ATF_REQUIRE(i32 %35)
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds [25 x i32], [25 x i32]* %3, i64 0, i64 %37
  %39 = load i32, i32* @threadfunc2, align 4
  %40 = load i64, i64* %6, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @pthread_create(i32* %38, i32* %8, i32 %39, i8* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ATF_REQUIRE_EQ(i32 %43, i32 0)
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds [25 x i32], [25 x i32]* %3, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pthread_join(i32 %47, i8** %5)
  %49 = call i32 @PTHREAD_REQUIRE(i32 %48)
  %50 = load i32, i32* @error, align 4
  %51 = call i32 @ATF_REQUIRE_EQ(i32 %50, i32 0)
  %52 = load i8*, i8** %5, align 8
  %53 = icmp ne i8* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @ATF_REQUIRE(i32 %54)
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = add i64 %57, 1
  %59 = inttoptr i64 %58 to i8*
  %60 = icmp eq i8* %56, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @ATF_REQUIRE(i32 %61)
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds [25 x i32], [25 x i32]* %3, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pthread_join(i32 %65, i8** null)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @ESRCH, align 4
  %69 = call i32 @ATF_REQUIRE_EQ(i32 %67, i32 %68)
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds [25 x i32], [25 x i32]* %3, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pthread_detach(i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @ATF_REQUIRE(i32 %76)
  br label %78

78:                                               ; preds = %28
  %79 = load i64, i64* %6, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %6, align 8
  br label %23

81:                                               ; preds = %23
  %82 = call i64 @pthread_attr_destroy(i32* %8)
  %83 = icmp eq i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @ATF_REQUIRE(i32 %84)
  %86 = call i32 @pthread_exit(i32* null)
  ret i8* null
}

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @pthread_join(i32, i8**) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @ATF_REQUIRE_EQ(i32, i32) #1

declare dso_local i64 @pthread_attr_init(i32*) #1

declare dso_local i64 @__arraycount(i32*) #1

declare dso_local i64 @pthread_attr_setstacksize(i32*, i64) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i8*) #1

declare dso_local i32 @PTHREAD_REQUIRE(i32) #1

declare dso_local i32 @pthread_detach(i32) #1

declare dso_local i64 @pthread_attr_destroy(i32*) #1

declare dso_local i32 @pthread_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
