; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_unimsgcpy.c_copy_msg_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_unimsgcpy.c_copy_msg_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_connect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_msg_connect(%struct.uni_connect* %0, %struct.uni_connect* %1) #0 {
  %3 = alloca %struct.uni_connect*, align 8
  %4 = alloca %struct.uni_connect*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.uni_connect* %0, %struct.uni_connect** %3, align 8
  store %struct.uni_connect* %1, %struct.uni_connect** %4, align 8
  %7 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %8 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %7, i32 0, i32 17
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @IE_ISGOOD(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %14 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %13, i32 0, i32 17
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.uni_connect*, %struct.uni_connect** %4, align 8
  %17 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %16, i32 0, i32 17
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %20 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %19, i32 0, i32 16
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @IE_ISGOOD(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %26 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %25, i32 0, i32 16
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.uni_connect*, %struct.uni_connect** %4, align 8
  %29 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %28, i32 0, i32 16
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %24, %18
  %31 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %32 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %31, i32 0, i32 15
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IE_ISGOOD(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %38 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %37, i32 0, i32 15
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.uni_connect*, %struct.uni_connect** %4, align 8
  %41 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %40, i32 0, i32 15
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %44 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %43, i32 0, i32 14
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @IE_ISGOOD(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %50 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %49, i32 0, i32 14
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.uni_connect*, %struct.uni_connect** %4, align 8
  %53 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %52, i32 0, i32 14
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %48, %42
  %55 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %56 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %55, i32 0, i32 13
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @IE_ISGOOD(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %62 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %61, i32 0, i32 13
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.uni_connect*, %struct.uni_connect** %4, align 8
  %65 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %64, i32 0, i32 13
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %60, %54
  %67 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %68 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %67, i32 0, i32 12
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @IE_ISGOOD(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %74 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %73, i32 0, i32 12
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.uni_connect*, %struct.uni_connect** %4, align 8
  %77 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %76, i32 0, i32 12
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %72, %66
  %79 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %80 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %79, i32 0, i32 11
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @IE_ISGOOD(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %86 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %85, i32 0, i32 11
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.uni_connect*, %struct.uni_connect** %4, align 8
  %89 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %88, i32 0, i32 11
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %84, %78
  %91 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %92 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %91, i32 0, i32 10
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @IE_ISGOOD(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %98 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.uni_connect*, %struct.uni_connect** %4, align 8
  %101 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %100, i32 0, i32 10
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %96, %90
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %103

103:                                              ; preds = %130, %102
  %104 = load i64, i64* %5, align 8
  %105 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %107, label %133

107:                                              ; preds = %103
  %108 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %109 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %108, i32 0, i32 9
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* %5, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @IE_ISGOOD(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %107
  %117 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %118 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %117, i32 0, i32 9
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %5, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.uni_connect*, %struct.uni_connect** %4, align 8
  %124 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %123, i32 0, i32 9
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* %6, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %6, align 8
  %128 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32 %122, i32* %128, align 4
  br label %129

129:                                              ; preds = %116, %107
  br label %130

130:                                              ; preds = %129
  %131 = load i64, i64* %5, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %5, align 8
  br label %103

133:                                              ; preds = %103
  %134 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %135 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %134, i32 0, i32 8
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @IE_ISGOOD(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %141 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.uni_connect*, %struct.uni_connect** %4, align 8
  %144 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %143, i32 0, i32 8
  store i32 %142, i32* %144, align 8
  br label %145

145:                                              ; preds = %139, %133
  %146 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %147 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @IE_ISGOOD(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %145
  %152 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %153 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.uni_connect*, %struct.uni_connect** %4, align 8
  %156 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %155, i32 0, i32 7
  store i32 %154, i32* %156, align 4
  br label %157

157:                                              ; preds = %151, %145
  %158 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %159 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = call i64 @IE_ISGOOD(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %165 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.uni_connect*, %struct.uni_connect** %4, align 8
  %168 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %167, i32 0, i32 6
  store i32 %166, i32* %168, align 8
  br label %169

169:                                              ; preds = %163, %157
  %170 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %171 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @IE_ISGOOD(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %169
  %176 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %177 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.uni_connect*, %struct.uni_connect** %4, align 8
  %180 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 4
  br label %181

181:                                              ; preds = %175, %169
  %182 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %183 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = call i64 @IE_ISGOOD(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %181
  %188 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %189 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.uni_connect*, %struct.uni_connect** %4, align 8
  %192 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %191, i32 0, i32 4
  store i32 %190, i32* %192, align 8
  br label %193

193:                                              ; preds = %187, %181
  %194 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %195 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = call i64 @IE_ISGOOD(i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %193
  %200 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %201 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.uni_connect*, %struct.uni_connect** %4, align 8
  %204 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 4
  br label %205

205:                                              ; preds = %199, %193
  %206 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %207 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = call i64 @IE_ISGOOD(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %205
  %212 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %213 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.uni_connect*, %struct.uni_connect** %4, align 8
  %216 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %215, i32 0, i32 2
  store i32 %214, i32* %216, align 8
  br label %217

217:                                              ; preds = %211, %205
  %218 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %219 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i64 @IE_ISGOOD(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %217
  %224 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %225 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.uni_connect*, %struct.uni_connect** %4, align 8
  %228 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 4
  br label %229

229:                                              ; preds = %223, %217
  %230 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %231 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i64 @IE_ISGOOD(i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %229
  %236 = load %struct.uni_connect*, %struct.uni_connect** %3, align 8
  %237 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.uni_connect*, %struct.uni_connect** %4, align 8
  %240 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %239, i32 0, i32 0
  store i32 %238, i32* %240, align 8
  br label %241

241:                                              ; preds = %235, %229
  ret void
}

declare dso_local i64 @IE_ISGOOD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
