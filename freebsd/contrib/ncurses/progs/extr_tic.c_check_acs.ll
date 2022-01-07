; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_check_acs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tic.c_check_acs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acs_chars = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"lmkjtuvwqxn\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"acsc has odd number of characters\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"acsc refers to 'I', which is probably an error\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"acsc is missing some line-drawing mapping: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @check_acs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_acs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca [256 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i8*, i8** @acs_chars, align 8
  %9 = call i64 @VALID_STRING(i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %101

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %13 = call i32 @memset(i8* %12, i32 0, i32 256)
  %14 = load i8*, i8** @acs_chars, align 8
  store i8* %14, i8** %6, align 8
  br label %15

15:                                               ; preds = %37, %11
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 (i8*, ...) @_nc_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %40

28:                                               ; preds = %20
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @UChar(i8 signext %34)
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 %35
  store i8 %31, i8* %36, align 1
  br label %37

37:                                               ; preds = %28
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  store i8* %39, i8** %6, align 8
  br label %15

40:                                               ; preds = %26, %15
  %41 = call i64 @UChar(i8 signext 73)
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = call i64 @UChar(i8 signext 105)
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = call i32 (i8*, ...) @_nc_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46, %40
  %54 = load i8*, i8** %3, align 8
  store i8* %54, i8** %6, align 8
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  store i8* %55, i8** %7, align 8
  br label %56

56:                                               ; preds = %76, %53
  %57 = load i8*, i8** %6, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %56
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = call i64 @UChar(i8 signext %64)
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = icmp ne i8 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %61
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %7, align 8
  store i8 %72, i8* %73, align 1
  br label %75

75:                                               ; preds = %69, %61
  br label %76

76:                                               ; preds = %75
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %6, align 8
  br label %56

79:                                               ; preds = %56
  %80 = load i8*, i8** %7, align 8
  store i8 0, i8* %80, align 1
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %82 = call i64 @strlen(i8* %81)
  %83 = load i8*, i8** %3, align 8
  %84 = call i64 @strlen(i8* %83)
  %85 = icmp sle i64 %82, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %89 = load i8, i8* %88, align 16
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %79
  %93 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %94 = load i8*, i8** %3, align 8
  %95 = call i64 @strcmp(i8* %93, i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %99 = call i32 (i8*, ...) @_nc_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %97, %92, %79
  br label %101

101:                                              ; preds = %100, %1
  ret void
}

declare dso_local i64 @VALID_STRING(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @_nc_warning(i8*, ...) #1

declare dso_local i64 @UChar(i8 signext) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
