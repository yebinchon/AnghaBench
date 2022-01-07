; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_sel.c_eval_comp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_sel.c_eval_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, %struct.TYPE_8__*, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i8* }
%struct.hx_expr = type { i32, %struct.hx_expr*, %struct.hx_expr* }

@FALSE = common dso_local global i32 0, align 4
@expr_WORDS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@expr_VAR = common dso_local global i32 0, align 4
@env_string = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"hx509 eval IN unknown op: %d\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"hx509 eval expr with unknown op: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_8__*, %struct.hx_expr*)* @eval_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eval_comp(i32 %0, %struct.TYPE_8__* %1, %struct.hx_expr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.hx_expr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.hx_expr*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.hx_expr* %2, %struct.hx_expr** %7, align 8
  %17 = load %struct.hx_expr*, %struct.hx_expr** %7, align 8
  %18 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %177 [
    i32 129, label %20
    i32 131, label %20
    i32 128, label %20
    i32 130, label %82
  ]

20:                                               ; preds = %3, %3, %3
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = load %struct.hx_expr*, %struct.hx_expr** %7, align 8
  %24 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %23, i32 0, i32 2
  %25 = load %struct.hx_expr*, %struct.hx_expr** %24, align 8
  %26 = call i8* @eval_word(i32 %21, %struct.TYPE_8__* %22, %struct.hx_expr* %25)
  store i8* %26, i8** %8, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = load %struct.hx_expr*, %struct.hx_expr** %7, align 8
  %30 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %29, i32 0, i32 1
  %31 = load %struct.hx_expr*, %struct.hx_expr** %30, align 8
  %32 = call i8* @eval_word(i32 %27, %struct.TYPE_8__* %28, %struct.hx_expr* %31)
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %20
  %36 = load i8*, i8** %9, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35, %20
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %4, align 4
  br label %184

40:                                               ; preds = %35
  %41 = load %struct.hx_expr*, %struct.hx_expr** %7, align 8
  %42 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 128
  br i1 %44, label %45, label %64

45:                                               ; preds = %40
  %46 = load i8*, i8** %8, align 8
  %47 = call i64 @strlen(i8* %46)
  store i64 %47, i64* %11, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i64 @strlen(i8* %48)
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %12, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %184

54:                                               ; preds = %45
  %55 = load i8*, i8** %8, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %12, align 8
  %58 = sub i64 %56, %57
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @strcmp(i8* %59, i8* %60)
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %10, align 4
  br label %80

64:                                               ; preds = %40
  %65 = load i8*, i8** %8, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @strcmp(i8* %65, i8* %66)
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %10, align 4
  %70 = load %struct.hx_expr*, %struct.hx_expr** %7, align 8
  %71 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 129
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %74, %64
  br label %80

80:                                               ; preds = %79, %54
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %4, align 4
  br label %184

82:                                               ; preds = %3
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %85 = load %struct.hx_expr*, %struct.hx_expr** %7, align 8
  %86 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %85, i32 0, i32 2
  %87 = load %struct.hx_expr*, %struct.hx_expr** %86, align 8
  %88 = call i8* @eval_word(i32 %83, %struct.TYPE_8__* %84, %struct.hx_expr* %87)
  store i8* %88, i8** %14, align 8
  %89 = load %struct.hx_expr*, %struct.hx_expr** %7, align 8
  %90 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %89, i32 0, i32 1
  %91 = load %struct.hx_expr*, %struct.hx_expr** %90, align 8
  store %struct.hx_expr* %91, %struct.hx_expr** %13, align 8
  %92 = load %struct.hx_expr*, %struct.hx_expr** %13, align 8
  %93 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @expr_WORDS, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %82
  br label %98

98:                                               ; preds = %114, %97
  %99 = load %struct.hx_expr*, %struct.hx_expr** %13, align 8
  %100 = icmp ne %struct.hx_expr* %99, null
  br i1 %100, label %101, label %118

101:                                              ; preds = %98
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %104 = load %struct.hx_expr*, %struct.hx_expr** %13, align 8
  %105 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %104, i32 0, i32 2
  %106 = load %struct.hx_expr*, %struct.hx_expr** %105, align 8
  %107 = call i8* @eval_word(i32 %102, %struct.TYPE_8__* %103, %struct.hx_expr* %106)
  store i8* %107, i8** %15, align 8
  %108 = load i8*, i8** %14, align 8
  %109 = load i8*, i8** %15, align 8
  %110 = call i32 @strcmp(i8* %108, i8* %109)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %101
  %113 = load i32, i32* @TRUE, align 4
  store i32 %113, i32* %4, align 4
  br label %184

114:                                              ; preds = %101
  %115 = load %struct.hx_expr*, %struct.hx_expr** %13, align 8
  %116 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %115, i32 0, i32 1
  %117 = load %struct.hx_expr*, %struct.hx_expr** %116, align 8
  store %struct.hx_expr* %117, %struct.hx_expr** %13, align 8
  br label %98

118:                                              ; preds = %98
  br label %175

119:                                              ; preds = %82
  %120 = load %struct.hx_expr*, %struct.hx_expr** %13, align 8
  %121 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @expr_VAR, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %169

125:                                              ; preds = %119
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %128 = load %struct.hx_expr*, %struct.hx_expr** %13, align 8
  %129 = call %struct.TYPE_8__* @find_variable(i32 %126, %struct.TYPE_8__* %127, %struct.hx_expr* %128)
  store %struct.TYPE_8__* %129, %struct.TYPE_8__** %16, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %131 = icmp eq %struct.TYPE_8__* %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = load i32, i32* @FALSE, align 4
  store i32 %133, i32* %4, align 4
  br label %184

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %164, %144, %134
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %137 = icmp ne %struct.TYPE_8__* %136, null
  br i1 %137, label %138, label %168

138:                                              ; preds = %135
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @env_string, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %135

145:                                              ; preds = %138
  %146 = load i8*, i8** %14, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @strcmp(i8* %146, i8* %149)
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = load i32, i32* @TRUE, align 4
  store i32 %153, i32* %4, align 4
  br label %184

154:                                              ; preds = %145
  %155 = load i8*, i8** %14, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @strcmp(i8* %155, i8* %159)
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %154
  %163 = load i32, i32* @TRUE, align 4
  store i32 %163, i32* %4, align 4
  br label %184

164:                                              ; preds = %154
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  store %struct.TYPE_8__* %167, %struct.TYPE_8__** %16, align 8
  br label %135

168:                                              ; preds = %135
  br label %174

169:                                              ; preds = %119
  %170 = load %struct.hx_expr*, %struct.hx_expr** %13, align 8
  %171 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @_hx509_abort(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %169, %168
  br label %175

175:                                              ; preds = %174, %118
  %176 = load i32, i32* @FALSE, align 4
  store i32 %176, i32* %4, align 4
  br label %184

177:                                              ; preds = %3
  %178 = load %struct.hx_expr*, %struct.hx_expr** %7, align 8
  %179 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @_hx509_abort(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %180)
  br label %182

182:                                              ; preds = %177
  %183 = load i32, i32* @FALSE, align 4
  store i32 %183, i32* %4, align 4
  br label %184

184:                                              ; preds = %182, %175, %162, %152, %132, %112, %80, %53, %38
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local i8* @eval_word(i32, %struct.TYPE_8__*, %struct.hx_expr*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_8__* @find_variable(i32, %struct.TYPE_8__*, %struct.hx_expr*) #1

declare dso_local i32 @_hx509_abort(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
