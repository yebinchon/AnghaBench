; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_filename_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_filename_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@good_chars = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"\22%s\22 is not an acceptable filename.\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"The filename must start with an alphanumeric character and must only\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"consist of alphanumeric characters or any of the following: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @filename_check(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i8* @strrchr(i8* %5, i8 signext 47)
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  store i8* %11, i8** %3, align 8
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = call i64 @isalnum(i8 zeroext %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %12
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %4, align 8
  br label %21

21:                                               ; preds = %41, %18
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @isalnum(i8 zeroext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @good_chars, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @strchr(i32 %32, i8 zeroext %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %31, %26
  %38 = phi i1 [ true, %26 ], [ %36, %31 ]
  br label %39

39:                                               ; preds = %37, %21
  %40 = phi i1 [ false, %21 ], [ %38, %37 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %4, align 8
  br label %21

44:                                               ; preds = %39
  %45 = load i8*, i8** %4, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %57

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %12
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 (i32, i8*, ...) @lreply(i32 553, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = call i32 (i32, i8*, ...) @lreply(i32 553, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @good_chars, align 4
  %56 = call i32 @reply(i32 553, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %51, %49
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @isalnum(i8 zeroext) #1

declare dso_local i64 @strchr(i32, i8 zeroext) #1

declare dso_local i32 @lreply(i32, i8*, ...) #1

declare dso_local i32 @reply(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
