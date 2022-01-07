; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_control.c_getacfilesz.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_control.c_getacfilesz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILESZ_CONTROL_ENTRY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%ju%c\00", align 1
@MIN_AUDIT_FILE_SIZE = common dso_local global i64 0, align 8
@mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getacfilesz(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %8 = call i32 (...) @setac_locked()
  %9 = load i32, i32* @FILESZ_CONTROL_ENTRY, align 4
  %10 = call i64 @getstrfromtype_locked(i32 %9, i8** %4)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %66

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %66

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 32
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 9
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ true, %19 ], [ %28, %24 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %4, align 8
  br label %19

34:                                               ; preds = %29
  %35 = load i8*, i8** %4, align 8
  %36 = bitcast i64* %5 to i32*
  %37 = call i32 @sscanf(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %36, i8* %6)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  switch i32 %38, label %48 [
    i32 1, label %39
    i32 2, label %40
  ]

39:                                               ; preds = %34
  store i8 66, i8* %6, align 1
  br label %40

40:                                               ; preds = %34, %39
  %41 = load i64*, i64** %3, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i8, i8* %6, align 1
  %44 = call i32 @au_spacetobytes(i64* %41, i64 %42, i8 signext %43)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %50

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %34, %47
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %66

50:                                               ; preds = %46
  %51 = load i64*, i64** %3, align 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %50
  %55 = load i64*, i64** %3, align 8
  %56 = load i64, i64* %55, align 8
  %57 = icmp ugt i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i64*, i64** %3, align 8
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MIN_AUDIT_FILE_SIZE, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %58, %50
  store i64* null, i64** %3, align 8
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %66

65:                                               ; preds = %58, %54
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %63, %48, %16, %12
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @setac_locked(...) #1

declare dso_local i64 @getstrfromtype_locked(i32, i8**) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local i32 @au_spacetobytes(i64*, i64, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
