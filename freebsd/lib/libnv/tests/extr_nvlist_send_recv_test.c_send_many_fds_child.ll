; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libnv/tests/extr_nvlist_send_recv_test.c_send_many_fds_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libnv/tests/extr_nvlist_send_recv_test.c_send_many_fds_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PATH_DEVNULL = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@NFDS = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sysctl\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fd%d\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"fd count mismatch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @send_many_fds_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_many_fds_child(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [16 x i8], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @_PATH_DEVNULL, align 4
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = call i32 @open(i32 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sge i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @ATF_REQUIRE(i32 %15)
  store i32 1, i32* %8, align 4
  br label %17

17:                                               ; preds = %65, %1
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @NFDS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %68

21:                                               ; preds = %17
  %22 = call i32* @nvlist_create(i32 0)
  store i32* %22, i32** %4, align 8
  %23 = call i32 (...) @nopenfds()
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EXIT_FAILURE, align 4
  %28 = call i32 @err(i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %21
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %42, %29
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @snprintf(i8* %35, i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @nvlist_add_descriptor(i32* %38, i8* %39, i32 %40)
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %30

45:                                               ; preds = %30
  %46 = load i32, i32* %2, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @nvlist_send(i32 %46, i32* %47)
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @nvlist_destroy(i32* %49)
  %51 = call i32 (...) @nopenfds()
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* @EXIT_FAILURE, align 4
  %56 = call i32 @err(i32 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %45
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @EXIT_FAILURE, align 4
  %63 = call i32 @errx(i32 %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %57
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %17

68:                                               ; preds = %17
  ret void
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @nopenfds(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @nvlist_add_descriptor(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_send(i32, i32*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
