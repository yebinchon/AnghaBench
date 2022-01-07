; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_complete_display.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_complete_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winsize = type { i64 }

@stdin = common dso_local global i32 0, align 4
@TIOCGWINSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%-*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i64)* @complete_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_display(i8** %0, i64 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.winsize, align 8
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %6, align 8
  store i64 80, i64* %7, align 8
  store i64 1, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %5, align 8
  br label %13

13:                                               ; preds = %27, %2
  %14 = load i8**, i8*** %3, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load i64, i64* %6, align 8
  %21 = load i8**, i8*** %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = call i64 @MAXIMUM(i64 %20, i32 %25)
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %19
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %5, align 8
  br label %13

30:                                               ; preds = %13
  %31 = load i32, i32* @stdin, align 4
  %32 = call i32 @fileno(i32 %31)
  %33 = load i32, i32* @TIOCGWINSZ, align 4
  %34 = call i32 @ioctl(i32 %32, i32 %33, %struct.winsize* %11)
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.winsize, %struct.winsize* %11, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %4, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %4, align 8
  %46 = sub i64 %44, %45
  br label %48

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i64 [ %46, %43 ], [ 0, %47 ]
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, 2
  %53 = udiv i64 %50, %52
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @MAXIMUM(i64 %54, i32 1)
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = udiv i64 %56, %57
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @MINIMUM(i64 %59, i64 %60)
  store i64 %61, i64* %9, align 8
  %62 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 1, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %63

63:                                               ; preds = %101, %48
  %64 = load i8**, i8*** %3, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds i8*, i8** %64, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %104

69:                                               ; preds = %63
  %70 = load i8**, i8*** %3, align 8
  %71 = load i64, i64* %5, align 8
  %72 = getelementptr inbounds i8*, i8** %70, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @strlen(i8* %73)
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %10, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %4, align 8
  %78 = icmp ugt i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %69
  %80 = load i8**, i8*** %3, align 8
  %81 = load i64, i64* %5, align 8
  %82 = getelementptr inbounds i8*, i8** %80, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = load i64, i64* %4, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  br label %87

86:                                               ; preds = %69
  br label %87

87:                                               ; preds = %86, %79
  %88 = phi i8* [ %85, %79 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %86 ]
  store i8* %88, i8** %12, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = call i32 @mprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %89, i8* %90)
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp uge i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 1, i64* %6, align 8
  br label %100

97:                                               ; preds = %87
  %98 = load i64, i64* %6, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %6, align 8
  br label %100

100:                                              ; preds = %97, %95
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %5, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %5, align 8
  br label %63

104:                                              ; preds = %63
  %105 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i64 @MAXIMUM(i64, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.winsize*) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i64 @MINIMUM(i64, i64) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @mprintf(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
