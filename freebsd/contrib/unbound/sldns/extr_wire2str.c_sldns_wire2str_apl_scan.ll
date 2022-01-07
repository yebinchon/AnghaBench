; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_apl_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_apl_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_APL_NEGATION = common dso_local global i32 0, align 4
@LDNS_APL_MASK = common dso_local global i32 0, align 4
@LDNS_APL_IP4 = common dso_local global i64 0, align 8
@LDNS_APL_IP6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%u:\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"/%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_wire2str_apl_scan(i32** %0, i64* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %205

20:                                               ; preds = %4
  %21 = load i32**, i32*** %6, align 8
  %22 = load i32*, i32** %21, align 8
  %23 = call i64 @sldns_read_uint16(i32* %22)
  store i64 %23, i64* %12, align 8
  %24 = load i32**, i32*** %6, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load i32**, i32*** %6, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LDNS_APL_NEGATION, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %13, align 4
  %34 = load i32**, i32*** %6, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @LDNS_APL_MASK, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %15, align 4
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 4, %43
  %45 = icmp ult i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %205

47:                                               ; preds = %20
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* @LDNS_APL_IP4, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* @LDNS_APL_IP6, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 -1, i32* %5, align 4
  br label %205

56:                                               ; preds = %51, %47
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i8**, i8*** %8, align 8
  %61 = load i64*, i64** %9, align 8
  %62 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %60, i64* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %59, %56
  %68 = load i8**, i8*** %8, align 8
  %69 = load i64*, i64** %9, align 8
  %70 = load i64, i64* %12, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %68, i64* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %11, align 4
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* @LDNS_APL_IP4, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %127

80:                                               ; preds = %67
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %123, %80
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %82, 4
  br i1 %83, label %84, label %126

84:                                               ; preds = %81
  %85 = load i32, i32* %10, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i8**, i8*** %8, align 8
  %89 = load i64*, i64** %9, align 8
  %90 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %88, i64* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %87, %84
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %95
  %100 = load i8**, i8*** %8, align 8
  %101 = load i64*, i64** %9, align 8
  %102 = load i32**, i32*** %6, align 8
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 4, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %100, i64* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %11, align 4
  br label %122

114:                                              ; preds = %95
  %115 = load i8**, i8*** %8, align 8
  %116 = load i64*, i64** %9, align 8
  %117 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %115, i64* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %11, align 4
  br label %122

122:                                              ; preds = %114, %99
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %81

126:                                              ; preds = %81
  br label %183

127:                                              ; preds = %67
  %128 = load i64, i64* %12, align 8
  %129 = load i64, i64* @LDNS_APL_IP6, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %182

131:                                              ; preds = %127
  store i32 0, i32* %10, align 4
  br label %132

132:                                              ; preds = %178, %131
  %133 = load i32, i32* %10, align 4
  %134 = icmp slt i32 %133, 16
  br i1 %134, label %135, label %181

135:                                              ; preds = %132
  %136 = load i32, i32* %10, align 4
  %137 = srem i32 %136, 2
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %135
  %140 = load i32, i32* %10, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %139
  %143 = load i8**, i8*** %8, align 8
  %144 = load i64*, i64** %9, align 8
  %145 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %143, i64* %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %145
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %142, %139, %135
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %15, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %169

154:                                              ; preds = %150
  %155 = load i8**, i8*** %8, align 8
  %156 = load i64*, i64** %9, align 8
  %157 = load i32**, i32*** %6, align 8
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 4, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %155, i64* %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %166, %164
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %11, align 4
  br label %177

169:                                              ; preds = %150
  %170 = load i8**, i8*** %8, align 8
  %171 = load i64*, i64** %9, align 8
  %172 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %170, i64* %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %174, %172
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %11, align 4
  br label %177

177:                                              ; preds = %169, %154
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %10, align 4
  br label %132

181:                                              ; preds = %132
  br label %182

182:                                              ; preds = %181, %127
  br label %183

183:                                              ; preds = %182, %126
  %184 = load i8**, i8*** %8, align 8
  %185 = load i64*, i64** %9, align 8
  %186 = load i32, i32* %14, align 4
  %187 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %184, i64* %185, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %189, %187
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %11, align 4
  %192 = load i32, i32* %15, align 4
  %193 = add nsw i32 4, %192
  %194 = load i32**, i32*** %6, align 8
  %195 = load i32*, i32** %194, align 8
  %196 = sext i32 %193 to i64
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  store i32* %197, i32** %194, align 8
  %198 = load i32, i32* %15, align 4
  %199 = add nsw i32 4, %198
  %200 = sext i32 %199 to i64
  %201 = load i64*, i64** %7, align 8
  %202 = load i64, i64* %201, align 8
  %203 = sub i64 %202, %200
  store i64 %203, i64* %201, align 8
  %204 = load i32, i32* %11, align 4
  store i32 %204, i32* %5, align 4
  br label %205

205:                                              ; preds = %183, %55, %46, %19
  %206 = load i32, i32* %5, align 4
  ret i32 %206
}

declare dso_local i64 @sldns_read_uint16(i32*) #1

declare dso_local i64 @sldns_str_print(i8**, i64*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
