; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/inet/extr_inet_addr.c_inet_aton.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/inet/extr_inet_addr.c_inet_aton.c"
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
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32* %13, i32** %11, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %9, align 1
  br label %16

16:                                               ; preds = %125, %2
  %17 = load i8, i8* %9, align 1
  %18 = call i64 @isdigit(i8 zeroext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %205

21:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  store i32 10, i32* %7, align 4
  store i32 0, i32* %12, align 4
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
  store i32 1, i32* %12, align 4
  br label %41

41:                                               ; preds = %40, %36
  br label %42

42:                                               ; preds = %41, %21
  br label %43

43:                                               ; preds = %103, %42
  %44 = load i8, i8* %9, align 1
  %45 = call i64 @isascii(i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %43
  %48 = load i8, i8* %9, align 1
  %49 = call i64 @isdigit(i8 zeroext %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 8
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i8, i8* %9, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i8, i8* %9, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 57
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %54
  store i32 0, i32* %3, align 4
  br label %205

63:                                               ; preds = %58, %51
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i8, i8* %9, align 1
  %68 = sext i8 %67 to i32
  %69 = sub nsw i32 %68, 48
  %70 = add nsw i32 %66, %69
  store i32 %70, i32* %6, align 4
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %4, align 8
  %73 = load i8, i8* %72, align 1
  store i8 %73, i8* %9, align 1
  store i32 1, i32* %12, align 4
  br label %103

74:                                               ; preds = %47, %43
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 %75, 16
  br i1 %76, label %77, label %101

77:                                               ; preds = %74
  %78 = load i8, i8* %9, align 1
  %79 = call i64 @isascii(i8 signext %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %77
  %82 = load i8, i8* %9, align 1
  %83 = call i64 @isxdigit(i8 zeroext %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %81
  %86 = load i32, i32* %6, align 4
  %87 = shl i32 %86, 4
  %88 = load i8, i8* %9, align 1
  %89 = sext i8 %88 to i32
  %90 = add nsw i32 %89, 10
  %91 = load i8, i8* %9, align 1
  %92 = call i64 @islower(i8 zeroext %91)
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 97, i32 65
  %96 = sub nsw i32 %90, %95
  %97 = or i32 %87, %96
  store i32 %97, i32* %6, align 4
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %4, align 8
  %100 = load i8, i8* %99, align 1
  store i8 %100, i8* %9, align 1
  store i32 1, i32* %12, align 4
  br label %102

101:                                              ; preds = %81, %77, %74
  br label %104

102:                                              ; preds = %85
  br label %103

103:                                              ; preds = %102, %63
  br label %43

104:                                              ; preds = %101
  %105 = load i8, i8* %9, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 46
  br i1 %107, label %108, label %124

108:                                              ; preds = %104
  %109 = load i32*, i32** %11, align 8
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %111 = getelementptr inbounds i32, i32* %110, i64 3
  %112 = icmp uge i32* %109, %111
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* %6, align 4
  %115 = icmp ugt i32 %114, 255
  br i1 %115, label %116, label %117

116:                                              ; preds = %113, %108
  store i32 0, i32* %3, align 4
  br label %205

117:                                              ; preds = %113
  %118 = load i32, i32* %6, align 4
  %119 = load i32*, i32** %11, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %11, align 8
  store i32 %118, i32* %119, align 4
  %121 = load i8*, i8** %4, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %4, align 8
  %123 = load i8, i8* %122, align 1
  store i8 %123, i8* %9, align 1
  br label %125

124:                                              ; preds = %104
  br label %126

125:                                              ; preds = %117
  br label %16

126:                                              ; preds = %124
  %127 = load i8, i8* %9, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %126
  %131 = load i8, i8* %9, align 1
  %132 = call i64 @isascii(i8 signext %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load i8, i8* %9, align 1
  %136 = call i32 @isspace(i8 zeroext %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %134, %130
  store i32 0, i32* %3, align 4
  br label %205

139:                                              ; preds = %134, %126
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %139
  store i32 0, i32* %3, align 4
  br label %205

143:                                              ; preds = %139
  %144 = load i32*, i32** %11, align 8
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %146 = ptrtoint i32* %144 to i64
  %147 = ptrtoint i32* %145 to i64
  %148 = sub i64 %146, %147
  %149 = sdiv exact i64 %148, 4
  %150 = add nsw i64 %149, 1
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  switch i32 %152, label %196 [
    i32 1, label %153
    i32 2, label %154
    i32 3, label %164
    i32 4, label %178
  ]

153:                                              ; preds = %143
  br label %196

154:                                              ; preds = %143
  %155 = load i32, i32* %6, align 4
  %156 = icmp ugt i32 %155, 16777215
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  store i32 0, i32* %3, align 4
  br label %205

158:                                              ; preds = %154
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %160 = load i32, i32* %159, align 16
  %161 = shl i32 %160, 24
  %162 = load i32, i32* %6, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %6, align 4
  br label %196

164:                                              ; preds = %143
  %165 = load i32, i32* %6, align 4
  %166 = icmp ugt i32 %165, 65535
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  store i32 0, i32* %3, align 4
  br label %205

168:                                              ; preds = %164
  %169 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %170 = load i32, i32* %169, align 16
  %171 = shl i32 %170, 24
  %172 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %173 = load i32, i32* %172, align 4
  %174 = shl i32 %173, 16
  %175 = or i32 %171, %174
  %176 = load i32, i32* %6, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %6, align 4
  br label %196

178:                                              ; preds = %143
  %179 = load i32, i32* %6, align 4
  %180 = icmp ugt i32 %179, 255
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  store i32 0, i32* %3, align 4
  br label %205

182:                                              ; preds = %178
  %183 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %184 = load i32, i32* %183, align 16
  %185 = shl i32 %184, 24
  %186 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = shl i32 %187, 16
  %189 = or i32 %185, %188
  %190 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %191 = load i32, i32* %190, align 8
  %192 = shl i32 %191, 8
  %193 = or i32 %189, %192
  %194 = load i32, i32* %6, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %6, align 4
  br label %196

196:                                              ; preds = %143, %182, %168, %158, %153
  %197 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %198 = icmp ne %struct.in_addr* %197, null
  br i1 %198, label %199, label %204

199:                                              ; preds = %196
  %200 = load i32, i32* %6, align 4
  %201 = call i32 @htonl(i32 %200)
  %202 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %203 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 4
  br label %204

204:                                              ; preds = %199, %196
  store i32 1, i32* %3, align 4
  br label %205

205:                                              ; preds = %204, %181, %167, %157, %142, %138, %116, %62, %20
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @isascii(i8 signext) #1

declare dso_local i64 @isxdigit(i8 zeroext) #1

declare dso_local i64 @islower(i8 zeroext) #1

declare dso_local i32 @isspace(i8 zeroext) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
