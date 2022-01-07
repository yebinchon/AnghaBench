; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pcie.c_cvmx_pcie_ep_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pcie.c_cvmx_pcie_ep_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_33__, i8* }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_32__ = type { %struct.TYPE_37__, i8* }
%struct.TYPE_37__ = type { i64, i32 }
%struct.TYPE_35__ = type { i8*, %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i32, i32, i32 }
%struct.TYPE_36__ = type { i8*, %struct.TYPE_39__ }
%struct.TYPE_39__ = type { i32, i32, i32 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_31__ = type { i8*, %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i8*, i8* }
%struct.TYPE_34__ = type { i8*, %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i32, i8*, i8* }
%struct.TYPE_26__ = type { i8*, %struct.TYPE_43__ }
%struct.TYPE_43__ = type { i8* }
%struct.TYPE_29__ = type { i8*, %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_27__ = type { i8*, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i32, i64, i64, i64, i64, i64 }

@OCTEON_FEATURE_NPEI = common dso_local global i32 0, align 4
@CVMX_PEXP_NPEI_CTL_STATUS = common dso_local global i32 0, align 4
@OCTEON_CN61XX = common dso_local global i32 0, align 4
@OCTEON_CN63XX_PASS1_0 = common dso_local global i32 0, align 4
@CVMX_CIU_QLM1 = common dso_local global i32 0, align 4
@CVMX_CIU_QLM0 = common dso_local global i32 0, align 4
@OCTEON_CN5XXX = common dso_local global i32 0, align 4
@MPS_CN5XXX = common dso_local global i8* null, align 8
@MRRS_CN5XXX = common dso_local global i8* null, align 8
@MPS_CN6XXX = common dso_local global i8* null, align 8
@MRRS_CN6XXX = common dso_local global i8* null, align 8
@CVMX_PEXP_NPEI_CTL_STATUS2 = common dso_local global i32 0, align 4
@OCTEON_CN68XX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_pcie_ep_initialize(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_30__, align 8
  %5 = alloca %struct.TYPE_32__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_35__, align 8
  %8 = alloca %struct.TYPE_36__, align 8
  %9 = alloca %struct.TYPE_28__, align 8
  %10 = alloca %struct.TYPE_31__, align 8
  %11 = alloca %struct.TYPE_34__, align 8
  %12 = alloca %struct.TYPE_26__, align 8
  %13 = alloca %struct.TYPE_29__, align 8
  %14 = alloca %struct.TYPE_27__, align 8
  store i32 %0, i32* %3, align 4
  %15 = load i32, i32* @OCTEON_FEATURE_NPEI, align 4
  %16 = call i64 @octeon_has_feature(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load i32, i32* @CVMX_PEXP_NPEI_CTL_STATUS, align 4
  %20 = call i8* @cvmx_read_csr(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %4, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %4, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %243

27:                                               ; preds = %18
  br label %52

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @CVMX_MIO_RST_CTLX(i32 %29)
  %31 = call i8* @cvmx_read_csr(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %5, i32 0, i32 1
  store i8* %31, i8** %32, align 8
  %33 = load i32, i32* @OCTEON_CN61XX, align 4
  %34 = call i64 @OCTEON_IS_MODEL(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %5, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i32
  br label %46

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %5, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  br label %46

46:                                               ; preds = %42, %36
  %47 = phi i32 [ %41, %36 ], [ %45, %42 ]
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 -1, i32* %2, align 4
  br label %243

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %27
  %53 = load i32, i32* @OCTEON_CN63XX_PASS1_0, align 4
  %54 = call i64 @OCTEON_IS_MODEL(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %88

56:                                               ; preds = %52
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load i32, i32* @CVMX_CIU_QLM1, align 4
  %61 = call i8* @cvmx_read_csr(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 0
  store i8* %61, i8** %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %65, i32 0, i32 1
  store i32 5, i32* %66, align 4
  %67 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %67, i32 0, i32 2
  store i32 23, i32* %68, align 8
  %69 = load i32, i32* @CVMX_CIU_QLM1, align 4
  %70 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @cvmx_write_csr(i32 %69, i8* %71)
  br label %87

73:                                               ; preds = %56
  %74 = load i32, i32* @CVMX_CIU_QLM0, align 4
  %75 = call i8* @cvmx_read_csr(i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %8, i32 0, i32 0
  store i8* %75, i8** %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %8, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %8, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %79, i32 0, i32 1
  store i32 5, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %8, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %81, i32 0, i32 2
  store i32 23, i32* %82, align 8
  %83 = load i32, i32* @CVMX_CIU_QLM0, align 4
  %84 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %8, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @cvmx_write_csr(i32 %83, i8* %85)
  br label %87

87:                                               ; preds = %73, %59
  br label %88

88:                                               ; preds = %87, %52
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @CVMX_PCIEEPX_CFG001(i32 %90)
  %92 = call i32 @cvmx_pcie_cfgx_write(i32 %89, i32 %91, i32 6)
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @CVMX_PCIEEPX_CFG030(i32 %94)
  %96 = call i32 @cvmx_pcie_cfgx_read(i32 %93, i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 0
  store i32 %96, i32* %97, align 8
  %98 = load i32, i32* @OCTEON_CN5XXX, align 4
  %99 = call i64 @OCTEON_IS_MODEL(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %88
  %102 = load i8*, i8** @MPS_CN5XXX, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %103, i32 0, i32 7
  store i8* %102, i8** %104, align 8
  %105 = load i8*, i8** @MRRS_CN5XXX, align 8
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %106, i32 0, i32 6
  store i8* %105, i8** %107, align 8
  br label %115

108:                                              ; preds = %88
  %109 = load i8*, i8** @MPS_CN6XXX, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %110, i32 0, i32 7
  store i8* %109, i8** %111, align 8
  %112 = load i8*, i8** @MRRS_CN6XXX, align 8
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %113, i32 0, i32 6
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %108, %101
  %116 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %118, i32 0, i32 1
  store i32 1, i32* %119, align 4
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %120, i32 0, i32 2
  store i32 1, i32* %121, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %122, i32 0, i32 3
  store i32 1, i32* %123, align 4
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %124, i32 0, i32 4
  store i32 1, i32* %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %126, i32 0, i32 5
  store i32 1, i32* %127, align 4
  %128 = load i32, i32* %3, align 4
  %129 = load i32, i32* %3, align 4
  %130 = call i32 @CVMX_PCIEEPX_CFG030(i32 %129)
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @cvmx_pcie_cfgx_write(i32 %128, i32 %130, i32 %132)
  %134 = load i32, i32* @OCTEON_FEATURE_NPEI, align 4
  %135 = call i64 @octeon_has_feature(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %115
  %138 = load i32, i32* @CVMX_PEXP_NPEI_CTL_STATUS2, align 4
  %139 = call i8* @cvmx_read_csr(i32 %138)
  %140 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  store i8* %139, i8** %140, align 8
  %141 = load i8*, i8** @MPS_CN5XXX, align 8
  %142 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %142, i32 0, i32 1
  store i8* %141, i8** %143, align 8
  %144 = load i8*, i8** @MRRS_CN5XXX, align 8
  %145 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %145, i32 0, i32 0
  store i8* %144, i8** %146, align 8
  %147 = load i32, i32* @CVMX_PEXP_NPEI_CTL_STATUS2, align 4
  %148 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @cvmx_write_csr(i32 %147, i8* %149)
  br label %181

151:                                              ; preds = %115
  %152 = load i32, i32* %3, align 4
  %153 = call i32 @CVMX_DPI_SLI_PRTX_CFG(i32 %152)
  %154 = call i8* @cvmx_read_csr(i32 %153)
  %155 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  store i8* %154, i8** %155, align 8
  %156 = load i8*, i8** @MPS_CN6XXX, align 8
  %157 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %157, i32 0, i32 2
  store i8* %156, i8** %158, align 8
  %159 = load i8*, i8** @MRRS_CN6XXX, align 8
  %160 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  %162 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %162, i32 0, i32 0
  store i32 32, i32* %163, align 8
  %164 = load i32, i32* %3, align 4
  %165 = call i32 @CVMX_DPI_SLI_PRTX_CFG(i32 %164)
  %166 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @cvmx_write_csr(i32 %165, i8* %167)
  %169 = load i32, i32* %3, align 4
  %170 = call i32 @CVMX_PEXP_SLI_S2M_PORTX_CTL(i32 %169)
  %171 = call i8* @cvmx_read_csr(i32 %170)
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 0
  store i8* %171, i8** %172, align 8
  %173 = load i8*, i8** @MRRS_CN6XXX, align 8
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %174, i32 0, i32 0
  store i8* %173, i8** %175, align 8
  %176 = load i32, i32* %3, align 4
  %177 = call i32 @CVMX_PEXP_SLI_S2M_PORTX_CTL(i32 %176)
  %178 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @cvmx_write_csr(i32 %177, i8* %179)
  br label %181

181:                                              ; preds = %151, %137
  %182 = load i32, i32* @OCTEON_FEATURE_NPEI, align 4
  %183 = call i64 @octeon_has_feature(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %210

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  store i8* null, i8** %186, align 8
  %187 = load i32, i32* %3, align 4
  %188 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %190, i32 0, i32 1
  store i32 1, i32* %191, align 4
  %192 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %192, i32 0, i32 8
  store i64 0, i64* %193, align 8
  %194 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %194, i32 0, i32 7
  store i64 0, i64* %195, align 8
  %196 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %196, i32 0, i32 6
  store i64 0, i64* %197, align 8
  %198 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %198, i32 0, i32 5
  store i64 0, i64* %199, align 8
  %200 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %200, i32 0, i32 4
  store i64 0, i64* %201, align 8
  %202 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %202, i32 0, i32 3
  store i64 0, i64* %203, align 8
  %204 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %204, i32 0, i32 2
  store i64 0, i64* %205, align 8
  %206 = call i32 @CVMX_PEXP_NPEI_MEM_ACCESS_SUBIDX(i32 12)
  %207 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 @cvmx_write_csr(i32 %206, i8* %208)
  br label %242

210:                                              ; preds = %181
  %211 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 0
  store i8* null, i8** %211, align 8
  %212 = load i32, i32* %3, align 4
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 8
  %215 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %215, i32 0, i32 5
  store i64 0, i64* %216, align 8
  %217 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 4
  store i64 0, i64* %218, align 8
  %219 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 3
  store i64 0, i64* %220, align 8
  %221 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %221, i32 0, i32 2
  store i64 0, i64* %222, align 8
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 1
  store i64 0, i64* %224, align 8
  %225 = load i32, i32* @OCTEON_CN68XX, align 4
  %226 = call i64 @OCTEON_IS_MODEL(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %210
  %229 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %229, i32 0, i32 0
  store i64 0, i64* %230, align 8
  br label %234

231:                                              ; preds = %210
  %232 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %232, i32 0, i32 0
  store i64 0, i64* %233, align 8
  br label %234

234:                                              ; preds = %231, %228
  %235 = load i32, i32* %3, align 4
  %236 = mul nsw i32 %235, 4
  %237 = add nsw i32 12, %236
  %238 = call i32 @CVMX_PEXP_SLI_MEM_ACCESS_SUBIDX(i32 %237)
  %239 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @cvmx_write_csr(i32 %238, i8* %240)
  br label %242

242:                                              ; preds = %234, %185
  store i32 0, i32* %2, align 4
  br label %243

243:                                              ; preds = %242, %50, %26
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local i64 @octeon_has_feature(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_MIO_RST_CTLX(i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @cvmx_pcie_cfgx_write(i32, i32, i32) #1

declare dso_local i32 @CVMX_PCIEEPX_CFG001(i32) #1

declare dso_local i32 @cvmx_pcie_cfgx_read(i32, i32) #1

declare dso_local i32 @CVMX_PCIEEPX_CFG030(i32) #1

declare dso_local i32 @CVMX_DPI_SLI_PRTX_CFG(i32) #1

declare dso_local i32 @CVMX_PEXP_SLI_S2M_PORTX_CTL(i32) #1

declare dso_local i32 @CVMX_PEXP_NPEI_MEM_ACCESS_SUBIDX(i32) #1

declare dso_local i32 @CVMX_PEXP_SLI_MEM_ACCESS_SUBIDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
