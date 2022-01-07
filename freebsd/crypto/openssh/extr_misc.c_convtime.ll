; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_convtime.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_convtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@LONG_MIN = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8
@MINUTES = common dso_local global i64 0, align 8
@HOURS = common dso_local global i64 0, align 8
@DAYS = common dso_local global i64 0, align 8
@WEEKS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @convtime(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 1, i64* %6, align 8
  store i64 0, i64* @errno, align 8
  store i64 0, i64* %4, align 8
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load i8*, i8** %7, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %1
  store i64 -1, i64* %2, align 8
  br label %91

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %87, %18
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %89

23:                                               ; preds = %19
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @strtol(i8* %24, i8** %8, i32 10)
  store i64 %25, i64* %5, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp eq i8* %26, %27
  br i1 %28, label %44, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @ERANGE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @LONG_MIN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @LONG_MAX, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %37, %29
  %42 = load i64, i64* %5, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %37, %33, %23
  store i64 -1, i64* %2, align 8
  br label %91

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %8, align 8
  %48 = load i8, i8* %46, align 1
  %49 = sext i8 %48 to i32
  switch i32 %49, label %62 [
    i32 0, label %50
    i32 115, label %53
    i32 83, label %53
    i32 109, label %54
    i32 77, label %54
    i32 104, label %56
    i32 72, label %56
    i32 100, label %58
    i32 68, label %58
    i32 119, label %60
    i32 87, label %60
  ]

50:                                               ; preds = %45
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 -1
  store i8* %52, i8** %8, align 8
  br label %63

53:                                               ; preds = %45, %45
  br label %63

54:                                               ; preds = %45, %45
  %55 = load i64, i64* @MINUTES, align 8
  store i64 %55, i64* %6, align 8
  br label %63

56:                                               ; preds = %45, %45
  %57 = load i64, i64* @HOURS, align 8
  store i64 %57, i64* %6, align 8
  br label %63

58:                                               ; preds = %45, %45
  %59 = load i64, i64* @DAYS, align 8
  store i64 %59, i64* %6, align 8
  br label %63

60:                                               ; preds = %45, %45
  %61 = load i64, i64* @WEEKS, align 8
  store i64 %61, i64* %6, align 8
  br label %63

62:                                               ; preds = %45
  store i64 -1, i64* %2, align 8
  br label %91

63:                                               ; preds = %60, %58, %56, %54, %53, %50
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* @LONG_MAX, align 8
  %66 = load i64, i64* %6, align 8
  %67 = sdiv i64 %65, %66
  %68 = icmp sge i64 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i64 -1, i64* %2, align 8
  br label %91

70:                                               ; preds = %63
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* %5, align 8
  %73 = mul nsw i64 %72, %71
  store i64 %73, i64* %5, align 8
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* @LONG_MAX, align 8
  %76 = load i64, i64* %5, align 8
  %77 = sub nsw i64 %75, %76
  %78 = icmp sge i64 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  store i64 -1, i64* %2, align 8
  br label %91

80:                                               ; preds = %70
  %81 = load i64, i64* %5, align 8
  %82 = load i64, i64* %4, align 8
  %83 = add nsw i64 %82, %81
  store i64 %83, i64* %4, align 8
  %84 = load i64, i64* %4, align 8
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i64 -1, i64* %2, align 8
  br label %91

87:                                               ; preds = %80
  %88 = load i8*, i8** %8, align 8
  store i8* %88, i8** %7, align 8
  br label %19

89:                                               ; preds = %19
  %90 = load i64, i64* %4, align 8
  store i64 %90, i64* %2, align 8
  br label %91

91:                                               ; preds = %89, %86, %79, %69, %62, %44, %17
  %92 = load i64, i64* %2, align 8
  ret i64 %92
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
