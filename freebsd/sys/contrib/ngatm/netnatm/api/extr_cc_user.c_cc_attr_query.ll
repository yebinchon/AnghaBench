; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_user.c_cc_attr_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_user.c_cc_attr_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccuser = type { i32 }
%struct.ccconn = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@ATMERR_BAD_ATTR = common dso_local global i32 0, align 4
@ATMRESP_ATTRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccuser*, %struct.ccconn*, i32*, i32)* @cc_attr_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_attr_query(%struct.ccuser* %0, %struct.ccconn* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ccuser*, align 8
  %6 = alloca %struct.ccconn*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.ccuser* %0, %struct.ccuser** %5, align 8
  store %struct.ccconn* %1, %struct.ccconn** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = add i64 4, %17
  store i64 %18, i64* %11, align 8
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %60, %4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %19
  store i64 0, i64* %12, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %49 [
    i32 130, label %29
    i32 142, label %30
    i32 143, label %31
    i32 144, label %32
    i32 128, label %33
    i32 129, label %34
    i32 132, label %35
    i32 141, label %36
    i32 140, label %37
    i32 139, label %38
    i32 138, label %39
    i32 147, label %40
    i32 133, label %41
    i32 137, label %42
    i32 136, label %43
    i32 134, label %44
    i32 145, label %45
    i32 146, label %46
    i32 135, label %47
    i32 131, label %48
  ]

29:                                               ; preds = %23
  br label %49

30:                                               ; preds = %23
  store i64 4, i64* %12, align 8
  br label %49

31:                                               ; preds = %23
  store i64 4, i64* %12, align 8
  br label %49

32:                                               ; preds = %23
  store i64 4, i64* %12, align 8
  br label %49

33:                                               ; preds = %23
  store i64 4, i64* %12, align 8
  br label %49

34:                                               ; preds = %23
  store i64 4, i64* %12, align 8
  br label %49

35:                                               ; preds = %23
  store i64 4, i64* %12, align 8
  br label %49

36:                                               ; preds = %23
  store i64 4, i64* %12, align 8
  br label %49

37:                                               ; preds = %23
  store i64 4, i64* %12, align 8
  br label %49

38:                                               ; preds = %23
  store i64 4, i64* %12, align 8
  br label %49

39:                                               ; preds = %23
  store i64 4, i64* %12, align 8
  br label %49

40:                                               ; preds = %23
  store i64 4, i64* %12, align 8
  br label %49

41:                                               ; preds = %23
  store i64 4, i64* %12, align 8
  br label %49

42:                                               ; preds = %23
  store i64 4, i64* %12, align 8
  br label %49

43:                                               ; preds = %23
  store i64 4, i64* %12, align 8
  br label %49

44:                                               ; preds = %23
  store i64 4, i64* %12, align 8
  br label %49

45:                                               ; preds = %23
  store i64 4, i64* %12, align 8
  br label %49

46:                                               ; preds = %23
  store i64 4, i64* %12, align 8
  br label %49

47:                                               ; preds = %23
  store i64 4, i64* %12, align 8
  br label %49

48:                                               ; preds = %23
  store i64 4, i64* %12, align 8
  br label %49

49:                                               ; preds = %23, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29
  %50 = load i64, i64* %12, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.ccuser*, %struct.ccuser** %5, align 8
  %54 = load i32, i32* @ATMERR_BAD_ATTR, align 4
  %55 = call i32 @cc_user_err(%struct.ccuser* %53, i32 %54)
  br label %252

56:                                               ; preds = %49
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %11, align 8
  br label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %13, align 4
  br label %19

63:                                               ; preds = %19
  %64 = load i64, i64* %11, align 8
  %65 = call i8* @CCMALLOC(i64 %64)
  store i8* %65, i8** %9, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %252

69:                                               ; preds = %63
  %70 = load i8*, i8** %9, align 8
  %71 = bitcast i8* %70 to i32*
  store i32* %71, i32** %14, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32*, i32** %14, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %72, i32* %74, align 4
  %75 = load i8*, i8** %9, align 8
  %76 = bitcast i8* %75 to i32*
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = add i64 4, %79
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  %82 = bitcast i32* %81 to i8*
  store i8* %82, i8** %10, align 8
  store i32 0, i32* %13, align 4
  br label %83

83:                                               ; preds = %241, %69
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %244

87:                                               ; preds = %83
  store i64 0, i64* %12, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %14, align 8
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32 %92, i32* %97, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  switch i32 %102, label %235 [
    i32 130, label %103
    i32 142, label %104
    i32 143, label %110
    i32 144, label %133
    i32 128, label %139
    i32 129, label %145
    i32 132, label %151
    i32 141, label %157
    i32 140, label %163
    i32 139, label %169
    i32 138, label %175
    i32 147, label %181
    i32 133, label %187
    i32 137, label %193
    i32 136, label %199
    i32 134, label %205
    i32 145, label %211
    i32 146, label %217
    i32 135, label %223
    i32 131, label %229
  ]

103:                                              ; preds = %87
  br label %235

104:                                              ; preds = %87
  store i64 4, i64* %12, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = load %struct.ccconn*, %struct.ccconn** %6, align 8
  %107 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %106, i32 0, i32 17
  %108 = load i64, i64* %12, align 8
  %109 = call i32 @memcpy(i8* %105, i32* %107, i64 %108)
  br label %235

110:                                              ; preds = %87
  store i64 4, i64* %12, align 8
  %111 = load %struct.ccconn*, %struct.ccconn** %6, align 8
  %112 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %111, i32 0, i32 17
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i8*, i8** %10, align 8
  %117 = load i64, i64* %12, align 8
  %118 = call i32 @memset(i8* %116, i32 0, i64 %117)
  br label %132

119:                                              ; preds = %110
  %120 = load i8*, i8** %10, align 8
  %121 = load %struct.ccconn*, %struct.ccconn** %6, align 8
  %122 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %121, i32 0, i32 18
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.ccconn*, %struct.ccconn** %6, align 8
  %125 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %124, i32 0, i32 17
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %123, i64 %128
  %130 = load i64, i64* %12, align 8
  %131 = call i32 @memcpy(i8* %120, i32* %129, i64 %130)
  br label %132

132:                                              ; preds = %119, %115
  br label %235

133:                                              ; preds = %87
  store i64 4, i64* %12, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = load %struct.ccconn*, %struct.ccconn** %6, align 8
  %136 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %135, i32 0, i32 16
  %137 = load i64, i64* %12, align 8
  %138 = call i32 @memcpy(i8* %134, i32* %136, i64 %137)
  br label %235

139:                                              ; preds = %87
  store i64 4, i64* %12, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = load %struct.ccconn*, %struct.ccconn** %6, align 8
  %142 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %141, i32 0, i32 15
  %143 = load i64, i64* %12, align 8
  %144 = call i32 @memcpy(i8* %140, i32* %142, i64 %143)
  br label %235

145:                                              ; preds = %87
  store i64 4, i64* %12, align 8
  %146 = load i8*, i8** %10, align 8
  %147 = load %struct.ccconn*, %struct.ccconn** %6, align 8
  %148 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %147, i32 0, i32 14
  %149 = load i64, i64* %12, align 8
  %150 = call i32 @memcpy(i8* %146, i32* %148, i64 %149)
  br label %235

151:                                              ; preds = %87
  store i64 4, i64* %12, align 8
  %152 = load i8*, i8** %10, align 8
  %153 = load %struct.ccconn*, %struct.ccconn** %6, align 8
  %154 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %153, i32 0, i32 13
  %155 = load i64, i64* %12, align 8
  %156 = call i32 @memcpy(i8* %152, i32* %154, i64 %155)
  br label %235

157:                                              ; preds = %87
  store i64 4, i64* %12, align 8
  %158 = load i8*, i8** %10, align 8
  %159 = load %struct.ccconn*, %struct.ccconn** %6, align 8
  %160 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %159, i32 0, i32 12
  %161 = load i64, i64* %12, align 8
  %162 = call i32 @memcpy(i8* %158, i32* %160, i64 %161)
  br label %235

163:                                              ; preds = %87
  store i64 4, i64* %12, align 8
  %164 = load i8*, i8** %10, align 8
  %165 = load %struct.ccconn*, %struct.ccconn** %6, align 8
  %166 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %165, i32 0, i32 11
  %167 = load i64, i64* %12, align 8
  %168 = call i32 @memcpy(i8* %164, i32* %166, i64 %167)
  br label %235

169:                                              ; preds = %87
  store i64 4, i64* %12, align 8
  %170 = load i8*, i8** %10, align 8
  %171 = load %struct.ccconn*, %struct.ccconn** %6, align 8
  %172 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %171, i32 0, i32 10
  %173 = load i64, i64* %12, align 8
  %174 = call i32 @memcpy(i8* %170, i32* %172, i64 %173)
  br label %235

175:                                              ; preds = %87
  store i64 4, i64* %12, align 8
  %176 = load i8*, i8** %10, align 8
  %177 = load %struct.ccconn*, %struct.ccconn** %6, align 8
  %178 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %177, i32 0, i32 9
  %179 = load i64, i64* %12, align 8
  %180 = call i32 @memcpy(i8* %176, i32* %178, i64 %179)
  br label %235

181:                                              ; preds = %87
  store i64 4, i64* %12, align 8
  %182 = load i8*, i8** %10, align 8
  %183 = load %struct.ccconn*, %struct.ccconn** %6, align 8
  %184 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %183, i32 0, i32 8
  %185 = load i64, i64* %12, align 8
  %186 = call i32 @memcpy(i8* %182, i32* %184, i64 %185)
  br label %235

187:                                              ; preds = %87
  store i64 4, i64* %12, align 8
  %188 = load i8*, i8** %10, align 8
  %189 = load %struct.ccconn*, %struct.ccconn** %6, align 8
  %190 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %189, i32 0, i32 7
  %191 = load i64, i64* %12, align 8
  %192 = call i32 @memcpy(i8* %188, i32* %190, i64 %191)
  br label %235

193:                                              ; preds = %87
  store i64 4, i64* %12, align 8
  %194 = load i8*, i8** %10, align 8
  %195 = load %struct.ccconn*, %struct.ccconn** %6, align 8
  %196 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %195, i32 0, i32 6
  %197 = load i64, i64* %12, align 8
  %198 = call i32 @memcpy(i8* %194, i32* %196, i64 %197)
  br label %235

199:                                              ; preds = %87
  store i64 4, i64* %12, align 8
  %200 = load i8*, i8** %10, align 8
  %201 = load %struct.ccconn*, %struct.ccconn** %6, align 8
  %202 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %201, i32 0, i32 5
  %203 = load i64, i64* %12, align 8
  %204 = call i32 @memcpy(i8* %200, i32* %202, i64 %203)
  br label %235

205:                                              ; preds = %87
  store i64 4, i64* %12, align 8
  %206 = load i8*, i8** %10, align 8
  %207 = load %struct.ccconn*, %struct.ccconn** %6, align 8
  %208 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %207, i32 0, i32 4
  %209 = load i64, i64* %12, align 8
  %210 = call i32 @memcpy(i8* %206, i32* %208, i64 %209)
  br label %235

211:                                              ; preds = %87
  store i64 4, i64* %12, align 8
  %212 = load i8*, i8** %10, align 8
  %213 = load %struct.ccconn*, %struct.ccconn** %6, align 8
  %214 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %213, i32 0, i32 3
  %215 = load i64, i64* %12, align 8
  %216 = call i32 @memcpy(i8* %212, i32* %214, i64 %215)
  br label %235

217:                                              ; preds = %87
  store i64 4, i64* %12, align 8
  %218 = load i8*, i8** %10, align 8
  %219 = load %struct.ccconn*, %struct.ccconn** %6, align 8
  %220 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %219, i32 0, i32 2
  %221 = load i64, i64* %12, align 8
  %222 = call i32 @memcpy(i8* %218, i32* %220, i64 %221)
  br label %235

223:                                              ; preds = %87
  store i64 4, i64* %12, align 8
  %224 = load i8*, i8** %10, align 8
  %225 = load %struct.ccconn*, %struct.ccconn** %6, align 8
  %226 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %225, i32 0, i32 1
  %227 = load i64, i64* %12, align 8
  %228 = call i32 @memcpy(i8* %224, i32* %226, i64 %227)
  br label %235

229:                                              ; preds = %87
  store i64 4, i64* %12, align 8
  %230 = load i8*, i8** %10, align 8
  %231 = load %struct.ccconn*, %struct.ccconn** %6, align 8
  %232 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %231, i32 0, i32 0
  %233 = load i64, i64* %12, align 8
  %234 = call i32 @memcpy(i8* %230, i32* %232, i64 %233)
  br label %235

235:                                              ; preds = %87, %229, %223, %217, %211, %205, %199, %193, %187, %181, %175, %169, %163, %157, %151, %145, %139, %133, %132, %104, %103
  %236 = load i8*, i8** %10, align 8
  %237 = bitcast i8* %236 to i32*
  %238 = load i64, i64* %12, align 8
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  %240 = bitcast i32* %239 to i8*
  store i8* %240, i8** %10, align 8
  br label %241

241:                                              ; preds = %235
  %242 = load i32, i32* %13, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %13, align 4
  br label %83

244:                                              ; preds = %83
  %245 = load %struct.ccuser*, %struct.ccuser** %5, align 8
  %246 = load i32, i32* @ATMRESP_ATTRS, align 4
  %247 = load i8*, i8** %9, align 8
  %248 = load i64, i64* %11, align 8
  %249 = call i32 @cc_user_ok(%struct.ccuser* %245, i32 %246, i8* %247, i64 %248)
  %250 = load i8*, i8** %9, align 8
  %251 = call i32 @CCFREE(i8* %250)
  br label %252

252:                                              ; preds = %244, %68, %52
  ret void
}

declare dso_local i32 @cc_user_err(%struct.ccuser*, i32) #1

declare dso_local i8* @CCMALLOC(i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @cc_user_ok(%struct.ccuser*, i32, i8*, i64) #1

declare dso_local i32 @CCFREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
