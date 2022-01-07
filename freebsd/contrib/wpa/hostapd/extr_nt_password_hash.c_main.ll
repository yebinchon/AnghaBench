; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_nt_password_hash.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_nt_password_hash.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to read password\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [16 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %8, align 8
  br label %49

17:                                               ; preds = %2
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %19 = load i32, i32* @stdin, align 4
  %20 = call i32* @fgets(i8* %18, i32 64, i32 %19)
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %73

24:                                               ; preds = %17
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 63
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  store i8* %26, i8** %10, align 8
  br label %27

27:                                               ; preds = %44, %24
  %28 = load i8*, i8** %10, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load i8*, i8** %10, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 13
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %10, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %42, label %44

42:                                               ; preds = %37, %32
  %43 = load i8*, i8** %10, align 8
  store i8 0, i8* %43, align 1
  br label %47

44:                                               ; preds = %37
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %10, align 8
  br label %27

47:                                               ; preds = %42, %27
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  store i8* %48, i8** %8, align 8
  br label %49

49:                                               ; preds = %47, %13
  %50 = load i8*, i8** %8, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %55 = call i64 @nt_password_hash(i32* %51, i32 %53, i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %73

58:                                               ; preds = %49
  store i64 0, i64* %7, align 8
  br label %59

59:                                               ; preds = %68, %58
  %60 = load i64, i64* %7, align 8
  %61 = icmp ult i64 %60, 16
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %62
  %69 = load i64, i64* %7, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %7, align 8
  br label %59

71:                                               ; preds = %59
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %57, %22
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @nt_password_hash(i32*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
