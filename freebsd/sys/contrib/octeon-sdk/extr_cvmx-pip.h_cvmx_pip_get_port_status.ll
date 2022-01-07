; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pip.h_cvmx_pip_get_port_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pip.h_cvmx_pip_get_port_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_60__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_46__ = type { i64, %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_59__ = type { %struct.TYPE_45__, i8* }
%struct.TYPE_45__ = type { i32, i32 }
%struct.TYPE_55__ = type { %struct.TYPE_56__, i8* }
%struct.TYPE_56__ = type { i32 }
%struct.TYPE_54__ = type { %struct.TYPE_61__, i8* }
%struct.TYPE_61__ = type { i32, i32 }
%struct.TYPE_53__ = type { %struct.TYPE_62__, i8* }
%struct.TYPE_62__ = type { i32, i32 }
%struct.TYPE_52__ = type { %struct.TYPE_63__, i8* }
%struct.TYPE_63__ = type { i32, i32 }
%struct.TYPE_51__ = type { %struct.TYPE_64__, i8* }
%struct.TYPE_64__ = type { i32, i32 }
%struct.TYPE_50__ = type { %struct.TYPE_65__, i8* }
%struct.TYPE_65__ = type { i32, i32 }
%struct.TYPE_49__ = type { %struct.TYPE_66__, i8* }
%struct.TYPE_66__ = type { i32, i32 }
%struct.TYPE_48__ = type { %struct.TYPE_67__, i8* }
%struct.TYPE_67__ = type { i32, i32 }
%struct.TYPE_47__ = type { %struct.TYPE_35__, i8* }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_58__ = type { %struct.TYPE_36__, i8* }
%struct.TYPE_36__ = type { i32, i32 }
%struct.TYPE_57__ = type { %struct.TYPE_37__, i8* }
%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_42__ = type { %struct.TYPE_38__, i8* }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_43__ = type { %struct.TYPE_39__, i8* }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_44__ = type { %struct.TYPE_40__, i8* }
%struct.TYPE_40__ = type { i32 }

@CVMX_PIP_STAT_CTL = common dso_local global i32 0, align 4
@OCTEON_FEATURE_PKND = common dso_local global i32 0, align 4
@OCTEON_CN6XXX = common dso_local global i32 0, align 4
@OCTEON_CN52XX = common dso_local global i32 0, align 4
@OCTEON_CN56XX = common dso_local global i32 0, align 4
@OCTEON_CNF7XXX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_60__*)* @cvmx_pip_get_port_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_pip_get_port_status(i32 %0, i32 %1, %struct.TYPE_60__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_60__*, align 8
  %7 = alloca %struct.TYPE_46__, align 8
  %8 = alloca %struct.TYPE_59__, align 8
  %9 = alloca %struct.TYPE_55__, align 8
  %10 = alloca %struct.TYPE_54__, align 8
  %11 = alloca %struct.TYPE_53__, align 8
  %12 = alloca %struct.TYPE_52__, align 8
  %13 = alloca %struct.TYPE_51__, align 8
  %14 = alloca %struct.TYPE_50__, align 8
  %15 = alloca %struct.TYPE_49__, align 8
  %16 = alloca %struct.TYPE_48__, align 8
  %17 = alloca %struct.TYPE_47__, align 8
  %18 = alloca %struct.TYPE_58__, align 8
  %19 = alloca %struct.TYPE_57__, align 8
  %20 = alloca %struct.TYPE_42__, align 8
  %21 = alloca %struct.TYPE_43__, align 8
  %22 = alloca %struct.TYPE_44__, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_60__* %2, %struct.TYPE_60__** %6, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @cvmx_helper_get_interface_num(i32 %27)
  store i32 %28, i32* %23, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @cvmx_helper_get_interface_index_num(i32 %29)
  store i32 %30, i32* %24, align 4
  %31 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @CVMX_PIP_STAT_CTL, align 4
  %36 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %7, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @cvmx_write_csr(i32 %35, i64 %37)
  %39 = load i32, i32* @OCTEON_FEATURE_PKND, align 4
  %40 = call i64 @octeon_has_feature(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %94

42:                                               ; preds = %3
  %43 = load i32, i32* %23, align 4
  %44 = load i32, i32* %24, align 4
  %45 = call i32 @cvmx_helper_get_pknd(i32 %43, i32 %44)
  store i32 %45, i32* %25, align 4
  %46 = load i32, i32* %25, align 4
  %47 = call i32 @CVMX_PIP_STAT0_X(i32 %46)
  %48 = call i8* @cvmx_read_csr(i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %8, i32 0, i32 1
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* %25, align 4
  %51 = call i32 @CVMX_PIP_STAT1_X(i32 %50)
  %52 = call i8* @cvmx_read_csr(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %9, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  %54 = load i32, i32* %25, align 4
  %55 = call i32 @CVMX_PIP_STAT2_X(i32 %54)
  %56 = call i8* @cvmx_read_csr(i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %10, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = load i32, i32* %25, align 4
  %59 = call i32 @CVMX_PIP_STAT3_X(i32 %58)
  %60 = call i8* @cvmx_read_csr(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %11, i32 0, i32 1
  store i8* %60, i8** %61, align 8
  %62 = load i32, i32* %25, align 4
  %63 = call i32 @CVMX_PIP_STAT4_X(i32 %62)
  %64 = call i8* @cvmx_read_csr(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %12, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  %66 = load i32, i32* %25, align 4
  %67 = call i32 @CVMX_PIP_STAT5_X(i32 %66)
  %68 = call i8* @cvmx_read_csr(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %13, i32 0, i32 1
  store i8* %68, i8** %69, align 8
  %70 = load i32, i32* %25, align 4
  %71 = call i32 @CVMX_PIP_STAT6_X(i32 %70)
  %72 = call i8* @cvmx_read_csr(i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %14, i32 0, i32 1
  store i8* %72, i8** %73, align 8
  %74 = load i32, i32* %25, align 4
  %75 = call i32 @CVMX_PIP_STAT7_X(i32 %74)
  %76 = call i8* @cvmx_read_csr(i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %15, i32 0, i32 1
  store i8* %76, i8** %77, align 8
  %78 = load i32, i32* %25, align 4
  %79 = call i32 @CVMX_PIP_STAT8_X(i32 %78)
  %80 = call i8* @cvmx_read_csr(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %16, i32 0, i32 1
  store i8* %80, i8** %81, align 8
  %82 = load i32, i32* %25, align 4
  %83 = call i32 @CVMX_PIP_STAT9_X(i32 %82)
  %84 = call i8* @cvmx_read_csr(i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %17, i32 0, i32 1
  store i8* %84, i8** %85, align 8
  %86 = load i32, i32* %25, align 4
  %87 = call i32 @CVMX_PIP_STAT10_X(i32 %86)
  %88 = call i8* @cvmx_read_csr(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %18, i32 0, i32 1
  store i8* %88, i8** %89, align 8
  %90 = load i32, i32* %25, align 4
  %91 = call i32 @CVMX_PIP_STAT11_X(i32 %90)
  %92 = call i8* @cvmx_read_csr(i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %19, i32 0, i32 1
  store i8* %92, i8** %93, align 8
  br label %218

94:                                               ; preds = %3
  %95 = load i32, i32* %4, align 4
  %96 = icmp sge i32 %95, 40
  br i1 %96, label %97, label %151

97:                                               ; preds = %94
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @CVMX_PIP_XSTAT0_PRTX(i32 %98)
  %100 = call i8* @cvmx_read_csr(i32 %99)
  %101 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %8, i32 0, i32 1
  store i8* %100, i8** %101, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @CVMX_PIP_XSTAT1_PRTX(i32 %102)
  %104 = call i8* @cvmx_read_csr(i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %9, i32 0, i32 1
  store i8* %104, i8** %105, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @CVMX_PIP_XSTAT2_PRTX(i32 %106)
  %108 = call i8* @cvmx_read_csr(i32 %107)
  %109 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %10, i32 0, i32 1
  store i8* %108, i8** %109, align 8
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @CVMX_PIP_XSTAT3_PRTX(i32 %110)
  %112 = call i8* @cvmx_read_csr(i32 %111)
  %113 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %11, i32 0, i32 1
  store i8* %112, i8** %113, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @CVMX_PIP_XSTAT4_PRTX(i32 %114)
  %116 = call i8* @cvmx_read_csr(i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %12, i32 0, i32 1
  store i8* %116, i8** %117, align 8
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @CVMX_PIP_XSTAT5_PRTX(i32 %118)
  %120 = call i8* @cvmx_read_csr(i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %13, i32 0, i32 1
  store i8* %120, i8** %121, align 8
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @CVMX_PIP_XSTAT6_PRTX(i32 %122)
  %124 = call i8* @cvmx_read_csr(i32 %123)
  %125 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %14, i32 0, i32 1
  store i8* %124, i8** %125, align 8
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @CVMX_PIP_XSTAT7_PRTX(i32 %126)
  %128 = call i8* @cvmx_read_csr(i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %15, i32 0, i32 1
  store i8* %128, i8** %129, align 8
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @CVMX_PIP_XSTAT8_PRTX(i32 %130)
  %132 = call i8* @cvmx_read_csr(i32 %131)
  %133 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %16, i32 0, i32 1
  store i8* %132, i8** %133, align 8
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @CVMX_PIP_XSTAT9_PRTX(i32 %134)
  %136 = call i8* @cvmx_read_csr(i32 %135)
  %137 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %17, i32 0, i32 1
  store i8* %136, i8** %137, align 8
  %138 = load i32, i32* @OCTEON_CN6XXX, align 4
  %139 = call i64 @OCTEON_IS_MODEL(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %97
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @CVMX_PIP_XSTAT10_PRTX(i32 %142)
  %144 = call i8* @cvmx_read_csr(i32 %143)
  %145 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %18, i32 0, i32 1
  store i8* %144, i8** %145, align 8
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @CVMX_PIP_XSTAT11_PRTX(i32 %146)
  %148 = call i8* @cvmx_read_csr(i32 %147)
  %149 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %19, i32 0, i32 1
  store i8* %148, i8** %149, align 8
  br label %150

150:                                              ; preds = %141, %97
  br label %217

151:                                              ; preds = %94
  %152 = load i32, i32* %4, align 4
  %153 = call i32 @CVMX_PIP_STAT0_PRTX(i32 %152)
  %154 = call i8* @cvmx_read_csr(i32 %153)
  %155 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %8, i32 0, i32 1
  store i8* %154, i8** %155, align 8
  %156 = load i32, i32* %4, align 4
  %157 = call i32 @CVMX_PIP_STAT1_PRTX(i32 %156)
  %158 = call i8* @cvmx_read_csr(i32 %157)
  %159 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %9, i32 0, i32 1
  store i8* %158, i8** %159, align 8
  %160 = load i32, i32* %4, align 4
  %161 = call i32 @CVMX_PIP_STAT2_PRTX(i32 %160)
  %162 = call i8* @cvmx_read_csr(i32 %161)
  %163 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %10, i32 0, i32 1
  store i8* %162, i8** %163, align 8
  %164 = load i32, i32* %4, align 4
  %165 = call i32 @CVMX_PIP_STAT3_PRTX(i32 %164)
  %166 = call i8* @cvmx_read_csr(i32 %165)
  %167 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %11, i32 0, i32 1
  store i8* %166, i8** %167, align 8
  %168 = load i32, i32* %4, align 4
  %169 = call i32 @CVMX_PIP_STAT4_PRTX(i32 %168)
  %170 = call i8* @cvmx_read_csr(i32 %169)
  %171 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %12, i32 0, i32 1
  store i8* %170, i8** %171, align 8
  %172 = load i32, i32* %4, align 4
  %173 = call i32 @CVMX_PIP_STAT5_PRTX(i32 %172)
  %174 = call i8* @cvmx_read_csr(i32 %173)
  %175 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %13, i32 0, i32 1
  store i8* %174, i8** %175, align 8
  %176 = load i32, i32* %4, align 4
  %177 = call i32 @CVMX_PIP_STAT6_PRTX(i32 %176)
  %178 = call i8* @cvmx_read_csr(i32 %177)
  %179 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %14, i32 0, i32 1
  store i8* %178, i8** %179, align 8
  %180 = load i32, i32* %4, align 4
  %181 = call i32 @CVMX_PIP_STAT7_PRTX(i32 %180)
  %182 = call i8* @cvmx_read_csr(i32 %181)
  %183 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %15, i32 0, i32 1
  store i8* %182, i8** %183, align 8
  %184 = load i32, i32* %4, align 4
  %185 = call i32 @CVMX_PIP_STAT8_PRTX(i32 %184)
  %186 = call i8* @cvmx_read_csr(i32 %185)
  %187 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %16, i32 0, i32 1
  store i8* %186, i8** %187, align 8
  %188 = load i32, i32* %4, align 4
  %189 = call i32 @CVMX_PIP_STAT9_PRTX(i32 %188)
  %190 = call i8* @cvmx_read_csr(i32 %189)
  %191 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %17, i32 0, i32 1
  store i8* %190, i8** %191, align 8
  %192 = load i32, i32* @OCTEON_CN52XX, align 4
  %193 = call i64 @OCTEON_IS_MODEL(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %207, label %195

195:                                              ; preds = %151
  %196 = load i32, i32* @OCTEON_CN56XX, align 4
  %197 = call i64 @OCTEON_IS_MODEL(i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %207, label %199

199:                                              ; preds = %195
  %200 = load i32, i32* @OCTEON_CN6XXX, align 4
  %201 = call i64 @OCTEON_IS_MODEL(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %199
  %204 = load i32, i32* @OCTEON_CNF7XXX, align 4
  %205 = call i64 @OCTEON_IS_MODEL(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %203, %199, %195, %151
  %208 = load i32, i32* %4, align 4
  %209 = call i32 @CVMX_PIP_STAT10_PRTX(i32 %208)
  %210 = call i8* @cvmx_read_csr(i32 %209)
  %211 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %18, i32 0, i32 1
  store i8* %210, i8** %211, align 8
  %212 = load i32, i32* %4, align 4
  %213 = call i32 @CVMX_PIP_STAT11_PRTX(i32 %212)
  %214 = call i8* @cvmx_read_csr(i32 %213)
  %215 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %19, i32 0, i32 1
  store i8* %214, i8** %215, align 8
  br label %216

216:                                              ; preds = %207, %203
  br label %217

217:                                              ; preds = %216, %150
  br label %218

218:                                              ; preds = %217, %42
  %219 = load i32, i32* @OCTEON_FEATURE_PKND, align 4
  %220 = call i64 @octeon_has_feature(i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %238

222:                                              ; preds = %218
  %223 = load i32, i32* %23, align 4
  %224 = load i32, i32* %24, align 4
  %225 = call i32 @cvmx_helper_get_pknd(i32 %223, i32 %224)
  store i32 %225, i32* %26, align 4
  %226 = load i32, i32* %26, align 4
  %227 = call i32 @CVMX_PIP_STAT_INB_PKTS_PKNDX(i32 %226)
  %228 = call i8* @cvmx_read_csr(i32 %227)
  %229 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %20, i32 0, i32 1
  store i8* %228, i8** %229, align 8
  %230 = load i32, i32* %26, align 4
  %231 = call i32 @CVMX_PIP_STAT_INB_OCTS_PKNDX(i32 %230)
  %232 = call i8* @cvmx_read_csr(i32 %231)
  %233 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %21, i32 0, i32 1
  store i8* %232, i8** %233, align 8
  %234 = load i32, i32* %26, align 4
  %235 = call i32 @CVMX_PIP_STAT_INB_ERRS_PKNDX(i32 %234)
  %236 = call i8* @cvmx_read_csr(i32 %235)
  %237 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %22, i32 0, i32 1
  store i8* %236, i8** %237, align 8
  br label %251

238:                                              ; preds = %218
  %239 = load i32, i32* %4, align 4
  %240 = call i32 @CVMX_PIP_STAT_INB_PKTSX(i32 %239)
  %241 = call i8* @cvmx_read_csr(i32 %240)
  %242 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %20, i32 0, i32 1
  store i8* %241, i8** %242, align 8
  %243 = load i32, i32* %4, align 4
  %244 = call i32 @CVMX_PIP_STAT_INB_OCTSX(i32 %243)
  %245 = call i8* @cvmx_read_csr(i32 %244)
  %246 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %21, i32 0, i32 1
  store i8* %245, i8** %246, align 8
  %247 = load i32, i32* %4, align 4
  %248 = call i32 @CVMX_PIP_STAT_INB_ERRSX(i32 %247)
  %249 = call i8* @cvmx_read_csr(i32 %248)
  %250 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %22, i32 0, i32 1
  store i8* %249, i8** %250, align 8
  br label %251

251:                                              ; preds = %238, %222
  %252 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %8, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %255, i32 0, i32 25
  store i32 %254, i32* %256, align 4
  %257 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %8, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %260, i32 0, i32 24
  store i32 %259, i32* %261, align 4
  %262 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %9, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %265, i32 0, i32 23
  store i32 %264, i32* %266, align 4
  %267 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %10, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %270, i32 0, i32 22
  store i32 %269, i32* %271, align 4
  %272 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %10, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %275, i32 0, i32 21
  store i32 %274, i32* %276, align 4
  %277 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %11, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %280, i32 0, i32 20
  store i32 %279, i32* %281, align 4
  %282 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %11, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %285, i32 0, i32 19
  store i32 %284, i32* %286, align 4
  %287 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %12, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %290, i32 0, i32 18
  store i32 %289, i32* %291, align 4
  %292 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %12, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %295, i32 0, i32 17
  store i32 %294, i32* %296, align 4
  %297 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %13, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %300, i32 0, i32 16
  store i32 %299, i32* %301, align 4
  %302 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %13, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %305, i32 0, i32 15
  store i32 %304, i32* %306, align 4
  %307 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %14, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %310, i32 0, i32 14
  store i32 %309, i32* %311, align 4
  %312 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %14, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %315, i32 0, i32 13
  store i32 %314, i32* %316, align 4
  %317 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %15, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %320, i32 0, i32 12
  store i32 %319, i32* %321, align 4
  %322 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %15, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %325, i32 0, i32 11
  store i32 %324, i32* %326, align 4
  %327 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %16, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %330, i32 0, i32 10
  store i32 %329, i32* %331, align 4
  %332 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %16, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %335, i32 0, i32 9
  store i32 %334, i32* %336, align 4
  %337 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %17, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %340, i32 0, i32 8
  store i32 %339, i32* %341, align 4
  %342 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %17, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %345, i32 0, i32 7
  store i32 %344, i32* %346, align 4
  %347 = load i32, i32* @OCTEON_CN52XX, align 4
  %348 = call i64 @OCTEON_IS_MODEL(i32 %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %362, label %350

350:                                              ; preds = %251
  %351 = load i32, i32* @OCTEON_CN56XX, align 4
  %352 = call i64 @OCTEON_IS_MODEL(i32 %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %362, label %354

354:                                              ; preds = %350
  %355 = load i32, i32* @OCTEON_CN6XXX, align 4
  %356 = call i64 @OCTEON_IS_MODEL(i32 %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %362, label %358

358:                                              ; preds = %354
  %359 = load i32, i32* @OCTEON_CNF7XXX, align 4
  %360 = call i64 @OCTEON_IS_MODEL(i32 %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %383

362:                                              ; preds = %358, %354, %350, %251
  %363 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %18, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %366, i32 0, i32 6
  store i32 %365, i32* %367, align 4
  %368 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %18, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %371, i32 0, i32 5
  store i32 %370, i32* %372, align 4
  %373 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %19, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %376, i32 0, i32 4
  store i32 %375, i32* %377, align 4
  %378 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %19, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %381, i32 0, i32 3
  store i32 %380, i32* %382, align 4
  br label %383

383:                                              ; preds = %362, %358
  %384 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %20, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %387, i32 0, i32 2
  store i32 %386, i32* %388, align 4
  %389 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %21, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %393 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %392, i32 0, i32 1
  store i32 %391, i32* %393, align 4
  %394 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %22, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %398 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %397, i32 0, i32 0
  store i32 %396, i32* %398, align 4
  ret void
}

declare dso_local i32 @cvmx_helper_get_interface_num(i32) #1

declare dso_local i32 @cvmx_helper_get_interface_index_num(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i64 @octeon_has_feature(i32) #1

declare dso_local i32 @cvmx_helper_get_pknd(i32, i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_PIP_STAT0_X(i32) #1

declare dso_local i32 @CVMX_PIP_STAT1_X(i32) #1

declare dso_local i32 @CVMX_PIP_STAT2_X(i32) #1

declare dso_local i32 @CVMX_PIP_STAT3_X(i32) #1

declare dso_local i32 @CVMX_PIP_STAT4_X(i32) #1

declare dso_local i32 @CVMX_PIP_STAT5_X(i32) #1

declare dso_local i32 @CVMX_PIP_STAT6_X(i32) #1

declare dso_local i32 @CVMX_PIP_STAT7_X(i32) #1

declare dso_local i32 @CVMX_PIP_STAT8_X(i32) #1

declare dso_local i32 @CVMX_PIP_STAT9_X(i32) #1

declare dso_local i32 @CVMX_PIP_STAT10_X(i32) #1

declare dso_local i32 @CVMX_PIP_STAT11_X(i32) #1

declare dso_local i32 @CVMX_PIP_XSTAT0_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_XSTAT1_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_XSTAT2_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_XSTAT3_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_XSTAT4_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_XSTAT5_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_XSTAT6_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_XSTAT7_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_XSTAT8_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_XSTAT9_PRTX(i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @CVMX_PIP_XSTAT10_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_XSTAT11_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT0_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT1_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT2_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT3_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT4_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT5_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT6_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT7_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT8_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT9_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT10_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT11_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT_INB_PKTS_PKNDX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT_INB_OCTS_PKNDX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT_INB_ERRS_PKNDX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT_INB_PKTSX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT_INB_OCTSX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT_INB_ERRSX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
