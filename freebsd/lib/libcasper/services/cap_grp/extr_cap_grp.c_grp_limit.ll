; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/extr_cap_grp.c_grp_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/extr_cap_grp.c_grp_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"cmds\00", align 1
@ENOTCAPABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"fields\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@NV_TYPE_NVLIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @grp_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grp_limit(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @nvlist_exists_nvlist(i32* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @nvlist_exists_nvlist(i32* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @ENOTCAPABLE, align 4
  store i32 %22, i32* %3, align 4
  br label %98

23:                                               ; preds = %17, %13, %2
  %24 = load i32*, i32** %4, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @nvlist_exists_nvlist(i32* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @nvlist_exists_nvlist(i32* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @ENOTCAPABLE, align 4
  store i32 %35, i32* %3, align 4
  br label %98

36:                                               ; preds = %30, %26, %23
  %37 = load i32*, i32** %4, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load i32*, i32** %4, align 8
  %41 = call i64 @nvlist_exists_nvlist(i32* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32*, i32** %5, align 8
  %45 = call i64 @nvlist_exists_nvlist(i32* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @ENOTCAPABLE, align 4
  store i32 %48, i32* %3, align 4
  br label %98

49:                                               ; preds = %43, %39, %36
  store i8* null, i8** %8, align 8
  br label %50

50:                                               ; preds = %96, %49
  %51 = load i32*, i32** %5, align 8
  %52 = call i8* @nvlist_next(i32* %51, i32* %10, i8** %8)
  store i8* %52, i8** %7, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %97

54:                                               ; preds = %50
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @NV_TYPE_NVLIST, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %3, align 4
  br label %98

60:                                               ; preds = %54
  %61 = load i32*, i32** %5, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32* @nvlist_get_nvlist(i32* %61, i8* %62)
  store i32* %63, i32** %6, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32*, i32** %4, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @grp_allowed_cmds(i32* %68, i32* %69)
  store i32 %70, i32* %9, align 4
  br label %91

71:                                               ; preds = %60
  %72 = load i8*, i8** %7, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32*, i32** %4, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @grp_allowed_fields(i32* %76, i32* %77)
  store i32 %78, i32* %9, align 4
  br label %90

79:                                               ; preds = %71
  %80 = load i8*, i8** %7, align 8
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32*, i32** %4, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @grp_allowed_groups(i32* %84, i32* %85)
  store i32 %86, i32* %9, align 4
  br label %89

87:                                               ; preds = %79
  %88 = load i32, i32* @EINVAL, align 4
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %87, %83
  br label %90

90:                                               ; preds = %89, %75
  br label %91

91:                                               ; preds = %90, %67
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %98

96:                                               ; preds = %91
  br label %50

97:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %94, %58, %47, %34, %21
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @nvlist_exists_nvlist(i32*, i8*) #1

declare dso_local i8* @nvlist_next(i32*, i32*, i8**) #1

declare dso_local i32* @nvlist_get_nvlist(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @grp_allowed_cmds(i32*, i32*) #1

declare dso_local i32 @grp_allowed_fields(i32*, i32*) #1

declare dso_local i32 @grp_allowed_groups(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
