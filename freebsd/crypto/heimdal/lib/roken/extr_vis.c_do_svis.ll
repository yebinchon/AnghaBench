; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_vis.c_do_svis.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_vis.c_do_svis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIS_SAFE = common dso_local global i32 0, align 4
@VIS_CSTYLE = common dso_local global i32 0, align 4
@VIS_OCTAL = common dso_local global i32 0, align 4
@VIS_NOSLASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32, i32, i8*)* @do_svis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @do_svis(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load i8*, i8** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32* @strchr(i8* %13, i32 %14)
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %47, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @isascii(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @isgraph(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @iswhite(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @VIS_SAFE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @issafe(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37, %28, %24
  %42 = load i32, i32* %8, align 4
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  store i8 %43, i8* %44, align 1
  %46 = load i8*, i8** %7, align 8
  store i8* %46, i8** %6, align 8
  br label %224

47:                                               ; preds = %37, %32, %20, %5
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @VIS_CSTYLE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %131

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  switch i32 %53, label %117 [
    i32 10, label %54
    i32 13, label %60
    i32 8, label %66
    i32 128, label %72
    i32 11, label %78
    i32 9, label %84
    i32 12, label %90
    i32 32, label %96
    i32 0, label %102
  ]

54:                                               ; preds = %52
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %7, align 8
  store i8 92, i8* %55, align 1
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %7, align 8
  store i8 110, i8* %57, align 1
  %59 = load i8*, i8** %7, align 8
  store i8* %59, i8** %6, align 8
  br label %224

60:                                               ; preds = %52
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %7, align 8
  store i8 92, i8* %61, align 1
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %7, align 8
  store i8 114, i8* %63, align 1
  %65 = load i8*, i8** %7, align 8
  store i8* %65, i8** %6, align 8
  br label %224

66:                                               ; preds = %52
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %7, align 8
  store i8 92, i8* %67, align 1
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %7, align 8
  store i8 98, i8* %69, align 1
  %71 = load i8*, i8** %7, align 8
  store i8* %71, i8** %6, align 8
  br label %224

72:                                               ; preds = %52
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %7, align 8
  store i8 92, i8* %73, align 1
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %7, align 8
  store i8 97, i8* %75, align 1
  %77 = load i8*, i8** %7, align 8
  store i8* %77, i8** %6, align 8
  br label %224

78:                                               ; preds = %52
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %7, align 8
  store i8 92, i8* %79, align 1
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %7, align 8
  store i8 118, i8* %81, align 1
  %83 = load i8*, i8** %7, align 8
  store i8* %83, i8** %6, align 8
  br label %224

84:                                               ; preds = %52
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %7, align 8
  store i8 92, i8* %85, align 1
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %7, align 8
  store i8 116, i8* %87, align 1
  %89 = load i8*, i8** %7, align 8
  store i8* %89, i8** %6, align 8
  br label %224

90:                                               ; preds = %52
  %91 = load i8*, i8** %7, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %7, align 8
  store i8 92, i8* %91, align 1
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %7, align 8
  store i8 102, i8* %93, align 1
  %95 = load i8*, i8** %7, align 8
  store i8* %95, i8** %6, align 8
  br label %224

96:                                               ; preds = %52
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %7, align 8
  store i8 92, i8* %97, align 1
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %7, align 8
  store i8 115, i8* %99, align 1
  %101 = load i8*, i8** %7, align 8
  store i8* %101, i8** %6, align 8
  br label %224

102:                                              ; preds = %52
  %103 = load i8*, i8** %7, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %7, align 8
  store i8 92, i8* %103, align 1
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %7, align 8
  store i8 48, i8* %105, align 1
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @isoctal(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %102
  %111 = load i8*, i8** %7, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %7, align 8
  store i8 48, i8* %111, align 1
  %113 = load i8*, i8** %7, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %7, align 8
  store i8 48, i8* %113, align 1
  br label %115

115:                                              ; preds = %110, %102
  %116 = load i8*, i8** %7, align 8
  store i8* %116, i8** %6, align 8
  br label %224

117:                                              ; preds = %52
  %118 = load i32, i32* %8, align 4
  %119 = call i64 @isgraph(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load i8*, i8** %7, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %7, align 8
  store i8 92, i8* %122, align 1
  %124 = load i32, i32* %8, align 4
  %125 = trunc i32 %124 to i8
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %7, align 8
  store i8 %125, i8* %126, align 1
  %128 = load i8*, i8** %7, align 8
  store i8* %128, i8** %6, align 8
  br label %224

129:                                              ; preds = %117
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130, %47
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %8, align 4
  %136 = and i32 %135, 127
  %137 = icmp eq i32 %136, 32
  br i1 %137, label %143, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @VIS_OCTAL, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %178

143:                                              ; preds = %138, %134, %131
  %144 = load i8*, i8** %7, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %7, align 8
  store i8 92, i8* %144, align 1
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to i8*
  %149 = ptrtoint i8* %148 to i32
  %150 = lshr i32 %149, 6
  %151 = and i32 %150, 3
  %152 = zext i32 %151 to i64
  %153 = inttoptr i64 %152 to i8*
  %154 = getelementptr i8, i8* %153, i64 48
  %155 = ptrtoint i8* %154 to i8
  %156 = load i8*, i8** %7, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %7, align 8
  store i8 %155, i8* %156, align 1
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i8*
  %161 = ptrtoint i8* %160 to i32
  %162 = lshr i32 %161, 3
  %163 = and i32 %162, 7
  %164 = zext i32 %163 to i64
  %165 = inttoptr i64 %164 to i8*
  %166 = getelementptr i8, i8* %165, i64 48
  %167 = ptrtoint i8* %166 to i8
  %168 = load i8*, i8** %7, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %7, align 8
  store i8 %167, i8* %168, align 1
  %170 = load i32, i32* %8, align 4
  %171 = and i32 %170, 7
  %172 = sext i32 %171 to i64
  %173 = inttoptr i64 %172 to i8*
  %174 = getelementptr i8, i8* %173, i64 48
  %175 = ptrtoint i8* %174 to i8
  %176 = load i8*, i8** %7, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %7, align 8
  store i8 %175, i8* %176, align 1
  br label %222

178:                                              ; preds = %138
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* @VIS_NOSLASH, align 4
  %181 = and i32 %179, %180
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load i8*, i8** %7, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %7, align 8
  store i8 92, i8* %184, align 1
  br label %186

186:                                              ; preds = %183, %178
  %187 = load i32, i32* %8, align 4
  %188 = and i32 %187, 128
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %186
  %191 = load i32, i32* %8, align 4
  %192 = and i32 %191, 127
  store i32 %192, i32* %8, align 4
  %193 = load i8*, i8** %7, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %7, align 8
  store i8 77, i8* %193, align 1
  br label %195

195:                                              ; preds = %190, %186
  %196 = load i32, i32* %8, align 4
  %197 = call i64 @iscntrl(i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %214

199:                                              ; preds = %195
  %200 = load i8*, i8** %7, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %7, align 8
  store i8 94, i8* %200, align 1
  %202 = load i32, i32* %8, align 4
  %203 = icmp eq i32 %202, 127
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load i8*, i8** %7, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %7, align 8
  store i8 63, i8* %205, align 1
  br label %213

207:                                              ; preds = %199
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 64
  %210 = trunc i32 %209 to i8
  %211 = load i8*, i8** %7, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %7, align 8
  store i8 %210, i8* %211, align 1
  br label %213

213:                                              ; preds = %207, %204
  br label %221

214:                                              ; preds = %195
  %215 = load i8*, i8** %7, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %216, i8** %7, align 8
  store i8 45, i8* %215, align 1
  %217 = load i32, i32* %8, align 4
  %218 = trunc i32 %217 to i8
  %219 = load i8*, i8** %7, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** %7, align 8
  store i8 %218, i8* %219, align 1
  br label %221

221:                                              ; preds = %214, %213
  br label %222

222:                                              ; preds = %221, %143
  %223 = load i8*, i8** %7, align 8
  store i8* %223, i8** %6, align 8
  br label %224

224:                                              ; preds = %222, %121, %115, %96, %90, %84, %78, %72, %66, %60, %54, %41
  %225 = load i8*, i8** %6, align 8
  ret i8* %225
}

declare dso_local i32* @strchr(i8*, i32) #1

declare dso_local i64 @isascii(i32) #1

declare dso_local i64 @isgraph(i32) #1

declare dso_local i64 @iswhite(i32) #1

declare dso_local i64 @issafe(i32) #1

declare dso_local i32 @isoctal(i32) #1

declare dso_local i64 @iscntrl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
