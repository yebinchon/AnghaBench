; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_subr.c_smb_simpledecrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_subr.c_smb_simpledecrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"$$1\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_simpledecrypt(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [3 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strncmp(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %99

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 3
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strlen(i8* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %3, align 4
  br label %99

26:                                               ; preds = %16
  %27 = load i32, i32* %8, align 4
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %8, align 4
  %29 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  store i8 0, i8* %29, align 1
  store i32 27, i32* %10, align 4
  br label %30

30:                                               ; preds = %92, %26
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %8, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %97

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %5, align 8
  %37 = load i8, i8* %35, align 1
  %38 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  store i8 %37, i8* %38, align 1
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %5, align 8
  %41 = load i8, i8* %39, align 1
  %42 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  store i8 %41, i8* %42, align 1
  %43 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %44 = call i32 @strtoul(i8* %43, i8** %6, i32 16)
  store i32 %44, i32* %9, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %3, align 4
  br label %99

51:                                               ; preds = %34
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = xor i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 13
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp sgt i32 %57, 256
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %60, 256
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %59, %51
  %63 = load i32, i32* %9, align 4
  %64 = call i64 @isascii(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %92

66:                                               ; preds = %62
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @isupper(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* %9, align 4
  %72 = sub nsw i32 %71, 65
  %73 = add nsw i32 %72, 13
  %74 = srem i32 %73, 26
  %75 = add nsw i32 65, %74
  br label %90

76:                                               ; preds = %66
  %77 = load i32, i32* %9, align 4
  %78 = call i64 @islower(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = sub nsw i32 %81, 97
  %83 = add nsw i32 %82, 13
  %84 = srem i32 %83, 26
  %85 = add nsw i32 97, %84
  br label %88

86:                                               ; preds = %76
  %87 = load i32, i32* %9, align 4
  br label %88

88:                                               ; preds = %86, %80
  %89 = phi i32 [ %85, %80 ], [ %87, %86 ]
  br label %90

90:                                               ; preds = %88, %70
  %91 = phi i32 [ %75, %70 ], [ %89, %88 ]
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %90, %62
  %93 = load i32, i32* %9, align 4
  %94 = trunc i32 %93 to i8
  %95 = load i8*, i8** %4, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %4, align 8
  store i8 %94, i8* %95, align 1
  br label %30

97:                                               ; preds = %30
  %98 = load i8*, i8** %4, align 8
  store i8 0, i8* %98, align 1
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %49, %24, %14
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @isascii(i32) #1

declare dso_local i64 @isupper(i32) #1

declare dso_local i64 @islower(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
