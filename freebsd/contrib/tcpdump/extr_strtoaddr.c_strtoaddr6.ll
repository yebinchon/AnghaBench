; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_strtoaddr.c_strtoaddr6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_strtoaddr.c_strtoaddr6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@strtoaddr6.xdigits_l = internal constant [17 x i8] c"0123456789abcdef\00", align 16
@strtoaddr6.xdigits_u = internal constant [17 x i8] c"0123456789ABCDEF\00", align 16
@NS_IN6ADDRSZ = common dso_local global i32 0, align 4
@NS_INT16SZ = common dso_local global i32 0, align 4
@NS_INADDRSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strtoaddr6(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
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
  store i8* %1, i8** %5, align 8
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
  br label %209

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i8*, i8** %4, align 8
  store i8* %43, i8** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %44

44:                                               ; preds = %104, %87, %75, %42
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %4, align 8
  %47 = load i8, i8* %45, align 1
  %48 = sext i8 %47 to i32
  store i32 %48, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %135

50:                                               ; preds = %44
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @strtoaddr6.xdigits_l, i64 0, i64 0), i8** %11, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i8* @strchr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @strtoaddr6.xdigits_l, i64 0, i64 0), i32 %51)
  store i8* %52, i8** %17, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @strtoaddr6.xdigits_u, i64 0, i64 0), i8** %11, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i8* @strchr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @strtoaddr6.xdigits_u, i64 0, i64 0), i32 %55)
  store i8* %56, i8** %17, align 8
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i8*, i8** %17, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %76

60:                                               ; preds = %57
  %61 = load i32, i32* %15, align 4
  %62 = shl i32 %61, 4
  store i32 %62, i32* %15, align 4
  %63 = load i8*, i8** %17, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* %15, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %14, align 4
  %73 = icmp sgt i32 %72, 4
  br i1 %73, label %74, label %75

74:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %209

75:                                               ; preds = %60
  br label %44

76:                                               ; preds = %57
  %77 = load i32, i32* %13, align 4
  %78 = icmp eq i32 %77, 58
  br i1 %78, label %79, label %114

79:                                               ; preds = %76
  %80 = load i8*, i8** %4, align 8
  store i8* %80, i8** %12, align 8
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = load i32*, i32** %10, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %209

87:                                               ; preds = %83
  %88 = load i32*, i32** %8, align 8
  store i32* %88, i32** %10, align 8
  br label %44

89:                                               ; preds = %79
  %90 = load i8*, i8** %4, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %209

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* @NS_INT16SZ, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32*, i32** %9, align 8
  %102 = icmp ugt i32* %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %209

104:                                              ; preds = %96
  %105 = load i32, i32* %15, align 4
  %106 = ashr i32 %105, 8
  %107 = and i32 %106, 255
  %108 = load i32*, i32** %8, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %8, align 8
  store i32 %107, i32* %108, align 4
  %110 = load i32, i32* %15, align 4
  %111 = and i32 %110, 255
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %8, align 8
  store i32 %111, i32* %112, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %44

114:                                              ; preds = %76
  %115 = load i32, i32* %13, align 4
  %116 = icmp eq i32 %115, 46
  br i1 %116, label %117, label %134

117:                                              ; preds = %114
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* @NS_INADDRSZ, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32*, i32** %9, align 8
  %123 = icmp ule i32* %121, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %117
  %125 = load i8*, i8** %12, align 8
  %126 = load i32*, i32** %8, align 8
  %127 = call i64 @strtoaddr(i8* %125, i32* %126)
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load i32, i32* @NS_INADDRSZ, align 4
  %131 = load i32*, i32** %8, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32* %133, i32** %8, align 8
  store i32 0, i32* %14, align 4
  br label %135

134:                                              ; preds = %124, %117, %114
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %209

135:                                              ; preds = %129, %44
  %136 = load i32, i32* %14, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %156

138:                                              ; preds = %135
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* @NS_INT16SZ, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32*, i32** %9, align 8
  %144 = icmp ugt i32* %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %209

146:                                              ; preds = %138
  %147 = load i32, i32* %15, align 4
  %148 = ashr i32 %147, 8
  %149 = and i32 %148, 255
  %150 = load i32*, i32** %8, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %8, align 8
  store i32 %149, i32* %150, align 4
  %152 = load i32, i32* %15, align 4
  %153 = and i32 %152, 255
  %154 = load i32*, i32** %8, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %8, align 8
  store i32 %153, i32* %154, align 4
  br label %156

156:                                              ; preds = %146, %135
  %157 = load i32*, i32** %10, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %200

159:                                              ; preds = %156
  %160 = load i32*, i32** %8, align 8
  %161 = load i32*, i32** %10, align 8
  %162 = ptrtoint i32* %160 to i64
  %163 = ptrtoint i32* %161 to i64
  %164 = sub i64 %162, %163
  %165 = sdiv exact i64 %164, 4
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %18, align 4
  %167 = load i32*, i32** %8, align 8
  %168 = load i32*, i32** %9, align 8
  %169 = icmp eq i32* %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %159
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %209

171:                                              ; preds = %159
  store i32 1, i32* %19, align 4
  br label %172

172:                                              ; preds = %195, %171
  %173 = load i32, i32* %19, align 4
  %174 = load i32, i32* %18, align 4
  %175 = icmp sle i32 %173, %174
  br i1 %175, label %176, label %198

176:                                              ; preds = %172
  %177 = load i32*, i32** %10, align 8
  %178 = load i32, i32* %18, align 4
  %179 = load i32, i32* %19, align 4
  %180 = sub nsw i32 %178, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %177, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i32*, i32** %9, align 8
  %185 = load i32, i32* %19, align 4
  %186 = sub nsw i32 0, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %184, i64 %187
  store i32 %183, i32* %188, align 4
  %189 = load i32*, i32** %10, align 8
  %190 = load i32, i32* %18, align 4
  %191 = load i32, i32* %19, align 4
  %192 = sub nsw i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %189, i64 %193
  store i32 0, i32* %194, align 4
  br label %195

195:                                              ; preds = %176
  %196 = load i32, i32* %19, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %19, align 4
  br label %172

198:                                              ; preds = %172
  %199 = load i32*, i32** %9, align 8
  store i32* %199, i32** %8, align 8
  br label %200

200:                                              ; preds = %198, %156
  %201 = load i32*, i32** %8, align 8
  %202 = load i32*, i32** %9, align 8
  %203 = icmp ne i32* %201, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %200
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %209

205:                                              ; preds = %200
  %206 = load i8*, i8** %5, align 8
  %207 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %208 = call i32 @memcpy(i8* %206, i32* %23, i32 %207)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %209

209:                                              ; preds = %205, %204, %170, %145, %134, %103, %94, %86, %74, %40
  %210 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %210)
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i8 signext, i32) #2

declare dso_local i8* @strchr(i8*, i32) #2

declare dso_local i64 @strtoaddr(i8*, i32*) #2

declare dso_local i32 @memcpy(i8*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
