; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_samedomain.c_ns_samedomain.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_samedomain.c_ns_samedomain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ns_samedomain(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = sub i64 %20, 1
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 46
  br i1 %25, label %26, label %59

26:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  %27 = load i64, i64* %6, align 8
  %28 = sub i64 %27, 2
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %49, %26
  %31 = load i32, i32* %9, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 92
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  br label %46

45:                                               ; preds = %41
  store i32 1, i32* %10, align 4
  br label %46

46:                                               ; preds = %45, %44
  br label %48

47:                                               ; preds = %33
  br label %52

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %9, align 4
  br label %30

52:                                               ; preds = %47, %30
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, -1
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %18, %2
  %60 = load i64, i64* %7, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %103

62:                                               ; preds = %59
  %63 = load i8*, i8** %5, align 8
  %64 = load i64, i64* %7, align 8
  %65 = sub i64 %64, 1
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 46
  br i1 %69, label %70, label %103

70:                                               ; preds = %62
  store i32 0, i32* %10, align 4
  %71 = load i64, i64* %7, align 8
  %72 = sub i64 %71, 2
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %93, %70
  %75 = load i32, i32* %9, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %74
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 92
  br i1 %84, label %85, label %91

85:                                               ; preds = %77
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 0, i32* %10, align 4
  br label %90

89:                                               ; preds = %85
  store i32 1, i32* %10, align 4
  br label %90

90:                                               ; preds = %89, %88
  br label %92

91:                                               ; preds = %77
  br label %96

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %9, align 4
  br label %74

96:                                               ; preds = %91, %74
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i64, i64* %7, align 8
  %101 = add i64 %100, -1
  store i64 %101, i64* %7, align 8
  br label %102

102:                                              ; preds = %99, %96
  br label %103

103:                                              ; preds = %102, %62, %59
  %104 = load i64, i64* %7, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 1, i32* %3, align 4
  br label %181

107:                                              ; preds = %103
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* %6, align 8
  %110 = icmp ugt i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %181

112:                                              ; preds = %107
  %113 = load i64, i64* %7, align 8
  %114 = load i64, i64* %6, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = load i8*, i8** %4, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = load i64, i64* %7, align 8
  %120 = call i64 @strncasecmp(i8* %117, i8* %118, i64 %119)
  %121 = icmp eq i64 %120, 0
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %3, align 4
  br label %181

123:                                              ; preds = %112
  %124 = load i64, i64* %6, align 8
  %125 = load i64, i64* %7, align 8
  %126 = sub i64 %124, %125
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp slt i32 %128, 2
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %181

131:                                              ; preds = %123
  %132 = load i8*, i8** %4, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %132, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 46
  br i1 %139, label %140, label %141

140:                                              ; preds = %131
  store i32 0, i32* %3, align 4
  br label %181

141:                                              ; preds = %131
  store i32 0, i32* %10, align 4
  %142 = load i32, i32* %8, align 4
  %143 = sub nsw i32 %142, 2
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %163, %141
  %145 = load i32, i32* %9, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %166

147:                                              ; preds = %144
  %148 = load i8*, i8** %4, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 92
  br i1 %154, label %155, label %161

155:                                              ; preds = %147
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store i32 0, i32* %10, align 4
  br label %160

159:                                              ; preds = %155
  store i32 1, i32* %10, align 4
  br label %160

160:                                              ; preds = %159, %158
  br label %162

161:                                              ; preds = %147
  br label %166

162:                                              ; preds = %160
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %9, align 4
  br label %144

166:                                              ; preds = %161, %144
  %167 = load i32, i32* %10, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  store i32 0, i32* %3, align 4
  br label %181

170:                                              ; preds = %166
  %171 = load i8*, i8** %4, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  store i8* %174, i8** %11, align 8
  %175 = load i8*, i8** %11, align 8
  %176 = load i8*, i8** %5, align 8
  %177 = load i64, i64* %7, align 8
  %178 = call i64 @strncasecmp(i8* %175, i8* %176, i64 %177)
  %179 = icmp eq i64 %178, 0
  %180 = zext i1 %179 to i32
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %170, %169, %140, %130, %116, %111, %106
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
