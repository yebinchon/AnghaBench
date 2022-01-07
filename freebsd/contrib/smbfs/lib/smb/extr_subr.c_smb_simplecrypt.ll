; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_subr.c_smb_simplecrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_subr.c_smb_simplecrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @smb_simplecrypt(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = mul nsw i32 2, %13
  %15 = add nsw i32 4, %14
  %16 = call i8* @malloc(i32 %15)
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i8* null, i8** %3, align 8
  br label %87

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20, %2
  %22 = load i8*, i8** %4, align 8
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %4, align 8
  store i8 36, i8* %23, align 1
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %4, align 8
  store i8 36, i8* %25, align 1
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %4, align 8
  store i8 49, i8* %27, align 1
  store i32 27, i32* %7, align 4
  br label %29

29:                                               ; preds = %78, %21
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %84

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  %36 = load i8, i8* %34, align 1
  %37 = sext i8 %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @isascii(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @isupper(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %46, 65
  %48 = add nsw i32 %47, 13
  %49 = srem i32 %48, 26
  %50 = add nsw i32 65, %49
  br label %65

51:                                               ; preds = %41
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @islower(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %56, 97
  %58 = add nsw i32 %57, 13
  %59 = srem i32 %58, 26
  %60 = add nsw i32 97, %59
  br label %63

61:                                               ; preds = %51
  %62 = load i32, i32* %6, align 4
  br label %63

63:                                               ; preds = %61, %55
  %64 = phi i32 [ %60, %55 ], [ %62, %61 ]
  br label %65

65:                                               ; preds = %63, %45
  %66 = phi i32 [ %50, %45 ], [ %64, %63 ]
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %65, %33
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %6, align 4
  %70 = xor i32 %69, %68
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 13
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp sgt i32 %73, 256
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* %7, align 4
  %77 = sub nsw i32 %76, 256
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %75, %67
  %79 = load i8*, i8** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @sprintf(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  store i8* %83, i8** %4, align 8
  br label %29

84:                                               ; preds = %29
  %85 = load i8*, i8** %4, align 8
  store i8 0, i8* %85, align 1
  %86 = load i8*, i8** %8, align 8
  store i8* %86, i8** %3, align 8
  br label %87

87:                                               ; preds = %84, %19
  %88 = load i8*, i8** %3, align 8
  ret i8* %88
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isascii(i32) #1

declare dso_local i64 @isupper(i32) #1

declare dso_local i64 @islower(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
