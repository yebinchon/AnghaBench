; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_config_file.c_hostapd_config_read_wep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_config_file.c_hostapd_config_read_wep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_wep_keys = type { i64*, i64, i32** }

@NUM_WEP_KEYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_wep_keys*, i32, i8*)* @hostapd_config_read_wep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_config_read_wep(%struct.hostapd_wep_keys* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_wep_keys*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hostapd_wep_keys* %0, %struct.hostapd_wep_keys** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i64 @os_strlen(i8* %11)
  store i64 %12, i64* %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %16, 3
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %3
  store i32 -1, i32* %4, align 4
  br label %186

19:                                               ; preds = %15
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %77

22:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  %23 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %5, align 8
  %24 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %23, i32 0, i32 2
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %5, align 8
  %31 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @bin_clear_free(i32* %29, i64 %36)
  %38 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %5, align 8
  %39 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %38, i32 0, i32 2
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  store i32* null, i32** %43, align 8
  %44 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %5, align 8
  %45 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  store i64 0, i64* %49, align 8
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %67, %22
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @NUM_WEP_KEYS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %5, align 8
  %56 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %55, i32 0, i32 2
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %63, %54
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %50

70:                                               ; preds = %50
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %5, align 8
  %75 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %73, %70
  store i32 0, i32* %4, align 4
  br label %186

77:                                               ; preds = %19
  %78 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %5, align 8
  %79 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %78, i32 0, i32 2
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  store i32 -1, i32* %4, align 4
  br label %186

87:                                               ; preds = %77
  %88 = load i8*, i8** %7, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 34
  br i1 %92, label %93, label %135

93:                                               ; preds = %87
  %94 = load i64, i64* %8, align 8
  %95 = icmp ult i64 %94, 2
  br i1 %95, label %104, label %96

96:                                               ; preds = %93
  %97 = load i8*, i8** %7, align 8
  %98 = load i64, i64* %8, align 8
  %99 = sub i64 %98, 1
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 34
  br i1 %103, label %104, label %105

104:                                              ; preds = %96, %93
  store i32 -1, i32* %4, align 4
  br label %186

105:                                              ; preds = %96
  %106 = load i64, i64* %8, align 8
  %107 = sub i64 %106, 2
  store i64 %107, i64* %8, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i64, i64* %8, align 8
  %111 = call i32* @os_memdup(i8* %109, i64 %110)
  %112 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %5, align 8
  %113 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %112, i32 0, i32 2
  %114 = load i32**, i32*** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  store i32* %111, i32** %117, align 8
  %118 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %5, align 8
  %119 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %118, i32 0, i32 2
  %120 = load i32**, i32*** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %105
  store i32 -1, i32* %4, align 4
  br label %186

127:                                              ; preds = %105
  %128 = load i64, i64* %8, align 8
  %129 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %5, align 8
  %130 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  store i64 %128, i64* %134, align 8
  br label %181

135:                                              ; preds = %87
  %136 = load i64, i64* %8, align 8
  %137 = and i64 %136, 1
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  store i32 -1, i32* %4, align 4
  br label %186

140:                                              ; preds = %135
  %141 = load i64, i64* %8, align 8
  %142 = udiv i64 %141, 2
  store i64 %142, i64* %8, align 8
  %143 = load i64, i64* %8, align 8
  %144 = call i32* @os_malloc(i64 %143)
  %145 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %5, align 8
  %146 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %145, i32 0, i32 2
  %147 = load i32**, i32*** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %147, i64 %149
  store i32* %144, i32** %150, align 8
  %151 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %5, align 8
  %152 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %151, i32 0, i32 2
  %153 = load i32**, i32*** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = icmp eq i32* %157, null
  br i1 %158, label %159, label %160

159:                                              ; preds = %140
  store i32 -1, i32* %4, align 4
  br label %186

160:                                              ; preds = %140
  %161 = load i64, i64* %8, align 8
  %162 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %5, align 8
  %163 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %162, i32 0, i32 0
  %164 = load i64*, i64** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  store i64 %161, i64* %167, align 8
  %168 = load i8*, i8** %7, align 8
  %169 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %5, align 8
  %170 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %169, i32 0, i32 2
  %171 = load i32**, i32*** %170, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32*, i32** %171, i64 %173
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* %8, align 8
  %177 = call i64 @hexstr2bin(i8* %168, i32* %175, i64 %176)
  %178 = icmp slt i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %160
  store i32 -1, i32* %4, align 4
  br label %186

180:                                              ; preds = %160
  br label %181

181:                                              ; preds = %180, %127
  %182 = load %struct.hostapd_wep_keys*, %struct.hostapd_wep_keys** %5, align 8
  %183 = getelementptr inbounds %struct.hostapd_wep_keys, %struct.hostapd_wep_keys* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* %183, align 8
  store i32 0, i32* %4, align 4
  br label %186

186:                                              ; preds = %181, %179, %159, %139, %126, %104, %86, %76, %18
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32 @bin_clear_free(i32*, i64) #1

declare dso_local i32* @os_memdup(i8*, i64) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i64 @hexstr2bin(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
