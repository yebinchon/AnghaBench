; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_inet_pton.c_inet_pton6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_inet_pton.c_inet_pton6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inet_pton6.xdigits_l = internal constant [17 x i8] c"0123456789abcdef\00", align 16
@inet_pton6.xdigits_u = internal constant [17 x i8] c"0123456789ABCDEF\00", align 16
@NS_IN6ADDRSZ = common dso_local global i32 0, align 4
@NS_INT16SZ = common dso_local global i32 0, align 4
@NS_INADDRSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @inet_pton6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_pton6(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %20 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %6, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  store i8* %23, i8** %8, align 8
  %24 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %25 = call i32 @memset(i8* %23, i8 signext 0, i32 %24)
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  store i8* %29, i8** %9, align 8
  store i8* null, i8** %10, align 8
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
  br label %220

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i8*, i8** %4, align 8
  store i8* %43, i8** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %44

44:                                               ; preds = %100, %88, %76, %42
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %4, align 8
  %47 = load i8, i8* %45, align 1
  %48 = sext i8 %47 to i32
  store i32 %48, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %139

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
  %69 = zext i32 %68 to i64
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
  br label %220

76:                                               ; preds = %60
  br label %44

77:                                               ; preds = %57
  %78 = load i32, i32* %13, align 4
  %79 = icmp eq i32 %78, 58
  br i1 %79, label %80, label %116

80:                                               ; preds = %77
  %81 = load i8*, i8** %4, align 8
  store i8* %81, i8** %12, align 8
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  %85 = load i8*, i8** %10, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %220

88:                                               ; preds = %84
  %89 = load i8*, i8** %8, align 8
  store i8* %89, i8** %10, align 8
  br label %44

90:                                               ; preds = %80
  %91 = load i32, i32* @NS_INT16SZ, align 4
  %92 = sext i32 %91 to i64
  %93 = load i8*, i8** %9, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = icmp sgt i64 %92, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %220

100:                                              ; preds = %90
  %101 = load i32, i32* %15, align 4
  %102 = lshr i32 %101, 8
  %103 = trunc i32 %102 to i8
  %104 = zext i8 %103 to i32
  %105 = and i32 %104, 255
  %106 = trunc i32 %105 to i8
  %107 = load i8*, i8** %8, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %8, align 8
  store i8 %106, i8* %107, align 1
  %109 = load i32, i32* %15, align 4
  %110 = trunc i32 %109 to i8
  %111 = zext i8 %110 to i32
  %112 = and i32 %111, 255
  %113 = trunc i32 %112 to i8
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %8, align 8
  store i8 %113, i8* %114, align 1
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %44

116:                                              ; preds = %77
  %117 = load i32, i32* %13, align 4
  %118 = icmp eq i32 %117, 46
  br i1 %118, label %119, label %138

119:                                              ; preds = %116
  %120 = load i32, i32* @NS_INADDRSZ, align 4
  %121 = sext i32 %120 to i64
  %122 = load i8*, i8** %9, align 8
  %123 = load i8*, i8** %8, align 8
  %124 = ptrtoint i8* %122 to i64
  %125 = ptrtoint i8* %123 to i64
  %126 = sub i64 %124, %125
  %127 = icmp sle i64 %121, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %119
  %129 = load i8*, i8** %12, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = call i64 @inet_pton4(i8* %129, i8* %130)
  %132 = icmp sgt i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load i32, i32* @NS_INADDRSZ, align 4
  %135 = load i8*, i8** %8, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8* %137, i8** %8, align 8
  store i32 0, i32* %14, align 4
  br label %139

138:                                              ; preds = %128, %119, %116
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %220

139:                                              ; preds = %133, %44
  %140 = load i32, i32* %14, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %168

142:                                              ; preds = %139
  %143 = load i32, i32* @NS_INT16SZ, align 4
  %144 = sext i32 %143 to i64
  %145 = load i8*, i8** %9, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = ptrtoint i8* %145 to i64
  %148 = ptrtoint i8* %146 to i64
  %149 = sub i64 %147, %148
  %150 = icmp sgt i64 %144, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %220

152:                                              ; preds = %142
  %153 = load i32, i32* %15, align 4
  %154 = lshr i32 %153, 8
  %155 = trunc i32 %154 to i8
  %156 = zext i8 %155 to i32
  %157 = and i32 %156, 255
  %158 = trunc i32 %157 to i8
  %159 = load i8*, i8** %8, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %8, align 8
  store i8 %158, i8* %159, align 1
  %161 = load i32, i32* %15, align 4
  %162 = trunc i32 %161 to i8
  %163 = zext i8 %162 to i32
  %164 = and i32 %163, 255
  %165 = trunc i32 %164 to i8
  %166 = load i8*, i8** %8, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %8, align 8
  store i8 %165, i8* %166, align 1
  br label %168

168:                                              ; preds = %152, %139
  %169 = load i8*, i8** %10, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %211

171:                                              ; preds = %168
  %172 = load i8*, i8** %8, align 8
  %173 = load i8*, i8** %10, align 8
  %174 = ptrtoint i8* %172 to i64
  %175 = ptrtoint i8* %173 to i64
  %176 = sub i64 %174, %175
  store i64 %176, i64* %18, align 8
  %177 = load i8*, i8** %8, align 8
  %178 = load i8*, i8** %9, align 8
  %179 = icmp eq i8* %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %171
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %220

181:                                              ; preds = %171
  store i32 1, i32* %19, align 4
  br label %182

182:                                              ; preds = %206, %181
  %183 = load i32, i32* %19, align 4
  %184 = sext i32 %183 to i64
  %185 = load i64, i64* %18, align 8
  %186 = icmp ule i64 %184, %185
  br i1 %186, label %187, label %209

187:                                              ; preds = %182
  %188 = load i8*, i8** %10, align 8
  %189 = load i64, i64* %18, align 8
  %190 = load i32, i32* %19, align 4
  %191 = sext i32 %190 to i64
  %192 = sub i64 %189, %191
  %193 = getelementptr inbounds i8, i8* %188, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = load i8*, i8** %9, align 8
  %196 = load i32, i32* %19, align 4
  %197 = sub nsw i32 0, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %195, i64 %198
  store i8 %194, i8* %199, align 1
  %200 = load i8*, i8** %10, align 8
  %201 = load i64, i64* %18, align 8
  %202 = load i32, i32* %19, align 4
  %203 = sext i32 %202 to i64
  %204 = sub i64 %201, %203
  %205 = getelementptr inbounds i8, i8* %200, i64 %204
  store i8 0, i8* %205, align 1
  br label %206

206:                                              ; preds = %187
  %207 = load i32, i32* %19, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %19, align 4
  br label %182

209:                                              ; preds = %182
  %210 = load i8*, i8** %9, align 8
  store i8* %210, i8** %8, align 8
  br label %211

211:                                              ; preds = %209, %168
  %212 = load i8*, i8** %8, align 8
  %213 = load i8*, i8** %9, align 8
  %214 = icmp ne i8* %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %220

216:                                              ; preds = %211
  %217 = load i8*, i8** %5, align 8
  %218 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %219 = call i32 @memcpy(i8* %217, i8* %23, i32 %218)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %220

220:                                              ; preds = %216, %215, %180, %151, %138, %99, %87, %75, %40
  %221 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %221)
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i8* @strchr(i8*, i32) #2

declare dso_local i64 @inet_pton4(i8*, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
