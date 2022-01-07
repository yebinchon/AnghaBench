; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/extr_cap_grp.c_grp_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/extr_cap_grp.c_grp_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOTCAPABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"getgrent\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"getgrent_r\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"getgrnam\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"getgrnam_r\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"getgrgid\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"getgrgid_r\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"setgroupent\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"setgrent\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"endgrent\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*)* @grp_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grp_command(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @grp_allowed_cmd(i32* %11, i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOTCAPABLE, align 4
  store i32 %16, i32* %5, align 4
  br label %92

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21, %17
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @grp_getgrent(i32* %26, i32* %27, i32* %28)
  store i32 %29, i32* %10, align 4
  br label %90

30:                                               ; preds = %21
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34, %30
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @grp_getgrnam(i32* %39, i32* %40, i32* %41)
  store i32 %42, i32* %10, align 4
  br label %89

43:                                               ; preds = %34
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %6, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47, %43
  %52 = load i32*, i32** %7, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @grp_getgrgid(i32* %52, i32* %53, i32* %54)
  store i32 %55, i32* %10, align 4
  br label %88

56:                                               ; preds = %47
  %57 = load i8*, i8** %6, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32*, i32** %7, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @grp_setgroupent(i32* %61, i32* %62, i32* %63)
  store i32 %64, i32* %10, align 4
  br label %87

65:                                               ; preds = %56
  %66 = load i8*, i8** %6, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32*, i32** %7, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @grp_setgrent(i32* %70, i32* %71, i32* %72)
  store i32 %73, i32* %10, align 4
  br label %86

74:                                               ; preds = %65
  %75 = load i8*, i8** %6, align 8
  %76 = call i64 @strcmp(i8* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i32*, i32** %7, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @grp_endgrent(i32* %79, i32* %80, i32* %81)
  store i32 %82, i32* %10, align 4
  br label %85

83:                                               ; preds = %74
  %84 = load i32, i32* @EINVAL, align 4
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %83, %78
  br label %86

86:                                               ; preds = %85, %69
  br label %87

87:                                               ; preds = %86, %60
  br label %88

88:                                               ; preds = %87, %51
  br label %89

89:                                               ; preds = %88, %38
  br label %90

90:                                               ; preds = %89, %25
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %15
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @grp_allowed_cmd(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @grp_getgrent(i32*, i32*, i32*) #1

declare dso_local i32 @grp_getgrnam(i32*, i32*, i32*) #1

declare dso_local i32 @grp_getgrgid(i32*, i32*, i32*) #1

declare dso_local i32 @grp_setgroupent(i32*, i32*, i32*) #1

declare dso_local i32 @grp_setgrent(i32*, i32*, i32*) #1

declare dso_local i32 @grp_endgrent(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
