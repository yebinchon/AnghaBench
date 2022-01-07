; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_unset_nonblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_unset_nonblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_GETFL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"fcntl(%d, F_GETFL): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"fd %d is not O_NONBLOCK\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"fd %d clearing O_NONBLOCK\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"fcntl(%d, F_SETFL, ~O_NONBLOCK): %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unset_nonblock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @F_GETFL, align 4
  %7 = call i32 (i32, i32, ...) @fcntl(i32 %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @errno, align 4
  %13 = call i8* @strerror(i32 %12)
  %14 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %11, i8* %13)
  store i32 -1, i32* %2, align 4
  br label %41

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @O_NONBLOCK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @debug3(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store i32 0, i32* %2, align 4
  br label %41

23:                                               ; preds = %15
  %24 = load i32, i32* %3, align 4
  %25 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @O_NONBLOCK, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @F_SETFL, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 (i32, i32, ...) @fcntl(i32 %30, i32 %31, i32 %32)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %40

35:                                               ; preds = %23
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @errno, align 4
  %38 = call i8* @strerror(i32 %37)
  %39 = call i32 (i8*, i32, ...) @debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %36, i8* %38)
  store i32 -1, i32* %2, align 4
  br label %41

40:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %35, %20, %10
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @debug3(i8*, i32) #1

declare dso_local i32 @debug(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
