; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-qlm.c_cvmx_qlm_jtag_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-qlm.c_cvmx_qlm_jtag_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@CVMX_QLM_JTAG_UINT32 = common dso_local global i32 0, align 4
@__cvmx_qlm_jtag_xor_ref = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_qlm_jtag_set(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %23 = load i32, i32* @CVMX_QLM_JTAG_UINT32, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %11, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @cvmx_qlm_get_lanes(i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = call %struct.TYPE_3__* @__cvmx_qlm_lookup_field(i8* %29)
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %14, align 8
  %31 = call i32 (...) @cvmx_qlm_jtag_get_length()
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %13, align 4
  %34 = mul nsw i32 %32, %33
  store i32 %34, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %36 = icmp ne %struct.TYPE_3__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %4
  store i32 1, i32* %18, align 4
  br label %166

38:                                               ; preds = %4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @cvmx_helper_qlm_jtag_capture(i32 %39)
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %51, %38
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @CVMX_QLM_JTAG_UINT32, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @cvmx_helper_qlm_jtag_shift(i32 %46, i32 32, i32 0)
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %26, i64 %49
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %41

54:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %124, %54
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %127

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %124

68:                                               ; preds = %64, %59
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %13, align 4
  %73 = sub nsw i32 %72, 1
  %74 = load i32, i32* %10, align 4
  %75 = sub nsw i32 %73, %74
  %76 = load i32, i32* %15, align 4
  %77 = mul nsw i32 %75, %76
  %78 = add nsw i32 %71, %77
  store i32 %78, i32* %20, align 4
  br label %79

79:                                               ; preds = %120, %68
  %80 = load i32, i32* %20, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %13, align 4
  %85 = sub nsw i32 %84, 1
  %86 = load i32, i32* %10, align 4
  %87 = sub nsw i32 %85, %86
  %88 = load i32, i32* %15, align 4
  %89 = mul nsw i32 %87, %88
  %90 = add nsw i32 %83, %89
  %91 = icmp sle i32 %80, %90
  br i1 %91, label %92, label %123

92:                                               ; preds = %79
  %93 = load i32, i32* %19, align 4
  %94 = and i32 %93, 1
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load i32, i32* %20, align 4
  %98 = and i32 %97, 31
  %99 = shl i32 1, %98
  %100 = load i32, i32* %20, align 4
  %101 = sdiv i32 %100, 32
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %26, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %99
  store i32 %105, i32* %103, align 4
  br label %117

106:                                              ; preds = %92
  %107 = load i32, i32* %20, align 4
  %108 = and i32 %107, 31
  %109 = shl i32 1, %108
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %20, align 4
  %112 = sdiv i32 %111, 32
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %26, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, %110
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %106, %96
  %118 = load i32, i32* %19, align 4
  %119 = ashr i32 %118, 1
  store i32 %119, i32* %19, align 4
  br label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %20, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %20, align 4
  br label %79

123:                                              ; preds = %79
  br label %124

124:                                              ; preds = %123, %67
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %55

127:                                              ; preds = %55
  br label %128

128:                                              ; preds = %155, %127
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %16, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %162

132:                                              ; preds = %128
  %133 = load i32, i32* %17, align 4
  %134 = sdiv i32 %133, 32
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %26, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32**, i32*** @__cvmx_qlm_jtag_xor_ref, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %17, align 4
  %144 = sdiv i32 %143, 32
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = xor i32 %137, %147
  store i32 %148, i32* %21, align 4
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %17, align 4
  %151 = sub nsw i32 %149, %150
  store i32 %151, i32* %22, align 4
  %152 = load i32, i32* %22, align 4
  %153 = icmp sgt i32 %152, 32
  br i1 %153, label %154, label %155

154:                                              ; preds = %132
  store i32 32, i32* %22, align 4
  br label %155

155:                                              ; preds = %154, %132
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* %22, align 4
  %158 = load i32, i32* %21, align 4
  %159 = call i32 @cvmx_helper_qlm_jtag_shift(i32 %156, i32 %157, i32 %158)
  %160 = load i32, i32* %17, align 4
  %161 = add nsw i32 %160, 32
  store i32 %161, i32* %17, align 4
  br label %128

162:                                              ; preds = %128
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @cvmx_helper_qlm_jtag_update(i32 %163)
  %165 = call i32 @cvmx_wait_usec(i32 1000)
  store i32 0, i32* %18, align 4
  br label %166

166:                                              ; preds = %162, %37
  %167 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %167)
  %168 = load i32, i32* %18, align 4
  switch i32 %168, label %170 [
    i32 0, label %169
    i32 1, label %169
  ]

169:                                              ; preds = %166, %166
  ret void

170:                                              ; preds = %166
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cvmx_qlm_get_lanes(i32) #2

declare dso_local %struct.TYPE_3__* @__cvmx_qlm_lookup_field(i8*) #2

declare dso_local i32 @cvmx_qlm_jtag_get_length(...) #2

declare dso_local i32 @cvmx_helper_qlm_jtag_capture(i32) #2

declare dso_local i32 @cvmx_helper_qlm_jtag_shift(i32, i32, i32) #2

declare dso_local i32 @cvmx_helper_qlm_jtag_update(i32) #2

declare dso_local i32 @cvmx_wait_usec(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
