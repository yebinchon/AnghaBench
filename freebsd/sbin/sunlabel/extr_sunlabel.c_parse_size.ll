; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sunlabel/extr_sunlabel.c_parse_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sunlabel/extr_sunlabel.c_parse_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun_disklabel = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@cflag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun_disklabel*, i32, i8*)* @parse_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_size(%struct.sun_disklabel* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sun_disklabel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.sun_disklabel* %0, %struct.sun_disklabel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @strtoumax(i8* %13, i8** %11, i32 10)
  store i32 %14, i32* %10, align 4
  %15 = load i8*, i8** %11, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %208

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %19
  %24 = load %struct.sun_disklabel*, %struct.sun_disklabel** %5, align 8
  %25 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.sun_disklabel*, %struct.sun_disklabel** %5, align 8
  %28 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  %31 = load %struct.sun_disklabel*, %struct.sun_disklabel** %5, align 8
  %32 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %30, %33
  store i32 %34, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %54, %23
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %54

43:                                               ; preds = %39
  %44 = load %struct.sun_disklabel*, %struct.sun_disklabel** %5, align 8
  %45 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %43, %42
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %35

57:                                               ; preds = %35
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %10, align 4
  br label %207

61:                                               ; preds = %19
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %61
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 67
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load i8*, i8** %11, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 99
  br i1 %78, label %79, label %89

79:                                               ; preds = %73, %67
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.sun_disklabel*, %struct.sun_disklabel** %5, align 8
  %82 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %80, %83
  %85 = load %struct.sun_disklabel*, %struct.sun_disklabel** %5, align 8
  %86 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 %84, %87
  store i32 %88, i32* %10, align 4
  br label %206

89:                                               ; preds = %73, %61
  %90 = load i8*, i8** %11, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %119

95:                                               ; preds = %89
  %96 = load i8*, i8** %11, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 75
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load i8*, i8** %11, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 107
  br i1 %106, label %107, label %119

107:                                              ; preds = %101, %95
  %108 = load i32, i32* %10, align 4
  %109 = mul nsw i32 %108, 1024
  %110 = sdiv i32 %109, 512
  %111 = load %struct.sun_disklabel*, %struct.sun_disklabel** %5, align 8
  %112 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.sun_disklabel*, %struct.sun_disklabel** %5, align 8
  %115 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = mul nsw i32 %113, %116
  %118 = call i32 @roundup(i32 %110, i32 %117)
  store i32 %118, i32* %10, align 4
  br label %205

119:                                              ; preds = %101, %89
  %120 = load i8*, i8** %11, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %150

125:                                              ; preds = %119
  %126 = load i8*, i8** %11, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 77
  br i1 %130, label %137, label %131

131:                                              ; preds = %125
  %132 = load i8*, i8** %11, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 109
  br i1 %136, label %137, label %150

137:                                              ; preds = %131, %125
  %138 = load i32, i32* %10, align 4
  %139 = mul nsw i32 %138, 1024
  %140 = mul nsw i32 %139, 1024
  %141 = sdiv i32 %140, 512
  %142 = load %struct.sun_disklabel*, %struct.sun_disklabel** %5, align 8
  %143 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.sun_disklabel*, %struct.sun_disklabel** %5, align 8
  %146 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = mul nsw i32 %144, %147
  %149 = call i32 @roundup(i32 %141, i32 %148)
  store i32 %149, i32* %10, align 4
  br label %204

150:                                              ; preds = %131, %119
  %151 = load i8*, i8** %11, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %150
  %157 = load i8*, i8** %11, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 0
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 83
  br i1 %161, label %168, label %162

162:                                              ; preds = %156
  %163 = load i8*, i8** %11, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 0
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 115
  br i1 %167, label %168, label %169

168:                                              ; preds = %162, %156
  br label %203

169:                                              ; preds = %162, %150
  %170 = load i8*, i8** %11, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 1
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %201

175:                                              ; preds = %169
  %176 = load i8*, i8** %11, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 0
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 71
  br i1 %180, label %187, label %181

181:                                              ; preds = %175
  %182 = load i8*, i8** %11, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 0
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 103
  br i1 %186, label %187, label %201

187:                                              ; preds = %181, %175
  %188 = load i32, i32* %10, align 4
  %189 = mul nsw i32 %188, 1024
  %190 = mul nsw i32 %189, 1024
  %191 = mul nsw i32 %190, 1024
  %192 = sdiv i32 %191, 512
  %193 = load %struct.sun_disklabel*, %struct.sun_disklabel** %5, align 8
  %194 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.sun_disklabel*, %struct.sun_disklabel** %5, align 8
  %197 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = mul nsw i32 %195, %198
  %200 = call i32 @roundup(i32 %192, i32 %199)
  store i32 %200, i32* %10, align 4
  br label %202

201:                                              ; preds = %181, %169
  store i32 -1, i32* %4, align 4
  br label %231

202:                                              ; preds = %187
  br label %203

203:                                              ; preds = %202, %168
  br label %204

204:                                              ; preds = %203, %137
  br label %205

205:                                              ; preds = %204, %107
  br label %206

206:                                              ; preds = %205, %79
  br label %207

207:                                              ; preds = %206, %57
  br label %222

208:                                              ; preds = %3
  %209 = load i64, i64* @cflag, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %221

211:                                              ; preds = %208
  %212 = load i32, i32* %10, align 4
  %213 = load %struct.sun_disklabel*, %struct.sun_disklabel** %5, align 8
  %214 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = mul nsw i32 %212, %215
  %217 = load %struct.sun_disklabel*, %struct.sun_disklabel** %5, align 8
  %218 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = mul nsw i32 %216, %219
  store i32 %220, i32* %10, align 4
  br label %221

221:                                              ; preds = %211, %208
  br label %222

222:                                              ; preds = %221, %207
  %223 = load i32, i32* %10, align 4
  %224 = load %struct.sun_disklabel*, %struct.sun_disklabel** %5, align 8
  %225 = getelementptr inbounds %struct.sun_disklabel, %struct.sun_disklabel* %224, i32 0, i32 3
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** %225, align 8
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 0
  store i32 %223, i32* %230, align 4
  store i32 0, i32* %4, align 4
  br label %231

231:                                              ; preds = %222, %201
  %232 = load i32, i32* %4, align 4
  ret i32 %232
}

declare dso_local i32 @strtoumax(i8*, i8**, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @roundup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
