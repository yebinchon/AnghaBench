; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_fsutil.c_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@preen = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"INTERNAL ERROR: GOT TO reply()\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"CONTINUE\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@nflag = common dso_local global i64 0, align 8
@fswritefd = common dso_local global i64 0, align 8
@bkgrdflag = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"%s? no\0A\0A\00", align 1
@resolved = common dso_local global i64 0, align 8
@yflag = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"%s? yes\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%s? [yn] \00", align 1
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reply(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %6 = load i64, i64* @preen, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @pfatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %4, align 4
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %10
  %20 = load i64, i64* @nflag, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* @fswritefd, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i64, i64* @bkgrdflag, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %19
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %29)
  store i64 0, i64* @resolved, align 8
  store i32 0, i32* %2, align 4
  br label %98

31:                                               ; preds = %25, %22, %10
  %32 = load i64, i64* @yflag, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i64, i64* @nflag, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37, %31
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %41)
  store i32 1, i32* %2, align 4
  br label %98

43:                                               ; preds = %37, %34
  br label %44

44:                                               ; preds = %85, %43
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* @stdout, align 4
  %48 = call i32 @fflush(i32 %47)
  %49 = load i32, i32* @stdin, align 4
  %50 = call signext i8 @getc(i32 %49)
  store i8 %50, i8* %5, align 1
  br label %51

51:                                               ; preds = %67, %44
  %52 = load i8, i8* %5, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 10
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* @stdin, align 4
  %57 = call signext i8 @getc(i32 %56)
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 10
  br label %60

60:                                               ; preds = %55, %51
  %61 = phi i1 [ false, %51 ], [ %59, %55 ]
  br i1 %61, label %62, label %68

62:                                               ; preds = %60
  %63 = load i32, i32* @stdin, align 4
  %64 = call i64 @feof(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i64 0, i64* @resolved, align 8
  store i32 0, i32* %2, align 4
  br label %98

67:                                               ; preds = %62
  br label %51

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68
  %70 = load i8, i8* %5, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 121
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load i8, i8* %5, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 89
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load i8, i8* %5, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 110
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i8, i8* %5, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 78
  br label %85

85:                                               ; preds = %81, %77, %73, %69
  %86 = phi i1 [ false, %77 ], [ false, %73 ], [ false, %69 ], [ %84, %81 ]
  br i1 %86, label %44, label %87

87:                                               ; preds = %85
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i8, i8* %5, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 121
  br i1 %91, label %96, label %92

92:                                               ; preds = %87
  %93 = load i8, i8* %5, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 89
  br i1 %95, label %96, label %97

96:                                               ; preds = %92, %87
  store i32 1, i32* %2, align 4
  br label %98

97:                                               ; preds = %92
  store i64 0, i64* @resolved, align 8
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %96, %66, %40, %28
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @pfatal(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local signext i8 @getc(i32) #1

declare dso_local i64 @feof(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
