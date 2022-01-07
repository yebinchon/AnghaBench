; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_inet_aton.c_inet_aton.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_inet_aton.c_inet_aton.c"
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

15:                                               ; preds = %109, %2
  %16 = load i8, i8* %9, align 1
  %17 = call i64 @isdigit(i8 signext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %210

20:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  store i32 10, i32* %7, align 4
  %21 = load i8, i8* %9, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 48
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %9, align 1
  %28 = load i8, i8* %9, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 120
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = load i8, i8* %9, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 88
  br i1 %34, label %35, label %39

35:                                               ; preds = %31, %24
  store i32 16, i32* %7, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %9, align 1
  br label %40

39:                                               ; preds = %31
  store i32 8, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %35
  br label %41

41:                                               ; preds = %40, %20
  br label %42

42:                                               ; preds = %90, %41
  %43 = load i8, i8* %9, align 1
  %44 = call i64 @isascii(i8 signext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load i8, i8* %9, align 1
  %48 = call i64 @isdigit(i8 signext %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i8, i8* %9, align 1
  %55 = sext i8 %54 to i32
  %56 = sub nsw i32 %55, 48
  %57 = add nsw i32 %53, %56
  store i32 %57, i32* %6, align 4
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %4, align 8
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* %9, align 1
  br label %90

61:                                               ; preds = %46, %42
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 16
  br i1 %63, label %64, label %88

64:                                               ; preds = %61
  %65 = load i8, i8* %9, align 1
  %66 = call i64 @isascii(i8 signext %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %64
  %69 = load i8, i8* %9, align 1
  %70 = call i64 @isxdigit(i8 signext %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %68
  %73 = load i32, i32* %6, align 4
  %74 = shl i32 %73, 4
  %75 = load i8, i8* %9, align 1
  %76 = sext i8 %75 to i32
  %77 = add nsw i32 %76, 10
  %78 = load i8, i8* %9, align 1
  %79 = call i64 @islower(i8 signext %78)
  %80 = icmp ne i64 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 97, i32 65
  %83 = sub nsw i32 %77, %82
  %84 = or i32 %74, %83
  store i32 %84, i32* %6, align 4
  %85 = load i8*, i8** %4, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %4, align 8
  %87 = load i8, i8* %86, align 1
  store i8 %87, i8* %9, align 1
  br label %89

88:                                               ; preds = %68, %64, %61
  br label %91

89:                                               ; preds = %72
  br label %90

90:                                               ; preds = %89, %50
  br label %42

91:                                               ; preds = %88
  %92 = load i8, i8* %9, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 46
  br i1 %94, label %95, label %108

95:                                               ; preds = %91
  %96 = load i32*, i32** %11, align 8
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = icmp uge i32* %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %210

101:                                              ; preds = %95
  %102 = load i32, i32* %6, align 4
  %103 = load i32*, i32** %11, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %11, align 8
  store i32 %102, i32* %103, align 4
  %105 = load i8*, i8** %4, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %4, align 8
  %107 = load i8, i8* %106, align 1
  store i8 %107, i8* %9, align 1
  br label %109

108:                                              ; preds = %91
  br label %110

109:                                              ; preds = %101
  br label %15

110:                                              ; preds = %108
  %111 = load i8, i8* %9, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = load i8, i8* %9, align 1
  %116 = call i64 @isascii(i8 signext %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i8, i8* %9, align 1
  %120 = call i32 @isspace(i8 signext %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %118, %114
  store i32 0, i32* %3, align 4
  br label %210

123:                                              ; preds = %118, %110
  %124 = load i32*, i32** %11, align 8
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %126 = ptrtoint i32* %124 to i64
  %127 = ptrtoint i32* %125 to i64
  %128 = sub i64 %126, %127
  %129 = sdiv exact i64 %128, 4
  %130 = add nsw i64 %129, 1
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  switch i32 %132, label %201 [
    i32 0, label %133
    i32 1, label %134
    i32 2, label %135
    i32 3, label %149
    i32 4, label %171
  ]

133:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %210

134:                                              ; preds = %123
  br label %201

135:                                              ; preds = %123
  %136 = load i32, i32* %6, align 4
  %137 = icmp sgt i32 %136, 16777215
  br i1 %137, label %142, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %140 = load i32, i32* %139, align 16
  %141 = icmp sgt i32 %140, 255
  br i1 %141, label %142, label %143

142:                                              ; preds = %138, %135
  store i32 0, i32* %3, align 4
  br label %210

143:                                              ; preds = %138
  %144 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %145 = load i32, i32* %144, align 16
  %146 = shl i32 %145, 24
  %147 = load i32, i32* %6, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %6, align 4
  br label %201

149:                                              ; preds = %123
  %150 = load i32, i32* %6, align 4
  %151 = icmp sgt i32 %150, 65535
  br i1 %151, label %160, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %154 = load i32, i32* %153, align 16
  %155 = icmp sgt i32 %154, 255
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp sgt i32 %158, 255
  br i1 %159, label %160, label %161

160:                                              ; preds = %156, %152, %149
  store i32 0, i32* %3, align 4
  br label %210

161:                                              ; preds = %156
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %163 = load i32, i32* %162, align 16
  %164 = shl i32 %163, 24
  %165 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 16
  %168 = or i32 %164, %167
  %169 = load i32, i32* %6, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %6, align 4
  br label %201

171:                                              ; preds = %123
  %172 = load i32, i32* %6, align 4
  %173 = icmp sgt i32 %172, 255
  br i1 %173, label %186, label %174

174:                                              ; preds = %171
  %175 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %176 = load i32, i32* %175, align 16
  %177 = icmp sgt i32 %176, 255
  br i1 %177, label %186, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp sgt i32 %180, 255
  br i1 %181, label %186, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %184 = load i32, i32* %183, align 8
  %185 = icmp sgt i32 %184, 255
  br i1 %185, label %186, label %187

186:                                              ; preds = %182, %178, %174, %171
  store i32 0, i32* %3, align 4
  br label %210

187:                                              ; preds = %182
  %188 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %189 = load i32, i32* %188, align 16
  %190 = shl i32 %189, 24
  %191 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = shl i32 %192, 16
  %194 = or i32 %190, %193
  %195 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %196 = load i32, i32* %195, align 8
  %197 = shl i32 %196, 8
  %198 = or i32 %194, %197
  %199 = load i32, i32* %6, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %6, align 4
  br label %201

201:                                              ; preds = %123, %187, %161, %143, %134
  %202 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %203 = icmp ne %struct.in_addr* %202, null
  br i1 %203, label %204, label %209

204:                                              ; preds = %201
  %205 = load i32, i32* %6, align 4
  %206 = call i32 @htonl(i32 %205)
  %207 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %208 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 4
  br label %209

209:                                              ; preds = %204, %201
  store i32 1, i32* %3, align 4
  br label %210

210:                                              ; preds = %209, %186, %160, %142, %133, %122, %100, %19
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @isascii(i8 signext) #1

declare dso_local i64 @isxdigit(i8 signext) #1

declare dso_local i64 @islower(i8 signext) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
