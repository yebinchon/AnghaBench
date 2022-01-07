; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_locate_sw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_locate_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.torus = type { i32, %struct.TYPE_2__*, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@X_MESH = common dso_local global i32 0, align 4
@Y_MESH = common dso_local global i32 0, align 4
@Z_MESH = common dso_local global i32 0, align 4
@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unhandled fingerprint 0x%03x @ %d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Success on fingerprint 0x%03x @ %d %d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed on fingerprint 0x%03x @ %d %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.torus*, i32, i32, i32)* @locate_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @locate_sw(%struct.torus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.torus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.torus* %0, %struct.torus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.torus*, %struct.torus** %5, align 8
  %16 = getelementptr inbounds %struct.torus, %struct.torus* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @canonicalize(i32 %14, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.torus*, %struct.torus** %5, align 8
  %21 = getelementptr inbounds %struct.torus, %struct.torus* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @canonicalize(i32 %19, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.torus*, %struct.torus** %5, align 8
  %26 = getelementptr inbounds %struct.torus, %struct.torus* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @canonicalize(i32 %24, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.torus*, %struct.torus** %5, align 8
  %30 = getelementptr inbounds %struct.torus, %struct.torus* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @X_MESH, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %4
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  %38 = load %struct.torus*, %struct.torus** %5, align 8
  %39 = getelementptr inbounds %struct.torus, %struct.torus* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @canonicalize(i32 %37, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %797

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %4
  %48 = load %struct.torus*, %struct.torus** %5, align 8
  %49 = getelementptr inbounds %struct.torus, %struct.torus* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @Y_MESH, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %47
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  %57 = load %struct.torus*, %struct.torus** %5, align 8
  %58 = getelementptr inbounds %struct.torus, %struct.torus* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @canonicalize(i32 %56, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %797

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %47
  %67 = load %struct.torus*, %struct.torus** %5, align 8
  %68 = getelementptr inbounds %struct.torus, %struct.torus* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @Z_MESH, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %66
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  %76 = load %struct.torus*, %struct.torus** %5, align 8
  %77 = getelementptr inbounds %struct.torus, %struct.torus* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @canonicalize(i32 %75, i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %797

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %66
  br label %86

86:                                               ; preds = %773, %85
  %87 = load %struct.torus*, %struct.torus** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @check_tlinks(%struct.torus* %87, i32 %88, i32 %89, i32 %90)
  %92 = load %struct.torus*, %struct.torus** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @fingerprint(%struct.torus* %92, i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  switch i32 %97, label %737 [
    i32 768, label %98
    i32 1280, label %98
    i32 1536, label %98
    i32 1792, label %98
    i32 783, label %99
    i32 1331, label %99
    i32 1621, label %99
    i32 782, label %99
    i32 1330, label %99
    i32 1620, label %99
    i32 781, label %99
    i32 1329, label %99
    i32 1617, label %99
    i32 779, label %99
    i32 1315, label %99
    i32 1605, label %99
    i32 775, label %99
    i32 1299, label %99
    i32 1557, label %99
    i32 780, label %100
    i32 771, label %106
    i32 773, label %112
    i32 778, label %118
    i32 1283, label %124
    i32 1297, label %130
    i32 1314, label %136
    i32 1328, label %142
    i32 1541, label %148
    i32 1553, label %154
    i32 1604, label %160
    i32 1616, label %166
    i32 769, label %172
    i32 770, label %178
    i32 772, label %184
    i32 776, label %190
    i32 1281, label %196
    i32 1282, label %202
    i32 1312, label %208
    i32 1296, label %214
    i32 1537, label %220
    i32 1540, label %226
    i32 1552, label %232
    i32 1600, label %238
    i32 2047, label %244
    i32 2046, label %244
    i32 2045, label %244
    i32 2043, label %244
    i32 2039, label %244
    i32 2031, label %244
    i32 2015, label %244
    i32 1983, label %244
    i32 1919, label %244
    i32 2044, label %244
    i32 2042, label %244
    i32 2037, label %244
    i32 2035, label %244
    i32 1999, label %244
    i32 1967, label %244
    i32 1887, label %244
    i32 1855, label %244
    i32 2030, label %244
    i32 2013, label %244
    i32 1979, label %244
    i32 1911, label %244
    i32 1823, label %245
    i32 1839, label %251
    i32 1847, label %257
    i32 1851, label %263
    i32 1871, label %269
    i32 1879, label %275
    i32 1885, label %281
    i32 1907, label %287
    i32 1909, label %293
    i32 1935, label %299
    i32 1963, label %305
    i32 1966, label %311
    i32 1971, label %317
    i32 1978, label %323
    i32 1997, label %329
    i32 1998, label %335
    i32 2005, label %341
    i32 2012, label %347
    i32 2026, label %353
    i32 2028, label %359
    i32 2033, label %365
    i32 2034, label %371
    i32 2036, label %377
    i32 2040, label %383
    i32 1815, label %389
    i32 1835, label %395
    i32 1869, label %401
    i32 1905, label %407
    i32 1934, label %413
    i32 1970, label %419
    i32 2004, label %425
    i32 2024, label %431
    i32 1807, label %437
    i32 1843, label %443
    i32 1877, label %449
    i32 1962, label %455
    i32 1996, label %461
    i32 2032, label %467
    i32 1799, label %473
    i32 1803, label %479
    i32 1805, label %485
    i32 1806, label %491
    i32 1811, label %497
    i32 1813, label %503
    i32 1827, label %509
    i32 1834, label %515
    i32 1841, label %521
    i32 1842, label %527
    i32 1861, label %533
    i32 1868, label %539
    i32 1873, label %545
    i32 1876, label %551
    i32 1904, label %557
    i32 1930, label %563
    i32 1932, label %569
    i32 1954, label %575
    i32 1960, label %581
    i32 1968, label %587
    i32 1988, label %593
    i32 1992, label %599
    i32 2000, label %605
    i32 2016, label %611
    i32 1795, label %617
    i32 1797, label %623
    i32 1802, label %629
    i32 1804, label %635
    i32 1809, label %641
    i32 1826, label %647
    i32 1840, label %653
    i32 1860, label %659
    i32 1872, label %665
    i32 1928, label %671
    i32 1952, label %677
    i32 1984, label %683
    i32 1793, label %689
    i32 1794, label %695
    i32 1796, label %701
    i32 1800, label %707
    i32 1808, label %713
    i32 1824, label %719
    i32 1856, label %725
    i32 1920, label %731
  ]

98:                                               ; preds = %86, %86, %86, %86
  br label %797

99:                                               ; preds = %86, %86, %86, %86, %86, %86, %86, %86, %86, %86, %86, %86, %86, %86, %86
  br label %797

100:                                              ; preds = %86
  %101 = load %struct.torus*, %struct.torus** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @handle_case_0x30c(%struct.torus* %101, i32 %102, i32 %103, i32 %104)
  store i32 %105, i32* %10, align 4
  br label %754

106:                                              ; preds = %86
  %107 = load %struct.torus*, %struct.torus** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @handle_case_0x303(%struct.torus* %107, i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %10, align 4
  br label %754

112:                                              ; preds = %86
  %113 = load %struct.torus*, %struct.torus** %5, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @handle_case_0x305(%struct.torus* %113, i32 %114, i32 %115, i32 %116)
  store i32 %117, i32* %10, align 4
  br label %754

118:                                              ; preds = %86
  %119 = load %struct.torus*, %struct.torus** %5, align 8
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @handle_case_0x30a(%struct.torus* %119, i32 %120, i32 %121, i32 %122)
  store i32 %123, i32* %10, align 4
  br label %754

124:                                              ; preds = %86
  %125 = load %struct.torus*, %struct.torus** %5, align 8
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @handle_case_0x503(%struct.torus* %125, i32 %126, i32 %127, i32 %128)
  store i32 %129, i32* %10, align 4
  br label %754

130:                                              ; preds = %86
  %131 = load %struct.torus*, %struct.torus** %5, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @handle_case_0x511(%struct.torus* %131, i32 %132, i32 %133, i32 %134)
  store i32 %135, i32* %10, align 4
  br label %754

136:                                              ; preds = %86
  %137 = load %struct.torus*, %struct.torus** %5, align 8
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @handle_case_0x522(%struct.torus* %137, i32 %138, i32 %139, i32 %140)
  store i32 %141, i32* %10, align 4
  br label %754

142:                                              ; preds = %86
  %143 = load %struct.torus*, %struct.torus** %5, align 8
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @handle_case_0x530(%struct.torus* %143, i32 %144, i32 %145, i32 %146)
  store i32 %147, i32* %10, align 4
  br label %754

148:                                              ; preds = %86
  %149 = load %struct.torus*, %struct.torus** %5, align 8
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @handle_case_0x605(%struct.torus* %149, i32 %150, i32 %151, i32 %152)
  store i32 %153, i32* %10, align 4
  br label %754

154:                                              ; preds = %86
  %155 = load %struct.torus*, %struct.torus** %5, align 8
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @handle_case_0x611(%struct.torus* %155, i32 %156, i32 %157, i32 %158)
  store i32 %159, i32* %10, align 4
  br label %754

160:                                              ; preds = %86
  %161 = load %struct.torus*, %struct.torus** %5, align 8
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @handle_case_0x644(%struct.torus* %161, i32 %162, i32 %163, i32 %164)
  store i32 %165, i32* %10, align 4
  br label %754

166:                                              ; preds = %86
  %167 = load %struct.torus*, %struct.torus** %5, align 8
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @handle_case_0x650(%struct.torus* %167, i32 %168, i32 %169, i32 %170)
  store i32 %171, i32* %10, align 4
  br label %754

172:                                              ; preds = %86
  %173 = load %struct.torus*, %struct.torus** %5, align 8
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @handle_case_0x301(%struct.torus* %173, i32 %174, i32 %175, i32 %176)
  store i32 %177, i32* %10, align 4
  br label %754

178:                                              ; preds = %86
  %179 = load %struct.torus*, %struct.torus** %5, align 8
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* %8, align 4
  %183 = call i32 @handle_case_0x302(%struct.torus* %179, i32 %180, i32 %181, i32 %182)
  store i32 %183, i32* %10, align 4
  br label %754

184:                                              ; preds = %86
  %185 = load %struct.torus*, %struct.torus** %5, align 8
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @handle_case_0x304(%struct.torus* %185, i32 %186, i32 %187, i32 %188)
  store i32 %189, i32* %10, align 4
  br label %754

190:                                              ; preds = %86
  %191 = load %struct.torus*, %struct.torus** %5, align 8
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* %8, align 4
  %195 = call i32 @handle_case_0x308(%struct.torus* %191, i32 %192, i32 %193, i32 %194)
  store i32 %195, i32* %10, align 4
  br label %754

196:                                              ; preds = %86
  %197 = load %struct.torus*, %struct.torus** %5, align 8
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @handle_case_0x501(%struct.torus* %197, i32 %198, i32 %199, i32 %200)
  store i32 %201, i32* %10, align 4
  br label %754

202:                                              ; preds = %86
  %203 = load %struct.torus*, %struct.torus** %5, align 8
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @handle_case_0x502(%struct.torus* %203, i32 %204, i32 %205, i32 %206)
  store i32 %207, i32* %10, align 4
  br label %754

208:                                              ; preds = %86
  %209 = load %struct.torus*, %struct.torus** %5, align 8
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* %8, align 4
  %213 = call i32 @handle_case_0x520(%struct.torus* %209, i32 %210, i32 %211, i32 %212)
  store i32 %213, i32* %10, align 4
  br label %754

214:                                              ; preds = %86
  %215 = load %struct.torus*, %struct.torus** %5, align 8
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* %7, align 4
  %218 = load i32, i32* %8, align 4
  %219 = call i32 @handle_case_0x510(%struct.torus* %215, i32 %216, i32 %217, i32 %218)
  store i32 %219, i32* %10, align 4
  br label %754

220:                                              ; preds = %86
  %221 = load %struct.torus*, %struct.torus** %5, align 8
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* %8, align 4
  %225 = call i32 @handle_case_0x601(%struct.torus* %221, i32 %222, i32 %223, i32 %224)
  store i32 %225, i32* %10, align 4
  br label %754

226:                                              ; preds = %86
  %227 = load %struct.torus*, %struct.torus** %5, align 8
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* %7, align 4
  %230 = load i32, i32* %8, align 4
  %231 = call i32 @handle_case_0x604(%struct.torus* %227, i32 %228, i32 %229, i32 %230)
  store i32 %231, i32* %10, align 4
  br label %754

232:                                              ; preds = %86
  %233 = load %struct.torus*, %struct.torus** %5, align 8
  %234 = load i32, i32* %6, align 4
  %235 = load i32, i32* %7, align 4
  %236 = load i32, i32* %8, align 4
  %237 = call i32 @handle_case_0x610(%struct.torus* %233, i32 %234, i32 %235, i32 %236)
  store i32 %237, i32* %10, align 4
  br label %754

238:                                              ; preds = %86
  %239 = load %struct.torus*, %struct.torus** %5, align 8
  %240 = load i32, i32* %6, align 4
  %241 = load i32, i32* %7, align 4
  %242 = load i32, i32* %8, align 4
  %243 = call i32 @handle_case_0x640(%struct.torus* %239, i32 %240, i32 %241, i32 %242)
  store i32 %243, i32* %10, align 4
  br label %754

244:                                              ; preds = %86, %86, %86, %86, %86, %86, %86, %86, %86, %86, %86, %86, %86, %86, %86, %86, %86, %86, %86, %86, %86
  br label %797

245:                                              ; preds = %86
  %246 = load %struct.torus*, %struct.torus** %5, align 8
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* %7, align 4
  %249 = load i32, i32* %8, align 4
  %250 = call i32 @handle_case_0x71f(%struct.torus* %246, i32 %247, i32 %248, i32 %249)
  store i32 %250, i32* %10, align 4
  br label %754

251:                                              ; preds = %86
  %252 = load %struct.torus*, %struct.torus** %5, align 8
  %253 = load i32, i32* %6, align 4
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* %8, align 4
  %256 = call i32 @handle_case_0x72f(%struct.torus* %252, i32 %253, i32 %254, i32 %255)
  store i32 %256, i32* %10, align 4
  br label %754

257:                                              ; preds = %86
  %258 = load %struct.torus*, %struct.torus** %5, align 8
  %259 = load i32, i32* %6, align 4
  %260 = load i32, i32* %7, align 4
  %261 = load i32, i32* %8, align 4
  %262 = call i32 @handle_case_0x737(%struct.torus* %258, i32 %259, i32 %260, i32 %261)
  store i32 %262, i32* %10, align 4
  br label %754

263:                                              ; preds = %86
  %264 = load %struct.torus*, %struct.torus** %5, align 8
  %265 = load i32, i32* %6, align 4
  %266 = load i32, i32* %7, align 4
  %267 = load i32, i32* %8, align 4
  %268 = call i32 @handle_case_0x73b(%struct.torus* %264, i32 %265, i32 %266, i32 %267)
  store i32 %268, i32* %10, align 4
  br label %754

269:                                              ; preds = %86
  %270 = load %struct.torus*, %struct.torus** %5, align 8
  %271 = load i32, i32* %6, align 4
  %272 = load i32, i32* %7, align 4
  %273 = load i32, i32* %8, align 4
  %274 = call i32 @handle_case_0x74f(%struct.torus* %270, i32 %271, i32 %272, i32 %273)
  store i32 %274, i32* %10, align 4
  br label %754

275:                                              ; preds = %86
  %276 = load %struct.torus*, %struct.torus** %5, align 8
  %277 = load i32, i32* %6, align 4
  %278 = load i32, i32* %7, align 4
  %279 = load i32, i32* %8, align 4
  %280 = call i32 @handle_case_0x757(%struct.torus* %276, i32 %277, i32 %278, i32 %279)
  store i32 %280, i32* %10, align 4
  br label %754

281:                                              ; preds = %86
  %282 = load %struct.torus*, %struct.torus** %5, align 8
  %283 = load i32, i32* %6, align 4
  %284 = load i32, i32* %7, align 4
  %285 = load i32, i32* %8, align 4
  %286 = call i32 @handle_case_0x75d(%struct.torus* %282, i32 %283, i32 %284, i32 %285)
  store i32 %286, i32* %10, align 4
  br label %754

287:                                              ; preds = %86
  %288 = load %struct.torus*, %struct.torus** %5, align 8
  %289 = load i32, i32* %6, align 4
  %290 = load i32, i32* %7, align 4
  %291 = load i32, i32* %8, align 4
  %292 = call i32 @handle_case_0x773(%struct.torus* %288, i32 %289, i32 %290, i32 %291)
  store i32 %292, i32* %10, align 4
  br label %754

293:                                              ; preds = %86
  %294 = load %struct.torus*, %struct.torus** %5, align 8
  %295 = load i32, i32* %6, align 4
  %296 = load i32, i32* %7, align 4
  %297 = load i32, i32* %8, align 4
  %298 = call i32 @handle_case_0x775(%struct.torus* %294, i32 %295, i32 %296, i32 %297)
  store i32 %298, i32* %10, align 4
  br label %754

299:                                              ; preds = %86
  %300 = load %struct.torus*, %struct.torus** %5, align 8
  %301 = load i32, i32* %6, align 4
  %302 = load i32, i32* %7, align 4
  %303 = load i32, i32* %8, align 4
  %304 = call i32 @handle_case_0x78f(%struct.torus* %300, i32 %301, i32 %302, i32 %303)
  store i32 %304, i32* %10, align 4
  br label %754

305:                                              ; preds = %86
  %306 = load %struct.torus*, %struct.torus** %5, align 8
  %307 = load i32, i32* %6, align 4
  %308 = load i32, i32* %7, align 4
  %309 = load i32, i32* %8, align 4
  %310 = call i32 @handle_case_0x7ab(%struct.torus* %306, i32 %307, i32 %308, i32 %309)
  store i32 %310, i32* %10, align 4
  br label %754

311:                                              ; preds = %86
  %312 = load %struct.torus*, %struct.torus** %5, align 8
  %313 = load i32, i32* %6, align 4
  %314 = load i32, i32* %7, align 4
  %315 = load i32, i32* %8, align 4
  %316 = call i32 @handle_case_0x7ae(%struct.torus* %312, i32 %313, i32 %314, i32 %315)
  store i32 %316, i32* %10, align 4
  br label %754

317:                                              ; preds = %86
  %318 = load %struct.torus*, %struct.torus** %5, align 8
  %319 = load i32, i32* %6, align 4
  %320 = load i32, i32* %7, align 4
  %321 = load i32, i32* %8, align 4
  %322 = call i32 @handle_case_0x7b3(%struct.torus* %318, i32 %319, i32 %320, i32 %321)
  store i32 %322, i32* %10, align 4
  br label %754

323:                                              ; preds = %86
  %324 = load %struct.torus*, %struct.torus** %5, align 8
  %325 = load i32, i32* %6, align 4
  %326 = load i32, i32* %7, align 4
  %327 = load i32, i32* %8, align 4
  %328 = call i32 @handle_case_0x7ba(%struct.torus* %324, i32 %325, i32 %326, i32 %327)
  store i32 %328, i32* %10, align 4
  br label %754

329:                                              ; preds = %86
  %330 = load %struct.torus*, %struct.torus** %5, align 8
  %331 = load i32, i32* %6, align 4
  %332 = load i32, i32* %7, align 4
  %333 = load i32, i32* %8, align 4
  %334 = call i32 @handle_case_0x7cd(%struct.torus* %330, i32 %331, i32 %332, i32 %333)
  store i32 %334, i32* %10, align 4
  br label %754

335:                                              ; preds = %86
  %336 = load %struct.torus*, %struct.torus** %5, align 8
  %337 = load i32, i32* %6, align 4
  %338 = load i32, i32* %7, align 4
  %339 = load i32, i32* %8, align 4
  %340 = call i32 @handle_case_0x7ce(%struct.torus* %336, i32 %337, i32 %338, i32 %339)
  store i32 %340, i32* %10, align 4
  br label %754

341:                                              ; preds = %86
  %342 = load %struct.torus*, %struct.torus** %5, align 8
  %343 = load i32, i32* %6, align 4
  %344 = load i32, i32* %7, align 4
  %345 = load i32, i32* %8, align 4
  %346 = call i32 @handle_case_0x7d5(%struct.torus* %342, i32 %343, i32 %344, i32 %345)
  store i32 %346, i32* %10, align 4
  br label %754

347:                                              ; preds = %86
  %348 = load %struct.torus*, %struct.torus** %5, align 8
  %349 = load i32, i32* %6, align 4
  %350 = load i32, i32* %7, align 4
  %351 = load i32, i32* %8, align 4
  %352 = call i32 @handle_case_0x7dc(%struct.torus* %348, i32 %349, i32 %350, i32 %351)
  store i32 %352, i32* %10, align 4
  br label %754

353:                                              ; preds = %86
  %354 = load %struct.torus*, %struct.torus** %5, align 8
  %355 = load i32, i32* %6, align 4
  %356 = load i32, i32* %7, align 4
  %357 = load i32, i32* %8, align 4
  %358 = call i32 @handle_case_0x7ea(%struct.torus* %354, i32 %355, i32 %356, i32 %357)
  store i32 %358, i32* %10, align 4
  br label %754

359:                                              ; preds = %86
  %360 = load %struct.torus*, %struct.torus** %5, align 8
  %361 = load i32, i32* %6, align 4
  %362 = load i32, i32* %7, align 4
  %363 = load i32, i32* %8, align 4
  %364 = call i32 @handle_case_0x7ec(%struct.torus* %360, i32 %361, i32 %362, i32 %363)
  store i32 %364, i32* %10, align 4
  br label %754

365:                                              ; preds = %86
  %366 = load %struct.torus*, %struct.torus** %5, align 8
  %367 = load i32, i32* %6, align 4
  %368 = load i32, i32* %7, align 4
  %369 = load i32, i32* %8, align 4
  %370 = call i32 @handle_case_0x7f1(%struct.torus* %366, i32 %367, i32 %368, i32 %369)
  store i32 %370, i32* %10, align 4
  br label %754

371:                                              ; preds = %86
  %372 = load %struct.torus*, %struct.torus** %5, align 8
  %373 = load i32, i32* %6, align 4
  %374 = load i32, i32* %7, align 4
  %375 = load i32, i32* %8, align 4
  %376 = call i32 @handle_case_0x7f2(%struct.torus* %372, i32 %373, i32 %374, i32 %375)
  store i32 %376, i32* %10, align 4
  br label %754

377:                                              ; preds = %86
  %378 = load %struct.torus*, %struct.torus** %5, align 8
  %379 = load i32, i32* %6, align 4
  %380 = load i32, i32* %7, align 4
  %381 = load i32, i32* %8, align 4
  %382 = call i32 @handle_case_0x7f4(%struct.torus* %378, i32 %379, i32 %380, i32 %381)
  store i32 %382, i32* %10, align 4
  br label %754

383:                                              ; preds = %86
  %384 = load %struct.torus*, %struct.torus** %5, align 8
  %385 = load i32, i32* %6, align 4
  %386 = load i32, i32* %7, align 4
  %387 = load i32, i32* %8, align 4
  %388 = call i32 @handle_case_0x7f8(%struct.torus* %384, i32 %385, i32 %386, i32 %387)
  store i32 %388, i32* %10, align 4
  br label %754

389:                                              ; preds = %86
  %390 = load %struct.torus*, %struct.torus** %5, align 8
  %391 = load i32, i32* %6, align 4
  %392 = load i32, i32* %7, align 4
  %393 = load i32, i32* %8, align 4
  %394 = call i32 @handle_case_0x717(%struct.torus* %390, i32 %391, i32 %392, i32 %393)
  store i32 %394, i32* %10, align 4
  br label %754

395:                                              ; preds = %86
  %396 = load %struct.torus*, %struct.torus** %5, align 8
  %397 = load i32, i32* %6, align 4
  %398 = load i32, i32* %7, align 4
  %399 = load i32, i32* %8, align 4
  %400 = call i32 @handle_case_0x72b(%struct.torus* %396, i32 %397, i32 %398, i32 %399)
  store i32 %400, i32* %10, align 4
  br label %754

401:                                              ; preds = %86
  %402 = load %struct.torus*, %struct.torus** %5, align 8
  %403 = load i32, i32* %6, align 4
  %404 = load i32, i32* %7, align 4
  %405 = load i32, i32* %8, align 4
  %406 = call i32 @handle_case_0x74d(%struct.torus* %402, i32 %403, i32 %404, i32 %405)
  store i32 %406, i32* %10, align 4
  br label %754

407:                                              ; preds = %86
  %408 = load %struct.torus*, %struct.torus** %5, align 8
  %409 = load i32, i32* %6, align 4
  %410 = load i32, i32* %7, align 4
  %411 = load i32, i32* %8, align 4
  %412 = call i32 @handle_case_0x771(%struct.torus* %408, i32 %409, i32 %410, i32 %411)
  store i32 %412, i32* %10, align 4
  br label %754

413:                                              ; preds = %86
  %414 = load %struct.torus*, %struct.torus** %5, align 8
  %415 = load i32, i32* %6, align 4
  %416 = load i32, i32* %7, align 4
  %417 = load i32, i32* %8, align 4
  %418 = call i32 @handle_case_0x78e(%struct.torus* %414, i32 %415, i32 %416, i32 %417)
  store i32 %418, i32* %10, align 4
  br label %754

419:                                              ; preds = %86
  %420 = load %struct.torus*, %struct.torus** %5, align 8
  %421 = load i32, i32* %6, align 4
  %422 = load i32, i32* %7, align 4
  %423 = load i32, i32* %8, align 4
  %424 = call i32 @handle_case_0x7b2(%struct.torus* %420, i32 %421, i32 %422, i32 %423)
  store i32 %424, i32* %10, align 4
  br label %754

425:                                              ; preds = %86
  %426 = load %struct.torus*, %struct.torus** %5, align 8
  %427 = load i32, i32* %6, align 4
  %428 = load i32, i32* %7, align 4
  %429 = load i32, i32* %8, align 4
  %430 = call i32 @handle_case_0x7d4(%struct.torus* %426, i32 %427, i32 %428, i32 %429)
  store i32 %430, i32* %10, align 4
  br label %754

431:                                              ; preds = %86
  %432 = load %struct.torus*, %struct.torus** %5, align 8
  %433 = load i32, i32* %6, align 4
  %434 = load i32, i32* %7, align 4
  %435 = load i32, i32* %8, align 4
  %436 = call i32 @handle_case_0x7e8(%struct.torus* %432, i32 %433, i32 %434, i32 %435)
  store i32 %436, i32* %10, align 4
  br label %754

437:                                              ; preds = %86
  %438 = load %struct.torus*, %struct.torus** %5, align 8
  %439 = load i32, i32* %6, align 4
  %440 = load i32, i32* %7, align 4
  %441 = load i32, i32* %8, align 4
  %442 = call i32 @handle_case_0x70f(%struct.torus* %438, i32 %439, i32 %440, i32 %441)
  store i32 %442, i32* %10, align 4
  br label %754

443:                                              ; preds = %86
  %444 = load %struct.torus*, %struct.torus** %5, align 8
  %445 = load i32, i32* %6, align 4
  %446 = load i32, i32* %7, align 4
  %447 = load i32, i32* %8, align 4
  %448 = call i32 @handle_case_0x733(%struct.torus* %444, i32 %445, i32 %446, i32 %447)
  store i32 %448, i32* %10, align 4
  br label %754

449:                                              ; preds = %86
  %450 = load %struct.torus*, %struct.torus** %5, align 8
  %451 = load i32, i32* %6, align 4
  %452 = load i32, i32* %7, align 4
  %453 = load i32, i32* %8, align 4
  %454 = call i32 @handle_case_0x755(%struct.torus* %450, i32 %451, i32 %452, i32 %453)
  store i32 %454, i32* %10, align 4
  br label %754

455:                                              ; preds = %86
  %456 = load %struct.torus*, %struct.torus** %5, align 8
  %457 = load i32, i32* %6, align 4
  %458 = load i32, i32* %7, align 4
  %459 = load i32, i32* %8, align 4
  %460 = call i32 @handle_case_0x7aa(%struct.torus* %456, i32 %457, i32 %458, i32 %459)
  store i32 %460, i32* %10, align 4
  br label %754

461:                                              ; preds = %86
  %462 = load %struct.torus*, %struct.torus** %5, align 8
  %463 = load i32, i32* %6, align 4
  %464 = load i32, i32* %7, align 4
  %465 = load i32, i32* %8, align 4
  %466 = call i32 @handle_case_0x7cc(%struct.torus* %462, i32 %463, i32 %464, i32 %465)
  store i32 %466, i32* %10, align 4
  br label %754

467:                                              ; preds = %86
  %468 = load %struct.torus*, %struct.torus** %5, align 8
  %469 = load i32, i32* %6, align 4
  %470 = load i32, i32* %7, align 4
  %471 = load i32, i32* %8, align 4
  %472 = call i32 @handle_case_0x7f0(%struct.torus* %468, i32 %469, i32 %470, i32 %471)
  store i32 %472, i32* %10, align 4
  br label %754

473:                                              ; preds = %86
  %474 = load %struct.torus*, %struct.torus** %5, align 8
  %475 = load i32, i32* %6, align 4
  %476 = load i32, i32* %7, align 4
  %477 = load i32, i32* %8, align 4
  %478 = call i32 @handle_case_0x707(%struct.torus* %474, i32 %475, i32 %476, i32 %477)
  store i32 %478, i32* %10, align 4
  br label %754

479:                                              ; preds = %86
  %480 = load %struct.torus*, %struct.torus** %5, align 8
  %481 = load i32, i32* %6, align 4
  %482 = load i32, i32* %7, align 4
  %483 = load i32, i32* %8, align 4
  %484 = call i32 @handle_case_0x70b(%struct.torus* %480, i32 %481, i32 %482, i32 %483)
  store i32 %484, i32* %10, align 4
  br label %754

485:                                              ; preds = %86
  %486 = load %struct.torus*, %struct.torus** %5, align 8
  %487 = load i32, i32* %6, align 4
  %488 = load i32, i32* %7, align 4
  %489 = load i32, i32* %8, align 4
  %490 = call i32 @handle_case_0x70d(%struct.torus* %486, i32 %487, i32 %488, i32 %489)
  store i32 %490, i32* %10, align 4
  br label %754

491:                                              ; preds = %86
  %492 = load %struct.torus*, %struct.torus** %5, align 8
  %493 = load i32, i32* %6, align 4
  %494 = load i32, i32* %7, align 4
  %495 = load i32, i32* %8, align 4
  %496 = call i32 @handle_case_0x70e(%struct.torus* %492, i32 %493, i32 %494, i32 %495)
  store i32 %496, i32* %10, align 4
  br label %754

497:                                              ; preds = %86
  %498 = load %struct.torus*, %struct.torus** %5, align 8
  %499 = load i32, i32* %6, align 4
  %500 = load i32, i32* %7, align 4
  %501 = load i32, i32* %8, align 4
  %502 = call i32 @handle_case_0x713(%struct.torus* %498, i32 %499, i32 %500, i32 %501)
  store i32 %502, i32* %10, align 4
  br label %754

503:                                              ; preds = %86
  %504 = load %struct.torus*, %struct.torus** %5, align 8
  %505 = load i32, i32* %6, align 4
  %506 = load i32, i32* %7, align 4
  %507 = load i32, i32* %8, align 4
  %508 = call i32 @handle_case_0x715(%struct.torus* %504, i32 %505, i32 %506, i32 %507)
  store i32 %508, i32* %10, align 4
  br label %754

509:                                              ; preds = %86
  %510 = load %struct.torus*, %struct.torus** %5, align 8
  %511 = load i32, i32* %6, align 4
  %512 = load i32, i32* %7, align 4
  %513 = load i32, i32* %8, align 4
  %514 = call i32 @handle_case_0x723(%struct.torus* %510, i32 %511, i32 %512, i32 %513)
  store i32 %514, i32* %10, align 4
  br label %754

515:                                              ; preds = %86
  %516 = load %struct.torus*, %struct.torus** %5, align 8
  %517 = load i32, i32* %6, align 4
  %518 = load i32, i32* %7, align 4
  %519 = load i32, i32* %8, align 4
  %520 = call i32 @handle_case_0x72a(%struct.torus* %516, i32 %517, i32 %518, i32 %519)
  store i32 %520, i32* %10, align 4
  br label %754

521:                                              ; preds = %86
  %522 = load %struct.torus*, %struct.torus** %5, align 8
  %523 = load i32, i32* %6, align 4
  %524 = load i32, i32* %7, align 4
  %525 = load i32, i32* %8, align 4
  %526 = call i32 @handle_case_0x731(%struct.torus* %522, i32 %523, i32 %524, i32 %525)
  store i32 %526, i32* %10, align 4
  br label %754

527:                                              ; preds = %86
  %528 = load %struct.torus*, %struct.torus** %5, align 8
  %529 = load i32, i32* %6, align 4
  %530 = load i32, i32* %7, align 4
  %531 = load i32, i32* %8, align 4
  %532 = call i32 @handle_case_0x732(%struct.torus* %528, i32 %529, i32 %530, i32 %531)
  store i32 %532, i32* %10, align 4
  br label %754

533:                                              ; preds = %86
  %534 = load %struct.torus*, %struct.torus** %5, align 8
  %535 = load i32, i32* %6, align 4
  %536 = load i32, i32* %7, align 4
  %537 = load i32, i32* %8, align 4
  %538 = call i32 @handle_case_0x745(%struct.torus* %534, i32 %535, i32 %536, i32 %537)
  store i32 %538, i32* %10, align 4
  br label %754

539:                                              ; preds = %86
  %540 = load %struct.torus*, %struct.torus** %5, align 8
  %541 = load i32, i32* %6, align 4
  %542 = load i32, i32* %7, align 4
  %543 = load i32, i32* %8, align 4
  %544 = call i32 @handle_case_0x74c(%struct.torus* %540, i32 %541, i32 %542, i32 %543)
  store i32 %544, i32* %10, align 4
  br label %754

545:                                              ; preds = %86
  %546 = load %struct.torus*, %struct.torus** %5, align 8
  %547 = load i32, i32* %6, align 4
  %548 = load i32, i32* %7, align 4
  %549 = load i32, i32* %8, align 4
  %550 = call i32 @handle_case_0x751(%struct.torus* %546, i32 %547, i32 %548, i32 %549)
  store i32 %550, i32* %10, align 4
  br label %754

551:                                              ; preds = %86
  %552 = load %struct.torus*, %struct.torus** %5, align 8
  %553 = load i32, i32* %6, align 4
  %554 = load i32, i32* %7, align 4
  %555 = load i32, i32* %8, align 4
  %556 = call i32 @handle_case_0x754(%struct.torus* %552, i32 %553, i32 %554, i32 %555)
  store i32 %556, i32* %10, align 4
  br label %754

557:                                              ; preds = %86
  %558 = load %struct.torus*, %struct.torus** %5, align 8
  %559 = load i32, i32* %6, align 4
  %560 = load i32, i32* %7, align 4
  %561 = load i32, i32* %8, align 4
  %562 = call i32 @handle_case_0x770(%struct.torus* %558, i32 %559, i32 %560, i32 %561)
  store i32 %562, i32* %10, align 4
  br label %754

563:                                              ; preds = %86
  %564 = load %struct.torus*, %struct.torus** %5, align 8
  %565 = load i32, i32* %6, align 4
  %566 = load i32, i32* %7, align 4
  %567 = load i32, i32* %8, align 4
  %568 = call i32 @handle_case_0x78a(%struct.torus* %564, i32 %565, i32 %566, i32 %567)
  store i32 %568, i32* %10, align 4
  br label %754

569:                                              ; preds = %86
  %570 = load %struct.torus*, %struct.torus** %5, align 8
  %571 = load i32, i32* %6, align 4
  %572 = load i32, i32* %7, align 4
  %573 = load i32, i32* %8, align 4
  %574 = call i32 @handle_case_0x78c(%struct.torus* %570, i32 %571, i32 %572, i32 %573)
  store i32 %574, i32* %10, align 4
  br label %754

575:                                              ; preds = %86
  %576 = load %struct.torus*, %struct.torus** %5, align 8
  %577 = load i32, i32* %6, align 4
  %578 = load i32, i32* %7, align 4
  %579 = load i32, i32* %8, align 4
  %580 = call i32 @handle_case_0x7a2(%struct.torus* %576, i32 %577, i32 %578, i32 %579)
  store i32 %580, i32* %10, align 4
  br label %754

581:                                              ; preds = %86
  %582 = load %struct.torus*, %struct.torus** %5, align 8
  %583 = load i32, i32* %6, align 4
  %584 = load i32, i32* %7, align 4
  %585 = load i32, i32* %8, align 4
  %586 = call i32 @handle_case_0x7a8(%struct.torus* %582, i32 %583, i32 %584, i32 %585)
  store i32 %586, i32* %10, align 4
  br label %754

587:                                              ; preds = %86
  %588 = load %struct.torus*, %struct.torus** %5, align 8
  %589 = load i32, i32* %6, align 4
  %590 = load i32, i32* %7, align 4
  %591 = load i32, i32* %8, align 4
  %592 = call i32 @handle_case_0x7b0(%struct.torus* %588, i32 %589, i32 %590, i32 %591)
  store i32 %592, i32* %10, align 4
  br label %754

593:                                              ; preds = %86
  %594 = load %struct.torus*, %struct.torus** %5, align 8
  %595 = load i32, i32* %6, align 4
  %596 = load i32, i32* %7, align 4
  %597 = load i32, i32* %8, align 4
  %598 = call i32 @handle_case_0x7c4(%struct.torus* %594, i32 %595, i32 %596, i32 %597)
  store i32 %598, i32* %10, align 4
  br label %754

599:                                              ; preds = %86
  %600 = load %struct.torus*, %struct.torus** %5, align 8
  %601 = load i32, i32* %6, align 4
  %602 = load i32, i32* %7, align 4
  %603 = load i32, i32* %8, align 4
  %604 = call i32 @handle_case_0x7c8(%struct.torus* %600, i32 %601, i32 %602, i32 %603)
  store i32 %604, i32* %10, align 4
  br label %754

605:                                              ; preds = %86
  %606 = load %struct.torus*, %struct.torus** %5, align 8
  %607 = load i32, i32* %6, align 4
  %608 = load i32, i32* %7, align 4
  %609 = load i32, i32* %8, align 4
  %610 = call i32 @handle_case_0x7d0(%struct.torus* %606, i32 %607, i32 %608, i32 %609)
  store i32 %610, i32* %10, align 4
  br label %754

611:                                              ; preds = %86
  %612 = load %struct.torus*, %struct.torus** %5, align 8
  %613 = load i32, i32* %6, align 4
  %614 = load i32, i32* %7, align 4
  %615 = load i32, i32* %8, align 4
  %616 = call i32 @handle_case_0x7e0(%struct.torus* %612, i32 %613, i32 %614, i32 %615)
  store i32 %616, i32* %10, align 4
  br label %754

617:                                              ; preds = %86
  %618 = load %struct.torus*, %struct.torus** %5, align 8
  %619 = load i32, i32* %6, align 4
  %620 = load i32, i32* %7, align 4
  %621 = load i32, i32* %8, align 4
  %622 = call i32 @handle_case_0x703(%struct.torus* %618, i32 %619, i32 %620, i32 %621)
  store i32 %622, i32* %10, align 4
  br label %754

623:                                              ; preds = %86
  %624 = load %struct.torus*, %struct.torus** %5, align 8
  %625 = load i32, i32* %6, align 4
  %626 = load i32, i32* %7, align 4
  %627 = load i32, i32* %8, align 4
  %628 = call i32 @handle_case_0x705(%struct.torus* %624, i32 %625, i32 %626, i32 %627)
  store i32 %628, i32* %10, align 4
  br label %754

629:                                              ; preds = %86
  %630 = load %struct.torus*, %struct.torus** %5, align 8
  %631 = load i32, i32* %6, align 4
  %632 = load i32, i32* %7, align 4
  %633 = load i32, i32* %8, align 4
  %634 = call i32 @handle_case_0x70a(%struct.torus* %630, i32 %631, i32 %632, i32 %633)
  store i32 %634, i32* %10, align 4
  br label %754

635:                                              ; preds = %86
  %636 = load %struct.torus*, %struct.torus** %5, align 8
  %637 = load i32, i32* %6, align 4
  %638 = load i32, i32* %7, align 4
  %639 = load i32, i32* %8, align 4
  %640 = call i32 @handle_case_0x70c(%struct.torus* %636, i32 %637, i32 %638, i32 %639)
  store i32 %640, i32* %10, align 4
  br label %754

641:                                              ; preds = %86
  %642 = load %struct.torus*, %struct.torus** %5, align 8
  %643 = load i32, i32* %6, align 4
  %644 = load i32, i32* %7, align 4
  %645 = load i32, i32* %8, align 4
  %646 = call i32 @handle_case_0x711(%struct.torus* %642, i32 %643, i32 %644, i32 %645)
  store i32 %646, i32* %10, align 4
  br label %754

647:                                              ; preds = %86
  %648 = load %struct.torus*, %struct.torus** %5, align 8
  %649 = load i32, i32* %6, align 4
  %650 = load i32, i32* %7, align 4
  %651 = load i32, i32* %8, align 4
  %652 = call i32 @handle_case_0x722(%struct.torus* %648, i32 %649, i32 %650, i32 %651)
  store i32 %652, i32* %10, align 4
  br label %754

653:                                              ; preds = %86
  %654 = load %struct.torus*, %struct.torus** %5, align 8
  %655 = load i32, i32* %6, align 4
  %656 = load i32, i32* %7, align 4
  %657 = load i32, i32* %8, align 4
  %658 = call i32 @handle_case_0x730(%struct.torus* %654, i32 %655, i32 %656, i32 %657)
  store i32 %658, i32* %10, align 4
  br label %754

659:                                              ; preds = %86
  %660 = load %struct.torus*, %struct.torus** %5, align 8
  %661 = load i32, i32* %6, align 4
  %662 = load i32, i32* %7, align 4
  %663 = load i32, i32* %8, align 4
  %664 = call i32 @handle_case_0x744(%struct.torus* %660, i32 %661, i32 %662, i32 %663)
  store i32 %664, i32* %10, align 4
  br label %754

665:                                              ; preds = %86
  %666 = load %struct.torus*, %struct.torus** %5, align 8
  %667 = load i32, i32* %6, align 4
  %668 = load i32, i32* %7, align 4
  %669 = load i32, i32* %8, align 4
  %670 = call i32 @handle_case_0x750(%struct.torus* %666, i32 %667, i32 %668, i32 %669)
  store i32 %670, i32* %10, align 4
  br label %754

671:                                              ; preds = %86
  %672 = load %struct.torus*, %struct.torus** %5, align 8
  %673 = load i32, i32* %6, align 4
  %674 = load i32, i32* %7, align 4
  %675 = load i32, i32* %8, align 4
  %676 = call i32 @handle_case_0x788(%struct.torus* %672, i32 %673, i32 %674, i32 %675)
  store i32 %676, i32* %10, align 4
  br label %754

677:                                              ; preds = %86
  %678 = load %struct.torus*, %struct.torus** %5, align 8
  %679 = load i32, i32* %6, align 4
  %680 = load i32, i32* %7, align 4
  %681 = load i32, i32* %8, align 4
  %682 = call i32 @handle_case_0x7a0(%struct.torus* %678, i32 %679, i32 %680, i32 %681)
  store i32 %682, i32* %10, align 4
  br label %754

683:                                              ; preds = %86
  %684 = load %struct.torus*, %struct.torus** %5, align 8
  %685 = load i32, i32* %6, align 4
  %686 = load i32, i32* %7, align 4
  %687 = load i32, i32* %8, align 4
  %688 = call i32 @handle_case_0x7c0(%struct.torus* %684, i32 %685, i32 %686, i32 %687)
  store i32 %688, i32* %10, align 4
  br label %754

689:                                              ; preds = %86
  %690 = load %struct.torus*, %struct.torus** %5, align 8
  %691 = load i32, i32* %6, align 4
  %692 = load i32, i32* %7, align 4
  %693 = load i32, i32* %8, align 4
  %694 = call i32 @handle_case_0x701(%struct.torus* %690, i32 %691, i32 %692, i32 %693)
  store i32 %694, i32* %10, align 4
  br label %754

695:                                              ; preds = %86
  %696 = load %struct.torus*, %struct.torus** %5, align 8
  %697 = load i32, i32* %6, align 4
  %698 = load i32, i32* %7, align 4
  %699 = load i32, i32* %8, align 4
  %700 = call i32 @handle_case_0x702(%struct.torus* %696, i32 %697, i32 %698, i32 %699)
  store i32 %700, i32* %10, align 4
  br label %754

701:                                              ; preds = %86
  %702 = load %struct.torus*, %struct.torus** %5, align 8
  %703 = load i32, i32* %6, align 4
  %704 = load i32, i32* %7, align 4
  %705 = load i32, i32* %8, align 4
  %706 = call i32 @handle_case_0x704(%struct.torus* %702, i32 %703, i32 %704, i32 %705)
  store i32 %706, i32* %10, align 4
  br label %754

707:                                              ; preds = %86
  %708 = load %struct.torus*, %struct.torus** %5, align 8
  %709 = load i32, i32* %6, align 4
  %710 = load i32, i32* %7, align 4
  %711 = load i32, i32* %8, align 4
  %712 = call i32 @handle_case_0x708(%struct.torus* %708, i32 %709, i32 %710, i32 %711)
  store i32 %712, i32* %10, align 4
  br label %754

713:                                              ; preds = %86
  %714 = load %struct.torus*, %struct.torus** %5, align 8
  %715 = load i32, i32* %6, align 4
  %716 = load i32, i32* %7, align 4
  %717 = load i32, i32* %8, align 4
  %718 = call i32 @handle_case_0x710(%struct.torus* %714, i32 %715, i32 %716, i32 %717)
  store i32 %718, i32* %10, align 4
  br label %754

719:                                              ; preds = %86
  %720 = load %struct.torus*, %struct.torus** %5, align 8
  %721 = load i32, i32* %6, align 4
  %722 = load i32, i32* %7, align 4
  %723 = load i32, i32* %8, align 4
  %724 = call i32 @handle_case_0x720(%struct.torus* %720, i32 %721, i32 %722, i32 %723)
  store i32 %724, i32* %10, align 4
  br label %754

725:                                              ; preds = %86
  %726 = load %struct.torus*, %struct.torus** %5, align 8
  %727 = load i32, i32* %6, align 4
  %728 = load i32, i32* %7, align 4
  %729 = load i32, i32* %8, align 4
  %730 = call i32 @handle_case_0x740(%struct.torus* %726, i32 %727, i32 %728, i32 %729)
  store i32 %730, i32* %10, align 4
  br label %754

731:                                              ; preds = %86
  %732 = load %struct.torus*, %struct.torus** %5, align 8
  %733 = load i32, i32* %6, align 4
  %734 = load i32, i32* %7, align 4
  %735 = load i32, i32* %8, align 4
  %736 = call i32 @handle_case_0x780(%struct.torus* %732, i32 %733, i32 %734, i32 %735)
  store i32 %736, i32* %10, align 4
  br label %754

737:                                              ; preds = %86
  %738 = load %struct.torus*, %struct.torus** %5, align 8
  %739 = getelementptr inbounds %struct.torus, %struct.torus* %738, i32 0, i32 2
  %740 = load i64, i64* %739, align 8
  %741 = icmp ne i64 %740, 0
  br i1 %741, label %742, label %753

742:                                              ; preds = %737
  %743 = load %struct.torus*, %struct.torus** %5, align 8
  %744 = getelementptr inbounds %struct.torus, %struct.torus* %743, i32 0, i32 1
  %745 = load %struct.TYPE_2__*, %struct.TYPE_2__** %744, align 8
  %746 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %745, i32 0, i32 0
  %747 = load i32, i32* @OSM_LOG_ERROR, align 4
  %748 = load i32, i32* %9, align 4
  %749 = load i32, i32* %6, align 4
  %750 = load i32, i32* %7, align 4
  %751 = load i32, i32* %8, align 4
  %752 = call i32 @OSM_LOG(i32* %746, i32 %747, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %748, i32 %749, i32 %750, i32 %751)
  br label %753

753:                                              ; preds = %742, %737
  br label %797

754:                                              ; preds = %731, %725, %719, %713, %707, %701, %695, %689, %683, %677, %671, %665, %659, %653, %647, %641, %635, %629, %623, %617, %611, %605, %599, %593, %587, %581, %575, %569, %563, %557, %551, %545, %539, %533, %527, %521, %515, %509, %503, %497, %491, %485, %479, %473, %467, %461, %455, %449, %443, %437, %431, %425, %419, %413, %407, %401, %395, %389, %383, %377, %371, %365, %359, %353, %347, %341, %335, %329, %323, %317, %311, %305, %299, %293, %287, %281, %275, %269, %263, %257, %251, %245, %238, %232, %226, %220, %214, %208, %202, %196, %190, %184, %178, %172, %166, %160, %154, %148, %142, %136, %130, %124, %118, %112, %106, %100
  %755 = load i32, i32* %10, align 4
  %756 = icmp ne i32 %755, 0
  br i1 %756, label %757, label %774

757:                                              ; preds = %754
  %758 = load %struct.torus*, %struct.torus** %5, align 8
  %759 = getelementptr inbounds %struct.torus, %struct.torus* %758, i32 0, i32 2
  %760 = load i64, i64* %759, align 8
  %761 = icmp ne i64 %760, 0
  br i1 %761, label %762, label %773

762:                                              ; preds = %757
  %763 = load %struct.torus*, %struct.torus** %5, align 8
  %764 = getelementptr inbounds %struct.torus, %struct.torus* %763, i32 0, i32 1
  %765 = load %struct.TYPE_2__*, %struct.TYPE_2__** %764, align 8
  %766 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %765, i32 0, i32 0
  %767 = load i32, i32* @OSM_LOG_ERROR, align 4
  %768 = load i32, i32* %9, align 4
  %769 = load i32, i32* %6, align 4
  %770 = load i32, i32* %7, align 4
  %771 = load i32, i32* %8, align 4
  %772 = call i32 @OSM_LOG(i32* %766, i32 %767, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %768, i32 %769, i32 %770, i32 %771)
  br label %773

773:                                              ; preds = %762, %757
  br label %86

774:                                              ; preds = %754
  %775 = load %struct.torus*, %struct.torus** %5, align 8
  %776 = load i32, i32* %6, align 4
  %777 = load i32, i32* %7, align 4
  %778 = load i32, i32* %8, align 4
  %779 = call i32 @check_tlinks(%struct.torus* %775, i32 %776, i32 %777, i32 %778)
  %780 = load %struct.torus*, %struct.torus** %5, align 8
  %781 = getelementptr inbounds %struct.torus, %struct.torus* %780, i32 0, i32 2
  %782 = load i64, i64* %781, align 8
  %783 = icmp ne i64 %782, 0
  br i1 %783, label %784, label %795

784:                                              ; preds = %774
  %785 = load %struct.torus*, %struct.torus** %5, align 8
  %786 = getelementptr inbounds %struct.torus, %struct.torus* %785, i32 0, i32 1
  %787 = load %struct.TYPE_2__*, %struct.TYPE_2__** %786, align 8
  %788 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %787, i32 0, i32 0
  %789 = load i32, i32* @OSM_LOG_ERROR, align 4
  %790 = load i32, i32* %9, align 4
  %791 = load i32, i32* %6, align 4
  %792 = load i32, i32* %7, align 4
  %793 = load i32, i32* %8, align 4
  %794 = call i32 @OSM_LOG(i32* %788, i32 %789, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %790, i32 %791, i32 %792, i32 %793)
  br label %795

795:                                              ; preds = %784, %774
  br label %796

796:                                              ; preds = %795
  br label %797

797:                                              ; preds = %796, %753, %244, %99, %98, %83, %64, %45
  ret void
}

declare dso_local i32 @canonicalize(i32, i32) #1

declare dso_local i32 @check_tlinks(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @fingerprint(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x30c(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x303(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x305(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x30a(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x503(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x511(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x522(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x530(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x605(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x611(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x644(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x650(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x301(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x302(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x304(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x308(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x501(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x502(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x520(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x510(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x601(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x604(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x610(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x640(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x71f(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x72f(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x737(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x73b(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x74f(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x757(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x75d(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x773(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x775(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x78f(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7ab(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7ae(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7b3(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7ba(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7cd(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7ce(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7d5(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7dc(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7ea(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7ec(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7f1(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7f2(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7f4(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7f8(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x717(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x72b(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x74d(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x771(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x78e(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7b2(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7d4(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7e8(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x70f(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x733(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x755(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7aa(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7cc(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7f0(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x707(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x70b(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x70d(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x70e(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x713(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x715(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x723(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x72a(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x731(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x732(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x745(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x74c(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x751(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x754(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x770(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x78a(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x78c(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7a2(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7a8(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7b0(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7c4(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7c8(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7d0(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7e0(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x703(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x705(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x70a(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x70c(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x711(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x722(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x730(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x744(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x750(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x788(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7a0(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x7c0(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x701(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x702(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x704(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x708(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x710(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x720(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x740(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @handle_case_0x780(%struct.torus*, i32, i32, i32) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
