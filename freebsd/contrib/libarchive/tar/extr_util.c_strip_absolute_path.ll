; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_util.c_strip_absolute_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_util.c_strip_absolute_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdtar = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.bsdtar*, i8*)* @strip_absolute_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @strip_absolute_path(%struct.bsdtar* %0, i8* %1) #0 {
  %3 = alloca %struct.bsdtar*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.bsdtar* %0, %struct.bsdtar** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 47
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 92
  br i1 %16, label %17, label %116

17:                                               ; preds = %11, %2
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 47
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 92
  br i1 %28, label %29, label %116

29:                                               ; preds = %23, %17
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 46
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 63
  br i1 %40, label %41, label %116

41:                                               ; preds = %35, %29
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 3
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 47
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 92
  br i1 %52, label %53, label %116

53:                                               ; preds = %47, %41
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 63
  br i1 %58, label %59, label %110

59:                                               ; preds = %53
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 85
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 4
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 117
  br i1 %70, label %71, label %110

71:                                               ; preds = %65, %59
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 5
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 78
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 5
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 110
  br i1 %82, label %83, label %110

83:                                               ; preds = %77, %71
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 6
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 67
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 6
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 99
  br i1 %94, label %95, label %110

95:                                               ; preds = %89, %83
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 7
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 47
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 7
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 92
  br i1 %106, label %107, label %110

107:                                              ; preds = %101, %95
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 8
  store i8* %109, i8** %4, align 8
  br label %113

110:                                              ; preds = %101, %89, %77, %65, %53
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 4
  store i8* %112, i8** %4, align 8
  br label %113

113:                                              ; preds = %110, %107
  %114 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %115 = call i32 @warn_strip_drive_letter(%struct.bsdtar* %114)
  br label %116

116:                                              ; preds = %113, %47, %35, %23, %11
  br label %117

117:                                              ; preds = %225, %116
  %118 = load i8*, i8** %4, align 8
  store i8* %118, i8** %5, align 8
  %119 = load i8*, i8** %4, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp sge i32 %122, 97
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load i8*, i8** %4, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp sle i32 %128, 122
  br i1 %129, label %142, label %130

130:                                              ; preds = %124, %117
  %131 = load i8*, i8** %4, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp sge i32 %134, 65
  br i1 %135, label %136, label %153

136:                                              ; preds = %130
  %137 = load i8*, i8** %4, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp sle i32 %140, 90
  br i1 %141, label %142, label %153

142:                                              ; preds = %136, %124
  %143 = load i8*, i8** %4, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 58
  br i1 %147, label %148, label %153

148:                                              ; preds = %142
  %149 = load i8*, i8** %4, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 2
  store i8* %150, i8** %4, align 8
  %151 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %152 = call i32 @warn_strip_drive_letter(%struct.bsdtar* %151)
  br label %153

153:                                              ; preds = %148, %142, %136, %130
  br label %154

154:                                              ; preds = %220, %153
  %155 = load i8*, i8** %4, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 0
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 47
  br i1 %159, label %166, label %160

160:                                              ; preds = %154
  %161 = load i8*, i8** %4, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 92
  br label %166

166:                                              ; preds = %160, %154
  %167 = phi i1 [ true, %154 ], [ %165, %160 ]
  br i1 %167, label %168, label %224

168:                                              ; preds = %166
  %169 = load i8*, i8** %4, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 46
  br i1 %173, label %174, label %195

174:                                              ; preds = %168
  %175 = load i8*, i8** %4, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 2
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 46
  br i1 %179, label %180, label %195

180:                                              ; preds = %174
  %181 = load i8*, i8** %4, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 3
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 47
  br i1 %185, label %192, label %186

186:                                              ; preds = %180
  %187 = load i8*, i8** %4, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 3
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %190, 92
  br i1 %191, label %192, label %195

192:                                              ; preds = %186, %180
  %193 = load i8*, i8** %4, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 3
  store i8* %194, i8** %4, align 8
  br label %220

195:                                              ; preds = %186, %174, %168
  %196 = load i8*, i8** %4, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 1
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 46
  br i1 %200, label %201, label %216

201:                                              ; preds = %195
  %202 = load i8*, i8** %4, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 2
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp eq i32 %205, 47
  br i1 %206, label %213, label %207

207:                                              ; preds = %201
  %208 = load i8*, i8** %4, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 2
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %211, 92
  br i1 %212, label %213, label %216

213:                                              ; preds = %207, %201
  %214 = load i8*, i8** %4, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 2
  store i8* %215, i8** %4, align 8
  br label %219

216:                                              ; preds = %207, %195
  %217 = load i8*, i8** %4, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 1
  store i8* %218, i8** %4, align 8
  br label %219

219:                                              ; preds = %216, %213
  br label %220

220:                                              ; preds = %219, %192
  %221 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %222 = load i8*, i8** %5, align 8
  %223 = call i32 @warn_strip_leading_char(%struct.bsdtar* %221, i8* %222)
  br label %154

224:                                              ; preds = %166
  br label %225

225:                                              ; preds = %224
  %226 = load i8*, i8** %5, align 8
  %227 = load i8*, i8** %4, align 8
  %228 = icmp ne i8* %226, %227
  br i1 %228, label %117, label %229

229:                                              ; preds = %225
  %230 = load i8*, i8** %4, align 8
  ret i8* %230
}

declare dso_local i32 @warn_strip_drive_letter(%struct.bsdtar*) #1

declare dso_local i32 @warn_strip_leading_char(%struct.bsdtar*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
