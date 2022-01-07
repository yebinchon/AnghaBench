; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/inet/extr_inet_pton.c_inet_pton6.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/inet/extr_inet_pton.c_inet_pton6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inet_pton6.xdigits_l = internal constant [17 x i8] c"0123456789abcdef\00", align 16
@inet_pton6.xdigits_u = internal constant [17 x i8] c"0123456789ABCDEF\00", align 16
@NS_IN6ADDRSZ = common dso_local global i32 0, align 4
@NS_INT16SZ = common dso_local global i32 0, align 4
@NS_INADDRSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @inet_pton6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_pton6(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %20 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %6, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  store i32* %23, i32** %8, align 8
  %24 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %25 = call i32 @memset(i32* %23, i8 signext 0, i32 %24)
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32* %29, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 58
  br i1 %33, label %34, label %42

34:                                               ; preds = %2
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %4, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 58
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %210

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i8*, i8** %4, align 8
  store i8* %43, i8** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %44

44:                                               ; preds = %105, %88, %76, %42
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %4, align 8
  %47 = load i8, i8* %45, align 1
  %48 = sext i8 %47 to i32
  store i32 %48, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %136

50:                                               ; preds = %44
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_pton6.xdigits_l, i64 0, i64 0), i8** %11, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i8* @strchr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_pton6.xdigits_l, i64 0, i64 0), i32 %51)
  store i8* %52, i8** %17, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_pton6.xdigits_u, i64 0, i64 0), i8** %11, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i8* @strchr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_pton6.xdigits_u, i64 0, i64 0), i32 %55)
  store i8* %56, i8** %17, align 8
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i8*, i8** %17, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %77

60:                                               ; preds = %57
  %61 = load i32, i32* %15, align 4
  %62 = shl i32 %61, 4
  store i32 %62, i32* %15, align 4
  %63 = load i8*, i8** %17, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = or i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  %74 = icmp sgt i32 %73, 4
  br i1 %74, label %75, label %76

75:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %210

76:                                               ; preds = %60
  br label %44

77:                                               ; preds = %57
  %78 = load i32, i32* %13, align 4
  %79 = icmp eq i32 %78, 58
  br i1 %79, label %80, label %115

80:                                               ; preds = %77
  %81 = load i8*, i8** %4, align 8
  store i8* %81, i8** %12, align 8
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  %85 = load i32*, i32** %10, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %210

88:                                               ; preds = %84
  %89 = load i32*, i32** %8, align 8
  store i32* %89, i32** %10, align 8
  br label %44

90:                                               ; preds = %80
  %91 = load i8*, i8** %4, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %210

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* @NS_INT16SZ, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32*, i32** %9, align 8
  %103 = icmp ugt i32* %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %210

105:                                              ; preds = %97
  %106 = load i32, i32* %15, align 4
  %107 = ashr i32 %106, 8
  %108 = and i32 %107, 255
  %109 = load i32*, i32** %8, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %8, align 8
  store i32 %108, i32* %109, align 4
  %111 = load i32, i32* %15, align 4
  %112 = and i32 %111, 255
  %113 = load i32*, i32** %8, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %8, align 8
  store i32 %112, i32* %113, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %44

115:                                              ; preds = %77
  %116 = load i32, i32* %13, align 4
  %117 = icmp eq i32 %116, 46
  br i1 %117, label %118, label %135

118:                                              ; preds = %115
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* @NS_INADDRSZ, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32*, i32** %9, align 8
  %124 = icmp ule i32* %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %118
  %126 = load i8*, i8** %12, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = call i64 @inet_pton4(i8* %126, i32* %127)
  %129 = icmp sgt i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load i32, i32* @NS_INADDRSZ, align 4
  %132 = load i32*, i32** %8, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32* %134, i32** %8, align 8
  store i32 0, i32* %14, align 4
  br label %136

135:                                              ; preds = %125, %118, %115
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %210

136:                                              ; preds = %130, %44
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %157

139:                                              ; preds = %136
  %140 = load i32*, i32** %8, align 8
  %141 = load i32, i32* @NS_INT16SZ, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32*, i32** %9, align 8
  %145 = icmp ugt i32* %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %210

147:                                              ; preds = %139
  %148 = load i32, i32* %15, align 4
  %149 = ashr i32 %148, 8
  %150 = and i32 %149, 255
  %151 = load i32*, i32** %8, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %8, align 8
  store i32 %150, i32* %151, align 4
  %153 = load i32, i32* %15, align 4
  %154 = and i32 %153, 255
  %155 = load i32*, i32** %8, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %8, align 8
  store i32 %154, i32* %155, align 4
  br label %157

157:                                              ; preds = %147, %136
  %158 = load i32*, i32** %10, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %201

160:                                              ; preds = %157
  %161 = load i32*, i32** %8, align 8
  %162 = load i32*, i32** %10, align 8
  %163 = ptrtoint i32* %161 to i64
  %164 = ptrtoint i32* %162 to i64
  %165 = sub i64 %163, %164
  %166 = sdiv exact i64 %165, 4
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %18, align 4
  %168 = load i32*, i32** %8, align 8
  %169 = load i32*, i32** %9, align 8
  %170 = icmp eq i32* %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %160
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %210

172:                                              ; preds = %160
  store i32 1, i32* %19, align 4
  br label %173

173:                                              ; preds = %196, %172
  %174 = load i32, i32* %19, align 4
  %175 = load i32, i32* %18, align 4
  %176 = icmp sle i32 %174, %175
  br i1 %176, label %177, label %199

177:                                              ; preds = %173
  %178 = load i32*, i32** %10, align 8
  %179 = load i32, i32* %18, align 4
  %180 = load i32, i32* %19, align 4
  %181 = sub nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %178, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** %9, align 8
  %186 = load i32, i32* %19, align 4
  %187 = sub nsw i32 0, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  store i32 %184, i32* %189, align 4
  %190 = load i32*, i32** %10, align 8
  %191 = load i32, i32* %18, align 4
  %192 = load i32, i32* %19, align 4
  %193 = sub nsw i32 %191, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %190, i64 %194
  store i32 0, i32* %195, align 4
  br label %196

196:                                              ; preds = %177
  %197 = load i32, i32* %19, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %19, align 4
  br label %173

199:                                              ; preds = %173
  %200 = load i32*, i32** %9, align 8
  store i32* %200, i32** %8, align 8
  br label %201

201:                                              ; preds = %199, %157
  %202 = load i32*, i32** %8, align 8
  %203 = load i32*, i32** %9, align 8
  %204 = icmp ne i32* %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %210

206:                                              ; preds = %201
  %207 = load i32*, i32** %5, align 8
  %208 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %209 = call i32 @memcpy(i32* %207, i32* %23, i32 %208)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %210

210:                                              ; preds = %206, %205, %171, %146, %135, %104, %95, %87, %75, %40
  %211 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %211)
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i8 signext, i32) #2

declare dso_local i8* @strchr(i8*, i32) #2

declare dso_local i64 @inet_pton4(i8*, i32*) #2

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
