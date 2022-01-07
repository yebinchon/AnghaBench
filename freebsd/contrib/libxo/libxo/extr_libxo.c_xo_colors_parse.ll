; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_colors_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_colors_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@XO_EFF_BOLD = common dso_local global i32 0, align 4
@XO_EFF_UNDERLINE = common dso_local global i32 0, align 4
@XO_EFF_INVERSE = common dso_local global i32 0, align 4
@XOF_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"unknown color/effect string detected: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i8*)* @xo_colors_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xo_colors_parse(i32* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = call i64 (...) @xo_text_only()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %215

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @strlen(i8* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = getelementptr inbounds i8, i8* %23, i64 -1
  store i8* %24, i8** %8, align 8
  br label %25

25:                                               ; preds = %213, %16
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ult i8* %29, %30
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i1 [ false, %25 ], [ %31, %28 ]
  br i1 %33, label %34, label %215

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %42, %34
  %36 = load i8*, i8** %7, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = trunc i32 %38 to i8
  %40 = call i64 @isspace(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  store i8* %44, i8** %7, align 8
  br label %35

45:                                               ; preds = %35
  %46 = load i8*, i8** %7, align 8
  %47 = call i8* @strchr(i8* %46, i8 signext 44)
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %9, align 8
  store i8 0, i8* %51, align 1
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = getelementptr inbounds i8, i8* %58, i64 -1
  store i8* %59, i8** %10, align 8
  br label %60

60:                                               ; preds = %71, %53
  %61 = load i8*, i8** %10, align 8
  %62 = load i8, i8* %61, align 1
  %63 = call i64 @isspace(i8 signext %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i8*, i8** %10, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = icmp ugt i8* %66, %67
  br label %69

69:                                               ; preds = %65, %60
  %70 = phi i1 [ false, %60 ], [ %68, %65 ]
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = load i8*, i8** %10, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 -1
  store i8* %73, i8** %10, align 8
  store i8 0, i8* %72, align 1
  br label %60

74:                                               ; preds = %69
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 102
  br i1 %79, label %80, label %103

80:                                               ; preds = %74
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 103
  br i1 %85, label %86, label %103

86:                                               ; preds = %80
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 2
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 45
  br i1 %91, label %92, label %103

92:                                               ; preds = %86
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 3
  %95 = call i32 @xo_color_find(i8* %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %203

99:                                               ; preds = %92
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  br label %202

103:                                              ; preds = %86, %80, %74
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 98
  br i1 %108, label %109, label %132

109:                                              ; preds = %103
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 103
  br i1 %114, label %115, label %132

115:                                              ; preds = %109
  %116 = load i8*, i8** %7, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 2
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 45
  br i1 %120, label %121, label %132

121:                                              ; preds = %115
  %122 = load i8*, i8** %7, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 3
  %124 = call i32 @xo_color_find(i8* %123)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %203

128:                                              ; preds = %121
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  br label %201

132:                                              ; preds = %115, %109, %103
  %133 = load i8*, i8** %7, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 0
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 110
  br i1 %137, label %138, label %165

138:                                              ; preds = %132
  %139 = load i8*, i8** %7, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 111
  br i1 %143, label %144, label %165

144:                                              ; preds = %138
  %145 = load i8*, i8** %7, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 2
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 45
  br i1 %149, label %150, label %165

150:                                              ; preds = %144
  %151 = load i8*, i8** %7, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 3
  %153 = call i32 @xo_effect_find(i8* %152)
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %203

157:                                              ; preds = %150
  %158 = load i32, i32* %12, align 4
  %159 = shl i32 1, %158
  %160 = xor i32 %159, -1
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, %160
  store i32 %164, i32* %162, align 4
  br label %200

165:                                              ; preds = %144, %138, %132
  %166 = load i8*, i8** %7, align 8
  %167 = call i32 @xo_effect_find(i8* %166)
  store i32 %167, i32* %12, align 4
  %168 = load i32, i32* %12, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %203

171:                                              ; preds = %165
  %172 = load i32, i32* %12, align 4
  %173 = shl i32 1, %172
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 4
  %178 = load i32, i32* %12, align 4
  %179 = shl i32 1, %178
  switch i32 %179, label %199 [
    i32 128, label %180
    i32 129, label %187
  ]

180:                                              ; preds = %171
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  store i32 0, i32* %182, align 4
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  store i32 0, i32* %184, align 4
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 2
  store i32 128, i32* %186, align 4
  br label %199

187:                                              ; preds = %171
  %188 = load i32, i32* @XO_EFF_BOLD, align 4
  %189 = load i32, i32* @XO_EFF_UNDERLINE, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* @XO_EFF_INVERSE, align 4
  %192 = or i32 %190, %191
  %193 = or i32 %192, 129
  %194 = xor i32 %193, -1
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, %194
  store i32 %198, i32* %196, align 4
  br label %199

199:                                              ; preds = %171, %187, %180
  br label %200

200:                                              ; preds = %199, %157
  br label %201

201:                                              ; preds = %200, %128
  br label %202

202:                                              ; preds = %201, %99
  br label %213

203:                                              ; preds = %170, %156, %127, %98
  %204 = load i32*, i32** %4, align 8
  %205 = load i32, i32* @XOF_WARN, align 4
  %206 = call i64 @XOF_ISSET(i32* %204, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %203
  %209 = load i32*, i32** %4, align 8
  %210 = load i8*, i8** %7, align 8
  %211 = call i32 @xo_failure(i32* %209, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %210)
  br label %212

212:                                              ; preds = %208, %203
  br label %213

213:                                              ; preds = %212, %202
  %214 = load i8*, i8** %9, align 8
  store i8* %214, i8** %7, align 8
  br label %25

215:                                              ; preds = %15, %32
  ret void
}

declare dso_local i64 @xo_text_only(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @xo_color_find(i8*) #1

declare dso_local i32 @xo_effect_find(i8*) #1

declare dso_local i64 @XOF_ISSET(i32*, i32) #1

declare dso_local i32 @xo_failure(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
