; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_file.c_isc_file_progname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_file.c_isc_file_progname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISC_R_NOSPACE = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_file_progname(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @REQUIRE(i32 %13)
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @REQUIRE(i32 %17)
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @isc_file_basename(i8* %19)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @ISC_R_NOSPACE, align 4
  store i32 %24, i32* %4, align 4
  br label %62

25:                                               ; preds = %3
  %26 = load i8*, i8** %8, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 46)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load i64, i64* %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = icmp ule i64 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @ISC_R_NOSPACE, align 4
  store i32 %36, i32* %4, align 4
  br label %62

37:                                               ; preds = %30
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @strcpy(i8* %38, i8* %39)
  %41 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %41, i32* %4, align 4
  br label %62

42:                                               ; preds = %25
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp uge i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @ISC_R_NOSPACE, align 4
  store i32 %52, i32* %4, align 4
  br label %62

53:                                               ; preds = %42
  %54 = load i8*, i8** %6, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @strncpy(i8* %54, i8* %55, i64 %56)
  %58 = load i8*, i8** %6, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8 0, i8* %60, align 1
  %61 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %53, %51, %37, %35, %23
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i8* @isc_file_basename(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
