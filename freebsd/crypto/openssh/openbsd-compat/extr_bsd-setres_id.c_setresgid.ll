; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_bsd-setres_id.c_setresgid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_bsd-setres_id.c_setresgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOSYS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"setegid %u: %.100s\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"setgid %u: %.100s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setresgid(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOSYS, align 4
  store i32 %14, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %39

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @setegid(i64 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32, i32* @errno, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* @errno, align 4
  %23 = call i8* @strerror(i32 %22)
  %24 = call i32 @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %21, i8* %23)
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* @errno, align 4
  store i32 -1, i32* %8, align 4
  br label %26

26:                                               ; preds = %19, %15
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @setgid(i64 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i32, i32* @errno, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* @errno, align 4
  %34 = call i8* @strerror(i32 %33)
  %35 = call i32 @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %32, i8* %34)
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* @errno, align 4
  store i32 -1, i32* %8, align 4
  br label %37

37:                                               ; preds = %30, %26
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %13
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @setegid(i64) #1

declare dso_local i32 @error(i8*, i64, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @setgid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
