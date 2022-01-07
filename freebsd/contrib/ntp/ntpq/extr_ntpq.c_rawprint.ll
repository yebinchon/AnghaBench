; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_rawprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_rawprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"status=0x%04x,\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i8*, i32, i32, i32*)* @rawprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rawprint(i32 %0, i64 %1, i8* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %15 = load i8*, i8** %9, align 8
  store i8* %15, i8** %13, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %14, align 8
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = load i32*, i32** %12, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @fprintf(i32* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %6
  br label %26

26:                                               ; preds = %71, %25
  %27 = load i8*, i8** %13, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = icmp ult i8* %27, %28
  br i1 %29, label %30, label %74

30:                                               ; preds = %26
  %31 = load i8*, i8** %13, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 13
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load i8*, i8** %13, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 -1
  %39 = icmp eq i8* %36, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load i8*, i8** %13, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 10
  br i1 %45, label %46, label %50

46:                                               ; preds = %40, %35
  %47 = load i8*, i8** %13, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = call i32 @makeascii(i32 1, i8* %47, i32* %48)
  br label %50

50:                                               ; preds = %46, %40
  br label %71

51:                                               ; preds = %30
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 @pgetc(i8* %52)
  %54 = call i64 @isspace(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load i8*, i8** %13, align 8
  %58 = call i32 @pgetc(i8* %57)
  %59 = call i64 @isprint(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56, %51
  %62 = load i8*, i8** %13, align 8
  %63 = load i8, i8* %62, align 1
  %64 = load i32*, i32** %12, align 8
  %65 = call i32 @putc(i8 signext %63, i32* %64)
  br label %70

66:                                               ; preds = %56
  %67 = load i8*, i8** %13, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @makeascii(i32 1, i8* %67, i32* %68)
  br label %70

70:                                               ; preds = %66, %61
  br label %71

71:                                               ; preds = %70, %50
  %72 = load i8*, i8** %13, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %13, align 8
  br label %26

74:                                               ; preds = %26
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i32 @makeascii(i32, i8*, i32*) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @pgetc(i8*) #1

declare dso_local i64 @isprint(i32) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
