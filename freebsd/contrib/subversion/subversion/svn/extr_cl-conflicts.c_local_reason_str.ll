; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_cl-conflicts.c_local_reason_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_cl-conflicts.c_local_reason_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"local file edit\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"local file obstruction\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"local file delete\00", align 1
@svn_wc_operation_merge = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"local file missing or deleted or moved away\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"local file missing\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"local file unversioned\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"local file add\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"local file replace\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"local file moved away\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"local file moved here\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"local dir edit\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"local dir obstruction\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"local dir delete\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"local dir missing or deleted or moved away\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"local dir missing\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"local dir unversioned\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"local dir add\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"local dir replace\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"local dir moved away\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"local dir moved here\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"local edit\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"local obstruction\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"local delete\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"local missing or deleted or moved away\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"local missing\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"local unversioned\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"local add\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"local replace\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"local moved away\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"local moved here\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i32)* @local_reason_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @local_reason_str(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %90 [
    i32 140, label %9
    i32 138, label %9
    i32 141, label %36
    i32 139, label %63
    i32 137, label %63
  ]

9:                                                ; preds = %3, %3
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %35 [
    i32 134, label %11
    i32 130, label %13
    i32 135, label %15
    i32 133, label %17
    i32 128, label %25
    i32 136, label %27
    i32 129, label %29
    i32 132, label %31
    i32 131, label %33
  ]

11:                                               ; preds = %9
  %12 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %4, align 8
  br label %91

13:                                               ; preds = %9
  %14 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i8* %14, i8** %4, align 8
  br label %91

15:                                               ; preds = %9
  %16 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i8* %16, i8** %4, align 8
  br label %91

17:                                               ; preds = %9
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @svn_wc_operation_merge, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  store i8* %22, i8** %4, align 8
  br label %91

23:                                               ; preds = %17
  %24 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i8* %24, i8** %4, align 8
  br label %91

25:                                               ; preds = %9
  %26 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i8* %26, i8** %4, align 8
  br label %91

27:                                               ; preds = %9
  %28 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  store i8* %28, i8** %4, align 8
  br label %91

29:                                               ; preds = %9
  %30 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  store i8* %30, i8** %4, align 8
  br label %91

31:                                               ; preds = %9
  %32 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  store i8* %32, i8** %4, align 8
  br label %91

33:                                               ; preds = %9
  %34 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  store i8* %34, i8** %4, align 8
  br label %91

35:                                               ; preds = %9
  br label %90

36:                                               ; preds = %3
  %37 = load i32, i32* %6, align 4
  switch i32 %37, label %62 [
    i32 134, label %38
    i32 130, label %40
    i32 135, label %42
    i32 133, label %44
    i32 128, label %52
    i32 136, label %54
    i32 129, label %56
    i32 132, label %58
    i32 131, label %60
  ]

38:                                               ; preds = %36
  %39 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  store i8* %39, i8** %4, align 8
  br label %91

40:                                               ; preds = %36
  %41 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  store i8* %41, i8** %4, align 8
  br label %91

42:                                               ; preds = %36
  %43 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  store i8* %43, i8** %4, align 8
  br label %91

44:                                               ; preds = %36
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @svn_wc_operation_merge, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0))
  store i8* %49, i8** %4, align 8
  br label %91

50:                                               ; preds = %44
  %51 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  store i8* %51, i8** %4, align 8
  br label %91

52:                                               ; preds = %36
  %53 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  store i8* %53, i8** %4, align 8
  br label %91

54:                                               ; preds = %36
  %55 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  store i8* %55, i8** %4, align 8
  br label %91

56:                                               ; preds = %36
  %57 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  store i8* %57, i8** %4, align 8
  br label %91

58:                                               ; preds = %36
  %59 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  store i8* %59, i8** %4, align 8
  br label %91

60:                                               ; preds = %36
  %61 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0))
  store i8* %61, i8** %4, align 8
  br label %91

62:                                               ; preds = %36
  br label %90

63:                                               ; preds = %3, %3
  %64 = load i32, i32* %6, align 4
  switch i32 %64, label %89 [
    i32 134, label %65
    i32 130, label %67
    i32 135, label %69
    i32 133, label %71
    i32 128, label %79
    i32 136, label %81
    i32 129, label %83
    i32 132, label %85
    i32 131, label %87
  ]

65:                                               ; preds = %63
  %66 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  store i8* %66, i8** %4, align 8
  br label %91

67:                                               ; preds = %63
  %68 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0))
  store i8* %68, i8** %4, align 8
  br label %91

69:                                               ; preds = %63
  %70 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  store i8* %70, i8** %4, align 8
  br label %91

71:                                               ; preds = %63
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @svn_wc_operation_merge, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0))
  store i8* %76, i8** %4, align 8
  br label %91

77:                                               ; preds = %71
  %78 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0))
  store i8* %78, i8** %4, align 8
  br label %91

79:                                               ; preds = %63
  %80 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0))
  store i8* %80, i8** %4, align 8
  br label %91

81:                                               ; preds = %63
  %82 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  store i8* %82, i8** %4, align 8
  br label %91

83:                                               ; preds = %63
  %84 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0))
  store i8* %84, i8** %4, align 8
  br label %91

85:                                               ; preds = %63
  %86 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0))
  store i8* %86, i8** %4, align 8
  br label %91

87:                                               ; preds = %63
  %88 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0))
  store i8* %88, i8** %4, align 8
  br label %91

89:                                               ; preds = %63
  br label %90

90:                                               ; preds = %3, %89, %62, %35
  store i8* null, i8** %4, align 8
  br label %91

91:                                               ; preds = %90, %87, %85, %83, %81, %79, %77, %75, %69, %67, %65, %60, %58, %56, %54, %52, %50, %48, %42, %40, %38, %33, %31, %29, %27, %25, %23, %21, %15, %13, %11
  %92 = load i8*, i8** %4, align 8
  ret i8* %92
}

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
