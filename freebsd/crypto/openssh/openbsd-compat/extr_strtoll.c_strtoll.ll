; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_strtoll.c_strtoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_strtoll.c_strtoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LLONG_MIN = common dso_local global i64 0, align 8
@LLONG_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strtoll(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %7, align 8
  br label %15

15:                                               ; preds = %20, %3
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %7, align 8
  %18 = load i8, i8* %16, align 1
  %19 = zext i8 %18 to i32
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @isspace(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %15, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 45
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  store i32 1, i32* %11, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %7, align 8
  %30 = load i8, i8* %28, align 1
  %31 = sext i8 %30 to i32
  store i32 %31, i32* %10, align 4
  br label %41

32:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 43
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %7, align 8
  %38 = load i8, i8* %36, align 1
  %39 = sext i8 %38 to i32
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %35, %32
  br label %41

41:                                               ; preds = %40, %27
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 16
  br i1 %46, label %47, label %67

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 48
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = load i8*, i8** %7, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 120
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %7, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 88
  br i1 %59, label %60, label %67

60:                                               ; preds = %55, %50
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  store i32 %64, i32* %10, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  store i8* %66, i8** %7, align 8
  store i32 16, i32* %6, align 4
  br label %67

67:                                               ; preds = %60, %55, %47, %44
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 48
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 8, i32 10
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %70, %67
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i64, i64* @LLONG_MIN, align 8
  br label %82

80:                                               ; preds = %75
  %81 = load i64, i64* @LLONG_MAX, align 8
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i64 [ %79, %78 ], [ %81, %80 ]
  store i64 %83, i64* %9, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = srem i64 %84, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %9, align 8
  %92 = sdiv i64 %91, %90
  store i64 %92, i64* %9, align 8
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %82
  %96 = load i32, i32* %13, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %13, align 4
  %101 = sub nsw i32 %100, %99
  store i32 %101, i32* %13, align 4
  %102 = load i64, i64* %9, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %9, align 8
  br label %104

104:                                              ; preds = %98, %95
  %105 = load i32, i32* %13, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %13, align 4
  br label %107

107:                                              ; preds = %104, %82
  store i64 0, i64* %8, align 8
  store i32 0, i32* %12, align 4
  br label %108

108:                                              ; preds = %192, %107
  %109 = load i32, i32* %10, align 4
  %110 = call i64 @isdigit(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* %10, align 4
  %114 = sub nsw i32 %113, 48
  store i32 %114, i32* %10, align 4
  br label %129

115:                                              ; preds = %108
  %116 = load i32, i32* %10, align 4
  %117 = call i64 @isalpha(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = load i32, i32* %10, align 4
  %121 = call i64 @isupper(i32 %120)
  %122 = icmp ne i64 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 55, i32 87
  %125 = load i32, i32* %10, align 4
  %126 = sub nsw i32 %125, %124
  store i32 %126, i32* %10, align 4
  br label %128

127:                                              ; preds = %115
  br label %197

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128, %112
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp sge i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  br label %197

134:                                              ; preds = %129
  %135 = load i32, i32* %12, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  br label %192

138:                                              ; preds = %134
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %166

141:                                              ; preds = %138
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* %9, align 8
  %144 = icmp slt i64 %142, %143
  br i1 %144, label %153, label %145

145:                                              ; preds = %141
  %146 = load i64, i64* %8, align 8
  %147 = load i64, i64* %9, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %145
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp sgt i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %149, %141
  store i32 -1, i32* %12, align 4
  %154 = load i64, i64* @LLONG_MIN, align 8
  store i64 %154, i64* %8, align 8
  %155 = load i32, i32* @ERANGE, align 4
  store i32 %155, i32* @errno, align 4
  br label %165

156:                                              ; preds = %149, %145
  store i32 1, i32* %12, align 4
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = load i64, i64* %8, align 8
  %160 = mul nsw i64 %159, %158
  store i64 %160, i64* %8, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = load i64, i64* %8, align 8
  %164 = sub nsw i64 %163, %162
  store i64 %164, i64* %8, align 8
  br label %165

165:                                              ; preds = %156, %153
  br label %191

166:                                              ; preds = %138
  %167 = load i64, i64* %8, align 8
  %168 = load i64, i64* %9, align 8
  %169 = icmp sgt i64 %167, %168
  br i1 %169, label %178, label %170

170:                                              ; preds = %166
  %171 = load i64, i64* %8, align 8
  %172 = load i64, i64* %9, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %181

174:                                              ; preds = %170
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %13, align 4
  %177 = icmp sgt i32 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %174, %166
  store i32 -1, i32* %12, align 4
  %179 = load i64, i64* @LLONG_MAX, align 8
  store i64 %179, i64* %8, align 8
  %180 = load i32, i32* @ERANGE, align 4
  store i32 %180, i32* @errno, align 4
  br label %190

181:                                              ; preds = %174, %170
  store i32 1, i32* %12, align 4
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = load i64, i64* %8, align 8
  %185 = mul nsw i64 %184, %183
  store i64 %185, i64* %8, align 8
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = load i64, i64* %8, align 8
  %189 = add nsw i64 %188, %187
  store i64 %189, i64* %8, align 8
  br label %190

190:                                              ; preds = %181, %178
  br label %191

191:                                              ; preds = %190, %165
  br label %192

192:                                              ; preds = %191, %137
  %193 = load i8*, i8** %7, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %7, align 8
  %195 = load i8, i8* %193, align 1
  %196 = zext i8 %195 to i32
  store i32 %196, i32* %10, align 4
  br label %108

197:                                              ; preds = %133, %127
  %198 = load i8**, i8*** %5, align 8
  %199 = icmp ne i8** %198, null
  br i1 %199, label %200, label %211

200:                                              ; preds = %197
  %201 = load i32, i32* %12, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load i8*, i8** %7, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 -1
  br label %208

206:                                              ; preds = %200
  %207 = load i8*, i8** %4, align 8
  br label %208

208:                                              ; preds = %206, %203
  %209 = phi i8* [ %205, %203 ], [ %207, %206 ]
  %210 = load i8**, i8*** %5, align 8
  store i8* %209, i8** %210, align 8
  br label %211

211:                                              ; preds = %208, %197
  %212 = load i64, i64* %8, align 8
  ret i64 %212
}

declare dso_local i64 @isspace(i32) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local i64 @isupper(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
