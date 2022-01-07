; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc.c_getarg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc.c_getarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i32, i32 }

@getarg.digits = internal global i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@OPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"-6\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@ai_fam_templ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"-4\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"***Illegal integer value %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"***Value %s should be unsigned\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"***Version must be either 4 or 6\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.TYPE_4__*)* @getarg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getarg(i8* %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %12 = call i32 @ZERO(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %11)
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @OPT, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %131 [
    i32 129, label %25
    i32 131, label %26
    i32 130, label %47
    i32 128, label %47
    i32 132, label %112
  ]

25:                                               ; preds = %3
  br label %131

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @AF_INET6, align 4
  store i32 %31, i32* @ai_fam_templ, align 4
  store i32 -1, i32* %4, align 4
  br label %132

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @AF_INET, align 4
  store i32 %37, i32* @ai_fam_templ, align 4
  store i32 -1, i32* %4, align 4
  br label %132

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38
  %40 = load i8*, i8** %5, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  %43 = call i32 @getnetnum(i8* %40, i32* %42, i8* null, i32 0)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %132

46:                                               ; preds = %39
  br label %131

47:                                               ; preds = %3, %3
  store i32 0, i32* %8, align 4
  %48 = load i8*, i8** %5, align 8
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 45
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %10, align 8
  store i32 1, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %47
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %85, %56
  %60 = load i8*, i8** @getarg.digits, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i8, i8* %61, align 1
  %63 = call i8* @strchr(i8* %60, i8 signext %62)
  store i8* %63, i8** %9, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i32, i32* @stderr, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  store i32 0, i32* %4, align 4
  br label %132

70:                                               ; preds = %59
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %73, 10
  store i32 %74, i32* %72, align 4
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** @getarg.digits, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %70
  %86 = load i8*, i8** %10, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %10, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %59, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %91
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @OPT, align 4
  %97 = xor i32 %96, -1
  %98 = and i32 %95, %97
  %99 = icmp eq i32 %98, 128
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32, i32* @stderr, align 4
  %102 = load i8*, i8** %5, align 8
  %103 = call i32 (i32, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %102)
  store i32 0, i32* %4, align 4
  br label %132

104:                                              ; preds = %94
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = sub nsw i32 0, %107
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %104, %91
  br label %131

112:                                              ; preds = %3
  %113 = load i8*, i8** %5, align 8
  %114 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  store i32 6, i32* %118, align 8
  br label %130

119:                                              ; preds = %112
  %120 = load i8*, i8** %5, align 8
  %121 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 3
  store i32 4, i32* %125, align 8
  br label %129

126:                                              ; preds = %119
  %127 = load i32, i32* @stderr, align 4
  %128 = call i32 (i32, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %132

129:                                              ; preds = %123
  br label %130

130:                                              ; preds = %129, %116
  br label %131

131:                                              ; preds = %3, %130, %111, %46, %25
  store i32 1, i32* %4, align 4
  br label %132

132:                                              ; preds = %131, %126, %100, %66, %45, %36, %30
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @ZERO(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @getnetnum(i8*, i32*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
