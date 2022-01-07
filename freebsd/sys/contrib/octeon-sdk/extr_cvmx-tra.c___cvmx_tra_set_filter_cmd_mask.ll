; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-tra.c___cvmx_tra_set_filter_cmd_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-tra.c___cvmx_tra_set_filter_cmd_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }

@OCTEON_CN3XXX = common dso_local global i32 0, align 4
@OCTEON_CN5XXX = common dso_local global i32 0, align 4
@CVMX_TRA_FILT_ALL = common dso_local global i64 0, align 8
@CVMX_TRA_FILT_DWB = common dso_local global i64 0, align 8
@CVMX_TRA_FILT_PL2 = common dso_local global i64 0, align 8
@CVMX_TRA_FILT_PSL1 = common dso_local global i64 0, align 8
@CVMX_TRA_FILT_LDD = common dso_local global i64 0, align 8
@CVMX_TRA_FILT_LDI = common dso_local global i64 0, align 8
@CVMX_TRA_FILT_LDT = common dso_local global i64 0, align 8
@CVMX_TRA_FILT_STF = common dso_local global i64 0, align 8
@CVMX_TRA_FILT_STC = common dso_local global i64 0, align 8
@CVMX_TRA_FILT_STP = common dso_local global i64 0, align 8
@CVMX_TRA_FILT_STT = common dso_local global i64 0, align 8
@CVMX_TRA_FILT_IOBLD8 = common dso_local global i64 0, align 8
@CVMX_TRA_FILT_IOBLD16 = common dso_local global i64 0, align 8
@CVMX_TRA_FILT_IOBLD32 = common dso_local global i64 0, align 8
@CVMX_TRA_FILT_IOBLD64 = common dso_local global i64 0, align 8
@CVMX_TRA_FILT_IOBST = common dso_local global i64 0, align 8
@CVMX_TRA_FILT_IOBDMA = common dso_local global i64 0, align 8
@CVMX_TRA_FILT_SAA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @__cvmx_tra_set_filter_cmd_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__cvmx_tra_set_filter_cmd_mask(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i32, i32* @OCTEON_CN3XXX, align 4
  %6 = call i64 @OCTEON_IS_MODEL(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @OCTEON_CN5XXX, align 4
  %10 = call i64 @OCTEON_IS_MODEL(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %167

12:                                               ; preds = %8, %1
  store i64 0, i64* %4, align 8
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @CVMX_TRA_FILT_ALL, align 8
  %15 = and i64 %13, %14
  %16 = icmp eq i64 %15, -1
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load i32, i32* @OCTEON_CN5XXX, align 4
  %19 = call i64 @OCTEON_IS_MODEL(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i64 131071, i64* %4, align 8
  br label %23

22:                                               ; preds = %17
  store i64 65535, i64* %4, align 8
  br label %23

23:                                               ; preds = %22, %21
  br label %24

24:                                               ; preds = %23, %12
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @CVMX_TRA_FILT_DWB, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i64, i64* %4, align 8
  %31 = or i64 %30, 1
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i64, i64* %2, align 8
  %34 = load i64, i64* @CVMX_TRA_FILT_PL2, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i64, i64* %4, align 8
  %39 = or i64 %38, 2
  store i64 %39, i64* %4, align 8
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i64, i64* %2, align 8
  %42 = load i64, i64* @CVMX_TRA_FILT_PSL1, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i64, i64* %4, align 8
  %47 = or i64 %46, 4
  store i64 %47, i64* %4, align 8
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i64, i64* %2, align 8
  %50 = load i64, i64* @CVMX_TRA_FILT_LDD, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i64, i64* %4, align 8
  %55 = or i64 %54, 8
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i64, i64* %2, align 8
  %58 = load i64, i64* @CVMX_TRA_FILT_LDI, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i64, i64* %4, align 8
  %63 = or i64 %62, 16
  store i64 %63, i64* %4, align 8
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i64, i64* %2, align 8
  %66 = load i64, i64* @CVMX_TRA_FILT_LDT, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i64, i64* %4, align 8
  %71 = or i64 %70, 32
  store i64 %71, i64* %4, align 8
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i64, i64* %2, align 8
  %74 = load i64, i64* @CVMX_TRA_FILT_STF, align 8
  %75 = and i64 %73, %74
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i64, i64* %4, align 8
  %79 = or i64 %78, 64
  store i64 %79, i64* %4, align 8
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i64, i64* %2, align 8
  %82 = load i64, i64* @CVMX_TRA_FILT_STC, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i64, i64* %4, align 8
  %87 = or i64 %86, 128
  store i64 %87, i64* %4, align 8
  br label %88

88:                                               ; preds = %85, %80
  %89 = load i64, i64* %2, align 8
  %90 = load i64, i64* @CVMX_TRA_FILT_STP, align 8
  %91 = and i64 %89, %90
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i64, i64* %4, align 8
  %95 = or i64 %94, 256
  store i64 %95, i64* %4, align 8
  br label %96

96:                                               ; preds = %93, %88
  %97 = load i64, i64* %2, align 8
  %98 = load i64, i64* @CVMX_TRA_FILT_STT, align 8
  %99 = and i64 %97, %98
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i64, i64* %4, align 8
  %103 = or i64 %102, 512
  store i64 %103, i64* %4, align 8
  br label %104

104:                                              ; preds = %101, %96
  %105 = load i64, i64* %2, align 8
  %106 = load i64, i64* @CVMX_TRA_FILT_IOBLD8, align 8
  %107 = and i64 %105, %106
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i64, i64* %4, align 8
  %111 = or i64 %110, 1024
  store i64 %111, i64* %4, align 8
  br label %112

112:                                              ; preds = %109, %104
  %113 = load i64, i64* %2, align 8
  %114 = load i64, i64* @CVMX_TRA_FILT_IOBLD16, align 8
  %115 = and i64 %113, %114
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load i64, i64* %4, align 8
  %119 = or i64 %118, 2048
  store i64 %119, i64* %4, align 8
  br label %120

120:                                              ; preds = %117, %112
  %121 = load i64, i64* %2, align 8
  %122 = load i64, i64* @CVMX_TRA_FILT_IOBLD32, align 8
  %123 = and i64 %121, %122
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i64, i64* %4, align 8
  %127 = or i64 %126, 4096
  store i64 %127, i64* %4, align 8
  br label %128

128:                                              ; preds = %125, %120
  %129 = load i64, i64* %2, align 8
  %130 = load i64, i64* @CVMX_TRA_FILT_IOBLD64, align 8
  %131 = and i64 %129, %130
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i64, i64* %4, align 8
  %135 = or i64 %134, 8192
  store i64 %135, i64* %4, align 8
  br label %136

136:                                              ; preds = %133, %128
  %137 = load i64, i64* %2, align 8
  %138 = load i64, i64* @CVMX_TRA_FILT_IOBST, align 8
  %139 = and i64 %137, %138
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i64, i64* %4, align 8
  %143 = or i64 %142, 16384
  store i64 %143, i64* %4, align 8
  br label %144

144:                                              ; preds = %141, %136
  %145 = load i64, i64* %2, align 8
  %146 = load i64, i64* @CVMX_TRA_FILT_IOBDMA, align 8
  %147 = and i64 %145, %146
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i64, i64* %4, align 8
  %151 = or i64 %150, 32768
  store i64 %151, i64* %4, align 8
  br label %152

152:                                              ; preds = %149, %144
  %153 = load i32, i32* @OCTEON_CN5XXX, align 4
  %154 = call i64 @OCTEON_IS_MODEL(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %152
  %157 = load i64, i64* %2, align 8
  %158 = load i64, i64* @CVMX_TRA_FILT_SAA, align 8
  %159 = and i64 %157, %158
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i64, i64* %4, align 8
  %163 = or i64 %162, 65536
  store i64 %163, i64* %4, align 8
  br label %164

164:                                              ; preds = %161, %156, %152
  %165 = load i64, i64* %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i64 %165, i64* %166, align 8
  br label %189

167:                                              ; preds = %8
  %168 = load i64, i64* %2, align 8
  %169 = load i64, i64* @CVMX_TRA_FILT_ALL, align 8
  %170 = and i64 %168, %169
  %171 = icmp eq i64 %170, -1
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load i64, i64* @CVMX_TRA_FILT_ALL, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i64 %173, i64* %174, align 8
  br label %178

175:                                              ; preds = %167
  %176 = load i64, i64* %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i64 %176, i64* %177, align 8
  br label %178

178:                                              ; preds = %175, %172
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 4
  store i64 0, i64* %180, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 3
  store i64 0, i64* %182, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 2
  store i64 0, i64* %184, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 1
  store i64 0, i64* %186, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  store i64 0, i64* %188, align 8
  br label %189

189:                                              ; preds = %178, %164
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  ret i64 %191
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
