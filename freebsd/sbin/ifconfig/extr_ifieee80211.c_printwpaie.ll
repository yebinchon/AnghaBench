; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_printwpaie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_printwpaie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"<v%u\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" mc:%s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" uc:\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" km:\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c", caps 0x%x\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c">\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i64, i32)* @printwpaie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printwpaie(i8* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i64, i64* @verbose, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %90

19:                                               ; preds = %4
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 6
  store i32* %21, i32** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 %22, 4
  store i32 %23, i32* %9, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @LE_READ_2(i32* %24)
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32* %28, i32** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %29, 2
  store i32 %30, i32* %9, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = call i8* @wpa_cipher(i32* %31)
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  store i32* %35, i32** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %36, 4
  store i32 %37, i32* %9, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @LE_READ_2(i32* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32* %41, i32** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %42, 2
  store i32 %43, i32* %9, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %44

44:                                               ; preds = %56, %19
  %45 = load i32, i32* %11, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load i8*, i8** %10, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i8* @wpa_cipher(i32* %49)
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %48, i8* %50)
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  store i32* %53, i32** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 %54, 4
  store i32 %55, i32* %9, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %11, align 4
  br label %44

59:                                               ; preds = %44
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @LE_READ_2(i32* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32* %63, i32** %6, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 %64, 2
  store i32 %65, i32* %9, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %10, align 8
  br label %66

66:                                               ; preds = %78, %59
  %67 = load i32, i32* %11, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load i8*, i8** %10, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @wpa_keymgmt(i32* %71)
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %70, i32 %72)
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  store i32* %75, i32** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sub nsw i32 %76, 4
  store i32 %77, i32* %9, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %78

78:                                               ; preds = %69
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %11, align 4
  br label %66

81:                                               ; preds = %66
  %82 = load i32, i32* %9, align 4
  %83 = icmp sgt i32 %82, 2
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @LE_READ_2(i32* %85)
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %84, %81
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %4
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @LE_READ_2(i32*) #1

declare dso_local i8* @wpa_cipher(i32*) #1

declare dso_local i32 @wpa_keymgmt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
