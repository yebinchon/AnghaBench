; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha512-internal.c_sha512_compress.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha512-internal.c_sha512_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha512_state = type { i64* }

@K = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sha512_state*, i8*)* @sha512_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha512_compress(%struct.sha512_state* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sha512_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [8 x i64], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.sha512_state* %0, %struct.sha512_state** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = call i64* @os_malloc(i32 640)
  store i64* %11, i64** %9, align 8
  %12 = load i64*, i64** %9, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %193

15:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %30, %15
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %21 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 %28
  store i64 %26, i64* %29, align 8
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  br label %16

33:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %48, %33
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 16
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %10, align 4
  %40 = mul nsw i32 8, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = call i64 @WPA_GET_BE64(i8* %42)
  %44 = load i64*, i64** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  store i64 %43, i64* %47, align 8
  br label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %34

51:                                               ; preds = %34
  store i32 16, i32* %10, align 4
  br label %52

52:                                               ; preds = %89, %51
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 80
  br i1 %54, label %55, label %92

55:                                               ; preds = %52
  %56 = load i64*, i64** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %56, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @Gamma1(i64 %61)
  %63 = load i64*, i64** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sub nsw i32 %64, 7
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %63, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %62, %68
  %70 = load i64*, i64** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %71, 15
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %70, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @Gamma0(i64 %75)
  %77 = add nsw i64 %69, %76
  %78 = load i64*, i64** %9, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %79, 16
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %78, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %77, %83
  %85 = load i64*, i64** %9, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  store i64 %84, i64* %88, align 8
  br label %89

89:                                               ; preds = %55
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %52

92:                                               ; preds = %52
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %161, %92
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %94, 80
  br i1 %95, label %96, label %164

96:                                               ; preds = %93
  %97 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 7
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 4
  %100 = load i64, i64* %99, align 16
  %101 = call i64 @Sigma1(i64 %100)
  %102 = add nsw i64 %98, %101
  %103 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 4
  %104 = load i64, i64* %103, align 16
  %105 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 5
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 6
  %108 = load i64, i64* %107, align 16
  %109 = call i64 @Ch(i64 %104, i64 %106, i64 %108)
  %110 = add nsw i64 %102, %109
  %111 = load i64*, i64** @K, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %110, %115
  %117 = load i64*, i64** %9, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %116, %121
  store i64 %122, i64* %7, align 8
  %123 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %124 = load i64, i64* %123, align 16
  %125 = call i64 @Sigma0(i64 %124)
  %126 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %127 = load i64, i64* %126, align 16
  %128 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 1
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 2
  %131 = load i64, i64* %130, align 16
  %132 = call i64 @Maj(i64 %127, i64 %129, i64 %131)
  %133 = add nsw i64 %125, %132
  store i64 %133, i64* %8, align 8
  %134 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 6
  %135 = load i64, i64* %134, align 16
  %136 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 7
  store i64 %135, i64* %136, align 8
  %137 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 5
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 6
  store i64 %138, i64* %139, align 16
  %140 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 4
  %141 = load i64, i64* %140, align 16
  %142 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 5
  store i64 %141, i64* %142, align 8
  %143 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 3
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %7, align 8
  %146 = add nsw i64 %144, %145
  %147 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 4
  store i64 %146, i64* %147, align 16
  %148 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 2
  %149 = load i64, i64* %148, align 16
  %150 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 3
  store i64 %149, i64* %150, align 8
  %151 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 1
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 2
  store i64 %152, i64* %153, align 16
  %154 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %155 = load i64, i64* %154, align 16
  %156 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 1
  store i64 %155, i64* %156, align 8
  %157 = load i64, i64* %7, align 8
  %158 = load i64, i64* %8, align 8
  %159 = add nsw i64 %157, %158
  %160 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  store i64 %159, i64* %160, align 16
  br label %161

161:                                              ; preds = %96
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %10, align 4
  br label %93

164:                                              ; preds = %93
  store i32 0, i32* %10, align 4
  br label %165

165:                                              ; preds = %187, %164
  %166 = load i32, i32* %10, align 4
  %167 = icmp slt i32 %166, 8
  br i1 %167, label %168, label %190

168:                                              ; preds = %165
  %169 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %170 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %175, %179
  %181 = load %struct.sha512_state*, %struct.sha512_state** %4, align 8
  %182 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %181, i32 0, i32 0
  %183 = load i64*, i64** %182, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  store i64 %180, i64* %186, align 8
  br label %187

187:                                              ; preds = %168
  %188 = load i32, i32* %10, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %10, align 4
  br label %165

190:                                              ; preds = %165
  %191 = load i64*, i64** %9, align 8
  %192 = call i32 @os_free(i64* %191)
  store i32 0, i32* %3, align 4
  br label %193

193:                                              ; preds = %190, %14
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i64* @os_malloc(i32) #1

declare dso_local i64 @WPA_GET_BE64(i8*) #1

declare dso_local i64 @Gamma1(i64) #1

declare dso_local i64 @Gamma0(i64) #1

declare dso_local i64 @Sigma1(i64) #1

declare dso_local i64 @Ch(i64, i64, i64) #1

declare dso_local i64 @Sigma0(i64) #1

declare dso_local i64 @Maj(i64, i64, i64) #1

declare dso_local i32 @os_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
