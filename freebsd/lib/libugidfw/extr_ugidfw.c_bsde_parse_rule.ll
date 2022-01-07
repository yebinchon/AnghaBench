; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libugidfw/extr_ugidfw.c_bsde_parse_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libugidfw/extr_ugidfw.c_bsde_parse_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_bsdextended_rule = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Rule must begin with subject\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Rule must contain an object\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Rule must contain mode\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bsde_parse_rule(i32 %0, i8** %1, %struct.mac_bsdextended_rule* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.mac_bsdextended_rule*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store %struct.mac_bsdextended_rule* %2, %struct.mac_bsdextended_rule** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %23 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %9, align 8
  %24 = call i32 @bzero(%struct.mac_bsdextended_rule* %23, i32 12)
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load i8*, i8** %11, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @snprintf(i8* %28, i64 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %151

31:                                               ; preds = %5
  %32 = load i8**, i8*** %8, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i8*, i8** %11, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @snprintf(i8* %38, i64 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %151

41:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 -1, i32* %15, align 4
  store i32 1, i32* %22, align 4
  br label %42

42:                                               ; preds = %57, %41
  %43 = load i32, i32* %22, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load i8**, i8*** %8, align 8
  %48 = load i32, i32* %22, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %22, align 4
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %54, %46
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %22, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %22, align 4
  br label %42

60:                                               ; preds = %42
  %61 = load i32, i32* %15, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i8*, i8** %11, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @snprintf(i8* %64, i64 %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %151

67:                                               ; preds = %60
  store i32 -1, i32* %18, align 4
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %22, align 4
  br label %69

69:                                               ; preds = %84, %67
  %70 = load i32, i32* %22, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %69
  %74 = load i8**, i8*** %8, align 8
  %75 = load i32, i32* %22, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* %22, align 4
  store i32 %82, i32* %18, align 4
  br label %83

83:                                               ; preds = %81, %73
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %22, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %22, align 4
  br label %69

87:                                               ; preds = %69
  %88 = load i32, i32* %18, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i8*, i8** %11, align 8
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @snprintf(i8* %91, i64 %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %151

94:                                               ; preds = %87
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %12, align 4
  %97 = sub nsw i32 %95, %96
  %98 = sub nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* %16, align 4
  %103 = sub nsw i32 %101, %102
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %18, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %19, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %19, align 4
  %108 = sub nsw i32 %106, %107
  store i32 %108, i32* %20, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load i8**, i8*** %8, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  %114 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %9, align 8
  %115 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %114, i32 0, i32 2
  %116 = load i64, i64* %10, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = call i32 @bsde_parse_subject(i32 %109, i8** %113, i32* %115, i64 %116, i8* %117)
  store i32 %118, i32* %21, align 4
  %119 = load i32, i32* %21, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %94
  store i32 -1, i32* %6, align 4
  br label %151

122:                                              ; preds = %94
  %123 = load i32, i32* %17, align 4
  %124 = load i8**, i8*** %8, align 8
  %125 = load i32, i32* %16, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  %128 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %9, align 8
  %129 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %128, i32 0, i32 1
  %130 = load i64, i64* %10, align 8
  %131 = load i8*, i8** %11, align 8
  %132 = call i32 @bsde_parse_object(i32 %123, i8** %127, i32* %129, i64 %130, i8* %131)
  store i32 %132, i32* %21, align 4
  %133 = load i32, i32* %21, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %122
  store i32 -1, i32* %6, align 4
  br label %151

136:                                              ; preds = %122
  %137 = load i32, i32* %20, align 4
  %138 = load i8**, i8*** %8, align 8
  %139 = load i32, i32* %19, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load %struct.mac_bsdextended_rule*, %struct.mac_bsdextended_rule** %9, align 8
  %143 = getelementptr inbounds %struct.mac_bsdextended_rule, %struct.mac_bsdextended_rule* %142, i32 0, i32 0
  %144 = load i64, i64* %10, align 8
  %145 = load i8*, i8** %11, align 8
  %146 = call i32 @bsde_parse_mode(i32 %137, i8** %141, i32* %143, i64 %144, i8* %145)
  store i32 %146, i32* %21, align 4
  %147 = load i32, i32* %21, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %136
  store i32 -1, i32* %6, align 4
  br label %151

150:                                              ; preds = %136
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %150, %149, %135, %121, %90, %63, %37, %27
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i32 @bzero(%struct.mac_bsdextended_rule*, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @bsde_parse_subject(i32, i8**, i32*, i64, i8*) #1

declare dso_local i32 @bsde_parse_object(i32, i8**, i32*, i64, i8*) #1

declare dso_local i32 @bsde_parse_mode(i32, i8**, i32*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
