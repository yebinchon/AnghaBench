; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_split.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@split.ws = internal constant [3 x i8] c" \09\00", align 1
@.str = private unnamed_addr constant [25 x i8] c"line has too many fields\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid `\\' escape\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"unterminated quoted string\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"empty quoted string not permitted\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"quoted string not followed by white space\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i8*, i64)* @split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split(i8* %0, i8** %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %24, %5
  %16 = load i32, i32* %13, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i8**, i8*** %8, align 8
  %21 = load i32, i32* %13, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  store i8* null, i8** %23, align 8
  br label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %13, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %13, align 4
  br label %15

27:                                               ; preds = %15
  %28 = load i8*, i8** %7, align 8
  store i8* %28, i8** %12, align 8
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %166, %27
  %30 = load i8*, i8** %12, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %169

34:                                               ; preds = %29
  %35 = load i8*, i8** %12, align 8
  %36 = call i64 @strspn(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @split.ws, i64 0, i64 0))
  %37 = load i8*, i8** %12, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 %36
  store i8* %38, i8** %12, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 35
  br i1 %42, label %48, label %43

43:                                               ; preds = %34
  %44 = load i8*, i8** %12, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %34
  br label %169

49:                                               ; preds = %43
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i8*, i8** %10, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @snprintf(i8* %54, i64 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %171

57:                                               ; preds = %49
  %58 = load i8*, i8** %12, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 34
  br i1 %61, label %62, label %147

62:                                               ; preds = %57
  %63 = load i8*, i8** %12, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %12, align 8
  store i8* %64, i8** %14, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = load i8**, i8*** %8, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  store i8* %65, i8** %69, align 8
  br label %70

70:                                               ; preds = %111, %62
  %71 = load i8*, i8** %12, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 34
  br i1 %74, label %75, label %117

75:                                               ; preds = %70
  %76 = load i8*, i8** %12, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 92
  br i1 %79, label %80, label %102

80:                                               ; preds = %75
  %81 = load i8*, i8** %12, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %12, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 34
  br i1 %86, label %87, label %101

87:                                               ; preds = %80
  %88 = load i8*, i8** %12, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 92
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load i8*, i8** %12, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i8*, i8** %10, align 8
  %99 = load i64, i64* %11, align 8
  %100 = call i32 @snprintf(i8* %98, i64 %99, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %171

101:                                              ; preds = %92, %87, %80
  br label %102

102:                                              ; preds = %101, %75
  %103 = load i8*, i8** %12, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i8*, i8** %10, align 8
  %109 = load i64, i64* %11, align 8
  %110 = call i32 @snprintf(i8* %108, i64 %109, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %171

111:                                              ; preds = %102
  %112 = load i8*, i8** %12, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %12, align 8
  %114 = load i8, i8* %112, align 1
  %115 = load i8*, i8** %14, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %14, align 8
  store i8 %114, i8* %115, align 1
  br label %70

117:                                              ; preds = %70
  %118 = load i8*, i8** %14, align 8
  store i8 0, i8* %118, align 1
  %119 = load i8*, i8** %12, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %12, align 8
  %121 = load i8**, i8*** %8, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %117
  %130 = load i8*, i8** %10, align 8
  %131 = load i64, i64* %11, align 8
  %132 = call i32 @snprintf(i8* %130, i64 %131, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %171

133:                                              ; preds = %117
  %134 = load i8*, i8** %12, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %133
  %139 = load i8*, i8** %12, align 8
  %140 = call i64 @strspn(i8* %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @split.ws, i64 0, i64 0))
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i8*, i8** %10, align 8
  %144 = load i64, i64* %11, align 8
  %145 = call i32 @snprintf(i8* %143, i64 %144, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %171

146:                                              ; preds = %138, %133
  br label %166

147:                                              ; preds = %57
  %148 = load i8*, i8** %12, align 8
  %149 = load i8**, i8*** %8, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  store i8* %148, i8** %152, align 8
  %153 = load i8*, i8** %12, align 8
  %154 = call i32 @strcspn(i8* %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @split.ws, i64 0, i64 0))
  %155 = load i8*, i8** %12, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i8, i8* %155, i64 %156
  store i8* %157, i8** %12, align 8
  %158 = load i8*, i8** %12, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %147
  %163 = load i8*, i8** %12, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %12, align 8
  store i8 0, i8* %163, align 1
  br label %165

165:                                              ; preds = %162, %147
  br label %166

166:                                              ; preds = %165, %146
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %13, align 4
  br label %29

169:                                              ; preds = %48, %29
  %170 = load i32, i32* %13, align 4
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %169, %142, %129, %107, %97, %53
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
