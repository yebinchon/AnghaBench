; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-helper-board.c_cvmx_helper_board_link_set_phy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-helper-board.c_cvmx_helper_board_link_set_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_15__ = type { i8*, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_25__ = type { i8*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_19__, i8* }
%struct.TYPE_19__ = type { i32, i32, i64, i64, i64, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_17__, i8* }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_14__ = type { i8*, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i64 }

@set_phy_link_flags_flow_control_mask = common dso_local global i32 0, align 4
@set_phy_link_flags_flow_control_dont_touch = common dso_local global i32 0, align 4
@CVMX_MDIO_PHY_REG_AUTONEG_ADVER = common dso_local global i32 0, align 4
@set_phy_link_flags_flow_control_enable = common dso_local global i32 0, align 4
@set_phy_link_flags_autoneg = common dso_local global i32 0, align 4
@CVMX_MDIO_PHY_REG_STATUS = common dso_local global i32 0, align 4
@CVMX_MDIO_PHY_REG_EXTENDED_STATUS = common dso_local global i32 0, align 4
@CVMX_MDIO_PHY_REG_CONTROL_1000 = common dso_local global i32 0, align 4
@CVMX_MDIO_PHY_REG_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_helper_board_link_set_phy(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_16__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__, align 8
  %9 = alloca %struct.TYPE_25__, align 8
  %10 = alloca %struct.TYPE_23__, align 8
  %11 = alloca %struct.TYPE_15__, align 8
  %12 = alloca %struct.TYPE_24__, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca %struct.TYPE_25__, align 8
  %15 = alloca %struct.TYPE_23__, align 8
  %16 = alloca %struct.TYPE_15__, align 8
  %17 = alloca %struct.TYPE_14__, align 8
  %18 = alloca %struct.TYPE_25__, align 8
  %19 = bitcast %struct.TYPE_16__* %5 to { i32, i64 }*
  %20 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %19, i32 0, i32 0
  store i32 %2, i32* %20, align 8
  %21 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %19, i32 0, i32 1
  store i64 %3, i64* %21, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @set_phy_link_flags_flow_control_mask, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @set_phy_link_flags_flow_control_dont_touch, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %59

27:                                               ; preds = %4
  %28 = load i32, i32* %6, align 4
  %29 = ashr i32 %28, 8
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 255
  %32 = load i32, i32* @CVMX_MDIO_PHY_REG_AUTONEG_ADVER, align 4
  %33 = call i8* @cvmx_mdio_read(i32 %29, i32 %31, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @set_phy_link_flags_flow_control_mask, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @set_phy_link_flags_flow_control_enable, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @set_phy_link_flags_flow_control_mask, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @set_phy_link_flags_flow_control_enable, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %6, align 4
  %52 = ashr i32 %51, 8
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 255
  %55 = load i32, i32* @CVMX_MDIO_PHY_REG_AUTONEG_ADVER, align 4
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @cvmx_mdio_write(i32 %52, i32 %54, i32 %55, i8* %57)
  br label %59

59:                                               ; preds = %27, %4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @set_phy_link_flags_autoneg, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %174

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %174

69:                                               ; preds = %64
  %70 = load i32, i32* %6, align 4
  %71 = ashr i32 %70, 8
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, 255
  %74 = load i32, i32* @CVMX_MDIO_PHY_REG_STATUS, align 4
  %75 = call i8* @cvmx_mdio_read(i32 %71, i32 %73, i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 1
  store i8* %75, i8** %76, align 8
  %77 = load i32, i32* %6, align 4
  %78 = ashr i32 %77, 8
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %79, 255
  %81 = load i32, i32* @CVMX_MDIO_PHY_REG_AUTONEG_ADVER, align 4
  %82 = call i8* @cvmx_mdio_read(i32 %78, i32 %80, i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  store i8* %82, i8** %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 6
  store i64 %86, i64* %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 5
  store i64 %91, i64* %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 4
  store i64 %101, i64* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %6, align 4
  %110 = ashr i32 %109, 8
  %111 = load i32, i32* %6, align 4
  %112 = and i32 %111, 255
  %113 = load i32, i32* @CVMX_MDIO_PHY_REG_AUTONEG_ADVER, align 4
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @cvmx_mdio_write(i32 %110, i32 %112, i32 %113, i8* %115)
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %154

121:                                              ; preds = %69
  %122 = load i32, i32* %6, align 4
  %123 = ashr i32 %122, 8
  %124 = load i32, i32* %6, align 4
  %125 = and i32 %124, 255
  %126 = load i32, i32* @CVMX_MDIO_PHY_REG_EXTENDED_STATUS, align 4
  %127 = call i8* @cvmx_mdio_read(i32 %123, i32 %125, i32 %126)
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 1
  store i8* %127, i8** %128, align 8
  %129 = load i32, i32* %6, align 4
  %130 = ashr i32 %129, 8
  %131 = load i32, i32* %6, align 4
  %132 = and i32 %131, 255
  %133 = load i32, i32* @CVMX_MDIO_PHY_REG_CONTROL_1000, align 4
  %134 = call i8* @cvmx_mdio_read(i32 %130, i32 %132, i32 %133)
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  store i8* %134, i8** %135, align 8
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* %6, align 4
  %147 = ashr i32 %146, 8
  %148 = load i32, i32* %6, align 4
  %149 = and i32 %148, 255
  %150 = load i32, i32* @CVMX_MDIO_PHY_REG_CONTROL_1000, align 4
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @cvmx_mdio_write(i32 %147, i32 %149, i32 %150, i8* %152)
  br label %154

154:                                              ; preds = %121, %69
  %155 = load i32, i32* %6, align 4
  %156 = ashr i32 %155, 8
  %157 = load i32, i32* %6, align 4
  %158 = and i32 %157, 255
  %159 = load i32, i32* @CVMX_MDIO_PHY_REG_CONTROL, align 4
  %160 = call i8* @cvmx_mdio_read(i32 %156, i32 %158, i32 %159)
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 0
  store i8* %160, i8** %161, align 8
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 0
  store i32 1, i32* %163, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 1
  store i32 1, i32* %165, align 4
  %166 = load i32, i32* %6, align 4
  %167 = ashr i32 %166, 8
  %168 = load i32, i32* %6, align 4
  %169 = and i32 %168, 255
  %170 = load i32, i32* @CVMX_MDIO_PHY_REG_CONTROL, align 4
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @cvmx_mdio_write(i32 %167, i32 %169, i32 %170, i8* %172)
  br label %366

174:                                              ; preds = %64, %59
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* @set_phy_link_flags_autoneg, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %308

179:                                              ; preds = %174
  %180 = load i32, i32* %6, align 4
  %181 = ashr i32 %180, 8
  %182 = load i32, i32* %6, align 4
  %183 = and i32 %182, 255
  %184 = load i32, i32* @CVMX_MDIO_PHY_REG_STATUS, align 4
  %185 = call i8* @cvmx_mdio_read(i32 %181, i32 %183, i32 %184)
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 1
  store i8* %185, i8** %186, align 8
  %187 = load i32, i32* %6, align 4
  %188 = ashr i32 %187, 8
  %189 = load i32, i32* %6, align 4
  %190 = and i32 %189, 255
  %191 = load i32, i32* @CVMX_MDIO_PHY_REG_AUTONEG_ADVER, align 4
  %192 = call i8* @cvmx_mdio_read(i32 %188, i32 %190, i32 %191)
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  store i8* %192, i8** %193, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 6
  store i64 0, i64* %195, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 5
  store i64 0, i64* %197, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 2
  store i32 0, i32* %199, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 4
  store i64 0, i64* %201, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 3
  store i32 0, i32* %203, align 4
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %220

208:                                              ; preds = %179
  %209 = load i32, i32* %6, align 4
  %210 = ashr i32 %209, 8
  %211 = load i32, i32* %6, align 4
  %212 = and i32 %211, 255
  %213 = load i32, i32* @CVMX_MDIO_PHY_REG_CONTROL_1000, align 4
  %214 = call i8* @cvmx_mdio_read(i32 %210, i32 %212, i32 %213)
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  store i8* %214, i8** %215, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 1
  store i64 0, i64* %217, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 0
  store i32 0, i32* %219, align 8
  br label %220

220:                                              ; preds = %208, %179
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  switch i32 %223, label %266 [
    i32 10, label %224
    i32 100, label %238
    i32 1000, label %252
  ]

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 5
  store i64 %227, i64* %229, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  %234 = xor i1 %233, true
  %235 = zext i1 %234 to i32
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 2
  store i32 %235, i32* %237, align 8
  br label %266

238:                                              ; preds = %220
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 4
  store i64 %241, i64* %243, align 8
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  %248 = xor i1 %247, true
  %249 = zext i1 %248 to i32
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i32 0, i32 3
  store i32 %249, i32* %251, align 4
  br label %266

252:                                              ; preds = %220
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 1
  store i64 %255, i64* %257, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  %262 = xor i1 %261, true
  %263 = zext i1 %262 to i32
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 0
  store i32 %263, i32* %265, align 8
  br label %266

266:                                              ; preds = %220, %252, %238, %224
  %267 = load i32, i32* %6, align 4
  %268 = ashr i32 %267, 8
  %269 = load i32, i32* %6, align 4
  %270 = and i32 %269, 255
  %271 = load i32, i32* @CVMX_MDIO_PHY_REG_AUTONEG_ADVER, align 4
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %273 = load i8*, i8** %272, align 8
  %274 = call i32 @cvmx_mdio_write(i32 %268, i32 %270, i32 %271, i8* %273)
  %275 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %288

279:                                              ; preds = %266
  %280 = load i32, i32* %6, align 4
  %281 = ashr i32 %280, 8
  %282 = load i32, i32* %6, align 4
  %283 = and i32 %282, 255
  %284 = load i32, i32* @CVMX_MDIO_PHY_REG_CONTROL_1000, align 4
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %286 = load i8*, i8** %285, align 8
  %287 = call i32 @cvmx_mdio_write(i32 %281, i32 %283, i32 %284, i8* %286)
  br label %288

288:                                              ; preds = %279, %266
  %289 = load i32, i32* %6, align 4
  %290 = ashr i32 %289, 8
  %291 = load i32, i32* %6, align 4
  %292 = and i32 %291, 255
  %293 = load i32, i32* @CVMX_MDIO_PHY_REG_CONTROL, align 4
  %294 = call i8* @cvmx_mdio_read(i32 %290, i32 %292, i32 %293)
  %295 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  store i8* %294, i8** %295, align 8
  %296 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %296, i32 0, i32 0
  store i32 1, i32* %297, align 8
  %298 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 1
  store i32 1, i32* %299, align 4
  %300 = load i32, i32* %6, align 4
  %301 = ashr i32 %300, 8
  %302 = load i32, i32* %6, align 4
  %303 = and i32 %302, 255
  %304 = load i32, i32* @CVMX_MDIO_PHY_REG_CONTROL, align 4
  %305 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = call i32 @cvmx_mdio_write(i32 %301, i32 %303, i32 %304, i8* %306)
  br label %365

308:                                              ; preds = %174
  %309 = load i32, i32* %6, align 4
  %310 = ashr i32 %309, 8
  %311 = load i32, i32* %6, align 4
  %312 = and i32 %311, 255
  %313 = load i32, i32* @CVMX_MDIO_PHY_REG_CONTROL, align 4
  %314 = call i8* @cvmx_mdio_read(i32 %310, i32 %312, i32 %313)
  %315 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 0
  store i8* %314, i8** %315, align 8
  %316 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %316, i32 0, i32 0
  store i32 0, i32* %317, align 8
  %318 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %318, i32 0, i32 1
  store i32 1, i32* %319, align 4
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %323, i32 0, i32 4
  store i64 %322, i64* %324, align 8
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = icmp eq i32 %327, 1000
  br i1 %328, label %329, label %334

329:                                              ; preds = %308
  %330 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %330, i32 0, i32 2
  store i32 1, i32* %331, align 8
  %332 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %332, i32 0, i32 3
  store i32 0, i32* %333, align 4
  br label %356

334:                                              ; preds = %308
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = icmp eq i32 %337, 100
  br i1 %338, label %339, label %344

339:                                              ; preds = %334
  %340 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %340, i32 0, i32 2
  store i32 0, i32* %341, align 8
  %342 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i32 0, i32 3
  store i32 1, i32* %343, align 4
  br label %355

344:                                              ; preds = %334
  %345 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = icmp eq i32 %347, 10
  br i1 %348, label %349, label %354

349:                                              ; preds = %344
  %350 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %350, i32 0, i32 2
  store i32 0, i32* %351, align 8
  %352 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %352, i32 0, i32 3
  store i32 0, i32* %353, align 4
  br label %354

354:                                              ; preds = %349, %344
  br label %355

355:                                              ; preds = %354, %339
  br label %356

356:                                              ; preds = %355, %329
  %357 = load i32, i32* %6, align 4
  %358 = ashr i32 %357, 8
  %359 = load i32, i32* %6, align 4
  %360 = and i32 %359, 255
  %361 = load i32, i32* @CVMX_MDIO_PHY_REG_CONTROL, align 4
  %362 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 0
  %363 = load i8*, i8** %362, align 8
  %364 = call i32 @cvmx_mdio_write(i32 %358, i32 %360, i32 %361, i8* %363)
  br label %365

365:                                              ; preds = %356, %288
  br label %366

366:                                              ; preds = %365, %154
  ret i32 0
}

declare dso_local i8* @cvmx_mdio_read(i32, i32, i32) #1

declare dso_local i32 @cvmx_mdio_write(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
