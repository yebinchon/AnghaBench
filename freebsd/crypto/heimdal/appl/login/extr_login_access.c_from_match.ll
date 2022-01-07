; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/login/extr_login_access.c_from_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/login/extr_login_access.c_from_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.login_info = type { i8* }

@YES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"LOCAL\00", align 1
@NO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.login_info*)* @from_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @from_match(i8* %0, %struct.login_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.login_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.login_info* %1, %struct.login_info** %5, align 8
  %9 = load %struct.login_info*, %struct.login_info** %5, align 8
  %10 = getelementptr inbounds %struct.login_info, %struct.login_info* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 64
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @netgroup_match(i8* %19, i8* %20, i8* null)
  store i32 %21, i32* %3, align 4
  br label %91

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @string_match(i8* %23, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @YES, align 4
  store i32 %28, i32* %3, align 4
  br label %91

29:                                               ; preds = %22
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 46
  br i1 %34, label %35, label %56

35:                                               ; preds = %29
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @strlen(i8* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @strlen(i8* %38)
  store i32 %39, i32* %7, align 4
  %40 = icmp sgt i32 %37, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load i8*, i8** %4, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = sub i64 0, %48
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = call i64 @strcasecmp(i8* %42, i8* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* @YES, align 4
  store i32 %54, i32* %3, align 4
  br label %91

55:                                               ; preds = %41, %35
  br label %87

56:                                               ; preds = %29
  %57 = load i8*, i8** %4, align 8
  %58 = call i64 @strcasecmp(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @strchr(i8* %61, i8 signext 46)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @YES, align 4
  store i32 %65, i32* %3, align 4
  br label %91

66:                                               ; preds = %60
  br label %86

67:                                               ; preds = %56
  %68 = load i8*, i8** %4, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @strlen(i8* %69)
  store i32 %70, i32* %7, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %68, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 46
  br i1 %76, label %77, label %85

77:                                               ; preds = %67
  %78 = load i8*, i8** %4, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i64 @strncmp(i8* %78, i8* %79, i32 %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* @YES, align 4
  store i32 %84, i32* %3, align 4
  br label %91

85:                                               ; preds = %77, %67
  br label %86

86:                                               ; preds = %85, %66
  br label %87

87:                                               ; preds = %86, %55
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* @NO, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %83, %64, %53, %27, %17
  %92 = load i32, i32* %3, align 4
  ret i32 %92
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
