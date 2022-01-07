; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_name.c_ns_name_ntop.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_name.c_ns_name_ntop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NS_CMPRSFLGS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@NS_TYPE_ELT = common dso_local global i32 0, align 4
@DNS_LABELTYPE_BITSTRING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@digits = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ns_name_ntop(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i32*, i32** %5, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %10, align 8
  br label %20

20:                                               ; preds = %169, %81, %3
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %8, align 8
  %23 = load i32, i32* %21, align 4
  store i32 %23, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %170

25:                                               ; preds = %20
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @NS_CMPRSFLGS, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @NS_CMPRSFLGS, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @EMSGSIZE, align 4
  store i32 %32, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %198

33:                                               ; preds = %25
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = icmp uge i8* %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @EMSGSIZE, align 4
  store i32 %42, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %198

43:                                               ; preds = %37
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %9, align 8
  store i8 46, i8* %44, align 1
  br label %46

46:                                               ; preds = %43, %33
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 -1
  %49 = call i32 @labellen(i32* %48)
  store i32 %49, i32* %13, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @EMSGSIZE, align 4
  store i32 %52, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %198

53:                                               ; preds = %46
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8*, i8** %10, align 8
  %59 = icmp uge i8* %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @EMSGSIZE, align 4
  store i32 %61, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %198

62:                                               ; preds = %53
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @NS_CMPRSFLGS, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @NS_TYPE_ELT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %62
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @DNS_LABELTYPE_BITSTRING, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %198

74:                                               ; preds = %68
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @decode_bitstring(i32** %8, i8* %75, i8* %76)
  store i32 %77, i32* %14, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @EMSGSIZE, align 4
  store i32 %80, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %198

81:                                               ; preds = %74
  %82 = load i32, i32* %14, align 4
  %83 = load i8*, i8** %9, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %9, align 8
  br label %20

86:                                               ; preds = %62
  br label %87

87:                                               ; preds = %166, %86
  %88 = load i32, i32* %13, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %169

90:                                               ; preds = %87
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %8, align 8
  %93 = load i32, i32* %91, align 4
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i64 @special(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %90
  %98 = load i8*, i8** %9, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = load i8*, i8** %10, align 8
  %101 = icmp uge i8* %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* @EMSGSIZE, align 4
  store i32 %103, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %198

104:                                              ; preds = %97
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %9, align 8
  store i8 92, i8* %105, align 1
  %107 = load i32, i32* %11, align 4
  %108 = trunc i32 %107 to i8
  %109 = load i8*, i8** %9, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %9, align 8
  store i8 %108, i8* %109, align 1
  br label %165

111:                                              ; preds = %90
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @printable(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %153, label %115

115:                                              ; preds = %111
  %116 = load i8*, i8** %9, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 3
  %118 = load i8*, i8** %10, align 8
  %119 = icmp uge i8* %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i32, i32* @EMSGSIZE, align 4
  store i32 %121, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %198

122:                                              ; preds = %115
  %123 = load i8*, i8** %9, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %9, align 8
  store i8 92, i8* %123, align 1
  %125 = load i8**, i8*** @digits, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sdiv i32 %126, 100
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %125, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = ptrtoint i8* %130 to i8
  %132 = load i8*, i8** %9, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %9, align 8
  store i8 %131, i8* %132, align 1
  %134 = load i8**, i8*** @digits, align 8
  %135 = load i32, i32* %11, align 4
  %136 = srem i32 %135, 100
  %137 = sdiv i32 %136, 10
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %134, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = ptrtoint i8* %140 to i8
  %142 = load i8*, i8** %9, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %9, align 8
  store i8 %141, i8* %142, align 1
  %144 = load i8**, i8*** @digits, align 8
  %145 = load i32, i32* %11, align 4
  %146 = srem i32 %145, 10
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %144, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = ptrtoint i8* %149 to i8
  %151 = load i8*, i8** %9, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %9, align 8
  store i8 %150, i8* %151, align 1
  br label %164

153:                                              ; preds = %111
  %154 = load i8*, i8** %9, align 8
  %155 = load i8*, i8** %10, align 8
  %156 = icmp uge i8* %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = load i32, i32* @EMSGSIZE, align 4
  store i32 %158, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %198

159:                                              ; preds = %153
  %160 = load i32, i32* %11, align 4
  %161 = trunc i32 %160 to i8
  %162 = load i8*, i8** %9, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %9, align 8
  store i8 %161, i8* %162, align 1
  br label %164

164:                                              ; preds = %159, %122
  br label %165

165:                                              ; preds = %164, %104
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %13, align 4
  br label %87

169:                                              ; preds = %87
  br label %20

170:                                              ; preds = %20
  %171 = load i8*, i8** %9, align 8
  %172 = load i8*, i8** %6, align 8
  %173 = icmp eq i8* %171, %172
  br i1 %173, label %174, label %183

174:                                              ; preds = %170
  %175 = load i8*, i8** %9, align 8
  %176 = load i8*, i8** %10, align 8
  %177 = icmp uge i8* %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = load i32, i32* @EMSGSIZE, align 4
  store i32 %179, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %198

180:                                              ; preds = %174
  %181 = load i8*, i8** %9, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %9, align 8
  store i8 46, i8* %181, align 1
  br label %183

183:                                              ; preds = %180, %170
  %184 = load i8*, i8** %9, align 8
  %185 = load i8*, i8** %10, align 8
  %186 = icmp uge i8* %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = load i32, i32* @EMSGSIZE, align 4
  store i32 %188, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %198

189:                                              ; preds = %183
  %190 = load i8*, i8** %9, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %191, i8** %9, align 8
  store i8 0, i8* %190, align 1
  %192 = load i8*, i8** %9, align 8
  %193 = load i8*, i8** %6, align 8
  %194 = ptrtoint i8* %192 to i64
  %195 = ptrtoint i8* %193 to i64
  %196 = sub i64 %194, %195
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %4, align 4
  br label %198

198:                                              ; preds = %189, %187, %178, %157, %120, %102, %79, %72, %60, %51, %41, %31
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local i32 @labellen(i32*) #1

declare dso_local i32 @decode_bitstring(i32**, i8*, i8*) #1

declare dso_local i64 @special(i32) #1

declare dso_local i32 @printable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
