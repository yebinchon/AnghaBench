; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_json.c_json_parse_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_json.c_json_parse_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"JSON: Truncated \\ escape\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"JSON: Invalid \\u escape\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"JSON: Unknown escape '%c'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, i8*)* @json_parse_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @json_parse_string(i8** %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i8**, i8*** %4, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ugt i64 %25, 10
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %30

28:                                               ; preds = %2
  %29 = load i64, i64* %10, align 8
  br label %30

30:                                               ; preds = %28, %27
  %31 = phi i64 [ 10, %27 ], [ %29, %28 ]
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i8* @os_malloc(i64 %32)
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i8* null, i8** %3, align 8
  br label %187

37:                                               ; preds = %30
  %38 = load i8*, i8** %7, align 8
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %11, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %9, align 8
  br label %42

42:                                               ; preds = %180, %37
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = icmp ult i8* %43, %44
  br i1 %45, label %46, label %183

46:                                               ; preds = %42
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %87

50:                                               ; preds = %46
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = icmp slt i64 %55, 3
  br i1 %56, label %57, label %87

57:                                               ; preds = %50
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %14, align 4
  %64 = load i64, i64* %11, align 8
  %65 = mul i64 %64, 2
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %10, align 8
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = load i64, i64* %10, align 8
  store i64 %70, i64* %11, align 8
  br label %71

71:                                               ; preds = %69, %57
  %72 = load i8*, i8** %7, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i8* @os_realloc(i8* %72, i64 %73)
  store i8* %74, i8** %13, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  br label %184

78:                                               ; preds = %71
  %79 = load i8*, i8** %13, align 8
  store i8* %79, i8** %7, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  store i8* %83, i8** %8, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load i64, i64* %11, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %9, align 8
  br label %87

87:                                               ; preds = %78, %50, %46
  %88 = load i8*, i8** %6, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  switch i32 %90, label %174 [
    i32 34, label %91
    i32 92, label %96
  ]

91:                                               ; preds = %87
  %92 = load i8*, i8** %8, align 8
  store i8 0, i8* %92, align 1
  %93 = load i8*, i8** %6, align 8
  %94 = load i8**, i8*** %4, align 8
  store i8* %93, i8** %94, align 8
  %95 = load i8*, i8** %7, align 8
  store i8* %95, i8** %3, align 8
  br label %187

96:                                               ; preds = %87
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %6, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = icmp uge i8* %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* @MSG_DEBUG, align 4
  %104 = call i32 (i32, i8*, ...) @wpa_printf(i32 %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %184

105:                                              ; preds = %96
  %106 = load i8*, i8** %6, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  switch i32 %108, label %167 [
    i32 34, label %109
    i32 92, label %109
    i32 47, label %109
    i32 110, label %114
    i32 114, label %117
    i32 116, label %120
    i32 117, label %123
  ]

109:                                              ; preds = %105, %105, %105
  %110 = load i8*, i8** %6, align 8
  %111 = load i8, i8* %110, align 1
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %8, align 8
  store i8 %111, i8* %112, align 1
  br label %173

114:                                              ; preds = %105
  %115 = load i8*, i8** %8, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %8, align 8
  store i8 10, i8* %115, align 1
  br label %173

117:                                              ; preds = %105
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %8, align 8
  store i8 13, i8* %118, align 1
  br label %173

120:                                              ; preds = %105
  %121 = load i8*, i8** %8, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %8, align 8
  store i8 9, i8* %121, align 1
  br label %173

123:                                              ; preds = %105
  %124 = load i8*, i8** %5, align 8
  %125 = load i8*, i8** %6, align 8
  %126 = ptrtoint i8* %124 to i64
  %127 = ptrtoint i8* %125 to i64
  %128 = sub i64 %126, %127
  %129 = icmp slt i64 %128, 5
  br i1 %129, label %140, label %130

130:                                              ; preds = %123
  %131 = load i8*, i8** %6, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %134 = call i32 @hexstr2bin(i8* %132, i32* %133, i32 2)
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %136, %130, %123
  %141 = load i32, i32* @MSG_DEBUG, align 4
  %142 = call i32 (i32, i8*, ...) @wpa_printf(i32 %141, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %184

143:                                              ; preds = %136
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %143
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = trunc i32 %149 to i8
  %151 = load i8*, i8** %8, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %8, align 8
  store i8 %150, i8* %151, align 1
  br label %164

153:                                              ; preds = %143
  %154 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = trunc i32 %155 to i8
  %157 = load i8*, i8** %8, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %8, align 8
  store i8 %156, i8* %157, align 1
  %159 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = trunc i32 %160 to i8
  %162 = load i8*, i8** %8, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %8, align 8
  store i8 %161, i8* %162, align 1
  br label %164

164:                                              ; preds = %153, %147
  %165 = load i8*, i8** %6, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 4
  store i8* %166, i8** %6, align 8
  br label %173

167:                                              ; preds = %105
  %168 = load i32, i32* @MSG_DEBUG, align 4
  %169 = load i8*, i8** %6, align 8
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = call i32 (i32, i8*, ...) @wpa_printf(i32 %168, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %171)
  br label %184

173:                                              ; preds = %164, %120, %117, %114, %109
  br label %179

174:                                              ; preds = %87
  %175 = load i8*, i8** %6, align 8
  %176 = load i8, i8* %175, align 1
  %177 = load i8*, i8** %8, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %8, align 8
  store i8 %176, i8* %177, align 1
  br label %179

179:                                              ; preds = %174, %173
  br label %180

180:                                              ; preds = %179
  %181 = load i8*, i8** %6, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %6, align 8
  br label %42

183:                                              ; preds = %42
  br label %184

184:                                              ; preds = %183, %167, %140, %102, %77
  %185 = load i8*, i8** %7, align 8
  %186 = call i32 @os_free(i8* %185)
  store i8* null, i8** %3, align 8
  br label %187

187:                                              ; preds = %184, %91, %36
  %188 = load i8*, i8** %3, align 8
  ret i8* %188
}

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i8* @os_realloc(i8*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @hexstr2bin(i8*, i32*, i32) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
