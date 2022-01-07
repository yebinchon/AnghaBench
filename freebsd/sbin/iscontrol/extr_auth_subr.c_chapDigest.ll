; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_auth_subr.c_chapDigest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_auth_subr.c_chapDigest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%.2s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @chapDigest(i8* %0, i8 signext %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [20 x i8], align 16
  %12 = alloca [3 x i8], align 1
  store i8* %0, i8** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = call i32 @debug_called(i32 3)
  store i32 0, i32* %10, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load i8, i8* %7, align 1
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %22 = call i64 @chapMD5(i8 signext %18, i8* %19, i8* %20, i8* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 16, i32* %10, align 4
  br label %38

25:                                               ; preds = %17, %4
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i8, i8* %7, align 1
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %34 = call i64 @chapSHA1(i8 signext %30, i8* %31, i8* %32, i8* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 20, i32* %10, align 4
  br label %37

37:                                               ; preds = %36, %29, %25
  br label %38

38:                                               ; preds = %37, %24
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @sprintf(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  %45 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  %46 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %47 = load i32, i32* %10, align 4
  %48 = call i8* @bin2str(i8* %45, i8* %46, i32 %47)
  store i8* %48, i8** %5, align 8
  br label %50

49:                                               ; preds = %38
  store i8* null, i8** %5, align 8
  br label %50

50:                                               ; preds = %49, %41
  %51 = load i8*, i8** %5, align 8
  ret i8* %51
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @chapMD5(i8 signext, i8*, i8*, i8*) #1

declare dso_local i64 @chapSHA1(i8 signext, i8*, i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @bin2str(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
