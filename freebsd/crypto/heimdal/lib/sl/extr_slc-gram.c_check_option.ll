; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_slc-gram.c_check_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_slc-gram.c_check_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assignment = type { i32, %struct.assignment* }

@.str = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"argument\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"unknown name %s\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"neither long nor short option\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"either of long or name option must be used\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"multiple long options\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"multiple short options\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"multiple types\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"multiple arguments\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"multiple help strings\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"multiple default values\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.assignment*)* @check_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_option(%struct.assignment* %0) #0 {
  %2 = alloca %struct.assignment*, align 8
  %3 = alloca %struct.assignment*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.assignment* %0, %struct.assignment** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.assignment*, %struct.assignment** %2, align 8
  store %struct.assignment* %12, %struct.assignment** %3, align 8
  br label %13

13:                                               ; preds = %94, %1
  %14 = load %struct.assignment*, %struct.assignment** %3, align 8
  %15 = icmp ne %struct.assignment* %14, null
  br i1 %15, label %16, label %98

16:                                               ; preds = %13
  %17 = load %struct.assignment*, %struct.assignment** %3, align 8
  %18 = getelementptr inbounds %struct.assignment, %struct.assignment* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @strcmp(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %93

25:                                               ; preds = %16
  %26 = load %struct.assignment*, %struct.assignment** %3, align 8
  %27 = getelementptr inbounds %struct.assignment, %struct.assignment* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @strcmp(i32 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %92

34:                                               ; preds = %25
  %35 = load %struct.assignment*, %struct.assignment** %3, align 8
  %36 = getelementptr inbounds %struct.assignment, %struct.assignment* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @strcmp(i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %91

43:                                               ; preds = %34
  %44 = load %struct.assignment*, %struct.assignment** %3, align 8
  %45 = getelementptr inbounds %struct.assignment, %struct.assignment* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @strcmp(i32 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %90

52:                                               ; preds = %43
  %53 = load %struct.assignment*, %struct.assignment** %3, align 8
  %54 = getelementptr inbounds %struct.assignment, %struct.assignment* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @strcmp(i32 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %89

61:                                               ; preds = %52
  %62 = load %struct.assignment*, %struct.assignment** %3, align 8
  %63 = getelementptr inbounds %struct.assignment, %struct.assignment* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @strcmp(i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %88

70:                                               ; preds = %61
  %71 = load %struct.assignment*, %struct.assignment** %3, align 8
  %72 = getelementptr inbounds %struct.assignment, %struct.assignment* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @strcmp(i32 %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %87

79:                                               ; preds = %70
  %80 = load %struct.assignment*, %struct.assignment** %3, align 8
  %81 = load %struct.assignment*, %struct.assignment** %3, align 8
  %82 = getelementptr inbounds %struct.assignment, %struct.assignment* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (%struct.assignment*, i8*, ...) @ex(%struct.assignment* %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %79, %76
  br label %88

88:                                               ; preds = %87, %67
  br label %89

89:                                               ; preds = %88, %58
  br label %90

90:                                               ; preds = %89, %49
  br label %91

91:                                               ; preds = %90, %40
  br label %92

92:                                               ; preds = %91, %31
  br label %93

93:                                               ; preds = %92, %22
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.assignment*, %struct.assignment** %3, align 8
  %96 = getelementptr inbounds %struct.assignment, %struct.assignment* %95, i32 0, i32 1
  %97 = load %struct.assignment*, %struct.assignment** %96, align 8
  store %struct.assignment* %97, %struct.assignment** %3, align 8
  br label %13

98:                                               ; preds = %13
  %99 = load i32, i32* %4, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load i32, i32* %6, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load %struct.assignment*, %struct.assignment** %2, align 8
  %106 = call i32 (%struct.assignment*, i8*, ...) @ex(%struct.assignment* %105, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %104, %101, %98
  %110 = load i32, i32* %4, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load i32, i32* %5, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load %struct.assignment*, %struct.assignment** %2, align 8
  %117 = call i32 (%struct.assignment*, i8*, ...) @ex(%struct.assignment* %116, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %120

120:                                              ; preds = %115, %112, %109
  %121 = load i32, i32* %4, align 4
  %122 = icmp sgt i32 %121, 1
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load %struct.assignment*, %struct.assignment** %2, align 8
  %125 = call i32 (%struct.assignment*, i8*, ...) @ex(%struct.assignment* %124, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %123, %120
  %129 = load i32, i32* %6, align 4
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load %struct.assignment*, %struct.assignment** %2, align 8
  %133 = call i32 (%struct.assignment*, i8*, ...) @ex(%struct.assignment* %132, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  br label %136

136:                                              ; preds = %131, %128
  %137 = load i32, i32* %7, align 4
  %138 = icmp sgt i32 %137, 1
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load %struct.assignment*, %struct.assignment** %2, align 8
  %141 = call i32 (%struct.assignment*, i8*, ...) @ex(%struct.assignment* %140, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %11, align 4
  br label %144

144:                                              ; preds = %139, %136
  %145 = load i32, i32* %8, align 4
  %146 = icmp sgt i32 %145, 1
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load %struct.assignment*, %struct.assignment** %2, align 8
  %149 = call i32 (%struct.assignment*, i8*, ...) @ex(%struct.assignment* %148, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %11, align 4
  br label %152

152:                                              ; preds = %147, %144
  %153 = load i32, i32* %9, align 4
  %154 = icmp sgt i32 %153, 1
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load %struct.assignment*, %struct.assignment** %2, align 8
  %157 = call i32 (%struct.assignment*, i8*, ...) @ex(%struct.assignment* %156, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %11, align 4
  br label %160

160:                                              ; preds = %155, %152
  %161 = load i32, i32* %10, align 4
  %162 = icmp sgt i32 %161, 1
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load %struct.assignment*, %struct.assignment** %2, align 8
  %165 = call i32 (%struct.assignment*, i8*, ...) @ex(%struct.assignment* %164, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %11, align 4
  br label %168

168:                                              ; preds = %163, %160
  %169 = load i32, i32* %11, align 4
  ret i32 %169
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @ex(%struct.assignment*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
