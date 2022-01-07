; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-helper-board.c___cvmx_helper_board_link_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-helper-board.c___cvmx_helper_board_link_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i64 }

@CVMX_HELPER_BOARD_MGMT_IPD_PORT = common dso_local global i32 0, align 4
@OCTEON_CN3XXX = common dso_local global i32 0, align 4
@OCTEON_CN58XX = common dso_local global i32 0, align 4
@OCTEON_CN50XX = common dso_local global i32 0, align 4
@OCTEON_CN56XX = common dso_local global i32 0, align 4
@OCTEON_CN63XX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cvmx_helper_board_link_get(%struct.TYPE_21__* noalias sret %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__, align 8
  %8 = alloca %struct.TYPE_21__, align 8
  %9 = alloca %struct.TYPE_21__, align 8
  store i32 %1, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %10 = call %struct.TYPE_22__* (...) @cvmx_sysinfo_get()
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  call void @__cvmx_helper_board_link_get_from_dt(%struct.TYPE_21__* sret %0, i32 %15)
  br label %161

16:                                               ; preds = %2
  br i1 true, label %17, label %19

17:                                               ; preds = %16
  %18 = load i32, i32* %3, align 4
  call void @cvmx_override_board_link_get(%struct.TYPE_21__* sret %0, i32 %18)
  br label %161

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = call %struct.TYPE_22__* (...) @cvmx_sysinfo_get()
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %115 [
    i32 128, label %24
    i32 133, label %33
    i32 131, label %33
    i32 132, label %33
    i32 142, label %34
    i32 152, label %34
    i32 153, label %34
    i32 151, label %34
    i32 135, label %47
    i32 139, label %47
    i32 138, label %47
    i32 137, label %47
    i32 141, label %53
    i32 140, label %53
    i32 136, label %53
    i32 145, label %64
    i32 144, label %64
    i32 143, label %64
    i32 134, label %83
    i32 147, label %84
    i32 154, label %98
    i32 129, label %114
    i32 130, label %114
  ]

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 2
  store i32 1000, i32* %30, align 8
  %31 = bitcast %struct.TYPE_21__* %0 to i8*
  %32 = bitcast %struct.TYPE_21__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 24, i1 false)
  br label %161

33:                                               ; preds = %19, %19, %19
  br label %115

34:                                               ; preds = %19, %19, %19, %19
  %35 = load i32, i32* %3, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 2
  store i32 1000, i32* %43, align 8
  %44 = bitcast %struct.TYPE_21__* %0 to i8*
  %45 = bitcast %struct.TYPE_21__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 24, i1 false)
  br label %161

46:                                               ; preds = %34
  br label %115

47:                                               ; preds = %19, %19, %19, %19
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @CVMX_HELPER_BOARD_MGMT_IPD_PORT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 1, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %47
  br label %115

53:                                               ; preds = %19, %19, %19
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @CVMX_HELPER_BOARD_MGMT_IPD_PORT, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @CVMX_HELPER_BOARD_MGMT_IPD_PORT, align 4
  %60 = add nsw i32 %59, 2
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 1, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %57, %53
  br label %115

64:                                               ; preds = %19, %19, %19
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @CVMX_HELPER_BOARD_MGMT_IPD_PORT, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @CVMX_HELPER_BOARD_MGMT_IPD_PORT, align 4
  %71 = add nsw i32 %70, 2
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @cvmx_helper_board_get_mii_address(i32 %74)
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @cvmx_helper_board_get_mii_address(i32 %78)
  %80 = icmp sle i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 1, i32* %6, align 4
  br label %82

82:                                               ; preds = %81, %77, %73, %68, %64
  br label %115

83:                                               ; preds = %19
  store i32 1, i32* %6, align 4
  br label %115

84:                                               ; preds = %19
  %85 = load i32, i32* %3, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  store i32 1000, i32* %93, align 8
  %94 = bitcast %struct.TYPE_21__* %0 to i8*
  %95 = bitcast %struct.TYPE_21__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %95, i64 24, i1 false)
  br label %161

