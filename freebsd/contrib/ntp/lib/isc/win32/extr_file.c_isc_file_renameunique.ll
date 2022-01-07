; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_file.c_isc_file_renameunique.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_file.c_isc_file_renameunique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_file_renameunique(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @REQUIRE(i32 %11)
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @REQUIRE(i32 %15)
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @mkstemp(i8* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @errno, align 4
  %23 = call i64 @isc__errno2result(i32 %22)
  store i64 %23, i64* %7, align 8
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @close(i32 %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @ISC_R_SUCCESS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i8*, i8** %3, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @isc_file_safemovefile(i8* %32, i8* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i32, i32* @errno, align 4
  %39 = call i64 @isc__errno2result(i32 %38)
  store i64 %39, i64* %7, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @unlink(i8* %40)
  br label %42

42:                                               ; preds = %37, %31
  br label %43

43:                                               ; preds = %42, %27
  %44 = load i64, i64* %7, align 8
  ret i64 %44
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @mkstemp(i8*) #1

declare dso_local i64 @isc__errno2result(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @isc_file_safemovefile(i8*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
