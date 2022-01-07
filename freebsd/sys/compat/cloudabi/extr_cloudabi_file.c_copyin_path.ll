; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_file.c_copyin_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_file.c_copyin_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@M_CLOUDABI_PATH = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8**)* @copyin_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copyin_path(i8* %0, i64 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @PATH_MAX, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %14, i32* %4, align 4
  br label %48

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = add i64 %16, 1
  %18 = load i32, i32* @M_CLOUDABI_PATH, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = call i8* @malloc(i64 %17, i32 %18, i32 %19)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @copyin(i8* %21, i8* %22, i64 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %15
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* @M_CLOUDABI_PATH, align 4
  %30 = call i32 @free(i8* %28, i32 %29)
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %48

32:                                               ; preds = %15
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32* @memchr(i8* %33, i8 signext 0, i64 %34)
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* @M_CLOUDABI_PATH, align 4
  %40 = call i32 @free(i8* %38, i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %4, align 4
  br label %48

42:                                               ; preds = %32
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8 0, i8* %45, align 1
  %46 = load i8*, i8** %8, align 8
  %47 = load i8**, i8*** %7, align 8
  store i8* %46, i8** %47, align 8
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %42, %37, %27, %13
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @copyin(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32* @memchr(i8*, i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
