; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-qlm.c_cvmx_qlm_get_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-qlm.c_cvmx_qlm_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, i8* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, i8* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_7__, i8* }
%struct.TYPE_7__ = type { i32, i64 }

@OCTEON_CN68XX = common dso_local global i32 0, align 4
@OCTEON_CN66XX = common dso_local global i32 0, align 4
@OCTEON_CN66XX_PASS1_0 = common dso_local global i32 0, align 4
@OCTEON_CN63XX = common dso_local global i32 0, align 4
@OCTEON_CN61XX = common dso_local global i32 0, align 4
@OCTEON_CNF71XX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_qlm_get_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @OCTEON_CN68XX, align 4
  %8 = call i64 @OCTEON_IS_MODEL(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @CVMX_MIO_QLMX_CFG(i32 %11)
  %13 = call i8* @cvmx_read_csr(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  store i8* %13, i8** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 15
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  store i32 -1, i32* %2, align 4
  br label %169

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %29 [
    i32 0, label %24
    i32 1, label %25
    i32 2, label %26
    i32 3, label %27
    i32 7, label %28
  ]

24:                                               ; preds = %20
  store i32 3, i32* %2, align 4
  br label %169

25:                                               ; preds = %20
  store i32 9, i32* %2, align 4
  br label %169

26:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %169

27:                                               ; preds = %20
  store i32 2, i32* %2, align 4
  br label %169

28:                                               ; preds = %20
  store i32 10, i32* %2, align 4
  br label %169

29:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %169

30:                                               ; preds = %1
  %31 = load i32, i32* @OCTEON_CN66XX, align 4
  %32 = call i64 @OCTEON_IS_MODEL(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @CVMX_MIO_QLMX_CFG(i32 %35)
  %37 = call i8* @cvmx_read_csr(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 15
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 -1, i32* %2, align 4
  br label %169

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %59 [
    i32 9, label %48
    i32 11, label %49
    i32 0, label %50
    i32 8, label %50
    i32 2, label %50
    i32 10, label %50
    i32 1, label %51
    i32 3, label %51
    i32 4, label %52
    i32 6, label %52
    i32 5, label %53
    i32 7, label %53
  ]

48:                                               ; preds = %44
  store i32 1, i32* %2, align 4
  br label %169

49:                                               ; preds = %44
  store i32 2, i32* %2, align 4
  br label %169

50:                                               ; preds = %44, %44, %44, %44
  store i32 3, i32* %2, align 4
  br label %169

51:                                               ; preds = %44, %44
  store i32 4, i32* %2, align 4
  br label %169

52:                                               ; preds = %44, %44
  store i32 5, i32* %2, align 4
  br label %169

53:                                               ; preds = %44, %44
  %54 = load i32, i32* @OCTEON_CN66XX_PASS1_0, align 4
  %55 = call i64 @OCTEON_IS_MODEL(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  store i32 6, i32* %2, align 4
  br label %169

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %44, %58
  store i32 -1, i32* %2, align 4
  br label %169

60:                                               ; preds = %30
  %61 = load i32, i32* @OCTEON_CN63XX, align 4
  %62 = call i64 @OCTEON_IS_MODEL(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %94

64:                                               ; preds = %60
  %65 = load i32, i32* %3, align 4
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %83

67:                                               ; preds = %64
  %68 = call i32 @CVMX_GMXX_INF_MODE(i32 0)
  %69 = call i8* @cvmx_read_csr(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  store i8* %69, i8** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 15
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  store i32 -1, i32* %2, align 4
  br label %169

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 1, i32* %2, align 4
  br label %169

82:                                               ; preds = %76
  store i32 2, i32* %2, align 4
  br label %169

83:                                               ; preds = %64
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @CVMX_SRIOX_STATUS_REG(i32 %84)
  %86 = call i8* @cvmx_read_csr(i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  store i8* %86, i8** %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  store i32 4, i32* %2, align 4
  br label %169

93:                                               ; preds = %83
  store i32 3, i32* %2, align 4
  br label %169

94:                                               ; preds = %60
  %95 = load i32, i32* @OCTEON_CN61XX, align 4
  %96 = call i64 @OCTEON_IS_MODEL(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %133

98:                                               ; preds = %94
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @CVMX_MIO_QLMX_CFG(i32 %99)
  %101 = call i8* @cvmx_read_csr(i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  store i8* %101, i8** %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 15
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  store i32 -1, i32* %2, align 4
  br label %169

108:                                              ; preds = %98
  %109 = load i32, i32* %3, align 4
  switch i32 %109, label %132 [
    i32 0, label %110
    i32 1, label %118
    i32 2, label %125
  ]

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  switch i32 %113, label %117 [
    i32 0, label %114
    i32 2, label %115
    i32 3, label %116
  ]

114:                                              ; preds = %110
  store i32 3, i32* %2, align 4
  br label %169

115:                                              ; preds = %110
  store i32 1, i32* %2, align 4
  br label %169

116:                                              ; preds = %110
  store i32 2, i32* %2, align 4
  br label %169

117:                                              ; preds = %110
  store i32 -1, i32* %2, align 4
  br label %169

118:                                              ; preds = %108
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  switch i32 %121, label %124 [
    i32 0, label %122
    i32 1, label %123
  ]

122:                                              ; preds = %118
  store i32 7, i32* %2, align 4
  br label %169

123:                                              ; preds = %118
  store i32 8, i32* %2, align 4
  br label %169

124:                                              ; preds = %118
  store i32 -1, i32* %2, align 4
  br label %169

125:                                              ; preds = %108
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  switch i32 %128, label %131 [
    i32 2, label %129
    i32 3, label %130
  ]

129:                                              ; preds = %125
  store i32 1, i32* %2, align 4
  br label %169

130:                                              ; preds = %125
  store i32 2, i32* %2, align 4
  br label %169

131:                                              ; preds = %125
  store i32 -1, i32* %2, align 4
  br label %169

132:                                              ; preds = %108
  br label %165

133:                                              ; preds = %94
  %134 = load i32, i32* @OCTEON_CNF71XX, align 4
  %135 = call i64 @OCTEON_IS_MODEL(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %164

137:                                              ; preds = %133
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @CVMX_MIO_QLMX_CFG(i32 %138)
  %140 = call i8* @cvmx_read_csr(i32 %139)
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  store i8* %140, i8** %141, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %144, 15
  br i1 %145, label %146, label %147

146:                                              ; preds = %137
  store i32 -1, i32* %2, align 4
  br label %169

147:                                              ; preds = %137
  %148 = load i32, i32* %3, align 4
  switch i32 %148, label %163 [
    i32 0, label %149
    i32 1, label %156
  ]

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 2
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  store i32 1, i32* %2, align 4
  br label %169

155:                                              ; preds = %149
  br label %163

156:                                              ; preds = %147
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  switch i32 %159, label %162 [
    i32 0, label %160
    i32 1, label %161
  ]

160:                                              ; preds = %156
  store i32 7, i32* %2, align 4
  br label %169

161:                                              ; preds = %156
  store i32 8, i32* %2, align 4
  br label %169

162:                                              ; preds = %156
  store i32 -1, i32* %2, align 4
  br label %169

163:                                              ; preds = %147, %155
  br label %164

164:                                              ; preds = %163, %133
  br label %165

165:                                              ; preds = %164, %132
  br label %166

166:                                              ; preds = %165
  br label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %167
  store i32 -1, i32* %2, align 4
  br label %169

169:                                              ; preds = %168, %162, %161, %160, %154, %146, %131, %130, %129, %124, %123, %122, %117, %116, %115, %114, %107, %93, %92, %82, %81, %75, %59, %57, %52, %51, %50, %49, %48, %43, %29, %28, %27, %26, %25, %24, %19
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_MIO_QLMX_CFG(i32) #1

declare dso_local i32 @CVMX_GMXX_INF_MODE(i32) #1

declare dso_local i32 @CVMX_SRIOX_STATUS_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
