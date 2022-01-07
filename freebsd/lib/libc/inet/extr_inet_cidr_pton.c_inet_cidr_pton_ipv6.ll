; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/inet/extr_inet_cidr_pton.c_inet_cidr_pton_ipv6.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/inet/extr_inet_cidr_pton.c_inet_cidr_pton_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inet_cidr_pton_ipv6.xdigits_l = internal constant [17 x i8] c"0123456789abcdef\00", align 16
@inet_cidr_pton_ipv6.xdigits_u = internal constant [17 x i8] c"0123456789ABCDEF\00", align 16
@NS_IN6ADDRSZ = common dso_local global i32 0, align 4
@NS_INT16SZ = common dso_local global i32 0, align 4
@NS_INADDRSZ = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @inet_cidr_pton_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_cidr_pton_ipv6(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %23 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  store i32* %26, i32** %10, align 8
  %27 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %28 = call i32 @memset(i32* %26, i8 signext 0, i32 %27)
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32* %32, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 58
  br i1 %36, label %37, label %45

37:                                               ; preds = %3
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 58
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %223

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %3
  %46 = load i8*, i8** %5, align 8
  store i8* %46, i8** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  br label %47

47:                                               ; preds = %107, %90, %78, %45
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %5, align 8
  %50 = load i8, i8* %48, align 1
  %51 = sext i8 %50 to i32
  store i32 %51, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %148

53:                                               ; preds = %47
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_cidr_pton_ipv6.xdigits_l, i64 0, i64 0), i8** %13, align 8
  %54 = load i32, i32* %15, align 4
  %55 = call i8* @strchr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_cidr_pton_ipv6.xdigits_l, i64 0, i64 0), i32 %54)
  store i8* %55, i8** %20, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_cidr_pton_ipv6.xdigits_u, i64 0, i64 0), i8** %13, align 8
  %58 = load i32, i32* %15, align 4
  %59 = call i8* @strchr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_cidr_pton_ipv6.xdigits_u, i64 0, i64 0), i32 %58)
  store i8* %59, i8** %20, align 8
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i8*, i8** %20, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %79

63:                                               ; preds = %60
  %64 = load i32, i32* %17, align 4
  %65 = shl i32 %64, 4
  store i32 %65, i32* %17, align 4
  %66 = load i8*, i8** %20, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = load i32, i32* %17, align 4
  %72 = sext i32 %71 to i64
  %73 = or i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %17, align 4
  %76 = icmp sgt i32 %75, 65535
  br i1 %76, label %77, label %78

77:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %223

78:                                               ; preds = %63
  store i32 1, i32* %16, align 4
  br label %47

79:                                               ; preds = %60
  %80 = load i32, i32* %15, align 4
  %81 = icmp eq i32 %80, 58
  br i1 %81, label %82, label %117

82:                                               ; preds = %79
  %83 = load i8*, i8** %5, align 8
  store i8* %83, i8** %14, align 8
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %82
  %87 = load i32*, i32** %12, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %223

90:                                               ; preds = %86
  %91 = load i32*, i32** %10, align 8
  store i32* %91, i32** %12, align 8
  br label %47

92:                                               ; preds = %82
  %93 = load i8*, i8** %5, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %223

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* @NS_INT16SZ, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32*, i32** %11, align 8
  %105 = icmp ugt i32* %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %223

107:                                              ; preds = %99
  %108 = load i32, i32* %17, align 4
  %109 = ashr i32 %108, 8
  %110 = and i32 %109, 255
  %111 = load i32*, i32** %10, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %10, align 8
  store i32 %110, i32* %111, align 4
  %113 = load i32, i32* %17, align 4
  %114 = and i32 %113, 255
  %115 = load i32*, i32** %10, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %10, align 8
  store i32 %114, i32* %115, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %47

117:                                              ; preds = %79
  %118 = load i32, i32* %15, align 4
  %119 = icmp eq i32 %118, 46
  br i1 %119, label %120, label %137

120:                                              ; preds = %117
  %121 = load i32*, i32** %10, align 8
  %122 = load i32, i32* @NS_INADDRSZ, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32*, i32** %11, align 8
  %126 = icmp ule i32* %124, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %120
  %128 = load i8*, i8** %14, align 8
  %129 = load i32*, i32** %10, align 8
  %130 = call i64 @inet_cidr_pton_ipv4(i8* %128, i32* %129, i32* %18, i32 1)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load i32, i32* @NS_INADDRSZ, align 4
  %134 = load i32*, i32** %10, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32* %136, i32** %10, align 8
  store i32 0, i32* %16, align 4
  br label %148

