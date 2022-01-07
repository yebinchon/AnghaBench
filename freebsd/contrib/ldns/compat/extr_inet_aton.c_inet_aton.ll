; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/compat/extr_inet_aton.c_inet_aton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/compat/extr_inet_aton.c_inet_aton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_aton(i8* %0, %struct.in_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32* %12, i32** %11, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %9, align 1
  br label %15

15:                                               ; preds = %115, %2
  %16 = load i8, i8* %9, align 1
  %17 = sext i8 %16 to i32
  %18 = call i64 @isdigit(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %218

21:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  store i32 10, i32* %7, align 4
  %22 = load i8, i8* %9, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 48
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  store i8 %28, i8* %9, align 1
  %29 = load i8, i8* %9, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 120
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = load i8, i8* %9, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 88
  br i1 %35, label %36, label %40

36:                                               ; preds = %32, %25
  store i32 16, i32* %7, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %4, align 8
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %9, align 1
  br label %41

40:                                               ; preds = %32
  store i32 8, i32* %7, align 4
  br label %41

41:                                               ; preds = %40, %36
  br label %42

42:                                               ; preds = %41, %21
  br label %43

43:                                               ; preds = %96, %42
  %44 = load i8, i8* %9, align 1
  %45 = sext i8 %44 to i32
  %46 = call i64 @isascii(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %43
  %49 = load i8, i8* %9, align 1
  %50 = sext i8 %49 to i32
  %51 = call i64 @isdigit(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i8, i8* %9, align 1
  %58 = sext i8 %57 to i32
  %59 = sub nsw i32 %58, 48
  %60 = add nsw i32 %56, %59
  store i32 %60, i32* %6, align 4
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %4, align 8
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %9, align 1
  br label %96

64:                                               ; preds = %48, %43
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, 16
  br i1 %66, label %67, label %94

67:                                               ; preds = %64
  %68 = load i8, i8* %9, align 1
  %69 = sext i8 %68 to i32
  %70 = call i64 @isascii(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %67
  %73 = load i8, i8* %9, align 1
  %74 = sext i8 %73 to i32
  %75 = call i64 @isxdigit(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %72
  %78 = load i32, i32* %6, align 4
  %79 = shl i32 %78, 4
  %80 = load i8, i8* %9, align 1
  %81 = sext i8 %80 to i32
  %82 = add nsw i32 %81, 10
  %83 = load i8, i8* %9, align 1
  %84 = sext i8 %83 to i32
  %85 = call i64 @islower(i32 %84)
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 97, i32 65
  %89 = sub nsw i32 %82, %88
  %90 = or i32 %79, %89
  store i32 %90, i32* %6, align 4
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %4, align 8
  %93 = load i8, i8* %92, align 1
  store i8 %93, i8* %9, align 1
  br label %95

94:                                               ; preds = %72, %67, %64
  br label %97

95:                                               ; preds = %77
  br label %96

96:                                               ; preds = %95, %53
  br label %43

97:                                               ; preds = %94
  %98 = load i8, i8* %9, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 46
  br i1 %100, label %101, label %114

101:                                              ; preds = %97
  %102 = load i32*, i32** %11, align 8
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  %105 = icmp uge i32* %102, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %218

107:                                              ; preds = %101
  %108 = load i32, i32* %6, align 4
  %109 = load i32*, i32** %11, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %11, align 8
  store i32 %108, i32* %109, align 4
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %4, align 8
  %113 = load i8, i8* %112, align 1
  store i8 %113, i8* %9, align 1
  br label %115

114:                                              ; preds = %97
  br label %116

115:                                              ; preds = %107
  br label %15

116:                                              ; preds = %114
  %117 = load i8, i8* %9, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %116
  %121 = load i8, i8* %9, align 1
  %122 = sext i8 %121 to i32
  %123 = call i64 @isascii(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load i8, i8* %9, align 1
  %127 = sext i8 %126 to i32
  %128 = call i32 @isspace(i32 %127) #3
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %125, %120
  store i32 0, i32* %3, align 4
  br label %218

131:                                              ; preds = %125, %116
  %132 = load i32*, i32** %11, align 8
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %134 = ptrtoint i32* %132 to i64
  %135 = ptrtoint i32* %133 to i64
  %136 = sub i64 %134, %135
  %137 = sdiv exact i64 %136, 4
  %138 = add nsw i64 %137, 1
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  switch i32 %140, label %209 [
    i32 0, label %141
    i32 1, label %142
    i32 2, label %143
    i32 3, label %157
    i32 4, label %179
  ]

141:                                              ; preds = %131
  store i32 0, i32* %3, align 4
  br label %218

142:                                              ; preds = %131
  br label %209

143:                                              ; preds = %131
  %144 = load i32, i32* %6, align 4
  %145 = icmp sgt i32 %144, 16777215
  br i1 %145, label %150, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %148 = load i32, i32* %147, align 16
  %149 = icmp ugt i32 %148, 255
  br i1 %149, label %150, label %151

150:                                              ; preds = %146, %143
  store i32 0, i32* %3, align 4
  br label %218

151:                                              ; preds = %146
  %152 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %153 = load i32, i32* %152, align 16
  %154 = shl i32 %153, 24
  %155 = load i32, i32* %6, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %6, align 4
  br label %209

157:                                              ; preds = %131
  %158 = load i32, i32* %6, align 4
  %159 = icmp sgt i32 %158, 65535
  br i1 %159, label %168, label %160

160:                                              ; preds = %157
  %161 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %162 = load i32, i32* %161, align 16
  %163 = icmp ugt i32 %162, 255
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp ugt i32 %166, 255
  br i1 %167, label %168, label %169

168:                                              ; preds = %164, %160, %157
  store i32 0, i32* %3, align 4
  br label %218

169:                                              ; preds = %164
  %170 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %171 = load i32, i32* %170, align 16
  %172 = shl i32 %171, 24
  %173 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = shl i32 %174, 16
  %176 = or i32 %172, %175
  %177 = load i32, i32* %6, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %6, align 4
  br label %209

179:                                              ; preds = %131
  %180 = load i32, i32* %6, align 4
  %181 = icmp sgt i32 %180, 255
  br i1 %181, label %194, label %182

182:                                              ; preds = %179
  %183 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %184 = load i32, i32* %183, align 16
  %185 = icmp ugt i32 %184, 255
  br i1 %185, label %194, label %186

186:                                              ; preds = %182
  %187 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp ugt i32 %188, 255
  br i1 %189, label %194, label %190

190:                                              ; preds = %186
  %191 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %192 = load i32, i32* %191, align 8
  %193 = icmp ugt i32 %192, 255
  br i1 %193, label %194, label %195

194:                                              ; preds = %190, %186, %182, %179
  store i32 0, i32* %3, align 4
  br label %218

195:                                              ; preds = %190
  %196 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %197 = load i32, i32* %196, align 16
  %198 = shl i32 %197, 24
  %199 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %200 = load i32, i32* %199, align 4
  %201 = shl i32 %200, 16
  %202 = or i32 %198, %201
  %203 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %204 = load i32, i32* %203, align 8
  %205 = shl i32 %204, 8
  %206 = or i32 %202, %205
  %207 = load i32, i32* %6, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %6, align 4
  br label %209

209:                                              ; preds = %131, %195, %169, %151, %142
  %210 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %211 = icmp ne %struct.in_addr* %210, null
  br i1 %211, label %212, label %217

212:                                              ; preds = %209
  %213 = load i32, i32* %6, align 4
  %214 = call i32 @htonl(i32 %213)
  %215 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %216 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %215, i32 0, i32 0
  store i32 %214, i32* %216, align 4
  br label %217

217:                                              ; preds = %212, %209
  store i32 1, i32* %3, align 4
  br label %218

218:                                              ; preds = %217, %194, %168, %150, %141, %130, %106, %20
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i64 @isdigit(i32) #1

declare dso_local i64 @isascii(i32) #1

declare dso_local i64 @isxdigit(i32) #1

declare dso_local i64 @islower(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isspace(i32) #2

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
