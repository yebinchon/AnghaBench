; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_file.c_dir_current.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_file.c_dir_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISC_R_SUCCESS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@ISC_R_NOSPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @dir_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_current(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @REQUIRE(i32 %10)
  %12 = load i64, i64* %4, align 8
  %13 = icmp ugt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @REQUIRE(i32 %14)
  %16 = load i8*, i8** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i8* @getcwd(i8* %16, i64 %17)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @ERANGE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @ISC_R_NOSPACE, align 4
  store i32 %26, i32* %6, align 4
  br label %30

27:                                               ; preds = %21
  %28 = load i64, i64* @errno, align 8
  %29 = call i32 @isc__errno2result(i64 %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %25
  br label %52

31:                                               ; preds = %2
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %4, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @ISC_R_NOSPACE, align 4
  store i32 %39, i32* %6, align 4
  br label %51

40:                                               ; preds = %31
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i8*, i8** %3, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @strlcat(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %46, %40
  br label %51

51:                                               ; preds = %50, %38
  br label %52

52:                                               ; preds = %51, %30
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i8* @getcwd(i8*, i64) #1

declare dso_local i32 @isc__errno2result(i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
