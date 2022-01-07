; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_control.c_getacexpire.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_control.c_getacexpire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AU_LINE_MAX = common dso_local global i32 0, align 4
@EXPIRE_AFTER_CONTROL_ENTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%lu%c%[ \09adnorADNOR]%lu%c\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getacexpire(i32* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %17 = load i32, i32* @AU_LINE_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load i64*, i64** %6, align 8
  store i64 0, i64* %21, align 8
  %22 = load i64*, i64** %7, align 8
  store i64 0, i64* %22, align 8
  %23 = load i32*, i32** %5, align 8
  store i32 0, i32* %23, align 4
  %24 = call i32 (...) @setac_locked()
  %25 = load i32, i32* @EXPIRE_AFTER_CONTROL_ENTRY, align 4
  %26 = call i64 @getstrfromtype_locked(i32 %25, i8** %8)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 -2, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %93

29:                                               ; preds = %3
  %30 = load i8*, i8** %8, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %93

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %46, %33
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 32
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 9
  br label %44

44:                                               ; preds = %39, %34
  %45 = phi i1 [ true, %34 ], [ %43, %39 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %8, align 8
  br label %34

49:                                               ; preds = %44
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @sscanf(i8* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %10, i8* %12, i8* %20, i32* %11, i8* %13)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  switch i32 %52, label %91 [
    i32 1, label %53
    i32 2, label %54
    i32 5, label %63
  ]

53:                                               ; preds = %49
  store i8 66, i8* %12, align 1
  br label %54

54:                                               ; preds = %49, %53
  %55 = load i64*, i64** %6, align 8
  %56 = load i64*, i64** %7, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i8, i8* %12, align 1
  %59 = call i32 @setexpirecond(i64* %55, i64* %56, i32 %57, i8 signext %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %93

62:                                               ; preds = %54
  br label %92

63:                                               ; preds = %49
  %64 = load i64*, i64** %6, align 8
  %65 = load i64*, i64** %7, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i8, i8* %12, align 1
  %68 = call i32 @setexpirecond(i64* %64, i64* %65, i32 %66, i8 signext %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %63
  %71 = load i64*, i64** %6, align 8
  %72 = load i64*, i64** %7, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i8, i8* %13, align 1
  %75 = call i32 @setexpirecond(i64* %71, i64* %72, i32 %73, i8 signext %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70, %63
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %93

78:                                               ; preds = %70
  %79 = call i32* @strcasestr(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32*, i32** %5, align 8
  store i32 1, i32* %82, align 4
  br label %90

83:                                               ; preds = %78
  %84 = call i32* @strcasestr(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32*, i32** %5, align 8
  store i32 0, i32* %87, align 4
  br label %89

88:                                               ; preds = %83
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %93

89:                                               ; preds = %86
  br label %90

90:                                               ; preds = %89, %81
  br label %92

91:                                               ; preds = %49
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %93

92:                                               ; preds = %90, %62
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %93

93:                                               ; preds = %92, %91, %88, %77, %61, %32, %28
  %94 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @setac_locked(...) #2

declare dso_local i64 @getstrfromtype_locked(i32, i8**) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*, i8*, i32*, i8*) #2

declare dso_local i32 @setexpirecond(i64*, i64*, i32, i8 signext) #2

declare dso_local i32* @strcasestr(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
