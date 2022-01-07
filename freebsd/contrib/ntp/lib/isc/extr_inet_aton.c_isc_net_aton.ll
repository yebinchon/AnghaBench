; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_inet_aton.c_isc_net_aton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_inet_aton.c_isc_net_aton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_net_aton(i8* %0, %struct.in_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32* %12, i32** %10, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %8, align 1
  br label %15

15:                                               ; preds = %131, %2
  %16 = load i8, i8* %8, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 255
  %19 = trunc i32 %18 to i8
  %20 = call i64 @isdigit(i8 zeroext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %212

23:                                               ; preds = %15
  store i64 0, i64* %6, align 8
  store i32 10, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %24 = load i8, i8* %8, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 48
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %4, align 8
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %8, align 1
  %31 = load i8, i8* %8, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 120
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = load i8, i8* %8, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 88
  br i1 %37, label %38, label %42

38:                                               ; preds = %34, %27
  store i32 16, i32* %7, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %4, align 8
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %8, align 1
  br label %43

42:                                               ; preds = %34
  store i32 8, i32* %7, align 4
  store i32 1, i32* %11, align 4
  br label %43

43:                                               ; preds = %42, %38
  br label %44

44:                                               ; preds = %43, %23
  br label %45

45:                                               ; preds = %108, %44
  %46 = load i8, i8* %8, align 1
  %47 = call i64 @isascii(i8 zeroext %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %78

49:                                               ; preds = %45
  %50 = load i8, i8* %8, align 1
  %51 = call i64 @isdigit(i8 zeroext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 8
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i8, i8* %8, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 56
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i8, i8* %8, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %62, 57
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %56
  store i32 0, i32* %3, align 4
  br label %212

65:                                               ; preds = %60, %53
  %66 = load i64, i64* %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 %66, %68
  %70 = load i8, i8* %8, align 1
  %71 = zext i8 %70 to i32
  %72 = sub nsw i32 %71, 48
  %73 = sext i32 %72 to i64
  %74 = add i64 %69, %73
  store i64 %74, i64* %6, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %4, align 8
  %77 = load i8, i8* %76, align 1
  store i8 %77, i8* %8, align 1
  store i32 1, i32* %11, align 4
  br label %108

78:                                               ; preds = %49, %45
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %79, 16
  br i1 %80, label %81, label %106

81:                                               ; preds = %78
  %82 = load i8, i8* %8, align 1
  %83 = call i64 @isascii(i8 zeroext %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %106

85:                                               ; preds = %81
  %86 = load i8, i8* %8, align 1
  %87 = call i64 @isxdigit(i8 zeroext %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %85
  %90 = load i64, i64* %6, align 8
  %91 = shl i64 %90, 4
  %92 = load i8, i8* %8, align 1
  %93 = zext i8 %92 to i32
  %94 = add nsw i32 %93, 10
  %95 = load i8, i8* %8, align 1
  %96 = call i64 @islower(i8 zeroext %95)
  %97 = icmp ne i64 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 97, i32 65
  %100 = sub nsw i32 %94, %99
  %101 = sext i32 %100 to i64
  %102 = or i64 %91, %101
  store i64 %102, i64* %6, align 8
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %4, align 8
  %105 = load i8, i8* %104, align 1
  store i8 %105, i8* %8, align 1
  store i32 1, i32* %11, align 4
  br label %107

106:                                              ; preds = %85, %81, %78
  br label %109

107:                                              ; preds = %89
  br label %108

108:                                              ; preds = %107, %65
  br label %45

109:                                              ; preds = %106
  %110 = load i8, i8* %8, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 46
  br i1 %112, label %113, label %130

113:                                              ; preds = %109
  %114 = load i32*, i32** %10, align 8
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  %117 = icmp uge i32* %114, %116
  br i1 %117, label %121, label %118

118:                                              ; preds = %113
  %119 = load i64, i64* %6, align 8
  %120 = icmp ugt i64 %119, 255
  br i1 %120, label %121, label %122

121:                                              ; preds = %118, %113
  store i32 0, i32* %3, align 4
  br label %212

122:                                              ; preds = %118
  %123 = load i64, i64* %6, align 8
  %124 = trunc i64 %123 to i32
  %125 = load i32*, i32** %10, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %10, align 8
  store i32 %124, i32* %125, align 4
  %127 = load i8*, i8** %4, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %4, align 8
  %129 = load i8, i8* %128, align 1
  store i8 %129, i8* %8, align 1
  br label %131

130:                                              ; preds = %109
  br label %132

131:                                              ; preds = %122
  br label %15

132:                                              ; preds = %130
  %133 = load i8, i8* %8, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  %137 = load i8, i8* %8, align 1
  %138 = call i64 @isascii(i8 zeroext %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load i8, i8* %8, align 1
  %142 = call i32 @isspace(i8 zeroext %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %140, %136
  store i32 0, i32* %3, align 4
  br label %212

145:                                              ; preds = %140, %132
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  store i32 0, i32* %3, align 4
  br label %212

149:                                              ; preds = %145
  %150 = load i32*, i32** %10, align 8
  %151 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %152 = ptrtoint i32* %150 to i64
  %153 = ptrtoint i32* %151 to i64
  %154 = sub i64 %152, %153
  %155 = sdiv exact i64 %154, 4
  %156 = add nsw i64 %155, 1
  switch i64 %156, label %203 [
    i64 1, label %157
    i64 2, label %158
    i64 3, label %169
    i64 4, label %184
  ]

157:                                              ; preds = %149
  br label %203

158:                                              ; preds = %149
  %159 = load i64, i64* %6, align 8
  %160 = icmp ugt i64 %159, 16777215
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 0, i32* %3, align 4
  br label %212

162:                                              ; preds = %158
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %164 = load i32, i32* %163, align 16
  %165 = shl i32 %164, 24
  %166 = sext i32 %165 to i64
  %167 = load i64, i64* %6, align 8
  %168 = or i64 %167, %166
  store i64 %168, i64* %6, align 8
  br label %203

169:                                              ; preds = %149
  %170 = load i64, i64* %6, align 8
  %171 = icmp ugt i64 %170, 65535
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  store i32 0, i32* %3, align 4
  br label %212

173:                                              ; preds = %169
  %174 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %175 = load i32, i32* %174, align 16
  %176 = shl i32 %175, 24
  %177 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = shl i32 %178, 16
  %180 = or i32 %176, %179
  %181 = sext i32 %180 to i64
  %182 = load i64, i64* %6, align 8
  %183 = or i64 %182, %181
  store i64 %183, i64* %6, align 8
  br label %203

184:                                              ; preds = %149
  %185 = load i64, i64* %6, align 8
  %186 = icmp ugt i64 %185, 255
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  store i32 0, i32* %3, align 4
  br label %212

188:                                              ; preds = %184
  %189 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %190 = load i32, i32* %189, align 16
  %191 = shl i32 %190, 24
  %192 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = shl i32 %193, 16
  %195 = or i32 %191, %194
  %196 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %197 = load i32, i32* %196, align 8
  %198 = shl i32 %197, 8
  %199 = or i32 %195, %198
  %200 = sext i32 %199 to i64
  %201 = load i64, i64* %6, align 8
  %202 = or i64 %201, %200
  store i64 %202, i64* %6, align 8
  br label %203

203:                                              ; preds = %149, %188, %173, %162, %157
  %204 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %205 = icmp ne %struct.in_addr* %204, null
  br i1 %205, label %206, label %211

206:                                              ; preds = %203
  %207 = load i64, i64* %6, align 8
  %208 = call i32 @htonl(i64 %207)
  %209 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %210 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 4
  br label %211

211:                                              ; preds = %206, %203
  store i32 1, i32* %3, align 4
  br label %212

212:                                              ; preds = %211, %187, %172, %161, %148, %144, %121, %64, %22
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @isascii(i8 zeroext) #1

declare dso_local i64 @isxdigit(i8 zeroext) #1

declare dso_local i64 @islower(i8 zeroext) #1

declare dso_local i32 @isspace(i8 zeroext) #1

declare dso_local i32 @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
