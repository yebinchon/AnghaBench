; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_subst.c_openpam_subst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_openpam_subst.c_openpam_subst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@PAM_SUCCESS = common dso_local global i32 0, align 4
@PAM_SERVICE = common dso_local global i32 0, align 4
@PAM_TTY = common dso_local global i32 0, align 4
@PAM_HOST = common dso_local global i32 0, align 4
@PAM_USER = common dso_local global i32 0, align 4
@PAM_RHOST = common dso_local global i32 0, align 4
@PAM_RUSER = common dso_local global i32 0, align 4
@PAM_TRY_AGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openpam_subst(i32* %0, i8* %1, i64* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = call i32 @ENTERS(i8* %12)
  %14 = load i8*, i8** %9, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %17

17:                                               ; preds = %16, %4
  store i64 1, i64* %10, align 8
  %18 = load i32, i32* @PAM_SUCCESS, align 4
  store i32 %18, i32* %11, align 4
  br label %19

19:                                               ; preds = %75, %17
  %20 = load i8*, i8** %9, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @PAM_SUCCESS, align 4
  %27 = icmp eq i32 %25, %26
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi i1 [ false, %19 ], [ %27, %24 ]
  br i1 %29, label %30, label %76

30:                                               ; preds = %28
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 37
  br i1 %35, label %36, label %70

36:                                               ; preds = %30
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  switch i32 %41, label %62 [
    i32 115, label %42
    i32 116, label %45
    i32 104, label %48
    i32 117, label %51
    i32 72, label %54
    i32 85, label %57
    i32 0, label %60
  ]

42:                                               ; preds = %36
  %43 = load i32, i32* @PAM_SERVICE, align 4
  %44 = call i32 @subst_item(i32 %43)
  br label %67

45:                                               ; preds = %36
  %46 = load i32, i32* @PAM_TTY, align 4
  %47 = call i32 @subst_item(i32 %46)
  br label %67

48:                                               ; preds = %36
  %49 = load i32, i32* @PAM_HOST, align 4
  %50 = call i32 @subst_item(i32 %49)
  br label %67

51:                                               ; preds = %36
  %52 = load i32, i32* @PAM_USER, align 4
  %53 = call i32 @subst_item(i32 %52)
  br label %67

54:                                               ; preds = %36
  %55 = load i32, i32* @PAM_RHOST, align 4
  %56 = call i32 @subst_item(i32 %55)
  br label %67

57:                                               ; preds = %36
  %58 = load i32, i32* @PAM_RUSER, align 4
  %59 = call i32 @subst_item(i32 %58)
  br label %67

60:                                               ; preds = %36
  %61 = call i32 @subst_char(i8 signext 37)
  br label %67

62:                                               ; preds = %36
  %63 = call i32 @subst_char(i8 signext 37)
  %64 = load i8*, i8** %9, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i32 @subst_char(i8 signext %65)
  br label %67

67:                                               ; preds = %62, %60, %57, %54, %51, %48, %45, %42
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %9, align 8
  br label %75

70:                                               ; preds = %30
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %9, align 8
  %73 = load i8, i8* %71, align 1
  %74 = call i32 @subst_char(i8 signext %73)
  br label %75

75:                                               ; preds = %70, %67
  br label %19

76:                                               ; preds = %28
  %77 = load i8*, i8** %7, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i8*, i8** %7, align 8
  store i8 0, i8* %80, align 1
  br label %81

81:                                               ; preds = %79, %76
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @PAM_SUCCESS, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = load i64, i64* %10, align 8
  %87 = load i64*, i64** %8, align 8
  %88 = load i64, i64* %87, align 8
  %89 = icmp ugt i64 %86, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @PAM_TRY_AGAIN, align 4
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %90, %85
  %93 = load i64, i64* %10, align 8
  %94 = load i64*, i64** %8, align 8
  store i64 %93, i64* %94, align 8
  br label %95

95:                                               ; preds = %92, %81
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @RETURNC(i32 %96)
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @ENTERS(i8*) #1

declare dso_local i32 @subst_item(i32) #1

declare dso_local i32 @subst_char(i8 signext) #1

declare dso_local i32 @RETURNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
