; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_colors_handle_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_colors_handle_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i64 }

@BUFSIZ = common dso_local global i32 0, align 4
@XO_EFF_RESET = common dso_local global i32 0, align 4
@xo_effect_names = common dso_local global i64* null, align 8
@xo_effect_on_codes = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [4 x i8] c";%s\00", align 1
@XO_COL_DEFAULT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c";3%u\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c";4%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*)* @xo_colors_handle_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xo_colors_handle_text(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %16 = load i32, i32* @BUFSIZ, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  store i8* %19, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 %17
  store i8* %20, i8** %8, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %11, align 8
  store i8* null, i8** %12, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %7, align 8
  store i8 27, i8* %23, align 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %27, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %2
  %37 = load i32, i32* @XO_EFF_RESET, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %44

44:                                               ; preds = %36, %2
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %45

45:                                               ; preds = %101, %44
  %46 = load i64*, i64** @xo_effect_names, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %106

52:                                               ; preds = %45
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %55, %56
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %57, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %101

65:                                               ; preds = %52
  %66 = load i8**, i8*** @xo_effect_on_codes, align 8
  %67 = load i32, i32* %9, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %12, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i32
  %78 = load i8*, i8** %12, align 8
  %79 = ptrtoint i8* %78 to i64
  %80 = call i32 @snprintf(i8* %71, i32 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %79)
  %81 = load i8*, i8** %7, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8* %83, i8** %7, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = icmp uge i8* %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %65
  store i32 1, i32* %13, align 4
  br label %191

88:                                               ; preds = %65
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @XO_EFF_RESET, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load i64, i64* @XO_COL_DEFAULT, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  store i64 %95, i64* %99, align 8
  br label %100

100:                                              ; preds = %92, %88
  br label %101

101:                                              ; preds = %100, %64
  %102 = load i32, i32* %9, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = shl i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %45

106:                                              ; preds = %45
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %14, align 8
  %110 = load i64, i64* %14, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %110, %113
  br i1 %114, label %115, label %136

115:                                              ; preds = %106
  %116 = load i8*, i8** %7, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = ptrtoint i8* %117 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  %122 = trunc i64 %121 to i32
  %123 = load i64, i64* %14, align 8
  %124 = load i64, i64* @XO_COL_DEFAULT, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %115
  %127 = load i64, i64* %14, align 8
  %128 = sub nsw i64 %127, 1
  br label %130

129:                                              ; preds = %115
  br label %130

130:                                              ; preds = %129, %126
  %131 = phi i64 [ %128, %126 ], [ 9, %129 ]
  %132 = call i32 @snprintf(i8* %116, i32 %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %131)
  %133 = load i8*, i8** %7, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8* %135, i8** %7, align 8
  br label %136

136:                                              ; preds = %130, %106
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %15, align 8
  %140 = load i64, i64* %15, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %140, %143
  br i1 %144, label %145, label %166

145:                                              ; preds = %136
  %146 = load i8*, i8** %7, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = load i8*, i8** %7, align 8
  %149 = ptrtoint i8* %147 to i64
  %150 = ptrtoint i8* %148 to i64
  %151 = sub i64 %149, %150
  %152 = trunc i64 %151 to i32
  %153 = load i64, i64* %15, align 8
  %154 = load i64, i64* @XO_COL_DEFAULT, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %145
  %157 = load i64, i64* %15, align 8
  %158 = sub nsw i64 %157, 1
  br label %160

159:                                              ; preds = %145
  br label %160

160:                                              ; preds = %159, %156
  %161 = phi i64 [ %158, %156 ], [ 9, %159 ]
  %162 = call i32 @snprintf(i8* %146, i32 %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %161)
  %163 = load i8*, i8** %7, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  store i8* %165, i8** %7, align 8
  br label %166

166:                                              ; preds = %160, %136
  %167 = load i8*, i8** %7, align 8
  %168 = ptrtoint i8* %167 to i64
  %169 = ptrtoint i8* %19 to i64
  %170 = sub i64 %168, %169
  %171 = icmp ne i64 %170, 1
  br i1 %171, label %172, label %190

172:                                              ; preds = %166
  %173 = load i8*, i8** %7, align 8
  %174 = load i8*, i8** %8, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 -3
  %176 = icmp ult i8* %173, %175
  br i1 %176, label %177, label %190

177:                                              ; preds = %172
  %178 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 91, i8* %178, align 1
  %179 = load i8*, i8** %7, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %7, align 8
  store i8 109, i8* %179, align 1
  %181 = load i8*, i8** %7, align 8
  store i8 0, i8* %181, align 1
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i8*, i8** %7, align 8
  %185 = ptrtoint i8* %184 to i64
  %186 = ptrtoint i8* %19 to i64
  %187 = sub i64 %185, %186
  %188 = trunc i64 %187 to i32
  %189 = call i32 @xo_buf_append(i32* %183, i8* %19, i32 %188)
  br label %190

190:                                              ; preds = %177, %172, %166
  store i32 0, i32* %13, align 4
  br label %191

191:                                              ; preds = %190, %87
  %192 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %192)
  %193 = load i32, i32* %13, align 4
  switch i32 %193, label %195 [
    i32 0, label %194
    i32 1, label %194
  ]

194:                                              ; preds = %191, %191
  ret void

195:                                              ; preds = %191
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #2

declare dso_local i32 @xo_buf_append(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
