; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_map_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_map_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_rhs = type { i32, i32 (i8*, i8*)* }
%struct.ck_rhs_map = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ck_rhs_entry_desc* }
%struct.ck_rhs_entry_desc = type { i32, i64, i32 }

@CK_RHS_PROBE_ROBIN_HOOD = common dso_local global i32 0, align 4
@CK_RHS_PROBE_INSERT = common dso_local global i32 0, align 4
@CK_RHS_EMPTY = common dso_local global i8* null, align 8
@CK_RHS_PROBE_NO_RH = common dso_local global i32 0, align 4
@CK_RHS_PROBE_RH = common dso_local global i32 0, align 4
@CK_MD_VMA_BITS = common dso_local global i64 0, align 8
@CK_RHS_KEY_MASK = common dso_local global i64 0, align 8
@CK_RHS_MODE_OBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ck_rhs*, %struct.ck_rhs_map*, i64*, i64*, i64, i8*, i8**, i64, i32)* @ck_rhs_map_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ck_rhs_map_probe(%struct.ck_rhs* %0, %struct.ck_rhs_map* %1, i64* %2, i64* %3, i64 %4, i8* %5, i8** %6, i64 %7, i32 %8) #0 {
  %10 = alloca %struct.ck_rhs*, align 8
  %11 = alloca %struct.ck_rhs_map*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.ck_rhs_entry_desc*, align 8
  store %struct.ck_rhs* %0, %struct.ck_rhs** %10, align 8
  store %struct.ck_rhs_map* %1, %struct.ck_rhs_map** %11, align 8
  store i64* %2, i64** %12, align 8
  store i64* %3, i64** %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i8** %6, i8*** %16, align 8
  store i64 %7, i64* %17, align 8
  store i32 %8, i32* %18, align 4
  store i64 -1, i64* %21, align 8
  %26 = load i8*, i8** %15, align 8
  store i8* %26, i8** %20, align 8
  %27 = load i8**, i8*** %16, align 8
  store i8* null, i8** %27, align 8
  %28 = load i32, i32* %18, align 4
  %29 = load i32, i32* @CK_RHS_PROBE_ROBIN_HOOD, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %9
  store i64 0, i64* %23, align 8
  %32 = load i64, i64* %14, align 8
  %33 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %11, align 8
  %34 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = and i64 %32, %35
  store i64 %36, i64* %22, align 8
  br label %45

37:                                               ; preds = %9
  %38 = load i64*, i64** %12, align 8
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %23, align 8
  %40 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %11, align 8
  %41 = load i64*, i64** %13, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %23, align 8
  %44 = call i64 @ck_rhs_map_probe_next(%struct.ck_rhs_map* %40, i64 %42, i64 %43)
  store i64 %44, i64* %22, align 8
  br label %45

45:                                               ; preds = %37, %31
  %46 = load i64, i64* %17, align 8
  store i64 %46, i64* %24, align 8
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* @CK_RHS_PROBE_INSERT, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %11, align 8
  %52 = load i64, i64* %14, align 8
  %53 = call i64 @ck_rhs_map_bound_get(%struct.ck_rhs_map* %51, i64 %52)
  store i64 %53, i64* %17, align 8
  br label %54

54:                                               ; preds = %50, %45
  br label %55

55:                                               ; preds = %152, %137, %54
  %56 = load i64, i64* %23, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %23, align 8
  %58 = load i64, i64* %17, align 8
  %59 = icmp eq i64 %56, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load i64, i64* %17, align 8
  %62 = load i64, i64* %24, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load i64, i64* %21, align 8
  %66 = icmp ne i64 %65, -1
  br i1 %66, label %67, label %69

67:                                               ; preds = %64, %60
  %68 = load i8*, i8** @CK_RHS_EMPTY, align 8
  store i8* %68, i8** %19, align 8
  br label %157

69:                                               ; preds = %64
  %70 = load i64, i64* %24, align 8
  store i64 %70, i64* %17, align 8
  br label %71

71:                                               ; preds = %69, %55
  %72 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %11, align 8
  %73 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %74, align 8
  %76 = load i64, i64* %22, align 8
  %77 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %75, i64 %76
  %78 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %77, i32 0, i32 2
  %79 = call i8* @ck_pr_load_ptr(i32* %78)
  store i8* %79, i8** %19, align 8
  %80 = load i8*, i8** %19, align 8
  %81 = load i8*, i8** @CK_RHS_EMPTY, align 8
  %82 = icmp eq i8* %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %157

