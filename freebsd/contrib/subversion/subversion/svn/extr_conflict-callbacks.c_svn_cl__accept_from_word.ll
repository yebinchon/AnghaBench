; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_conflict-callbacks.c_svn_cl__accept_from_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_conflict-callbacks.c_svn_cl__accept_from_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_CL__ACCEPT_POSTPONE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c":-P\00", align 1
@svn_cl__accept_postpone = common dso_local global i32 0, align 4
@SVN_CL__ACCEPT_BASE = common dso_local global i8* null, align 8
@svn_cl__accept_base = common dso_local global i32 0, align 4
@SVN_CL__ACCEPT_WORKING = common dso_local global i8* null, align 8
@svn_cl__accept_working = common dso_local global i32 0, align 4
@SVN_CL__ACCEPT_MINE_CONFLICT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"mc\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"X-)\00", align 1
@svn_cl__accept_mine_conflict = common dso_local global i32 0, align 4
@SVN_CL__ACCEPT_THEIRS_CONFLICT = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"tc\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"X-(\00", align 1
@svn_cl__accept_theirs_conflict = common dso_local global i32 0, align 4
@SVN_CL__ACCEPT_MINE_FULL = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"mf\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c":-)\00", align 1
@svn_cl__accept_mine_full = common dso_local global i32 0, align 4
@SVN_CL__ACCEPT_THEIRS_FULL = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"tf\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c":-(\00", align 1
@svn_cl__accept_theirs_full = common dso_local global i32 0, align 4
@SVN_CL__ACCEPT_EDIT = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c":-E\00", align 1
@svn_cl__accept_edit = common dso_local global i32 0, align 4
@SVN_CL__ACCEPT_LAUNCH = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c":-l\00", align 1
@svn_cl__accept_launch = common dso_local global i32 0, align 4
@SVN_CL__ACCEPT_RECOMMENDED = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@svn_cl__accept_recommended = common dso_local global i32 0, align 4
@svn_cl__accept_invalid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn_cl__accept_from_word(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8*, i8** @SVN_CL__ACCEPT_POSTPONE, align 8
  %6 = call i64 @strcmp(i8* %4, i8* %5)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %8, %1
  %17 = load i32, i32* @svn_cl__accept_postpone, align 4
  store i32 %17, i32* %2, align 4
  br label %135

18:                                               ; preds = %12
  %19 = load i8*, i8** %3, align 8
  %20 = load i8*, i8** @SVN_CL__ACCEPT_BASE, align 8
  %21 = call i64 @strcmp(i8* %19, i8* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @svn_cl__accept_base, align 4
  store i32 %24, i32* %2, align 4
  br label %135

25:                                               ; preds = %18
  %26 = load i8*, i8** %3, align 8
  %27 = load i8*, i8** @SVN_CL__ACCEPT_WORKING, align 8
  %28 = call i64 @strcmp(i8* %26, i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @svn_cl__accept_working, align 4
  store i32 %31, i32* %2, align 4
  br label %135

32:                                               ; preds = %25
  %33 = load i8*, i8** %3, align 8
  %34 = load i8*, i8** @SVN_CL__ACCEPT_MINE_CONFLICT, align 8
  %35 = call i64 @strcmp(i8* %33, i8* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %3, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %3, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %37, %32
  %46 = load i32, i32* @svn_cl__accept_mine_conflict, align 4
  store i32 %46, i32* %2, align 4
  br label %135

47:                                               ; preds = %41
  %48 = load i8*, i8** %3, align 8
  %49 = load i8*, i8** @SVN_CL__ACCEPT_THEIRS_CONFLICT, align 8
  %50 = call i64 @strcmp(i8* %48, i8* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %3, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %3, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56, %52, %47
  %61 = load i32, i32* @svn_cl__accept_theirs_conflict, align 4
  store i32 %61, i32* %2, align 4
  br label %135

62:                                               ; preds = %56
  %63 = load i8*, i8** %3, align 8
  %64 = load i8*, i8** @SVN_CL__ACCEPT_MINE_FULL, align 8
  %65 = call i64 @strcmp(i8* %63, i8* %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  %68 = load i8*, i8** %3, align 8
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i8*, i8** %3, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71, %67, %62
  %76 = load i32, i32* @svn_cl__accept_mine_full, align 4
  store i32 %76, i32* %2, align 4
  br label %135

77:                                               ; preds = %71
  %78 = load i8*, i8** %3, align 8
  %79 = load i8*, i8** @SVN_CL__ACCEPT_THEIRS_FULL, align 8
  %80 = call i64 @strcmp(i8* %78, i8* %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %77
  %83 = load i8*, i8** %3, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i8*, i8** %3, align 8
  %88 = call i64 @strcmp(i8* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86, %82, %77
  %91 = load i32, i32* @svn_cl__accept_theirs_full, align 4
  store i32 %91, i32* %2, align 4
  br label %135

92:                                               ; preds = %86
  %93 = load i8*, i8** %3, align 8
  %94 = load i8*, i8** @SVN_CL__ACCEPT_EDIT, align 8
  %95 = call i64 @strcmp(i8* %93, i8* %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %92
  %98 = load i8*, i8** %3, align 8
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load i8*, i8** %3, align 8
  %103 = call i64 @strcmp(i8* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101, %97, %92
  %106 = load i32, i32* @svn_cl__accept_edit, align 4
  store i32 %106, i32* %2, align 4
  br label %135

107:                                              ; preds = %101
  %108 = load i8*, i8** %3, align 8
  %109 = load i8*, i8** @SVN_CL__ACCEPT_LAUNCH, align 8
  %110 = call i64 @strcmp(i8* %108, i8* %109)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %107
  %113 = load i8*, i8** %3, align 8
  %114 = call i64 @strcmp(i8* %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load i8*, i8** %3, align 8
  %118 = call i64 @strcmp(i8* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %116, %112, %107
  %121 = load i32, i32* @svn_cl__accept_launch, align 4
  store i32 %121, i32* %2, align 4
  br label %135

122:                                              ; preds = %116
  %123 = load i8*, i8** %3, align 8
  %124 = load i8*, i8** @SVN_CL__ACCEPT_RECOMMENDED, align 8
  %125 = call i64 @strcmp(i8* %123, i8* %124)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %122
  %128 = load i8*, i8** %3, align 8
  %129 = call i64 @strcmp(i8* %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %127, %122
  %132 = load i32, i32* @svn_cl__accept_recommended, align 4
  store i32 %132, i32* %2, align 4
  br label %135

133:                                              ; preds = %127
  %134 = load i32, i32* @svn_cl__accept_invalid, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %133, %131, %120, %105, %90, %75, %60, %45, %30, %23, %16
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
