; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_fcache.c_scrub_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_fcache.c_scrub_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_END = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @scrub_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scrub_file(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @SEEK_END, align 4
  %9 = call i64 @lseek(i32 %7, i32 0, i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @errno, align 4
  store i32 %13, i32* %2, align 4
  br label %44

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SEEK_SET, align 4
  %17 = call i64 @lseek(i32 %15, i32 0, i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @errno, align 4
  store i32 %20, i32* %2, align 4
  br label %44

21:                                               ; preds = %14
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %23 = call i32 @memset(i8* %22, i32 0, i32 128)
  br label %24

24:                                               ; preds = %37, %21
  %25 = load i64, i64* %4, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @min(i64 128, i64 %30)
  %32 = call i64 @write(i32 %28, i8* %29, i32 %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @errno, align 4
  store i32 %36, i32* %2, align 4
  br label %44

37:                                               ; preds = %27
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %4, align 8
  %40 = sub nsw i64 %39, %38
  store i64 %40, i64* %4, align 8
  br label %24

41:                                               ; preds = %24
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @fsync(i32 %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %35, %19, %12
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @write(i32, i8*, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @fsync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
