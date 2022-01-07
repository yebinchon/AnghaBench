; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_slc-gram.c_check_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_slc-gram.c_check_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assignment = type { i32, %struct.TYPE_2__, %struct.assignment* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"option\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"argument\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"min_args\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"max_args\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"unknown name: %s\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"no command name\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"multiple function names\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"multiple help strings\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"multiple argument strings\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"multiple min_args strings\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"multiple max_args strings\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.assignment*)* @check_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_command(%struct.assignment* %0) #0 {
  %2 = alloca %struct.assignment*, align 8
  %3 = alloca %struct.assignment*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.assignment* %0, %struct.assignment** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.assignment*, %struct.assignment** %2, align 8
  store %struct.assignment* %11, %struct.assignment** %3, align 8
  br label %12

12:                                               ; preds = %100, %1
  %13 = load %struct.assignment*, %struct.assignment** %3, align 8
  %14 = icmp ne %struct.assignment* %13, null
  br i1 %14, label %15, label %104

15:                                               ; preds = %12
  %16 = load %struct.assignment*, %struct.assignment** %3, align 8
  %17 = getelementptr inbounds %struct.assignment, %struct.assignment* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @strcmp(i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %99

24:                                               ; preds = %15
  %25 = load %struct.assignment*, %struct.assignment** %3, align 8
  %26 = getelementptr inbounds %struct.assignment, %struct.assignment* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @strcmp(i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %98

33:                                               ; preds = %24
  %34 = load %struct.assignment*, %struct.assignment** %3, align 8
  %35 = getelementptr inbounds %struct.assignment, %struct.assignment* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @strcmp(i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load %struct.assignment*, %struct.assignment** %3, align 8
  %41 = getelementptr inbounds %struct.assignment, %struct.assignment* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @check_option(i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %10, align 4
  br label %97

49:                                               ; preds = %33
  %50 = load %struct.assignment*, %struct.assignment** %3, align 8
  %51 = getelementptr inbounds %struct.assignment, %struct.assignment* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @strcmp(i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %96

58:                                               ; preds = %49
  %59 = load %struct.assignment*, %struct.assignment** %3, align 8
  %60 = getelementptr inbounds %struct.assignment, %struct.assignment* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @strcmp(i32 %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %95

67:                                               ; preds = %58
  %68 = load %struct.assignment*, %struct.assignment** %3, align 8
  %69 = getelementptr inbounds %struct.assignment, %struct.assignment* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @strcmp(i32 %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %94

76:                                               ; preds = %67
  %77 = load %struct.assignment*, %struct.assignment** %3, align 8
  %78 = getelementptr inbounds %struct.assignment, %struct.assignment* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @strcmp(i32 %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %93

85:                                               ; preds = %76
  %86 = load %struct.assignment*, %struct.assignment** %3, align 8
  %87 = load %struct.assignment*, %struct.assignment** %3, align 8
  %88 = getelementptr inbounds %struct.assignment, %struct.assignment* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (%struct.assignment*, i8*, ...) @ex(%struct.assignment* %86, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %85, %82
  br label %94

94:                                               ; preds = %93, %73
  br label %95

95:                                               ; preds = %94, %64
  br label %96

96:                                               ; preds = %95, %55
  br label %97

97:                                               ; preds = %96, %39
  br label %98

98:                                               ; preds = %97, %30
  br label %99

99:                                               ; preds = %98, %21
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.assignment*, %struct.assignment** %3, align 8
  %102 = getelementptr inbounds %struct.assignment, %struct.assignment* %101, i32 0, i32 2
  %103 = load %struct.assignment*, %struct.assignment** %102, align 8
  store %struct.assignment* %103, %struct.assignment** %3, align 8
  br label %12

104:                                              ; preds = %12
  %105 = load i32, i32* %4, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load %struct.assignment*, %struct.assignment** %2, align 8
  %109 = call i32 (%struct.assignment*, i8*, ...) @ex(%struct.assignment* %108, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %107, %104
  %113 = load i32, i32* %5, align 4
  %114 = icmp sgt i32 %113, 1
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load %struct.assignment*, %struct.assignment** %2, align 8
  %117 = call i32 (%struct.assignment*, i8*, ...) @ex(%struct.assignment* %116, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %115, %112
  %121 = load i32, i32* %6, align 4
  %122 = icmp sgt i32 %121, 1
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load %struct.assignment*, %struct.assignment** %2, align 8
  %125 = call i32 (%struct.assignment*, i8*, ...) @ex(%struct.assignment* %124, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %123, %120
  %129 = load i32, i32* %7, align 4
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load %struct.assignment*, %struct.assignment** %2, align 8
  %133 = call i32 (%struct.assignment*, i8*, ...) @ex(%struct.assignment* %132, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %136

136:                                              ; preds = %131, %128
  %137 = load i32, i32* %8, align 4
  %138 = icmp sgt i32 %137, 1
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load %struct.assignment*, %struct.assignment** %2, align 8
  %141 = call i32 (%struct.assignment*, i8*, ...) @ex(%struct.assignment* %140, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %139, %136
  %145 = load i32, i32* %9, align 4
  %146 = icmp sgt i32 %145, 1
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load %struct.assignment*, %struct.assignment** %2, align 8
  %149 = call i32 (%struct.assignment*, i8*, ...) @ex(%struct.assignment* %148, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %10, align 4
  br label %152

152:                                              ; preds = %147, %144
  %153 = load i32, i32* %10, align 4
  ret i32 %153
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @check_option(i32) #1

declare dso_local i32 @ex(%struct.assignment*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
