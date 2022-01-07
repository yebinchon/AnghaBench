; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbinput.c_AcpiDbGetNextToken.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbinput.c_AcpiDbGetNextToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@ACPI_TYPE_STRING = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i32 0, align 4
@ACPI_TYPE_FIELD_UNIT = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @AcpiDbGetNextToken(i8* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %3
  store i8* null, i8** %4, align 8
  br label %210

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 32
  br i1 %23, label %24, label %46

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %37, %24
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 32
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i1 [ false, %25 ], [ %34, %30 ]
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %5, align 8
  br label %25

40:                                               ; preds = %35
  %41 = load i8*, i8** %5, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i8* null, i8** %4, align 8
  br label %210

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %19
  %47 = load i8*, i8** %5, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  switch i32 %49, label %177 [
    i32 34, label %50
    i32 40, label %71
    i32 123, label %92
    i32 91, label %113
  ]

50:                                               ; preds = %46
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %5, align 8
  %53 = load i8*, i8** %5, align 8
  store i8* %53, i8** %8, align 8
  %54 = load i32, i32* @ACPI_TYPE_STRING, align 4
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %67, %50
  %56 = load i8*, i8** %5, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i8*, i8** %5, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 34
  br label %65

65:                                               ; preds = %60, %55
  %66 = phi i1 [ false, %55 ], [ %64, %60 ]
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %5, align 8
  br label %55

70:                                               ; preds = %65
  br label %195

71:                                               ; preds = %46
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %5, align 8
  %74 = load i8*, i8** %5, align 8
  store i8* %74, i8** %8, align 8
  %75 = load i32, i32* @ACPI_TYPE_BUFFER, align 4
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %88, %71
  %77 = load i8*, i8** %5, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i8*, i8** %5, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 41
  br label %86

86:                                               ; preds = %81, %76
  %87 = phi i1 [ false, %76 ], [ %85, %81 ]
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %5, align 8
  br label %76

91:                                               ; preds = %86
  br label %195

92:                                               ; preds = %46
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %5, align 8
  %95 = load i8*, i8** %5, align 8
  store i8* %95, i8** %8, align 8
  %96 = load i32, i32* @ACPI_TYPE_FIELD_UNIT, align 4
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %109, %92
  %98 = load i8*, i8** %5, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i8*, i8** %5, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 125
  br label %107

107:                                              ; preds = %102, %97
  %108 = phi i1 [ false, %97 ], [ %106, %102 ]
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = load i8*, i8** %5, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %5, align 8
  br label %97

112:                                              ; preds = %107
  br label %195

113:                                              ; preds = %46
  %114 = load i8*, i8** %5, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %5, align 8
  store i32 1, i32* %9, align 4
  %116 = load i8*, i8** %5, align 8
  store i8* %116, i8** %8, align 8
  %117 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %173, %113
  %119 = load i8*, i8** %5, align 8
  %120 = load i8, i8* %119, align 1
  %121 = icmp ne i8 %120, 0
  br i1 %121, label %122, label %176

122:                                              ; preds = %118
  %123 = load i8*, i8** %5, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 34
  br i1 %126, label %127, label %151

127:                                              ; preds = %122
  %128 = load i8*, i8** %5, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %5, align 8
  br label %130

130:                                              ; preds = %142, %127
  %131 = load i8*, i8** %5, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load i8*, i8** %5, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 34
  br label %140

140:                                              ; preds = %135, %130
  %141 = phi i1 [ false, %130 ], [ %139, %135 ]
  br i1 %141, label %142, label %145

142:                                              ; preds = %140
  %143 = load i8*, i8** %5, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %5, align 8
  br label %130

145:                                              ; preds = %140
  %146 = load i8*, i8** %5, align 8
  %147 = load i8, i8* %146, align 1
  %148 = icmp ne i8 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  br label %176

150:                                              ; preds = %145
  br label %173

151:                                              ; preds = %122
  %152 = load i8*, i8** %5, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 91
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %172

159:                                              ; preds = %151
  %160 = load i8*, i8** %5, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 93
  br i1 %163, label %164, label %171

164:                                              ; preds = %159
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %176

170:                                              ; preds = %164
  br label %171

171:                                              ; preds = %170, %159
  br label %172

172:                                              ; preds = %171, %156
  br label %173

173:                                              ; preds = %172, %150
  %174 = load i8*, i8** %5, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %5, align 8
  br label %118

176:                                              ; preds = %169, %149, %118
  br label %195

177:                                              ; preds = %46
  %178 = load i8*, i8** %5, align 8
  store i8* %178, i8** %8, align 8
  br label %179

179:                                              ; preds = %191, %177
  %180 = load i8*, i8** %5, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load i8*, i8** %5, align 8
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp ne i32 %187, 32
  br label %189

189:                                              ; preds = %184, %179
  %190 = phi i1 [ false, %179 ], [ %188, %184 ]
  br i1 %190, label %191, label %194

191:                                              ; preds = %189
  %192 = load i8*, i8** %5, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %5, align 8
  br label %179

194:                                              ; preds = %189
  br label %195

195:                                              ; preds = %194, %176, %112, %91, %70
  %196 = load i8*, i8** %5, align 8
  %197 = load i8, i8* %196, align 1
  %198 = icmp ne i8 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %195
  %200 = load i8**, i8*** %6, align 8
  store i8* null, i8** %200, align 8
  br label %206

201:                                              ; preds = %195
  %202 = load i8*, i8** %5, align 8
  store i8 0, i8* %202, align 1
  %203 = load i8*, i8** %5, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 1
  %205 = load i8**, i8*** %6, align 8
  store i8* %204, i8** %205, align 8
  br label %206

206:                                              ; preds = %201, %199
  %207 = load i32, i32* %10, align 4
  %208 = load i32*, i32** %7, align 8
  store i32 %207, i32* %208, align 4
  %209 = load i8*, i8** %8, align 8
  store i8* %209, i8** %4, align 8
  br label %210

210:                                              ; preds = %206, %44, %18
  %211 = load i8*, i8** %4, align 8
  ret i8* %211
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
