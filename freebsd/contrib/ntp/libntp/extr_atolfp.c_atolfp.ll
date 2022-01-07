; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_atolfp.c_atolfp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_atolfp.c_atolfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@atolfp.digits = internal global i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@ten_to_the_n = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atolfp(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @REQUIRE(i32 %17)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %6, align 8
  br label %20

20:                                               ; preds = %25, %2
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i64 @isspace(i8 zeroext %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %6, align 8
  br label %20

28:                                               ; preds = %20
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 45
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %6, align 8
  store i32 1, i32* %11, align 4
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 43
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %6, align 8
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 46
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @isdigit(i8 zeroext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %210

55:                                               ; preds = %49, %44
  br label %56

56:                                               ; preds = %69, %55
  %57 = load i8*, i8** %6, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i8*, i8** @atolfp.digits, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = call i8* @strchr(i8* %62, i8 signext %64)
  store i8* %65, i8** %9, align 8
  %66 = icmp ne i8* %65, null
  br label %67

67:                                               ; preds = %61, %56
  %68 = phi i1 [ false, %56 ], [ %66, %61 ]
  br i1 %68, label %69, label %85

69:                                               ; preds = %67
  %70 = load i32, i32* %7, align 4
  %71 = shl i32 %70, 3
  %72 = load i32, i32* %7, align 4
  %73 = shl i32 %72, 1
  %74 = add nsw i32 %71, %73
  store i32 %74, i32* %7, align 4
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** @atolfp.digits, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %6, align 8
  br label %56

85:                                               ; preds = %67
  %86 = load i8*, i8** %6, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %158

90:                                               ; preds = %85
  %91 = load i8*, i8** %6, align 8
  %92 = load i8, i8* %91, align 1
  %93 = call i64 @isspace(i8 zeroext %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %158, label %95

95:                                               ; preds = %90
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %6, align 8
  %98 = load i8, i8* %96, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 46
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %210

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %119, %102
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 9
  br i1 %105, label %106, label %117

106:                                              ; preds = %103
  %107 = load i8*, i8** %6, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load i8*, i8** @atolfp.digits, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = load i8, i8* %113, align 1
  %115 = call i8* @strchr(i8* %112, i8 signext %114)
  store i8* %115, i8** %9, align 8
  %116 = icmp ne i8* %115, null
  br label %117

117:                                              ; preds = %111, %106, %103
  %118 = phi i1 [ false, %106 ], [ false, %103 ], [ %116, %111 ]
  br i1 %118, label %119, label %137

119:                                              ; preds = %117
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %8, align 4
  %123 = shl i32 %122, 3
  %124 = load i32, i32* %8, align 4
  %125 = shl i32 %124, 1
  %126 = add nsw i32 %123, %125
  store i32 %126, i32* %8, align 4
  %127 = load i8*, i8** %9, align 8
  %128 = load i8*, i8** @atolfp.digits, align 8
  %129 = ptrtoint i8* %127 to i64
  %130 = ptrtoint i8* %128 to i64
  %131 = sub i64 %129, %130
  %132 = trunc i64 %131 to i32
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %8, align 4
  %135 = load i8*, i8** %6, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %6, align 8
  br label %103

137:                                              ; preds = %117
  br label %138

138:                                              ; preds = %143, %137
  %139 = load i8*, i8** %6, align 8
  %140 = load i8, i8* %139, align 1
  %141 = call i64 @isdigit(i8 zeroext %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load i8*, i8** %6, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %6, align 8
  br label %138

146:                                              ; preds = %138
  %147 = load i8*, i8** %6, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load i8*, i8** %6, align 8
  %153 = load i8, i8* %152, align 1
  %154 = call i64 @isspace(i8 zeroext %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %151
  store i32 0, i32* %3, align 4
  br label %210

157:                                              ; preds = %151, %146
  br label %158

158:                                              ; preds = %157, %90, %85
  %159 = load i32, i32* %10, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %196

161:                                              ; preds = %158
  %162 = load i32*, i32** @ten_to_the_n, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %14, align 4
  store i32 0, i32* %12, align 4
  store i32 -2147483648, i32* %13, align 4
  br label %167

167:                                              ; preds = %183, %161
  %168 = load i32, i32* %13, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %186

170:                                              ; preds = %167
  %171 = load i32, i32* %8, align 4
  %172 = shl i32 %171, 1
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* %14, align 4
  %175 = icmp sge i32 %173, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %170
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* %12, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %12, align 4
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %8, align 4
  %182 = sub nsw i32 %181, %180
  store i32 %182, i32* %8, align 4
  br label %183

183:                                              ; preds = %176, %170
  %184 = load i32, i32* %13, align 4
  %185 = ashr i32 %184, 1
  store i32 %185, i32* %13, align 4
  br label %167

186:                                              ; preds = %167
  %187 = load i32, i32* %8, align 4
  %188 = shl i32 %187, 1
  %189 = load i32, i32* %14, align 4
  %190 = icmp sgt i32 %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = load i32, i32* %12, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %12, align 4
  br label %194

194:                                              ; preds = %191, %186
  %195 = load i32, i32* %12, align 4
  store i32 %195, i32* %8, align 4
  br label %196

196:                                              ; preds = %194, %158
  %197 = load i32, i32* %11, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @M_NEG(i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %199, %196
  %204 = load i32, i32* %7, align 4
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 4
  %207 = load i32, i32* %8, align 4
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 1
  store i32 %207, i32* %209, align 4
  store i32 1, i32* %3, align 4
  br label %210

210:                                              ; preds = %203, %156, %101, %54
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @M_NEG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
