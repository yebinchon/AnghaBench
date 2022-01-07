; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pcie.c___cvmx_pcie_rc_initialize_config_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pcie.c___cvmx_pcie_rc_initialize_config_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_44__ = type { i8*, %struct.TYPE_55__ }
%struct.TYPE_55__ = type { i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_51__ = type { i8*, %struct.TYPE_56__ }
%struct.TYPE_56__ = type { i32, i32, i8*, i8* }
%struct.TYPE_53__ = type { i8*, %struct.TYPE_57__ }
%struct.TYPE_57__ = type { i32, i8*, i8* }
%struct.TYPE_37__ = type { i8*, %struct.TYPE_58__ }
%struct.TYPE_58__ = type { i8* }
%struct.TYPE_39__ = type { i8*, %struct.TYPE_59__ }
%struct.TYPE_59__ = type { i32, i32 }
%struct.TYPE_50__ = type { i8*, %struct.TYPE_60__ }
%struct.TYPE_60__ = type { i32, i32, i32, i32 }
%struct.TYPE_43__ = type { i8*, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_49__ = type { i8*, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32, i32, i32 }
%struct.TYPE_48__ = type { i8*, %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32, i64 }
%struct.TYPE_47__ = type { i8*, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32, i64 }
%struct.TYPE_46__ = type { i8*, %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_45__ = type { i8*, %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i64 }
%struct.TYPE_40__ = type { i8*, %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i32, i32, i32, i32 }
%struct.TYPE_38__ = type { i8*, %struct.TYPE_52__ }
%struct.TYPE_52__ = type { i32, i32, i32 }
%struct.TYPE_42__ = type { i8*, %struct.TYPE_54__ }
%struct.TYPE_54__ = type { i32, i32, i32 }

@OCTEON_CN5XXX = common dso_local global i32 0, align 4
@MPS_CN5XXX = common dso_local global i8* null, align 8
@MRRS_CN5XXX = common dso_local global i8* null, align 8
@MPS_CN6XXX = common dso_local global i8* null, align 8
@MRRS_CN6XXX = common dso_local global i8* null, align 8
@OCTEON_FEATURE_NPEI = common dso_local global i32 0, align 4
@CVMX_PEXP_NPEI_CTL_STATUS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @__cvmx_pcie_rc_initialize_config_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cvmx_pcie_rc_initialize_config_space(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_44__, align 8
  %4 = alloca %struct.TYPE_51__, align 8
  %5 = alloca %struct.TYPE_53__, align 8
  %6 = alloca %struct.TYPE_37__, align 8
  %7 = alloca %struct.TYPE_39__, align 8
  %8 = alloca %struct.TYPE_50__, align 8
  %9 = alloca %struct.TYPE_43__, align 8
  %10 = alloca %struct.TYPE_49__, align 8
  %11 = alloca %struct.TYPE_48__, align 8
  %12 = alloca %struct.TYPE_47__, align 8
  %13 = alloca %struct.TYPE_46__, align 8
  %14 = alloca %struct.TYPE_45__, align 8
  %15 = alloca %struct.TYPE_40__, align 8
  %16 = alloca %struct.TYPE_38__, align 8
  %17 = alloca %struct.TYPE_42__, align 8
  store i32 %0, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @CVMX_PCIERCX_CFG030(i32 %19)
  %21 = call i8* @cvmx_pcie_cfgx_read(i32 %18, i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %3, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* @OCTEON_CN5XXX, align 4
  %24 = call i64 @OCTEON_IS_MODEL(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load i8*, i8** @MPS_CN5XXX, align 8
  %28 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %3, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %28, i32 0, i32 7
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @MRRS_CN5XXX, align 8
  %31 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %3, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %31, i32 0, i32 6
  store i8* %30, i8** %32, align 8
  br label %40

33:                                               ; preds = %1
  %34 = load i8*, i8** @MPS_CN6XXX, align 8
  %35 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %3, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @MRRS_CN6XXX, align 8
  %38 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %3, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %33, %26
  %41 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %3, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %3, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %3, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %45, i32 0, i32 2
  store i32 1, i32* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %3, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %47, i32 0, i32 3
  store i32 1, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %3, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %49, i32 0, i32 4
  store i32 1, i32* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %3, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %51, i32 0, i32 5
  store i32 1, i32* %52, align 4
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @CVMX_PCIERCX_CFG030(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %3, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @cvmx_pcie_cfgx_write(i32 %53, i32 %55, i8* %57)
  %59 = load i32, i32* @OCTEON_FEATURE_NPEI, align 4
  %60 = call i64 @octeon_has_feature(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %40
  %63 = load i32, i32* @CVMX_PEXP_NPEI_CTL_STATUS2, align 4
  %64 = call i8* @cvmx_read_csr(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %4, i32 0, i32 0
  store i8* %64, i8** %65, align 8
  %66 = load i8*, i8** @MPS_CN5XXX, align 8
  %67 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %4, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** @MRRS_CN5XXX, align 8
  %70 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %4, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* %2, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %4, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %75, i32 0, i32 0
  store i32 3, i32* %76, align 8
  br label %80

77:                                               ; preds = %62
  %78 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %4, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %78, i32 0, i32 1
  store i32 3, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* @CVMX_PEXP_NPEI_CTL_STATUS2, align 4
  %82 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %4, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @cvmx_write_csr(i32 %81, i8* %83)
  br label %115

85:                                               ; preds = %40
  %86 = load i32, i32* %2, align 4
  %87 = call i32 @CVMX_DPI_SLI_PRTX_CFG(i32 %86)
  %88 = call i8* @cvmx_read_csr(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %5, i32 0, i32 0
  store i8* %88, i8** %89, align 8
  %90 = load i8*, i8** @MPS_CN6XXX, align 8
  %91 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %5, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** @MRRS_CN6XXX, align 8
  %94 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %5, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %5, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %96, i32 0, i32 0
  store i32 32, i32* %97, align 8
  %98 = load i32, i32* %2, align 4
  %99 = call i32 @CVMX_DPI_SLI_PRTX_CFG(i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %5, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @cvmx_write_csr(i32 %99, i8* %101)
  %103 = load i32, i32* %2, align 4
  %104 = call i32 @CVMX_PEXP_SLI_S2M_PORTX_CTL(i32 %103)
  %105 = call i8* @cvmx_read_csr(i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %6, i32 0, i32 0
  store i8* %105, i8** %106, align 8
  %107 = load i8*, i8** @MRRS_CN6XXX, align 8
  %108 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %6, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %108, i32 0, i32 0
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* %2, align 4
  %111 = call i32 @CVMX_PEXP_SLI_S2M_PORTX_CTL(i32 %110)
  %112 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %6, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @cvmx_write_csr(i32 %111, i8* %113)
  br label %115

115:                                              ; preds = %85, %80
  %116 = load i32, i32* %2, align 4
  %117 = load i32, i32* %2, align 4
  %118 = call i32 @CVMX_PCIERCX_CFG070(i32 %117)
  %119 = call i8* @cvmx_pcie_cfgx_read(i32 %116, i32 %118)
  %120 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %7, i32 0, i32 0
  store i8* %119, i8** %120, align 8
  %121 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %7, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %7, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %123, i32 0, i32 1
  store i32 1, i32* %124, align 4
  %125 = load i32, i32* %2, align 4
  %126 = load i32, i32* %2, align 4
  %127 = call i32 @CVMX_PCIERCX_CFG070(i32 %126)
  %128 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %7, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @cvmx_pcie_cfgx_write(i32 %125, i32 %127, i8* %129)
  %131 = load i32, i32* %2, align 4
  %132 = load i32, i32* %2, align 4
  %133 = call i32 @CVMX_PCIERCX_CFG001(i32 %132)
  %134 = call i8* @cvmx_pcie_cfgx_read(i32 %131, i32 %133)
  %135 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %8, i32 0, i32 0
  store i8* %134, i8** %135, align 8
  %136 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %8, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  %138 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %8, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %138, i32 0, i32 1
  store i32 1, i32* %139, align 4
  %140 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %8, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %140, i32 0, i32 2
  store i32 1, i32* %141, align 8
  %142 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %8, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %142, i32 0, i32 3
  store i32 1, i32* %143, align 4
  %144 = load i32, i32* %2, align 4
  %145 = load i32, i32* %2, align 4
  %146 = call i32 @CVMX_PCIERCX_CFG001(i32 %145)
  %147 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %8, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @cvmx_pcie_cfgx_write(i32 %144, i32 %146, i8* %148)
  %150 = load i32, i32* %2, align 4
  %151 = load i32, i32* %2, align 4
  %152 = call i32 @CVMX_PCIERCX_CFG066(i32 %151)
  %153 = call i32 @cvmx_pcie_cfgx_write(i32 %150, i32 %152, i8* null)
  %154 = load i32, i32* %2, align 4
  %155 = load i32, i32* %2, align 4
  %156 = call i32 @CVMX_PCIERCX_CFG069(i32 %155)
  %157 = call i32 @cvmx_pcie_cfgx_write(i32 %154, i32 %156, i8* null)
  %158 = load i32, i32* %2, align 4
  %159 = load i32, i32* %2, align 4
  %160 = call i32 @CVMX_PCIERCX_CFG032(i32 %159)
  %161 = call i8* @cvmx_pcie_cfgx_read(i32 %158, i32 %160)
  %162 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %9, i32 0, i32 0
  store i8* %161, i8** %162, align 8
  %163 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %9, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %163, i32 0, i32 0
  store i64 0, i64* %164, align 8
  %165 = load i32, i32* %2, align 4
  %166 = load i32, i32* %2, align 4
  %167 = call i32 @CVMX_PCIERCX_CFG032(i32 %166)
  %168 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %9, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @cvmx_pcie_cfgx_write(i32 %165, i32 %167, i8* %169)
  %171 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %10, i32 0, i32 0
  store i8* null, i8** %171, align 8
  %172 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %10, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %172, i32 0, i32 0
  store i32 1, i32* %173, align 8
  %174 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %10, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %174, i32 0, i32 1
  store i32 1, i32* %175, align 4
  %176 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %10, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %176, i32 0, i32 2
  store i32 1, i32* %177, align 8
  %178 = load i32, i32* %2, align 4
  %179 = load i32, i32* %2, align 4
  %180 = call i32 @CVMX_PCIERCX_CFG006(i32 %179)
  %181 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %10, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @cvmx_pcie_cfgx_write(i32 %178, i32 %180, i8* %182)
  %184 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %11, i32 0, i32 0
  store i8* null, i8** %184, align 8
  %185 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %11, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %185, i32 0, i32 0
  store i32 256, i32* %186, align 8
  %187 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %11, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %187, i32 0, i32 1
  store i64 0, i64* %188, align 8
  %189 = load i32, i32* %2, align 4
  %190 = load i32, i32* %2, align 4
  %191 = call i32 @CVMX_PCIERCX_CFG008(i32 %190)
  %192 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %11, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @cvmx_pcie_cfgx_write(i32 %189, i32 %191, i8* %193)
  %195 = load i32, i32* %2, align 4
  %196 = load i32, i32* %2, align 4
  %197 = call i32 @CVMX_PCIERCX_CFG009(i32 %196)
  %198 = call i8* @cvmx_pcie_cfgx_read(i32 %195, i32 %197)
  %199 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %12, i32 0, i32 0
  store i8* %198, i8** %199, align 8
  %200 = load i32, i32* %2, align 4
  %201 = load i32, i32* %2, align 4
  %202 = call i32 @CVMX_PCIERCX_CFG010(i32 %201)
  %203 = call i8* @cvmx_pcie_cfgx_read(i32 %200, i32 %202)
  %204 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %13, i32 0, i32 0
  store i8* %203, i8** %204, align 8
  %205 = load i32, i32* %2, align 4
  %206 = load i32, i32* %2, align 4
  %207 = call i32 @CVMX_PCIERCX_CFG011(i32 %206)
  %208 = call i8* @cvmx_pcie_cfgx_read(i32 %205, i32 %207)
  %209 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 0
  store i8* %208, i8** %209, align 8
  %210 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %12, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %210, i32 0, i32 0
  store i32 256, i32* %211, align 8
  %212 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %12, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %212, i32 0, i32 1
  store i64 0, i64* %213, align 8
  %214 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %13, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %214, i32 0, i32 0
  store i32 256, i32* %215, align 8
  %216 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %216, i32 0, i32 0
  store i64 0, i64* %217, align 8
  %218 = load i32, i32* %2, align 4
  %219 = load i32, i32* %2, align 4
  %220 = call i32 @CVMX_PCIERCX_CFG009(i32 %219)
  %221 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %12, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @cvmx_pcie_cfgx_write(i32 %218, i32 %220, i8* %222)
  %224 = load i32, i32* %2, align 4
  %225 = load i32, i32* %2, align 4
  %226 = call i32 @CVMX_PCIERCX_CFG010(i32 %225)
  %227 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %13, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 @cvmx_pcie_cfgx_write(i32 %224, i32 %226, i8* %228)
  %230 = load i32, i32* %2, align 4
  %231 = load i32, i32* %2, align 4
  %232 = call i32 @CVMX_PCIERCX_CFG011(i32 %231)
  %233 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %14, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 @cvmx_pcie_cfgx_write(i32 %230, i32 %232, i8* %234)
  %236 = load i32, i32* %2, align 4
  %237 = load i32, i32* %2, align 4
  %238 = call i32 @CVMX_PCIERCX_CFG035(i32 %237)
  %239 = call i8* @cvmx_pcie_cfgx_read(i32 %236, i32 %238)
  %240 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %15, i32 0, i32 0
  store i8* %239, i8** %240, align 8
  %241 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %15, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %241, i32 0, i32 0
  store i32 1, i32* %242, align 8
  %243 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %15, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %243, i32 0, i32 1
  store i32 1, i32* %244, align 4
  %245 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %15, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %245, i32 0, i32 2
  store i32 1, i32* %246, align 8
  %247 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %15, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %247, i32 0, i32 3
  store i32 1, i32* %248, align 4
  %249 = load i32, i32* %2, align 4
  %250 = load i32, i32* %2, align 4
  %251 = call i32 @CVMX_PCIERCX_CFG035(i32 %250)
  %252 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %15, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = call i32 @cvmx_pcie_cfgx_write(i32 %249, i32 %251, i8* %253)
  %255 = load i32, i32* %2, align 4
  %256 = load i32, i32* %2, align 4
  %257 = call i32 @CVMX_PCIERCX_CFG075(i32 %256)
  %258 = call i8* @cvmx_pcie_cfgx_read(i32 %255, i32 %257)
  %259 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %16, i32 0, i32 0
  store i8* %258, i8** %259, align 8
  %260 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %16, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %260, i32 0, i32 0
  store i32 1, i32* %261, align 8
  %262 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %16, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %262, i32 0, i32 1
  store i32 1, i32* %263, align 4
  %264 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %16, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %264, i32 0, i32 2
  store i32 1, i32* %265, align 8
  %266 = load i32, i32* %2, align 4
  %267 = load i32, i32* %2, align 4
  %268 = call i32 @CVMX_PCIERCX_CFG075(i32 %267)
  %269 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %16, i32 0, i32 0
  %270 = load i8*, i8** %269, align 8
  %271 = call i32 @cvmx_pcie_cfgx_write(i32 %266, i32 %268, i8* %270)
  %272 = load i32, i32* %2, align 4
  %273 = load i32, i32* %2, align 4
  %274 = call i32 @CVMX_PCIERCX_CFG034(i32 %273)
  %275 = call i8* @cvmx_pcie_cfgx_read(i32 %272, i32 %274)
  %276 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %17, i32 0, i32 0
  store i8* %275, i8** %276, align 8
  %277 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %17, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %277, i32 0, i32 0
  store i32 1, i32* %278, align 8
  %279 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %17, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %279, i32 0, i32 1
  store i32 1, i32* %280, align 4
  %281 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %17, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %281, i32 0, i32 2
  store i32 1, i32* %282, align 8
  %283 = load i32, i32* %2, align 4
  %284 = load i32, i32* %2, align 4
  %285 = call i32 @CVMX_PCIERCX_CFG034(i32 %284)
  %286 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %17, i32 0, i32 0
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 @cvmx_pcie_cfgx_write(i32 %283, i32 %285, i8* %287)
  ret void
}

declare dso_local i8* @cvmx_pcie_cfgx_read(i32, i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG030(i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_pcie_cfgx_write(i32, i32, i8*) #1

declare dso_local i64 @octeon_has_feature(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @CVMX_DPI_SLI_PRTX_CFG(i32) #1

declare dso_local i32 @CVMX_PEXP_SLI_S2M_PORTX_CTL(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG070(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG001(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG066(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG069(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG032(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG006(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG008(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG009(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG010(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG011(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG035(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG075(i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG034(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
