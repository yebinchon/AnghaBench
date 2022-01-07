; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_hs.c_ck_hs_map_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_hs.c_ck_hs_map_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_hs = type { i32, i32 (i8*, i8*)* }
%struct.ck_hs_map = type { i64, i32* }

@CK_HS_PROBE_INSERT = common dso_local global i32 0, align 4
@CK_MD_CACHELINE = common dso_local global i32 0, align 4
@CK_HS_PROBE_L1 = common dso_local global i64 0, align 8
@CK_HS_EMPTY = common dso_local global i8* null, align 8
@CK_HS_TOMBSTONE = common dso_local global i8* null, align 8
@CK_HS_PROBE_TOMBSTONE = common dso_local global i32 0, align 4
@CK_HS_KEY_MASK = common dso_local global i64 0, align 8
@CK_HS_MODE_OBJECT = common dso_local global i32 0, align 4
@CK_MD_VMA_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (%struct.ck_hs*, %struct.ck_hs_map*, i64*, i8***, i64, i8*, i8**, i64, i32)* @ck_hs_map_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @ck_hs_map_probe(%struct.ck_hs* %0, %struct.ck_hs_map* %1, i64* %2, i8*** %3, i64 %4, i8* %5, i8** %6, i64 %7, i32 %8) #0 {
  %10 = alloca %struct.ck_hs*, align 8
  %11 = alloca %struct.ck_hs_map*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8***, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8**, align 8
  %20 = alloca i8**, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8**, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store %struct.ck_hs* %0, %struct.ck_hs** %10, align 8
  store %struct.ck_hs_map* %1, %struct.ck_hs_map** %11, align 8
  store i64* %2, i64** %12, align 8
  store i8*** %3, i8**** %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i8** %6, i8*** %16, align 8
  store i64 %7, i64* %17, align 8
  store i32 %8, i32* %18, align 4
  store i8** null, i8*** %23, align 8
  %29 = load i8*, i8** %15, align 8
  store i8* %29, i8** %22, align 8
  %30 = load i64, i64* %14, align 8
  %31 = load %struct.ck_hs_map*, %struct.ck_hs_map** %11, align 8
  %32 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = and i64 %30, %33
  store i64 %34, i64* %24, align 8
  %35 = load i8**, i8*** %16, align 8
  store i8* null, i8** %35, align 8
  store i64 0, i64* %27, align 8
  store i64 0, i64* %26, align 8
  %36 = load i64, i64* %17, align 8
  store i64 %36, i64* %28, align 8
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* @CK_HS_PROBE_INSERT, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %9
  %41 = load %struct.ck_hs_map*, %struct.ck_hs_map** %11, align 8
  %42 = load i64, i64* %14, align 8
  %43 = call i64 @ck_hs_map_bound_get(%struct.ck_hs_map* %41, i64 %42)
  store i64 %43, i64* %17, align 8
  br label %44

44:                                               ; preds = %40, %9
  br label %45

45:                                               ; preds = %135, %44
  %46 = load %struct.ck_hs_map*, %struct.ck_hs_map** %11, align 8
  %47 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %24, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = ptrtoint i32* %50 to i64
  %52 = load i32, i32* @CK_MD_CACHELINE, align 4
  %53 = sub nsw i32 %52, 1
  %54 = xor i32 %53, -1
  %55 = sext i32 %54 to i64
  %56 = and i64 %51, %55
  %57 = inttoptr i64 %56 to i8**
  store i8** %57, i8*** %19, align 8
  store i64 0, i64* %25, align 8
  br label %58

58:                                               ; preds = %132, %45
  %59 = load i64, i64* %25, align 8
  %60 = load i64, i64* @CK_HS_PROBE_L1, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %135

62:                                               ; preds = %58
  %63 = load i8**, i8*** %19, align 8
  %64 = load i64, i64* %25, align 8
  %65 = load i64, i64* %24, align 8
  %66 = add i64 %64, %65
  %67 = load i64, i64* @CK_HS_PROBE_L1, align 8
  %68 = sub i64 %67, 1
  %69 = and i64 %66, %68
  %70 = getelementptr inbounds i8*, i8** %63, i64 %69
  store i8** %70, i8*** %20, align 8
  %71 = load i64, i64* %27, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %27, align 8
  %73 = load i64, i64* %17, align 8
  %74 = icmp eq i64 %71, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %62
  %76 = load i64, i64* %17, align 8
  %77 = load i64, i64* %28, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = load i8**, i8*** %23, align 8
  %81 = icmp ne i8** %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %79, %75
  %83 = load i8*, i8** @CK_HS_EMPTY, align 8
  store i8* %83, i8** %21, align 8
  br label %144

