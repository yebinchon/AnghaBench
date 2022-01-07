; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_parse_btl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_parse_btl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAM_BUS_WILDCARD = common dso_local global i8* null, align 8
@CAM_TARGET_WILDCARD = common dso_local global i8* null, align 8
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@CAM_ARG_BUS = common dso_local global i32 0, align 4
@arglist = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@CAM_ARG_TARGET = common dso_local global i32 0, align 4
@CAM_ARG_LUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i8**, i32*, i32*)* @parse_btl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_btl(i8* %0, i8** %1, i8** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %14, align 4
  %15 = load i8*, i8** @CAM_BUS_WILDCARD, align 8
  %16 = load i8**, i8*** %8, align 8
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** @CAM_TARGET_WILDCARD, align 8
  %18 = load i8**, i8*** %9, align 8
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %20 = load i32*, i32** %10, align 8
  store i32 %19, i32* %20, align 4
  br label %21

21:                                               ; preds = %33, %5
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @isspace(i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i1 [ false, %21 ], [ %30, %26 ]
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %7, align 8
  br label %21

36:                                               ; preds = %31
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %39 = call i64 @strncasecmp(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @CAM_ARG_BUS, align 4
  %43 = load i32, i32* @arglist, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* @arglist, align 4
  store i32 1, i32* %6, align 4
  br label %134

45:                                               ; preds = %36
  %46 = load i8*, i8** %7, align 8
  %47 = load i8, i8* %46, align 1
  %48 = call i32 @isdigit(i8 signext %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %7, align 8
  %52 = load i8**, i8*** %8, align 8
  %53 = load i8**, i8*** %9, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @parse_btl_name(i8* %51, i8** %52, i8** %53, i32* %54, i32* %55)
  store i32 %56, i32* %6, align 4
  br label %134

57:                                               ; preds = %45
  %58 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %58, i8** %12, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %132

61:                                               ; preds = %57
  %62 = load i8*, i8** %12, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %132

66:                                               ; preds = %61
  %67 = load i8*, i8** %12, align 8
  %68 = call i8* @strtol(i8* %67, i8** %13, i32 0)
  %69 = load i8**, i8*** %8, align 8
  store i8* %68, i8** %69, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %134

75:                                               ; preds = %66
  %76 = load i32, i32* @CAM_ARG_BUS, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  %82 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %82, i8** %12, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %131

85:                                               ; preds = %75
  %86 = load i8*, i8** %12, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %131

90:                                               ; preds = %85
  %91 = load i8*, i8** %12, align 8
  %92 = call i8* @strtol(i8* %91, i8** %13, i32 0)
  %93 = load i8**, i8*** %9, align 8
  store i8* %92, i8** %93, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  store i32 0, i32* %6, align 4
  br label %134

99:                                               ; preds = %90
  %100 = load i32, i32* @CAM_ARG_TARGET, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %100
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  %106 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %106, i8** %12, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %130

109:                                              ; preds = %99
  %110 = load i8*, i8** %12, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %109
  %115 = load i8*, i8** %12, align 8
  %116 = call i32 @strtoll(i8* %115, i8** %13, i32 0)
  %117 = load i32*, i32** %10, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i8*, i8** %13, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  store i32 0, i32* %6, align 4
  br label %134

123:                                              ; preds = %114
  %124 = load i32, i32* @CAM_ARG_LUN, align 4
  %125 = load i32*, i32** %11, align 8
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %124
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %14, align 4
  br label %130

130:                                              ; preds = %123, %109, %99
  br label %131

131:                                              ; preds = %130, %85, %75
  br label %132

132:                                              ; preds = %131, %61, %57
  %133 = load i32, i32* %14, align 4
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %132, %122, %98, %74, %50, %41
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @parse_btl_name(i8*, i8**, i8**, i32*, i32*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @strtol(i8*, i8**, i32) #1

declare dso_local i32 @strtoll(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