96:                                               ; preds = %84
  store i32 1, i32* %6, align 4
  br label %97

97:                                               ; preds = %96
  br label %115

98:                                               ; preds = %19
  %99 = load i32, i32* %3, align 4
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 0
  store i64 0, i64* %102, align 8
  %103 = bitcast %struct.TYPE_21__* %0 to i8*
  %104 = bitcast %struct.TYPE_21__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 24, i1 false)
  br label %161

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  store i32 1, i32* %109, align 4
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 2
  store i32 1000, i32* %111, align 8
  %112 = bitcast %struct.TYPE_21__* %0 to i8*
  %113 = bitcast %struct.TYPE_21__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %112, i8* align 8 %113, i64 24, i1 false)
  br label %161

114:                                              ; preds = %19, %19
  store i32 1, i32* %6, align 4
  br label %115

115:                                              ; preds = %19, %114, %97, %83, %82, %63, %52, %46, %33
  %116 = load i32, i32* %3, align 4
  %117 = call i32 @cvmx_helper_board_get_mii_address(i32 %116)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, -1
  br i1 %119, label %120, label %132

120:                                              ; preds = %115
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i32, i32* %5, align 4
  call void @__get_broadcom_phy_link_state(%struct.TYPE_21__* sret %7, i32 %124)
  %125 = bitcast %struct.TYPE_21__* %4 to i8*
  %126 = bitcast %struct.TYPE_21__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %125, i8* align 8 %126, i64 24, i1 false)
  br label %131

127:                                              ; preds = %120
  %128 = load i32, i32* %5, align 4
  call void @__get_marvell_phy_link_state(%struct.TYPE_21__* sret %8, i32 %128)
  %129 = bitcast %struct.TYPE_21__* %4 to i8*
  %130 = bitcast %struct.TYPE_21__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %129, i8* align 8 %130, i64 24, i1 false)
  br label %131

131:                                              ; preds = %127, %123
  br label %151

132:                                              ; preds = %115
  %133 = load i32, i32* @OCTEON_CN3XXX, align 4
  %134 = call i64 @OCTEON_IS_MODEL(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %132
  %137 = load i32, i32* @OCTEON_CN58XX, align 4
  %138 = call i64 @OCTEON_IS_MODEL(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* @OCTEON_CN50XX, align 4
  %142 = call i64 @OCTEON_IS_MODEL(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140, %136, %132
  %145 = load i32, i32* %3, align 4
  call void @__get_inband_link_state(%struct.TYPE_21__* sret %9, i32 %145)
  %146 = bitcast %struct.TYPE_21__* %4 to i8*
  %147 = bitcast %struct.TYPE_21__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %146, i8* align 8 %147, i64 24, i1 false)
  br label %150

148:                                              ; preds = %140
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 0
  store i64 0, i64* %149, align 8
  br label %150

150:                                              ; preds = %148, %144
  br label %151

151:                                              ; preds = %150, %131
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 0
  store i64 0, i64* %157, align 8
  br label %158

158:                                              ; preds = %156, %151
  %159 = bitcast %struct.TYPE_21__* %0 to i8*
  %160 = bitcast %struct.TYPE_21__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %159, i8* align 8 %160, i64 24, i1 false)
  br label %161

161:                                              ; preds = %158, %105, %101, %87, %37, %24, %17, %14
  ret void
}

declare dso_local %struct.TYPE_22__* @cvmx_sysinfo_get(...) #1

declare dso_local void @__cvmx_helper_board_link_get_from_dt(%struct.TYPE_21__* sret, i32) #1

declare dso_local void @cvmx_override_board_link_get(%struct.TYPE_21__* sret, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cvmx_helper_board_get_mii_address(i32) #1

declare dso_local void @__get_broadcom_phy_link_state(%struct.TYPE_21__* sret, i32) #1

declare dso_local void @__get_marvell_phy_link_state(%struct.TYPE_21__* sret, i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local void @__get_inband_link_state(%struct.TYPE_21__* sret, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
