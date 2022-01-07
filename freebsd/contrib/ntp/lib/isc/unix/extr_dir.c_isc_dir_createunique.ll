; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_dir.c_isc_dir_createunique.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_dir.c_isc_dir_createunique.c"
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

44:                                               ; preds = %93, %41
  %45 = load i8*, i8** %2, align 8
  %46 = call i32 @mkdir(i8* %45, i32 448)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* @errno, align 8
  %51 = load i64, i64* @EEXIST, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %44
  br label %94

54:                                               ; preds = %49
  %55 = load i8*, i8** %4, align 8
  store i8* %55, i8** %5, align 8
  br label %56

56:                                               ; preds = %80, %54
  %57 = load i8*, i8** %5, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %56
  %62 = load i8*, i8** %5, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = and i32 %64, 255
  %66 = trunc i32 %65 to i8
  %67 = call i64 @isdigit(i8 signext %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i8*, i8** %5, align 8
  store i8 97, i8* %70, align 1
  br label %84

71:                                               ; preds = %61
  %72 = load i8*, i8** %5, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 122
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i8*, i8** %5, align 8
  %78 = load i8, i8* %77, align 1
  %79 = add i8 %78, 1
  store i8 %79, i8* %77, align 1
  br label %83

80:                                               ; preds = %71
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %5, align 8
  store i8 97, i8* %81, align 1
  br label %56

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %69
  br label %85

85:                                               ; preds = %84, %56
  %86 = load i8*, i8** %5, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i64, i64* @EEXIST, align 8
  store i64 %91, i64* @errno, align 8
  br label %94

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92
  br i1 true, label %44, label %94

94:                                               ; preds = %93, %90, %53
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i64, i64* @errno, align 8
  %99 = call i32 @isc__errno2result(i64 %98)
  store i32 %99, i32* %3, align 4
  br label %102

100:                                              ; preds = %94
  %101 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %97
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @isc__errno2result(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
