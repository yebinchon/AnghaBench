; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/extr_cap_dns.c_dns_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/extr_cap_dns.c_dns_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NV_TYPE_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"ADDR2NAME\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"NAME2ADDR\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ADDR\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@ENOTCAPABLE = common dso_local global i32 0, align 4
@NV_TYPE_NUMBER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @dns_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dns_limit(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %7, align 8
  br label %13

13:                                               ; preds = %81, %2
  %14 = load i32*, i32** %5, align 8
  %15 = call i8* @nvlist_next(i32* %14, i32* %8, i8** %7)
  store i8* %15, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %82

17:                                               ; preds = %13
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @NV_TYPE_STRING, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %56

21:                                               ; preds = %17
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @strncmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %103

27:                                               ; preds = %21
  %28 = load i32*, i32** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i8* @nvlist_get_string(i32* %28, i8* %29)
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %27
  %35 = load i8*, i8** %11, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i8*, i8** %11, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i8*, i8** %11, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %3, align 4
  br label %103

48:                                               ; preds = %42, %38, %34, %27
  %49 = load i32*, i32** %4, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @dns_allowed_type(i32* %49, i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @ENOTCAPABLE, align 4
  store i32 %54, i32* %3, align 4
  br label %103

55:                                               ; preds = %48
  store i32 1, i32* %9, align 4
  br label %81

56:                                               ; preds = %17
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @NV_TYPE_NUMBER, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %56
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @strncmp(i8* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %3, align 4
  br label %103

66:                                               ; preds = %60
  %67 = load i32*, i32** %5, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i64 @nvlist_get_number(i32* %67, i8* %68)
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %12, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @dns_allowed_family(i32* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %66
  %76 = load i32, i32* @ENOTCAPABLE, align 4
  store i32 %76, i32* %3, align 4
  br label %103

77:                                               ; preds = %66
  store i32 1, i32* %10, align 4
  br label %80

78:                                               ; preds = %56
  %79 = load i32, i32* @EINVAL, align 4
  store i32 %79, i32* %3, align 4
  br label %103

80:                                               ; preds = %77
  br label %81

81:                                               ; preds = %80, %55
  br label %13

82:                                               ; preds = %13
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %82
  %86 = load i32*, i32** %4, align 8
  %87 = call i64 @limit_has_entry(i32* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* @ENOTCAPABLE, align 4
  store i32 %90, i32* %3, align 4
  br label %103

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %91, %82
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %92
  %96 = load i32*, i32** %4, align 8
  %97 = call i64 @limit_has_entry(i32* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* @ENOTCAPABLE, align 4
  store i32 %100, i32* %3, align 4
  br label %103

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %92
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %99, %89, %78, %75, %64, %53, %46, %25
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i8* @nvlist_next(i32*, i32*, i8**) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @nvlist_get_string(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dns_allowed_type(i32*, i8*) #1

declare dso_local i64 @nvlist_get_number(i32*, i8*) #1

declare dso_local i32 @dns_allowed_family(i32*, i32) #1

declare dso_local i64 @limit_has_entry(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
