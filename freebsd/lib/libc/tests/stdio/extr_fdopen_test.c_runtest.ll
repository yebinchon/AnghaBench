; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/stdio/extr_fdopen_test.c_runtest.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/stdio/extr_fdopen_test.c_runtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"open(\22%s\22, %#x) failed; errno=%d\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"fdopen(open(\22%s\22, %#x), \22%s\22) succeeded unexpectedly\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"fdopen(open(\22%s\22, %#x), \22%s\22) failed; errno=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32)* @runtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @runtest(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @open(i8* %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, -1
  %16 = zext i1 %15 to i32
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @errno, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 (i32, i8*, i8*, i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %18, i8* %21)
  %23 = load i32, i32* %10, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i32* @fdopen(i32 %23, i8* %24)
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @close(i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 (i32, i8*, i8*, i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %33, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 %35, i8* %36)
  br label %49

38:                                               ; preds = %4
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 1
  %41 = zext i1 %40 to i32
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 (i32, i8*, i8*, i32, i8*, ...) @ATF_REQUIRE_MSG(i32 %41, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %42, i32 %43, i8* %44, i32 %45)
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @fclose(i32* %47)
  br label %49

49:                                               ; preds = %38, %28
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i8*, i32, i8*, ...) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
