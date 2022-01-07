; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_sysctl/extr_cap_sysctl.c_sysctl_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_sysctl/extr_cap_sysctl.c_sysctl_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@NV_TYPE_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"mib\00", align 1
@NV_TYPE_BINARY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@NV_TYPE_NUMBER = common dso_local global i32 0, align 4
@CAP_SYSCTL_RDWR = common dso_local global i32 0, align 4
@CAP_SYSCTL_RECURSIVE = common dso_local global i32 0, align 4
@HAS_ID = common dso_local global i32 0, align 4
@HAS_MIB = common dso_local global i32 0, align 4
@HAS_NAME = common dso_local global i32 0, align 4
@HAS_OPERATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @sysctl_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_valid(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %141

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @nvlist_error(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @nvlist_error(i32* %23)
  store i32 %24, i32* %3, align 4
  br label %141

25:                                               ; preds = %18
  store i32 0, i32* %11, align 4
  store i8* null, i8** %7, align 8
  br label %26

26:                                               ; preds = %129, %25
  %27 = load i32*, i32** %4, align 8
  %28 = call i8* @nvlist_next(i32* %27, i32* %8, i8** %7)
  store i8* %28, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %130

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @NV_TYPE_STRING, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %34, %30
  %39 = load i8*, i8** %6, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %78

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @NV_TYPE_BINARY, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %42, %34
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @cnvlist_get_binary(i8* %51, i64* %9)
  %53 = load i64, i64* %9, align 8
  %54 = urem i64 %53, 4
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %3, align 4
  br label %141

58:                                               ; preds = %50
  store i32 2, i32* %10, align 4
  br label %60

59:                                               ; preds = %46
  store i32 1, i32* %10, align 4
  br label %60

60:                                               ; preds = %59, %58
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, 3
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68, %60
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %3, align 4
  br label %141

74:                                               ; preds = %68, %65
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %11, align 4
  br label %129

78:                                               ; preds = %42, %38
  %79 = load i8*, i8** %6, align 8
  %80 = call i64 @strcmp(i8* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %122

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @NV_TYPE_NUMBER, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @EINVAL, align 4
  store i32 %87, i32* %3, align 4
  br label %141

88:                                               ; preds = %82
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @cnvlist_get_number(i8* %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @CAP_SYSCTL_RDWR, align 4
  %95 = load i32, i32* @CAP_SYSCTL_RECURSIVE, align 4
  %96 = or i32 %94, %95
  br label %99

97:                                               ; preds = %88
  %98 = load i32, i32* @CAP_SYSCTL_RDWR, align 4
  br label %99

99:                                               ; preds = %97, %93
  %100 = phi i32 [ %96, %93 ], [ %98, %97 ]
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %12, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @CAP_SYSCTL_RDWR, align 4
  %109 = and i32 %107, %108
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106, %99
  %112 = load i32, i32* @EINVAL, align 4
  store i32 %112, i32* %3, align 4
  br label %141

113:                                              ; preds = %106
  %114 = load i32, i32* %11, align 4
  %115 = and i32 %114, 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i32, i32* @EINVAL, align 4
  store i32 %118, i32* %3, align 4
  br label %141

119:                                              ; preds = %113
  %120 = load i32, i32* %11, align 4
  %121 = or i32 %120, 4
  store i32 %121, i32* %11, align 4
  br label %128

122:                                              ; preds = %78
  %123 = load i32, i32* %5, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32, i32* @EINVAL, align 4
  store i32 %126, i32* %3, align 4
  br label %141

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %127, %119
  br label %129

129:                                              ; preds = %128, %74
  br label %26

130:                                              ; preds = %26
  %131 = load i32, i32* %11, align 4
  %132 = and i32 %131, 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load i32, i32* %11, align 4
  %136 = and i32 %135, 3
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %134, %130
  %139 = load i32, i32* @EINVAL, align 4
  store i32 %139, i32* %3, align 4
  br label %141

140:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %140, %138, %125, %117, %111, %86, %72, %56, %22, %16
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @nvlist_error(i32*) #1

declare dso_local i8* @nvlist_next(i32*, i32*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @cnvlist_get_binary(i8*, i64*) #1

declare dso_local i32 @cnvlist_get_number(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
