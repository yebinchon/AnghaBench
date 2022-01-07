; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdate/extr_ntpdate.c_clock_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdate/extr_ntpdate.c_clock_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server = type { i64*, i64, i64, i64*, i32, i64, i32* }

@NTP_SHIFT = common dso_local global i32 0, align 4
@sys_samples = common dso_local global i32 0, align 4
@PEER_MAXDISP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.server*)* @clock_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clock_filter(%struct.server* %0) #0 {
  %2 = alloca %struct.server*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.server* %0, %struct.server** %2, align 8
  %9 = load i32, i32* @NTP_SHIFT, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @sys_samples, align 4
  %14 = icmp slt i32 0, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @sys_samples, align 4
  %17 = load i32, i32* @NTP_SHIFT, align 4
  %18 = icmp sle i32 %16, %17
  br label %19

19:                                               ; preds = %15, %1
  %20 = phi i1 [ false, %1 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @INSIST(i32 %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %32, %19
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @sys_samples, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %12, i64 %30
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %23

35:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %116, %35
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @sys_samples, align 4
  %39 = sub nsw i32 %38, 1
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %119

41:                                               ; preds = %36
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %112, %41
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @sys_samples, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %115

48:                                               ; preds = %44
  %49 = load %struct.server*, %struct.server** %2, align 8
  %50 = getelementptr inbounds %struct.server, %struct.server* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %12, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %51, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %112

61:                                               ; preds = %48
  %62 = load %struct.server*, %struct.server** %2, align 8
  %63 = getelementptr inbounds %struct.server, %struct.server* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %12, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %64, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %95, label %73

73:                                               ; preds = %61
  %74 = load %struct.server*, %struct.server** %2, align 8
  %75 = getelementptr inbounds %struct.server, %struct.server* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %12, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %76, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.server*, %struct.server** %2, align 8
  %85 = getelementptr inbounds %struct.server, %struct.server* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %12, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %86, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %83, %93
  br i1 %94, label %95, label %111

95:                                               ; preds = %73, %61
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %12, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %12, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %12, i64 %105
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %12, i64 %109
  store i32 %107, i32* %110, align 4
  br label %111

111:                                              ; preds = %95, %73
  br label %112

112:                                              ; preds = %111, %60
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %4, align 4
  br label %44

115:                                              ; preds = %44
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %3, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %3, align 4
  br label %36

119:                                              ; preds = %36
  %120 = load %struct.server*, %struct.server** %2, align 8
  %121 = getelementptr inbounds %struct.server, %struct.server* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i32, i32* %12, i64 0
  %124 = load i32, i32* %123, align 16
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %122, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %119
  %130 = load %struct.server*, %struct.server** %2, align 8
  %131 = getelementptr inbounds %struct.server, %struct.server* %130, i32 0, i32 1
  store i64 0, i64* %131, align 8
  %132 = load %struct.server*, %struct.server** %2, align 8
  %133 = getelementptr inbounds %struct.server, %struct.server* %132, i32 0, i32 4
  %134 = call i32 @L_CLR(i32* %133)
  %135 = load %struct.server*, %struct.server** %2, align 8
  %136 = getelementptr inbounds %struct.server, %struct.server* %135, i32 0, i32 5
  store i64 0, i64* %136, align 8
  %137 = load i64, i64* @PEER_MAXDISP, align 8
  %138 = load %struct.server*, %struct.server** %2, align 8
  %139 = getelementptr inbounds %struct.server, %struct.server* %138, i32 0, i32 2
  store i64 %137, i64* %139, align 8
  br label %232

140:                                              ; preds = %119
  %141 = load %struct.server*, %struct.server** %2, align 8
  %142 = getelementptr inbounds %struct.server, %struct.server* %141, i32 0, i32 0
  %143 = load i64*, i64** %142, align 8
  %144 = getelementptr inbounds i32, i32* %12, i64 0
  %145 = load i32, i32* %144, align 16
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %143, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.server*, %struct.server** %2, align 8
  %150 = getelementptr inbounds %struct.server, %struct.server* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  %151 = load %struct.server*, %struct.server** %2, align 8
  %152 = getelementptr inbounds %struct.server, %struct.server* %151, i32 0, i32 6
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %12, i64 0
  %155 = load i32, i32* %154, align 16
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.server*, %struct.server** %2, align 8
  %160 = getelementptr inbounds %struct.server, %struct.server* %159, i32 0, i32 4
  store i32 %158, i32* %160, align 8
  %161 = load %struct.server*, %struct.server** %2, align 8
  %162 = getelementptr inbounds %struct.server, %struct.server* %161, i32 0, i32 4
  %163 = call i64 @LFPTOFP(i32* %162)
  %164 = load %struct.server*, %struct.server** %2, align 8
  %165 = getelementptr inbounds %struct.server, %struct.server* %164, i32 0, i32 5
  store i64 %163, i64* %165, align 8
  %166 = load %struct.server*, %struct.server** %2, align 8
  %167 = getelementptr inbounds %struct.server, %struct.server* %166, i32 0, i32 2
  store i64 0, i64* %167, align 8
  store i32 1, i32* %3, align 4
  br label %168

168:                                              ; preds = %228, %140
  %169 = load i32, i32* %3, align 4
  %170 = load i32, i32* @sys_samples, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %231

172:                                              ; preds = %168
  %173 = load %struct.server*, %struct.server** %2, align 8
  %174 = getelementptr inbounds %struct.server, %struct.server* %173, i32 0, i32 0
  %175 = load i64*, i64** %174, align 8
  %176 = load i32, i32* %3, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %12, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %175, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %172
  %185 = load i64, i64* @PEER_MAXDISP, align 8
  store i64 %185, i64* %8, align 8
  br label %218

186:                                              ; preds = %172
  %187 = load %struct.server*, %struct.server** %2, align 8
  %188 = getelementptr inbounds %struct.server, %struct.server* %187, i32 0, i32 3
  %189 = load i64*, i64** %188, align 8
  %190 = load i32, i32* %3, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %12, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %189, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.server*, %struct.server** %2, align 8
  %198 = getelementptr inbounds %struct.server, %struct.server* %197, i32 0, i32 3
  %199 = load i64*, i64** %198, align 8
  %200 = getelementptr inbounds i32, i32* %12, i64 0
  %201 = load i32, i32* %200, align 16
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %199, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = sub nsw i64 %196, %204
  store i64 %205, i64* %8, align 8
  %206 = load i64, i64* %8, align 8
  %207 = icmp slt i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %186
  %209 = load i64, i64* %8, align 8
  %210 = sub nsw i64 0, %209
  store i64 %210, i64* %8, align 8
  br label %211

211:                                              ; preds = %208, %186
  %212 = load i64, i64* %8, align 8
  %213 = load i64, i64* @PEER_MAXDISP, align 8
  %214 = icmp sgt i64 %212, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %211
  %216 = load i64, i64* @PEER_MAXDISP, align 8
  store i64 %216, i64* %8, align 8
  br label %217

217:                                              ; preds = %215, %211
  br label %218

218:                                              ; preds = %217, %184
  %219 = load i64, i64* %8, align 8
  %220 = trunc i64 %219 to i32
  %221 = load i32, i32* %3, align 4
  %222 = ashr i32 %220, %221
  %223 = sext i32 %222 to i64
  %224 = load %struct.server*, %struct.server** %2, align 8
  %225 = getelementptr inbounds %struct.server, %struct.server* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = add nsw i64 %226, %223
  store i64 %227, i64* %225, align 8
  br label %228

228:                                              ; preds = %218
  %229 = load i32, i32* %3, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %3, align 4
  br label %168

231:                                              ; preds = %168
  br label %232

232:                                              ; preds = %231, %129
  %233 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %233)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @INSIST(i32) #2

declare dso_local i32 @L_CLR(i32*) #2

declare dso_local i64 @LFPTOFP(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
