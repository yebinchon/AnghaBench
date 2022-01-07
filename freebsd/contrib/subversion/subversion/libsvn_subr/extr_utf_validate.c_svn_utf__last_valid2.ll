; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf_validate.c_svn_utf__last_valid2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf_validate.c_svn_utf__last_valid2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @svn_utf__last_valid2(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i8* @first_non_fsm_start_char(i8* %10, i32 %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  store i8* %16, i8** %7, align 8
  store i32 128, i32* %8, align 4
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %4, align 8
  br label %18

18:                                               ; preds = %173, %2
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %22, label %174

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %4, align 8
  %25 = load i8, i8* %23, align 1
  store i8 %25, i8* %9, align 1
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %165 [
    i32 128, label %27
    i32 134, label %88
    i32 130, label %99
    i32 133, label %110
    i32 135, label %121
    i32 131, label %132
    i32 132, label %143
    i32 136, label %154
    i32 129, label %166
  ]

27:                                               ; preds = %22
  %28 = load i8, i8* %9, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp sle i32 %29, 127
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %168

32:                                               ; preds = %27
  %33 = load i8, i8* %9, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp sle i32 %34, 193
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 129, i32* %8, align 4
  br label %86

37:                                               ; preds = %32
  %38 = load i8, i8* %9, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp sle i32 %39, 223
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 134, i32* %8, align 4
  br label %85

42:                                               ; preds = %37
  %43 = load i8, i8* %9, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 224
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 130, i32* %8, align 4
  br label %84

47:                                               ; preds = %42
  %48 = load i8, i8* %9, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp sle i32 %49, 236
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 133, i32* %8, align 4
  br label %83

52:                                               ; preds = %47
  %53 = load i8, i8* %9, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %54, 237
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 135, i32* %8, align 4
  br label %82

57:                                               ; preds = %52
  %58 = load i8, i8* %9, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp sle i32 %59, 239
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 133, i32* %8, align 4
  br label %81

62:                                               ; preds = %57
  %63 = load i8, i8* %9, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 240
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 131, i32* %8, align 4
  br label %80

67:                                               ; preds = %62
  %68 = load i8, i8* %9, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp sle i32 %69, 243
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 132, i32* %8, align 4
  br label %79

72:                                               ; preds = %67
  %73 = load i8, i8* %9, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp sle i32 %74, 244
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 136, i32* %8, align 4
  br label %78

77:                                               ; preds = %72
  store i32 129, i32* %8, align 4
  br label %78

78:                                               ; preds = %77, %76
  br label %79

79:                                               ; preds = %78, %71
  br label %80

80:                                               ; preds = %79, %66
  br label %81

81:                                               ; preds = %80, %61
  br label %82

82:                                               ; preds = %81, %56
  br label %83

83:                                               ; preds = %82, %51
  br label %84

84:                                               ; preds = %83, %46
  br label %85

85:                                               ; preds = %84, %41
  br label %86

86:                                               ; preds = %85, %36
  br label %87

87:                                               ; preds = %86
  br label %168

88:                                               ; preds = %22
  %89 = load i8, i8* %9, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp sge i32 %90, 128
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i8, i8* %9, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp sle i32 %94, 191
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 128, i32* %8, align 4
  br label %98

97:                                               ; preds = %92, %88
  store i32 129, i32* %8, align 4
  br label %98

98:                                               ; preds = %97, %96
  br label %168

99:                                               ; preds = %22
  %100 = load i8, i8* %9, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp sge i32 %101, 160
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i8, i8* %9, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp sle i32 %105, 191
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32 134, i32* %8, align 4
  br label %109

108:                                              ; preds = %103, %99
  store i32 129, i32* %8, align 4
  br label %109

109:                                              ; preds = %108, %107
  br label %168

110:                                              ; preds = %22
  %111 = load i8, i8* %9, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp sge i32 %112, 128
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load i8, i8* %9, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp sle i32 %116, 191
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i32 134, i32* %8, align 4
  br label %120

119:                                              ; preds = %114, %110
  store i32 129, i32* %8, align 4
  br label %120

120:                                              ; preds = %119, %118
  br label %168

121:                                              ; preds = %22
  %122 = load i8, i8* %9, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp sge i32 %123, 128
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load i8, i8* %9, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp sle i32 %127, 159
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  store i32 134, i32* %8, align 4
  br label %131

130:                                              ; preds = %125, %121
  store i32 129, i32* %8, align 4
  br label %131

131:                                              ; preds = %130, %129
  br label %168

132:                                              ; preds = %22
  %133 = load i8, i8* %9, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp sge i32 %134, 144
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i8, i8* %9, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp sle i32 %138, 191
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  store i32 133, i32* %8, align 4
  br label %142

141:                                              ; preds = %136, %132
  store i32 129, i32* %8, align 4
  br label %142

142:                                              ; preds = %141, %140
  br label %168

143:                                              ; preds = %22
  %144 = load i8, i8* %9, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp sge i32 %145, 128
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load i8, i8* %9, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp sle i32 %149, 191
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  store i32 133, i32* %8, align 4
  br label %153

152:                                              ; preds = %147, %143
  store i32 129, i32* %8, align 4
  br label %153

153:                                              ; preds = %152, %151
  br label %168

154:                                              ; preds = %22
  %155 = load i8, i8* %9, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp sge i32 %156, 128
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load i8, i8* %9, align 1
  %160 = zext i8 %159 to i32
  %161 = icmp sle i32 %160, 143
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  store i32 133, i32* %8, align 4
  br label %164

163:                                              ; preds = %158, %154
  store i32 129, i32* %8, align 4
  br label %164

164:                                              ; preds = %163, %162
  br label %168

165:                                              ; preds = %22
  br label %166

166:                                              ; preds = %22, %165
  %167 = load i8*, i8** %6, align 8
  store i8* %167, i8** %3, align 8
  br label %176

168:                                              ; preds = %164, %153, %142, %131, %120, %109, %98, %87, %31
  %169 = load i32, i32* %8, align 4
  %170 = icmp eq i32 %169, 128
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = load i8*, i8** %4, align 8
  store i8* %172, i8** %6, align 8
  br label %173

173:                                              ; preds = %171, %168
  br label %18

174:                                              ; preds = %18
  %175 = load i8*, i8** %6, align 8
  store i8* %175, i8** %3, align 8
  br label %176

176:                                              ; preds = %174, %166
  %177 = load i8*, i8** %3, align 8
  ret i8* %177
}

declare dso_local i8* @first_non_fsm_start_char(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
