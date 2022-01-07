; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_pam_set_item.c_pam_set_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_pam_set_item.c_pam_set_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8** }

@PAM_BAD_ITEM = common dso_local global i32 0, align 4
@PAM_BUF_ERR = common dso_local global i32 0, align 4
@PAM_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pam_set_item(%struct.TYPE_3__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @ENTERI(i32 %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  store i8** %18, i8*** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %52 [
    i32 131, label %20
    i32 129, label %31
    i32 140, label %31
    i32 136, label %31
    i32 130, label %31
    i32 133, label %31
    i32 132, label %31
    i32 128, label %31
    i32 139, label %31
    i32 135, label %31
    i32 137, label %31
    i32 134, label %50
    i32 138, label %51
  ]

20:                                               ; preds = %3
  %21 = load i8**, i8*** %8, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @PAM_BAD_ITEM, align 4
  %29 = call i32 @RETURNC(i32 %28)
  br label %30

30:                                               ; preds = %27, %24, %20
  br label %31

31:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %30
  %32 = load i8**, i8*** %8, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i8**, i8*** %8, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %10, align 8
  br label %41

41:                                               ; preds = %35, %31
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %44, %41
  br label %55

50:                                               ; preds = %3
  store i64 4, i64* %9, align 8
  store i64 4, i64* %10, align 8
  br label %55

51:                                               ; preds = %3
  store i64 4, i64* %9, align 8
  store i64 4, i64* %10, align 8
  br label %55

52:                                               ; preds = %3
  %53 = load i32, i32* @PAM_BAD_ITEM, align 4
  %54 = call i32 @RETURNC(i32 %53)
  br label %55

55:                                               ; preds = %52, %51, %50, %49
  %56 = load i8**, i8*** %8, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i8**, i8*** %8, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @memset(i8* %61, i32 208, i64 %62)
  %64 = load i8**, i8*** %8, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @FREE(i8* %65)
  br label %67

67:                                               ; preds = %59, %55
  %68 = load i8*, i8** %7, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load i64, i64* %9, align 8
  %72 = call i8* @malloc(i64 %71)
  %73 = load i8**, i8*** %8, align 8
  store i8* %72, i8** %73, align 8
  %74 = icmp eq i8* %72, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @PAM_BUF_ERR, align 4
  %77 = call i32 @RETURNC(i32 %76)
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i8**, i8*** %8, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @memcpy(i8* %80, i8* %81, i64 %82)
  br label %86

84:                                               ; preds = %67
  %85 = load i8**, i8*** %8, align 8
  store i8* null, i8** %85, align 8
  br label %86

86:                                               ; preds = %84, %78
  %87 = load i32, i32* @PAM_SUCCESS, align 4
  %88 = call i32 @RETURNC(i32 %87)
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @ENTERI(i32) #1

declare dso_local i32 @RETURNC(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @FREE(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
