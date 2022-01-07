; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_string.c_isc_string_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_string.c_isc_string_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISC_STRING_MAGIC = common dso_local global i32 0, align 4
@ISC_R_NOSPACE = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_string_append(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ugt i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @REQUIRE(i32 %10)
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @REQUIRE(i32 %16)
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @strlcat(i8* %18, i8* %19, i64 %20)
  %22 = load i64, i64* %6, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* @ISC_STRING_MAGIC, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @memset(i8* %25, i32 %26, i64 %27)
  %29 = load i32, i32* @ISC_R_NOSPACE, align 4
  store i32 %29, i32* %4, align 4
  br label %38

30:                                               ; preds = %3
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @strlen(i8* %31)
  %33 = load i64, i64* %6, align 8
  %34 = icmp ult i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @ENSURE(i32 %35)
  %37 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %30, %24
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @ENSURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
