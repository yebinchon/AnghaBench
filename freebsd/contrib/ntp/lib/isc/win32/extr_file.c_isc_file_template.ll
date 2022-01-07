; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_file.c_isc_file_template.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_file.c_isc_file_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISC_R_NOSPACE = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_file_template(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @REQUIRE(i32 %13)
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @REQUIRE(i32 %17)
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @REQUIRE(i32 %21)
  %23 = load i8*, i8** %7, align 8
  %24 = call i8* @strrchr(i8* %23, i8 signext 92)
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8* %29, i8** %7, align 8
  br label %30

30:                                               ; preds = %27, %4
  %31 = load i8*, i8** %6, align 8
  %32 = call i8* @strrchr(i8* %31, i8 signext 92)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %73

35:                                               ; preds = %30
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = add nsw i64 %40, 1
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  %46 = add nsw i64 %45, 1
  %47 = load i64, i64* %9, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %35
  %50 = load i32, i32* @ISC_R_NOSPACE, align 4
  store i32 %50, i32* %5, align 4
  br label %88

51:                                               ; preds = %35
  %52 = load i8*, i8** %8, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = add nsw i64 %58, 1
  %60 = trunc i64 %59 to i32
  %61 = call i32 @strncpy(i8* %52, i8* %53, i32 %60)
  %62 = load i8*, i8** %8, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = add nsw i64 %67, 1
  %69 = getelementptr inbounds i8, i8* %62, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load i8*, i8** %8, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @strcat(i8* %70, i8* %71)
  br label %86

73:                                               ; preds = %30
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @strlen(i8* %74)
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %9, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @ISC_R_NOSPACE, align 4
  store i32 %81, i32* %5, align 4
  br label %88

82:                                               ; preds = %73
  %83 = load i8*, i8** %8, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @strcpy(i8* %83, i8* %84)
  br label %86

86:                                               ; preds = %82, %51
  %87 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %80, %49
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
