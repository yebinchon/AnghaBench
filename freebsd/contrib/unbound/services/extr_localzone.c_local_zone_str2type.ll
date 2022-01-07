; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zone_str2type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zone_str2type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"deny\00", align 1
@local_zone_deny = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"refuse\00", align 1
@local_zone_refuse = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@local_zone_static = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"transparent\00", align 1
@local_zone_transparent = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"typetransparent\00", align 1
@local_zone_typetransparent = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"redirect\00", align 1
@local_zone_redirect = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"inform\00", align 1
@local_zone_inform = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"inform_deny\00", align 1
@local_zone_inform_deny = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"inform_redirect\00", align 1
@local_zone_inform_redirect = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"always_transparent\00", align 1
@local_zone_always_transparent = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"always_refuse\00", align 1
@local_zone_always_refuse = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"always_nxdomain\00", align 1
@local_zone_always_nxdomain = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"noview\00", align 1
@local_zone_noview = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"nodefault\00", align 1
@local_zone_nodefault = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @local_zone_str2type(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @strcmp(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @local_zone_deny, align 4
  %11 = load i32*, i32** %5, align 8
  store i32 %10, i32* %11, align 4
  br label %117

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @local_zone_refuse, align 4
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  br label %116

19:                                               ; preds = %12
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @local_zone_static, align 4
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  br label %115

26:                                               ; preds = %19
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @local_zone_transparent, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  br label %114

33:                                               ; preds = %26
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @local_zone_typetransparent, align 4
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  br label %113

40:                                               ; preds = %33
  %41 = load i8*, i8** %4, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @local_zone_redirect, align 4
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  br label %112

47:                                               ; preds = %40
  %48 = load i8*, i8** %4, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @local_zone_inform, align 4
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  br label %111

54:                                               ; preds = %47
  %55 = load i8*, i8** %4, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @local_zone_inform_deny, align 4
  %60 = load i32*, i32** %5, align 8
  store i32 %59, i32* %60, align 4
  br label %110

61:                                               ; preds = %54
  %62 = load i8*, i8** %4, align 8
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @local_zone_inform_redirect, align 4
  %67 = load i32*, i32** %5, align 8
  store i32 %66, i32* %67, align 4
  br label %109

68:                                               ; preds = %61
  %69 = load i8*, i8** %4, align 8
  %70 = call i64 @strcmp(i8* %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @local_zone_always_transparent, align 4
  %74 = load i32*, i32** %5, align 8
  store i32 %73, i32* %74, align 4
  br label %108

75:                                               ; preds = %68
  %76 = load i8*, i8** %4, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* @local_zone_always_refuse, align 4
  %81 = load i32*, i32** %5, align 8
  store i32 %80, i32* %81, align 4
  br label %107

82:                                               ; preds = %75
  %83 = load i8*, i8** %4, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* @local_zone_always_nxdomain, align 4
  %88 = load i32*, i32** %5, align 8
  store i32 %87, i32* %88, align 4
  br label %106

89:                                               ; preds = %82
  %90 = load i8*, i8** %4, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* @local_zone_noview, align 4
  %95 = load i32*, i32** %5, align 8
  store i32 %94, i32* %95, align 4
  br label %105

96:                                               ; preds = %89
  %97 = load i8*, i8** %4, align 8
  %98 = call i64 @strcmp(i8* %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* @local_zone_nodefault, align 4
  %102 = load i32*, i32** %5, align 8
  store i32 %101, i32* %102, align 4
  br label %104

103:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %118

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %104, %93
  br label %106

106:                                              ; preds = %105, %86
  br label %107

107:                                              ; preds = %106, %79
  br label %108

108:                                              ; preds = %107, %72
  br label %109

109:                                              ; preds = %108, %65
  br label %110

110:                                              ; preds = %109, %58
  br label %111

111:                                              ; preds = %110, %51
  br label %112

112:                                              ; preds = %111, %44
  br label %113

113:                                              ; preds = %112, %37
  br label %114

114:                                              ; preds = %113, %30
  br label %115

115:                                              ; preds = %114, %23
  br label %116

116:                                              ; preds = %115, %16
  br label %117

117:                                              ; preds = %116, %9
  store i32 1, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %103
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