84:                                               ; preds = %71
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* @CK_RHS_PROBE_NO_RH, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %123

88:                                               ; preds = %84
  %89 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %11, align 8
  %90 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %91, align 8
  %93 = load i64, i64* %22, align 8
  %94 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %92, i64 %93
  store %struct.ck_rhs_entry_desc* %94, %struct.ck_rhs_entry_desc** %25, align 8
  %95 = load i64, i64* %21, align 8
  %96 = icmp eq i64 %95, -1
  br i1 %96, label %97, label %122

97:                                               ; preds = %88
  %98 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %25, align 8
  %99 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %122

102:                                              ; preds = %97
  %103 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %25, align 8
  %104 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %23, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %102
  %109 = load i64, i64* %22, align 8
  store i64 %109, i64* %21, align 8
  %110 = load i64, i64* %23, align 8
  %111 = load i64*, i64** %12, align 8
  store i64 %110, i64* %111, align 8
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* @CK_RHS_PROBE_RH, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %108
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* @CK_RHS_PROBE_ROBIN_HOOD, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %115, %108
  %120 = load i8*, i8** @CK_RHS_EMPTY, align 8
  store i8* %120, i8** %19, align 8
  br label %157

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %121, %102, %97, %88
  br label %123

123:                                              ; preds = %122, %84
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* @CK_RHS_PROBE_ROBIN_HOOD, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %152

127:                                              ; preds = %123
  %128 = load i8*, i8** %19, align 8
  %129 = load i8*, i8** %20, align 8
  %130 = icmp eq i8* %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  br label %157

132:                                              ; preds = %127
  %133 = load %struct.ck_rhs*, %struct.ck_rhs** %10, align 8
  %134 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %133, i32 0, i32 1
  %135 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %134, align 8
  %136 = icmp eq i32 (i8*, i8*)* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %11, align 8
  %139 = load i64, i64* %22, align 8
  %140 = load i64, i64* %23, align 8
  %141 = call i64 @ck_rhs_map_probe_next(%struct.ck_rhs_map* %138, i64 %139, i64 %140)
  store i64 %141, i64* %22, align 8
  br label %55

142:                                              ; preds = %132
  %143 = load %struct.ck_rhs*, %struct.ck_rhs** %10, align 8
  %144 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %143, i32 0, i32 1
  %145 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %144, align 8
  %146 = load i8*, i8** %19, align 8
  %147 = load i8*, i8** %15, align 8
  %148 = call i32 %145(i8* %146, i8* %147)
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  br label %157

151:                                              ; preds = %142
  br label %152

152:                                              ; preds = %151, %123
  %153 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %11, align 8
  %154 = load i64, i64* %22, align 8
  %155 = load i64, i64* %23, align 8
  %156 = call i64 @ck_rhs_map_probe_next(%struct.ck_rhs_map* %153, i64 %154, i64 %155)
  store i64 %156, i64* %22, align 8
  br label %55

157:                                              ; preds = %150, %131, %119, %83, %67
  %158 = load i64, i64* %23, align 8
  %159 = load i64, i64* %17, align 8
  %160 = icmp ugt i64 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  store i64 -1, i64* %22, align 8
  br label %165

162:                                              ; preds = %157
  %163 = load i8*, i8** %19, align 8
  %164 = load i8**, i8*** %16, align 8
  store i8* %163, i8** %164, align 8
  br label %165

165:                                              ; preds = %162, %161
  %166 = load i64, i64* %21, align 8
  %167 = icmp eq i64 %166, -1
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i64, i64* %23, align 8
  %170 = load i64*, i64** %12, align 8
  store i64 %169, i64* %170, align 8
  br label %171

171:                                              ; preds = %168, %165
  %172 = load i64, i64* %21, align 8
  %173 = load i64*, i64** %13, align 8
  store i64 %172, i64* %173, align 8
  %174 = load i64, i64* %22, align 8
  ret i64 %174
}

declare dso_local i64 @ck_rhs_map_probe_next(%struct.ck_rhs_map*, i64, i64) #1

declare dso_local i64 @ck_rhs_map_bound_get(%struct.ck_rhs_map*, i64) #1

declare dso_local i8* @ck_pr_load_ptr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
