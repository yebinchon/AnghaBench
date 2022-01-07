; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/compat/extr_snprintf.c_print_num.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/compat/extr_snprintf.c_print_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i64*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32)* @print_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_num(i8** %0, i64* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i8* %12, i32 %13) #0 {
  %15 = alloca i8**, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8, align 1
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i8** %0, i8*** %15, align 8
  store i64* %1, i64** %16, align 8
  store i32* %2, i32** %17, align 8
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i8* %12, i8** %27, align 8
  store i32 %13, i32* %28, align 4
  %33 = load i32, i32* %28, align 4
  store i32 %33, i32* %29, align 4
  %34 = load i32, i32* %26, align 4
  %35 = load i32, i32* %23, align 4
  %36 = load i32, i32* %24, align 4
  %37 = call signext i8 @get_negsign(i32 %34, i32 %35, i32 %36)
  store i8 %37, i8* %30, align 1
  %38 = load i32, i32* %22, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %108

40:                                               ; preds = %14
  %41 = load i32, i32* %29, align 4
  store i32 %41, i32* %31, align 4
  %42 = load i32, i32* %19, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %25, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, i32* %31, align 4
  br label %48

48:                                               ; preds = %47, %44, %40
  %49 = load i32, i32* %31, align 4
  %50 = load i32, i32* %19, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* %19, align 4
  store i32 %53, i32* %31, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i8, i8* %30, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %31, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %31, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i8, i8* %30, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i8**, i8*** %15, align 8
  %65 = load i64*, i64** %16, align 8
  %66 = load i32*, i32** %17, align 8
  %67 = load i8, i8* %30, align 1
  %68 = call i32 @print_pad(i8** %64, i64* %65, i32* %66, i8 signext %67, i32 1)
  br label %69

69:                                               ; preds = %63, %60
  %70 = load i32, i32* %19, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* %25, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %95

76:                                               ; preds = %72, %69
  %77 = load i32, i32* %29, align 4
  %78 = load i32, i32* %19, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load i8**, i8*** %15, align 8
  %82 = load i64*, i64** %16, align 8
  %83 = load i32*, i32** %17, align 8
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %29, align 4
  %86 = sub nsw i32 %84, %85
  %87 = call i32 @print_pad(i8** %81, i64* %82, i32* %83, i8 signext 48, i32 %86)
  br label %88

88:                                               ; preds = %80, %76
  %89 = load i8**, i8*** %15, align 8
  %90 = load i64*, i64** %16, align 8
  %91 = load i32*, i32** %17, align 8
  %92 = load i8*, i8** %27, align 8
  %93 = load i32, i32* %28, align 4
  %94 = call i32 @spool_str_rev(i8** %89, i64* %90, i32* %91, i8* %92, i32 %93)
  br label %95

95:                                               ; preds = %88, %75
  %96 = load i32, i32* %31, align 4
  %97 = load i32, i32* %18, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load i8**, i8*** %15, align 8
  %101 = load i64*, i64** %16, align 8
  %102 = load i32*, i32** %17, align 8
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* %31, align 4
  %105 = sub nsw i32 %103, %104
  %106 = call i32 @print_pad(i8** %100, i64* %101, i32* %102, i8 signext 32, i32 %105)
  br label %107

107:                                              ; preds = %99, %95
  br label %190

108:                                              ; preds = %14
  %109 = load i32, i32* %29, align 4
  store i32 %109, i32* %32, align 4
  %110 = load i32, i32* %19, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i32, i32* %25, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 0, i32* %32, align 4
  br label %116

116:                                              ; preds = %115, %112, %108
  %117 = load i32, i32* %32, align 4
  %118 = load i32, i32* %19, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i32, i32* %19, align 4
  store i32 %121, i32* %32, align 4
  br label %122

122:                                              ; preds = %120, %116
  %123 = load i32, i32* %20, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %21, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i32, i32* %32, align 4
  %130 = load i32, i32* %18, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* %18, align 4
  store i32 %133, i32* %32, align 4
  br label %141

134:                                              ; preds = %128, %125, %122
  %135 = load i8, i8* %30, align 1
  %136 = icmp ne i8 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %32, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %32, align 4
  br label %140

140:                                              ; preds = %137, %134
  br label %141

141:                                              ; preds = %140, %132
  %142 = load i32, i32* %32, align 4
  %143 = load i32, i32* %18, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %141
  %146 = load i8**, i8*** %15, align 8
  %147 = load i64*, i64** %16, align 8
  %148 = load i32*, i32** %17, align 8
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* %32, align 4
  %151 = sub nsw i32 %149, %150
  %152 = call i32 @print_pad(i8** %146, i64* %147, i32* %148, i8 signext 32, i32 %151)
  br label %153

153:                                              ; preds = %145, %141
  %154 = load i8, i8* %30, align 1
  %155 = icmp ne i8 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %153
  %157 = load i8**, i8*** %15, align 8
  %158 = load i64*, i64** %16, align 8
  %159 = load i32*, i32** %17, align 8
  %160 = load i8, i8* %30, align 1
  %161 = call i32 @print_pad(i8** %157, i64* %158, i32* %159, i8 signext %160, i32 1)
  %162 = load i32, i32* %32, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %32, align 4
  br label %164

164:                                              ; preds = %156, %153
  %165 = load i32, i32* %29, align 4
  %166 = load i32, i32* %32, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %164
  %169 = load i8**, i8*** %15, align 8
  %170 = load i64*, i64** %16, align 8
  %171 = load i32*, i32** %17, align 8
  %172 = load i32, i32* %32, align 4
  %173 = load i32, i32* %29, align 4
  %174 = sub nsw i32 %172, %173
  %175 = call i32 @print_pad(i8** %169, i64* %170, i32* %171, i8 signext 48, i32 %174)
  br label %176

176:                                              ; preds = %168, %164
  %177 = load i32, i32* %19, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load i32, i32* %25, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  br label %190

183:                                              ; preds = %179, %176
  %184 = load i8**, i8*** %15, align 8
  %185 = load i64*, i64** %16, align 8
  %186 = load i32*, i32** %17, align 8
  %187 = load i8*, i8** %27, align 8
  %188 = load i32, i32* %28, align 4
  %189 = call i32 @spool_str_rev(i8** %184, i64* %185, i32* %186, i8* %187, i32 %188)
  br label %190

190:                                              ; preds = %182, %183, %107
  ret void
}

declare dso_local signext i8 @get_negsign(i32, i32, i32) #1

declare dso_local i32 @print_pad(i8**, i64*, i32*, i8 signext, i32) #1

declare dso_local i32 @spool_str_rev(i8**, i64*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
