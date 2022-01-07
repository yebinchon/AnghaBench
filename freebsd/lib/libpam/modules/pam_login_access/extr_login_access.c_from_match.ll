; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_login_access/extr_login_access.c_from_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_login_access/extr_login_access.c_from_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"LOCAL\00", align 1
@NO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @from_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @from_match(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 64
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @netgroup_match(i8* %15, i8* %16, i8* null)
  store i32 %17, i32* %3, align 4
  br label %87

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @string_match(i8* %19, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @YES, align 4
  store i32 %24, i32* %3, align 4
  br label %87

25:                                               ; preds = %18
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 46
  br i1 %30, label %31, label %52

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @strlen(i8* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @strlen(i8* %34)
  store i32 %35, i32* %6, align 4
  %36 = icmp sgt i32 %33, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 0, %44
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = call i64 @strcasecmp(i8* %38, i8* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* @YES, align 4
  store i32 %50, i32* %3, align 4
  br label %87

51:                                               ; preds = %37, %31
  br label %83

52:                                               ; preds = %25
  %53 = load i8*, i8** %4, align 8
  %54 = call i64 @strcasecmp(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i8*, i8** %5, align 8
  %58 = call i64 @strchr(i8* %57, i8 signext 46)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @YES, align 4
  store i32 %61, i32* %3, align 4
  br label %87

62:                                               ; preds = %56
  br label %82

63:                                               ; preds = %52
  %64 = load i8*, i8** %4, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 @strlen(i8* %65)
  store i32 %66, i32* %6, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %64, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 46
  br i1 %72, label %73, label %81

73:                                               ; preds = %63
  %74 = load i8*, i8** %4, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @strncmp(i8* %74, i8* %75, i32 %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @YES, align 4
  store i32 %80, i32* %3, align 4
  br label %87

81:                                               ; preds = %73, %63
  br label %82

82:                                               ; preds = %81, %62
  br label %83

83:                                               ; preds = %82, %51
  br label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* @NO, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %79, %60, %49, %23, %13
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @netgroup_match(i8*, i8*, i8*) #1

declare dso_local i64 @string_match(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