84:                                               ; preds = %79
  %85 = load i64, i64* %28, align 8
  store i64 %85, i64* %17, align 8
  br label %86

86:                                               ; preds = %84, %62
  %87 = load i8**, i8*** %20, align 8
  %88 = call i8* @ck_pr_load_ptr(i8** %87)
  store i8* %88, i8** %21, align 8
  %89 = load i8*, i8** %21, align 8
  %90 = load i8*, i8** @CK_HS_EMPTY, align 8
  %91 = icmp eq i8* %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %144

93:                                               ; preds = %86
  %94 = load i8*, i8** %21, align 8
  %95 = load i8*, i8** @CK_HS_TOMBSTONE, align 8
  %96 = icmp eq i8* %94, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %93
  %98 = load i8**, i8*** %23, align 8
  %99 = icmp eq i8** %98, null
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load i8**, i8*** %20, align 8
  store i8** %101, i8*** %23, align 8
  %102 = load i64, i64* %27, align 8
  %103 = load i64*, i64** %12, align 8
  store i64 %102, i64* %103, align 8
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* @CK_HS_PROBE_TOMBSTONE, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i8*, i8** @CK_HS_EMPTY, align 8
  store i8* %108, i8** %21, align 8
  br label %144

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109, %97
  br label %132

111:                                              ; preds = %93
  %112 = load i8*, i8** %21, align 8
  %113 = load i8*, i8** %22, align 8
  %114 = icmp eq i8* %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %144

116:                                              ; preds = %111
  %117 = load %struct.ck_hs*, %struct.ck_hs** %10, align 8
  %118 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %117, i32 0, i32 1
  %119 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %118, align 8
  %120 = icmp eq i32 (i8*, i8*)* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %132

122:                                              ; preds = %116
  %123 = load %struct.ck_hs*, %struct.ck_hs** %10, align 8
  %124 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %123, i32 0, i32 1
  %125 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %124, align 8
  %126 = load i8*, i8** %21, align 8
  %127 = load i8*, i8** %15, align 8
  %128 = call i32 %125(i8* %126, i8* %127)
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  br label %144

131:                                              ; preds = %122
  br label %132

132:                                              ; preds = %131, %121, %110
  %133 = load i64, i64* %25, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %25, align 8
  br label %58

135:                                              ; preds = %58
  %136 = load %struct.ck_hs_map*, %struct.ck_hs_map** %11, align 8
  %137 = load i64, i64* %24, align 8
  %138 = load i64, i64* %14, align 8
  %139 = load i64, i64* %26, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %26, align 8
  %141 = trunc i64 %139 to i32
  %142 = load i64, i64* %27, align 8
  %143 = call i64 @ck_hs_map_probe_next(%struct.ck_hs_map* %136, i64 %137, i64 %138, i32 %141, i64 %142)
  store i64 %143, i64* %24, align 8
  br label %45

144:                                              ; preds = %130, %115, %107, %92, %82
  %145 = load i64, i64* %27, align 8
  %146 = load i64, i64* %17, align 8
  %147 = icmp ugt i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store i8** null, i8*** %20, align 8
  br label %152

149:                                              ; preds = %144
  %150 = load i8*, i8** %21, align 8
  %151 = load i8**, i8*** %16, align 8
  store i8* %150, i8** %151, align 8
  br label %152

152:                                              ; preds = %149, %148
  %153 = load i8**, i8*** %23, align 8
  %154 = icmp eq i8** %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i64, i64* %27, align 8
  %157 = load i64*, i64** %12, align 8
  store i64 %156, i64* %157, align 8
  br label %158

158:                                              ; preds = %155, %152
  %159 = load i8**, i8*** %23, align 8
  %160 = load i8***, i8**** %13, align 8
  store i8** %159, i8*** %160, align 8
  %161 = load i8**, i8*** %20, align 8
  ret i8** %161
}

declare dso_local i64 @ck_hs_map_bound_get(%struct.ck_hs_map*, i64) #1

declare dso_local i8* @ck_pr_load_ptr(i8**) #1

declare dso_local i64 @ck_hs_map_probe_next(%struct.ck_hs_map*, i64, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
