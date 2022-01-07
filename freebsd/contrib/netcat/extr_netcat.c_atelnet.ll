; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netcat/extr_netcat.c_atelnet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netcat/extr_netcat.c_atelnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IAC = common dso_local global i8 0, align 1
@WILL = common dso_local global i8 0, align 1
@WONT = common dso_local global i8 0, align 1
@DONT = common dso_local global i8 0, align 1
@DO = common dso_local global i8 0, align 1
@vwrite = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Write Error!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atelnet(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [4 x i8], align 1
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %89

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = getelementptr inbounds i8, i8* %17, i64 -2
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** %7, align 8
  br label %20

20:                                               ; preds = %86, %13
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ult i8* %21, %22
  br i1 %23, label %24, label %89

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* @IAC, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %86

32:                                               ; preds = %24
  %33 = load i8, i8* @IAC, align 1
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  store i8 %33, i8* %34, align 1
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @WILL, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %32
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @WONT, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43, %32
  %51 = load i8, i8* @DONT, align 1
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  store i8 %51, i8* %52, align 1
  br label %72

53:                                               ; preds = %43
  %54 = load i8*, i8** %7, align 8
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* @DO, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %67, label %60

60:                                               ; preds = %53
  %61 = load i8*, i8** %7, align 8
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* @DONT, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60, %53
  %68 = load i8, i8* @WONT, align 1
  %69 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  store i8 %68, i8* %69, align 1
  br label %71

70:                                               ; preds = %60
  br label %86

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71, %50
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %7, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  %77 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 2
  store i8 %76, i8* %77, align 1
  %78 = load i32, i32* @vwrite, align 4
  %79 = load i32, i32* %4, align 4
  %80 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %81 = call i32 @atomicio(i32 %78, i32 %79, i8* %80, i32 3)
  %82 = icmp ne i32 %81, 3
  br i1 %82, label %83, label %85

83:                                               ; preds = %72
  %84 = call i32 @warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %72
  br label %86

86:                                               ; preds = %85, %70, %31
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %7, align 8
  br label %20

89:                                               ; preds = %12, %20
  ret void
}

declare dso_local i32 @atomicio(i32, i32, i8*, i32) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
