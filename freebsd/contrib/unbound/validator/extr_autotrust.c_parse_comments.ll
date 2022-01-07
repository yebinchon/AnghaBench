; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_parse_comments.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_parse_comments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autr_ta = type { i32, i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"malloc failure in parse\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"state=\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"parse error\00", align 1
@VERB_OPS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"has undefined state, considered NewKey\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"count=\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"lastchange=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.autr_ta*)* @parse_comments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_comments(i8* %0, %struct.autr_ta* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.autr_ta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.autr_ta* %1, %struct.autr_ta** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 1, %16
  %18 = add i64 %17, 1
  %19 = trunc i64 %18 to i32
  %20 = call i64 @malloc(i32 %19)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = call i32 @log_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %172

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %40, %27
  %29 = load i8*, i8** %4, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** %4, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 59
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i1 [ false, %28 ], [ %37, %33 ]
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %4, align 8
  br label %28

43:                                               ; preds = %38
  %44 = load i8*, i8** %4, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 59
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %4, align 8
  br label %51

51:                                               ; preds = %48, %43
  br label %52

52:                                               ; preds = %57, %51
  %53 = load i8*, i8** %4, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load i8*, i8** %4, align 8
  %59 = load i8, i8* %58, align 1
  %60 = load i8*, i8** %10, align 8
  store i8 %59, i8* %60, align 1
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %10, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %4, align 8
  br label %52

65:                                               ; preds = %52
  %66 = load i8*, i8** %10, align 8
  store i8 0, i8* %66, align 1
  %67 = load i8*, i8** %9, align 8
  store i8* %67, i8** %10, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @position_in_string(i8* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = call i64 @strlen(i8* %71)
  %73 = trunc i64 %72 to i32
  %74 = icmp sge i32 %70, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = call i32 @log_err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @free(i8* %77)
  store i32 0, i32* %3, align 4
  br label %172

79:                                               ; preds = %65
  %80 = load i32, i32* %7, align 4
  %81 = icmp sle i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %84 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %83, i32 0, i32 0
  store i32 128, i32* %84, align 8
  br label %105

85:                                               ; preds = %79
  %86 = load i8*, i8** %10, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = sub nsw i32 %91, 48
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  switch i32 %93, label %98 [
    i32 129, label %94
    i32 133, label %94
    i32 128, label %94
    i32 132, label %94
    i32 130, label %94
    i32 131, label %94
  ]

94:                                               ; preds = %85, %85, %85, %85, %85, %85
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %97 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  br label %104

98:                                               ; preds = %85
  %99 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %100 = load i32, i32* @VERB_OPS, align 4
  %101 = call i32 @verbose_key(%struct.autr_ta* %99, i32 %100, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %102 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %103 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %102, i32 0, i32 0
  store i32 129, i32* %103, align 8
  br label %104

104:                                              ; preds = %98, %94
  br label %105

105:                                              ; preds = %104, %82
  %106 = load i8*, i8** %10, align 8
  %107 = call i32 @position_in_string(i8* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i8*, i8** %10, align 8
  %110 = call i64 @strlen(i8* %109)
  %111 = trunc i64 %110 to i32
  %112 = icmp sge i32 %108, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = call i32 @log_err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %115 = load i8*, i8** %9, align 8
  %116 = call i32 @free(i8* %115)
  store i32 0, i32* %3, align 4
  br label %172

117:                                              ; preds = %105
  %118 = load i32, i32* %7, align 4
  %119 = icmp sle i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %122 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %121, i32 0, i32 2
  store i64 0, i64* %122, align 8
  br label %133

123:                                              ; preds = %117
  %124 = load i32, i32* %7, align 4
  %125 = load i8*, i8** %10, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  store i8* %127, i8** %10, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = call i32 @atoi(i8* %128)
  %130 = sext i32 %129 to i64
  %131 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %132 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %131, i32 0, i32 2
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %123, %120
  %134 = load i8*, i8** %10, align 8
  %135 = call i32 @position_in_string(i8* %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load i8*, i8** %10, align 8
  %138 = call i64 @strlen(i8* %137)
  %139 = trunc i64 %138 to i32
  %140 = icmp sge i32 %136, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %133
  %142 = call i32 @log_err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %143 = load i8*, i8** %9, align 8
  %144 = call i32 @free(i8* %143)
  store i32 0, i32* %3, align 4
  br label %172

145:                                              ; preds = %133
  %146 = load i32, i32* %7, align 4
  %147 = icmp sge i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = load i32, i32* %7, align 4
  %150 = load i8*, i8** %10, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  store i8* %152, i8** %10, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = call i32 @atoi(i8* %153)
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %148, %145
  %156 = load i32, i32* %7, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %158, %155
  %162 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %163 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %162, i32 0, i32 1
  store i64 0, i64* %163, align 8
  br label %169

164:                                              ; preds = %158
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %168 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %167, i32 0, i32 1
  store i64 %166, i64* %168, align 8
  br label %169

169:                                              ; preds = %164, %161
  %170 = load i8*, i8** %9, align 8
  %171 = call i32 @free(i8* %170)
  store i32 1, i32* %3, align 4
  br label %172

172:                                              ; preds = %169, %141, %113, %75, %25
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @position_in_string(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @verbose_key(%struct.autr_ta*, i32, i8*) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
