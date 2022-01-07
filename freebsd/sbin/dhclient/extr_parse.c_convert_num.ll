; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_parse.c_convert_num.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_parse.c_convert_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Bogus number: %s.\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Bogus number: %s: digit %d not in base %d\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"value %s%o exceeds max (%d) for precision.\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"value %s%x exceeds max (%d) for precision.\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"value %s%u exceeds max (%d) for precision.\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Unexpected integer size: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @convert_num(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %13, align 8
  %15 = load i8*, i8** %13, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 45
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  %20 = load i8*, i8** %13, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %13, align 8
  br label %22

22:                                               ; preds = %19, %4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %60, label %25

25:                                               ; preds = %22
  %26 = load i8*, i8** %13, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 48
  br i1 %30, label %31, label %58

31:                                               ; preds = %25
  %32 = load i8*, i8** %13, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 120
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  store i32 16, i32* %7, align 4
  %38 = load i8*, i8** %13, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  store i8* %39, i8** %13, align 8
  br label %57

40:                                               ; preds = %31
  %41 = load i8*, i8** %13, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = call i64 @isascii(i8 signext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load i8*, i8** %13, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = call i64 @isdigit(i8 signext %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  store i32 8, i32* %7, align 4
  %53 = load i8*, i8** %13, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  store i8* %54, i8** %13, align 8
  br label %56

55:                                               ; preds = %46, %40
  store i32 10, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %52
  br label %57

57:                                               ; preds = %56, %37
  br label %59

58:                                               ; preds = %25
  store i32 10, i32* %7, align 4
  br label %59

59:                                               ; preds = %58, %57
  br label %60

60:                                               ; preds = %59, %22
  br label %61

61:                                               ; preds = %105, %60
  %62 = load i8*, i8** %13, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %13, align 8
  %64 = load i8, i8* %62, align 1
  %65 = sext i8 %64 to i32
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp uge i32 %66, 97
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* %10, align 4
  %70 = sub i32 %69, 97
  %71 = add i32 %70, 10
  store i32 %71, i32* %10, align 4
  br label %90

72:                                               ; preds = %61
  %73 = load i32, i32* %10, align 4
  %74 = icmp uge i32 %73, 65
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = sub i32 %76, 65
  %78 = add i32 %77, 10
  store i32 %78, i32* %10, align 4
  br label %89

79:                                               ; preds = %72
  %80 = load i32, i32* %10, align 4
  %81 = icmp uge i32 %80, 48
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = sub i32 %83, 48
  store i32 %84, i32* %10, align 4
  br label %88

85:                                               ; preds = %79
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %86)
  br label %109

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %75
  br label %90

90:                                               ; preds = %89, %68
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp uge i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %95, i32 %96, i32 %97)
  br label %109

99:                                               ; preds = %90
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %7, align 4
  %102 = mul i32 %100, %101
  %103 = load i32, i32* %10, align 4
  %104 = add i32 %102, %103
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %99
  %106 = load i8*, i8** %13, align 8
  %107 = load i8, i8* %106, align 1
  %108 = icmp ne i8 %107, 0
  br i1 %108, label %61, label %109

109:                                              ; preds = %105, %94, %85
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i32, i32* %8, align 4
  %114 = sub nsw i32 %113, 1
  %115 = shl i32 1, %114
  store i32 %115, i32* %11, align 4
  br label %125

116:                                              ; preds = %109
  %117 = load i32, i32* %8, align 4
  %118 = sub nsw i32 %117, 1
  %119 = shl i32 1, %118
  %120 = load i32, i32* %8, align 4
  %121 = sub nsw i32 %120, 1
  %122 = shl i32 1, %121
  %123 = sub nsw i32 %122, 1
  %124 = add nsw i32 %119, %123
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %116, %112
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp ugt i32 %126, %127
  br i1 %128, label %129, label %156

129:                                              ; preds = %125
  %130 = load i32, i32* %7, align 4
  switch i32 %130, label %147 [
    i32 8, label %131
    i32 16, label %139
  ]

131:                                              ; preds = %129
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %11, align 4
  %138 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %135, i32 %136, i32 %137)
  br label %155

139:                                              ; preds = %129
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %11, align 4
  %146 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* %143, i32 %144, i32 %145)
  br label %155

147:                                              ; preds = %129
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %11, align 4
  %154 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8* %151, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %147, %139, %131
  br label %156

156:                                              ; preds = %155, %125
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %183

159:                                              ; preds = %156
  %160 = load i32, i32* %8, align 4
  switch i32 %160, label %179 [
    i32 8, label %161
    i32 16, label %167
    i32 32, label %173
  ]

161:                                              ; preds = %159
  %162 = load i32, i32* %12, align 4
  %163 = zext i32 %162 to i64
  %164 = sub i64 0, %163
  %165 = trunc i64 %164 to i8
  %166 = load i8*, i8** %5, align 8
  store i8 %165, i8* %166, align 1
  br label %182

167:                                              ; preds = %159
  %168 = load i8*, i8** %5, align 8
  %169 = load i32, i32* %12, align 4
  %170 = zext i32 %169 to i64
  %171 = sub i64 0, %170
  %172 = call i32 @putShort(i8* %168, i64 %171)
  br label %182

173:                                              ; preds = %159
  %174 = load i8*, i8** %5, align 8
  %175 = load i32, i32* %12, align 4
  %176 = zext i32 %175 to i64
  %177 = sub i64 0, %176
  %178 = call i32 @putLong(i8* %174, i64 %177)
  br label %182

179:                                              ; preds = %159
  %180 = load i32, i32* %8, align 4
  %181 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %180)
  br label %182

182:                                              ; preds = %179, %173, %167, %161
  br label %201

183:                                              ; preds = %156
  %184 = load i32, i32* %8, align 4
  switch i32 %184, label %197 [
    i32 8, label %185
    i32 16, label %189
    i32 32, label %193
  ]

185:                                              ; preds = %183
  %186 = load i32, i32* %12, align 4
  %187 = trunc i32 %186 to i8
  %188 = load i8*, i8** %5, align 8
  store i8 %187, i8* %188, align 1
  br label %200

189:                                              ; preds = %183
  %190 = load i8*, i8** %5, align 8
  %191 = load i32, i32* %12, align 4
  %192 = call i32 @putUShort(i8* %190, i32 %191)
  br label %200

193:                                              ; preds = %183
  %194 = load i8*, i8** %5, align 8
  %195 = load i32, i32* %12, align 4
  %196 = call i32 @putULong(i8* %194, i32 %195)
  br label %200

197:                                              ; preds = %183
  %198 = load i32, i32* %8, align 4
  %199 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %198)
  br label %200

200:                                              ; preds = %197, %193, %189, %185
  br label %201

201:                                              ; preds = %200, %182
  ret void
}

declare dso_local i64 @isascii(i8 signext) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @warning(i8*, ...) #1

declare dso_local i32 @putShort(i8*, i64) #1

declare dso_local i32 @putLong(i8*, i64) #1

declare dso_local i32 @putUShort(i8*, i32) #1

declare dso_local i32 @putULong(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