137:                                              ; preds = %127, %120, %117
  %138 = load i32, i32* %15, align 4
  %139 = icmp eq i32 %138, 47
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load i8*, i8** %5, align 8
  %142 = call i32 @getbits(i8* %141, i32 1)
  store i32 %142, i32* %18, align 4
  %143 = load i32, i32* %18, align 4
  %144 = icmp eq i32 %143, -2
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %219

146:                                              ; preds = %140
  br label %148

147:                                              ; preds = %137
  br label %219

148:                                              ; preds = %146, %132, %47
  %149 = load i32, i32* %16, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %169

151:                                              ; preds = %148
  %152 = load i32*, i32** %10, align 8
  %153 = load i32, i32* @NS_INT16SZ, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32*, i32** %11, align 8
  %157 = icmp ugt i32* %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %221

159:                                              ; preds = %151
  %160 = load i32, i32* %17, align 4
  %161 = ashr i32 %160, 8
  %162 = and i32 %161, 255
  %163 = load i32*, i32** %10, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %10, align 8
  store i32 %162, i32* %163, align 4
  %165 = load i32, i32* %17, align 4
  %166 = and i32 %165, 255
  %167 = load i32*, i32** %10, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %168, i32** %10, align 8
  store i32 %166, i32* %167, align 4
  br label %169

169:                                              ; preds = %159, %148
  %170 = load i32*, i32** %12, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %213

172:                                              ; preds = %169
  %173 = load i32*, i32** %10, align 8
  %174 = load i32*, i32** %12, align 8
  %175 = ptrtoint i32* %173 to i64
  %176 = ptrtoint i32* %174 to i64
  %177 = sub i64 %175, %176
  %178 = sdiv exact i64 %177, 4
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %21, align 4
  %180 = load i32*, i32** %10, align 8
  %181 = load i32*, i32** %11, align 8
  %182 = icmp eq i32* %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %172
  br label %219

184:                                              ; preds = %172
  store i32 1, i32* %22, align 4
  br label %185

185:                                              ; preds = %208, %184
  %186 = load i32, i32* %22, align 4
  %187 = load i32, i32* %21, align 4
  %188 = icmp sle i32 %186, %187
  br i1 %188, label %189, label %211

189:                                              ; preds = %185
  %190 = load i32*, i32** %12, align 8
  %191 = load i32, i32* %21, align 4
  %192 = load i32, i32* %22, align 4
  %193 = sub nsw i32 %191, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %190, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %11, align 8
  %198 = load i32, i32* %22, align 4
  %199 = sub nsw i32 0, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  store i32 %196, i32* %201, align 4
  %202 = load i32*, i32** %12, align 8
  %203 = load i32, i32* %21, align 4
  %204 = load i32, i32* %22, align 4
  %205 = sub nsw i32 %203, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %202, i64 %206
  store i32 0, i32* %207, align 4
  br label %208

208:                                              ; preds = %189
  %209 = load i32, i32* %22, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %22, align 4
  br label %185

211:                                              ; preds = %185
  %212 = load i32*, i32** %11, align 8
  store i32* %212, i32** %10, align 8
  br label %213

213:                                              ; preds = %211, %169
  %214 = load i32*, i32** %6, align 8
  %215 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %216 = call i32 @memcpy(i32* %214, i32* %26, i32 %215)
  %217 = load i32, i32* %18, align 4
  %218 = load i32*, i32** %7, align 8
  store i32 %217, i32* %218, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %223

219:                                              ; preds = %183, %147, %145
  %220 = load i32, i32* @ENOENT, align 4
  store i32 %220, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %223

221:                                              ; preds = %158
  %222 = load i32, i32* @EMSGSIZE, align 4
  store i32 %222, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %223

223:                                              ; preds = %221, %219, %213, %106, %97, %89, %77, %43
  %224 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %224)
  %225 = load i32, i32* %4, align 4
  ret i32 %225
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i8 signext, i32) #2

declare dso_local i8* @strchr(i8*, i32) #2

declare dso_local i64 @inet_cidr_pton_ipv4(i8*, i32*, i32*, i32) #2

declare dso_local i32 @getbits(i8*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
