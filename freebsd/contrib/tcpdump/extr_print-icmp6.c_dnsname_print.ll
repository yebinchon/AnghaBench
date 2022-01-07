; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-icmp6.c_dnsname_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-icmp6.c_dnsname_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c", \22\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @dnsname_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dnsname_print(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str to i32*))
  br label %10

10:                                               ; preds = %88, %3
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %14, label %89

14:                                               ; preds = %10
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %5, align 8
  %17 = load i8, i8* %15, align 1
  %18 = sext i8 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %65

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = icmp sgt i64 %23, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.1 to i32*))
  br label %89

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %44, %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %7, align 4
  %37 = icmp ne i32 %35, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ult i8* %39, %40
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i1 [ false, %34 ], [ %41, %38 ]
  br i1 %43, label %44, label %51

44:                                               ; preds = %42
  %45 = load i32*, i32** %4, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = call i32 @safeputchar(i32* %45, i8 signext %47)
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %5, align 8
  br label %34

51:                                               ; preds = %42
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8*, i8** %6, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load i8*, i8** %5, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.2 to i32*))
  br label %64

64:                                               ; preds = %61, %56, %51
  br label %88

65:                                               ; preds = %14
  %66 = load i8*, i8** %5, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = icmp eq i8* %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.2 to i32*))
  br label %87

72:                                               ; preds = %65
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8*, i8** %6, align 8
  %76 = icmp eq i8* %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i8*, i8** %5, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %86

83:                                               ; preds = %77, %72
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.1 to i32*))
  br label %86

86:                                               ; preds = %83, %82
  br label %87

87:                                               ; preds = %86, %69
  br label %89

88:                                               ; preds = %64
  br label %10

89:                                               ; preds = %87, %30, %10
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.3 to i32*))
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @safeputchar(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
