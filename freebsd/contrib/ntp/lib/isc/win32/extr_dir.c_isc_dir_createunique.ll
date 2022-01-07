; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_dir.c_isc_dir_createunique.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_dir.c_isc_dir_createunique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_dir_createunique(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = icmp ne i8* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @REQUIRE(i32 %10)
  %12 = call i32 (...) @getpid()
  store i32 %12, i32* %7, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  %18 = getelementptr inbounds i8, i8* %17, i64 -1
  store i8* %18, i8** %4, align 8
  br label %19

19:                                               ; preds = %36, %1
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 88
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = load i8*, i8** %2, align 8
  %27 = icmp uge i8* %25, %26
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i1 [ false, %19 ], [ %27, %24 ]
  br i1 %29, label %30, label %41

30:                                               ; preds = %28
  %31 = load i32, i32* %7, align 4
  %32 = srem i32 %31, 10
  %33 = add nsw i32 %32, 48
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %4, align 8
  store i8 %34, i8* %35, align 1
  br label %36

36:                                               ; preds = %30
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 -1
  store i8* %38, i8** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sdiv i32 %39, 10
  store i32 %40, i32* %7, align 4
  br label %19

41:                                               ; preds = %28
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %4, align 8
  br label %44

44:                                               ; preds = %95, %41
  %45 = load i8*, i8** %2, align 8
  %46 = call i32 @mkdir(i8* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i8*, i8** %2, align 8
  %48 = call i32 @chmod(i8* %47, i32 448)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %44
  %52 = load i64, i64* @errno, align 8
  %53 = load i64, i64* @EEXIST, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %44
  br label %96

56:                                               ; preds = %51
  %57 = load i8*, i8** %4, align 8
  store i8* %57, i8** %5, align 8
  br label %58

58:                                               ; preds = %82, %56
  %59 = load i8*, i8** %5, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %58
  %64 = load i8*, i8** %5, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = and i32 %66, 255
  %68 = trunc i32 %67 to i8
  %69 = call i64 @isdigit(i8 signext %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i8*, i8** %5, align 8
  store i8 97, i8* %72, align 1
  br label %86

73:                                               ; preds = %63
  %74 = load i8*, i8** %5, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 122
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i8*, i8** %5, align 8
  %80 = load i8, i8* %79, align 1
  %81 = add i8 %80, 1
  store i8 %81, i8* %79, align 1
  br label %85

82:                                               ; preds = %73
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %5, align 8
  store i8 97, i8* %83, align 1
  br label %58

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %71
  br label %87

87:                                               ; preds = %86, %58
  %88 = load i8*, i8** %5, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i64, i64* @EEXIST, align 8
  store i64 %93, i64* @errno, align 8
  br label %96

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94
  br i1 true, label %44, label %96

96:                                               ; preds = %95, %92, %55
  %97 = load i32, i32* %6, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i64, i64* @errno, align 8
  %101 = call i32 @isc__errno2result(i64 %100)
  store i32 %101, i32* %3, align 4
  br label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %99
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mkdir(i8*) #1

declare dso_local i32 @chmod(i8*, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @isc__errno2result(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
