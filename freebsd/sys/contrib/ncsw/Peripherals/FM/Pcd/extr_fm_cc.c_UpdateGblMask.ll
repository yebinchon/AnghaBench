; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_UpdateGblMask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_UpdateGblMask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i8*, i32, i64, i32, i8* }

@CC_PC_FF_TCI1 = common dso_local global i64 0, align 8
@CC_PC_FF_TCI2 = common dso_local global i64 0, align 8
@CC_PC_FF_MPLS1 = common dso_local global i64 0, align 8
@CC_PC_FF_MPLS_LAST = common dso_local global i64 0, align 8
@CC_PC_FF_IPV4IPTOS_TC1 = common dso_local global i64 0, align 8
@CC_PC_FF_IPV4IPTOS_TC2 = common dso_local global i64 0, align 8
@CC_PC_FF_IPTOS_IPV6TC1_IPV6FLOW1 = common dso_local global i64 0, align 8
@CC_PC_FF_IPDSCP = common dso_local global i64 0, align 8
@CC_PC_FF_IPTOS_IPV6TC2_IPV6FLOW2 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@E_NOT_SUPPORTED = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32*)* @UpdateGblMask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UpdateGblMask(%struct.TYPE_3__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %109

15:                                               ; preds = %3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 6
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %109, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = icmp sle i32 %21, 4
  br i1 %22, label %23, label %109

23:                                               ; preds = %20
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %109, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %93

33:                                               ; preds = %28
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CC_PC_FF_TCI1, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %93

39:                                               ; preds = %33
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CC_PC_FF_TCI2, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %93

45:                                               ; preds = %39
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CC_PC_FF_MPLS1, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %93

51:                                               ; preds = %45
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CC_PC_FF_MPLS_LAST, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %93

57:                                               ; preds = %51
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CC_PC_FF_IPV4IPTOS_TC1, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %93

63:                                               ; preds = %57
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CC_PC_FF_IPV4IPTOS_TC2, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %63
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CC_PC_FF_IPTOS_IPV6TC1_IPV6FLOW1, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %69
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CC_PC_FF_IPDSCP, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %75
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CC_PC_FF_IPTOS_IPV6TC2_IPV6FLOW2, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  %90 = load i8*, i8** @TRUE, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  br label %108

93:                                               ; preds = %81, %75, %69, %63, %57, %51, %45, %39, %33, %28
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 4, %99
  %101 = trunc i64 %100 to i32
  %102 = call i32 @memcpy(i32 %96, i32* %97, i32 %101)
  %103 = load i8*, i8** @TRUE, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 6
  store i8* %103, i8** %105, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store i32 4, i32* %107, align 8
  br label %108

108:                                              ; preds = %93, %87
  br label %171

109:                                              ; preds = %23, %20, %15, %3
  %110 = load i32*, i32** %7, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %135

112:                                              ; preds = %109
  %113 = load i32, i32* %6, align 4
  %114 = icmp sle i32 %113, 4
  br i1 %114, label %115, label %135

115:                                              ; preds = %112
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %135, label %120

120:                                              ; preds = %115
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* %6, align 4
  %126 = call i64 @memcmp(i32 %123, i32* %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %120
  %129 = load i8*, i8** @TRUE, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  store i8* %129, i8** %131, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  br label %134

134:                                              ; preds = %128, %120
  br label %170

135:                                              ; preds = %115, %112, %109
  %136 = load i32*, i32** %7, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %159, label %138

138:                                              ; preds = %135
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 6
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %159

143:                                              ; preds = %138
  %144 = load i32, i32* %6, align 4
  %145 = icmp sle i32 %144, 4
  br i1 %145, label %146, label %159

146:                                              ; preds = %143
  store i32 -1, i32* %9, align 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @memcmp(i32 %149, i32* %9, i32 4)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %146
  %153 = load i8*, i8** @TRUE, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  store i32 0, i32* %157, align 8
  br label %158

158:                                              ; preds = %152, %146
  br label %169

159:                                              ; preds = %143, %138, %135
  %160 = load i32*, i32** %7, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load i8*, i8** @TRUE, align 8
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 2
  store i8* %163, i8** %165, align 8
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  store i32 0, i32* %167, align 8
  br label %168

168:                                              ; preds = %162, %159
  br label %169

169:                                              ; preds = %168, %158
  br label %170

170:                                              ; preds = %169, %134
  br label %171

171:                                              ; preds = %170, %108
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %195

176:                                              ; preds = %171
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %195, label %181

181:                                              ; preds = %176
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 2
  %184 = load i8*, i8** %183, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %195

186:                                              ; preds = %181
  %187 = load i8*, i8** @FALSE, align 8
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 2
  store i8* %187, i8** %189, align 8
  %190 = load i32, i32* %8, align 4
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  %193 = load i32, i32* @E_NOT_SUPPORTED, align 4
  %194 = call i32 @ERROR_CODE(i32 %193)
  store i32 %194, i32* %4, align 4
  br label %197

195:                                              ; preds = %181, %176, %171
  %196 = load i32, i32* @E_OK, align 4
  store i32 %196, i32* %4, align 4
  br label %197

197:                                              ; preds = %195, %186
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @ERROR_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
