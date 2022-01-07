; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_xml_convertdate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_xml_convertdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"%t%Y%t-%t%m%t-%t%d%tT%t%H%t:%t%M%t:%t%S%t\00", align 1
@verb = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"xml_convertdate parse failure %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"xml_convertdate f failure %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%d:%d%n\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"xml_convertdate tz failure %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"xml_convertdate mktime failure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @xml_convertdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xml_convertdate(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tm, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  %12 = load i8*, i8** %3, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 45
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %6, align 8
  br label %21

21:                                               ; preds = %18, %1
  %22 = call i32 @memset(%struct.tm* %5, i32 0, i32 8)
  %23 = load i8*, i8** %6, align 8
  %24 = call i8* @strptime(i8* %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.tm* %5)
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %21
  %28 = load i64, i64* @verb, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %30, %27
  store i64 0, i64* %2, align 8
  br label %142

34:                                               ; preds = %21
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 46
  br i1 %38, label %39, label %58

39:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %7, i32* %8)
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i64, i64* @verb, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %47, %44
  store i64 0, i64* %2, align 8
  br label %142

51:                                               ; preds = %39
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i8*, i8** %6, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %6, align 8
  br label %58

58:                                               ; preds = %51, %34
  %59 = load i8*, i8** %6, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 90
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** %6, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 122
  br i1 %67, label %68, label %71

68:                                               ; preds = %63, %58
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %6, align 8
  br label %124

71:                                               ; preds = %63
  %72 = load i8*, i8** %6, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 43
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load i8*, i8** %6, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 45
  br i1 %80, label %81, label %123

81:                                               ; preds = %76, %71
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %9, i32* %10, i32* %11)
  %85 = icmp slt i32 %84, 2
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load i64, i64* @verb, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i8*, i8** %3, align 8
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %89, %86
  store i64 0, i64* %2, align 8
  br label %142

93:                                               ; preds = %81
  %94 = load i8*, i8** %6, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 43
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = load i32, i32* %9, align 4
  %100 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, %99
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* %10, align 4
  %104 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, %103
  store i32 %106, i32* %104, align 4
  br label %116

107:                                              ; preds = %93
  %108 = load i32, i32* %9, align 4
  %109 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, %108
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* %10, align 4
  %113 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %114, %112
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %107, %98
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %6, align 8
  %119 = load i32, i32* %11, align 4
  %120 = load i8*, i8** %6, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %6, align 8
  br label %123

123:                                              ; preds = %116, %76
  br label %124

124:                                              ; preds = %123, %68
  %125 = load i8*, i8** %6, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %130

130:                                              ; preds = %129, %124
  %131 = call i64 @sldns_mktime_from_utc(%struct.tm* %5)
  store i64 %131, i64* %4, align 8
  %132 = load i64, i64* %4, align 8
  %133 = icmp eq i64 %132, -1
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i64, i64* @verb, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %134
  store i64 0, i64* %2, align 8
  br label %142

140:                                              ; preds = %130
  %141 = load i64, i64* %4, align 8
  store i64 %141, i64* %2, align 8
  br label %142

142:                                              ; preds = %140, %139, %92, %50, %33
  %143 = load i64, i64* %2, align 8
  ret i64 %143
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i8* @strptime(i8*, i8*, %struct.tm*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, ...) #1

declare dso_local i64 @sldns_mktime_from_utc(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
