; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_map_probe_rm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_map_probe_rm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_rhs = type { i32, i32 (i8*, i8*)* }
%struct.ck_rhs_map = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32* }
%struct.ck_rhs_entry_desc = type { i32, i64 }

@CK_RHS_PROBE_ROBIN_HOOD = common dso_local global i32 0, align 4
@CK_RHS_EMPTY = common dso_local global i8* null, align 8
@CK_RHS_PROBE_NO_RH = common dso_local global i32 0, align 4
@CK_RHS_PROBE_RH = common dso_local global i32 0, align 4
@CK_MD_VMA_BITS = common dso_local global i64 0, align 8
@CK_RHS_KEY_MASK = common dso_local global i64 0, align 8
@CK_RHS_MODE_OBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ck_rhs*, %struct.ck_rhs_map*, i64*, i64*, i64, i8*, i8**, i64, i32)* @ck_rhs_map_probe_rm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ck_rhs_map_probe_rm(%struct.ck_rhs* %0, %struct.ck_rhs_map* %1, i64* %2, i64* %3, i64 %4, i8* %5, i8** %6, i64 %7, i32 %8) #0 {
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
  br label %47

47:                                               ; preds = %147, %132, %45
  %48 = load i64, i64* %23, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %23, align 8
  %50 = load i64, i64* %17, align 8
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load i64, i64* %17, align 8
  %54 = load i64, i64* %24, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %21, align 8
  %58 = icmp ne i64 %57, -1
  br i1 %58, label %59, label %61

59:                                               ; preds = %56, %52
  %60 = load i8*, i8** @CK_RHS_EMPTY, align 8
  store i8* %60, i8** %19, align 8
  br label %152

61:                                               ; preds = %56
  %62 = load i64, i64* %24, align 8
  store i64 %62, i64* %17, align 8
  br label %63

63:                                               ; preds = %61, %47
  %64 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %11, align 8
  %65 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %22, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = call i8* @ck_pr_load_ptr(i32* %70)
  store i8* %71, i8** %19, align 8
  %72 = load i8*, i8** %19, align 8
  %73 = load i8*, i8** @CK_RHS_EMPTY, align 8
  %74 = icmp eq i8* %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  br label %152

76:                                               ; preds = %63
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* @CK_RHS_PROBE_NO_RH, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %118

80:                                               ; preds = %76
  %81 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %11, align 8
  %82 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %22, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = bitcast i32* %87 to i8*
  %89 = bitcast i8* %88 to %struct.ck_rhs_entry_desc*
  store %struct.ck_rhs_entry_desc* %89, %struct.ck_rhs_entry_desc** %25, align 8
  %90 = load i64, i64* %21, align 8
  %91 = icmp eq i64 %90, -1
  br i1 %91, label %92, label %117

92:                                               ; preds = %80
  %93 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %25, align 8
  %94 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %117

97:                                               ; preds = %92
  %98 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %25, align 8
  %99 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %23, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %97
  %104 = load i64, i64* %22, align 8
  store i64 %104, i64* %21, align 8
  %105 = load i64, i64* %23, align 8
  %106 = load i64*, i64** %12, align 8
  store i64 %105, i64* %106, align 8
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* @CK_RHS_PROBE_RH, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* @CK_RHS_PROBE_ROBIN_HOOD, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %110, %103
  %115 = load i8*, i8** @CK_RHS_EMPTY, align 8
  store i8* %115, i8** %19, align 8
  br label %152

116:                                              ; preds = %110
  br label %117

117:                                              ; preds = %116, %97, %92, %80
  br label %118

118:                                              ; preds = %117, %76
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* @CK_RHS_PROBE_ROBIN_HOOD, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %147

122:                                              ; preds = %118
  %123 = load i8*, i8** %19, align 8
  %124 = load i8*, i8** %20, align 8
  %125 = icmp eq i8* %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %152

127:                                              ; preds = %122
  %128 = load %struct.ck_rhs*, %struct.ck_rhs** %10, align 8
  %129 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %128, i32 0, i32 1
  %130 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %129, align 8
  %131 = icmp eq i32 (i8*, i8*)* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %11, align 8
  %134 = load i64, i64* %22, align 8
  %135 = load i64, i64* %23, align 8
  %136 = call i64 @ck_rhs_map_probe_next(%struct.ck_rhs_map* %133, i64 %134, i64 %135)
  store i64 %136, i64* %22, align 8
  br label %47

137:                                              ; preds = %127
  %138 = load %struct.ck_rhs*, %struct.ck_rhs** %10, align 8
  %139 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %138, i32 0, i32 1
  %140 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %139, align 8
  %141 = load i8*, i8** %19, align 8
  %142 = load i8*, i8** %15, align 8
  %143 = call i32 %140(i8* %141, i8* %142)
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  br label %152

146:                                              ; preds = %137
  br label %147

147:                                              ; preds = %146, %118
  %148 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %11, align 8
  %149 = load i64, i64* %22, align 8
  %150 = load i64, i64* %23, align 8
  %151 = call i64 @ck_rhs_map_probe_next(%struct.ck_rhs_map* %148, i64 %149, i64 %150)
  store i64 %151, i64* %22, align 8
  br label %47

152:                                              ; preds = %145, %126, %114, %75, %59
  %153 = load i64, i64* %23, align 8
  %154 = load i64, i64* %17, align 8
  %155 = icmp ugt i64 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  store i64 -1, i64* %22, align 8
  br label %160

157:                                              ; preds = %152
  %158 = load i8*, i8** %19, align 8
  %159 = load i8**, i8*** %16, align 8
  store i8* %158, i8** %159, align 8
  br label %160

160:                                              ; preds = %157, %156
  %161 = load i64, i64* %21, align 8
  %162 = icmp eq i64 %161, -1
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i64, i64* %23, align 8
  %165 = load i64*, i64** %12, align 8
  store i64 %164, i64* %165, align 8
  br label %166

166:                                              ; preds = %163, %160
  %167 = load i64, i64* %21, align 8
  %168 = load i64*, i64** %13, align 8
  store i64 %167, i64* %168, align 8
  %169 = load i64, i64* %22, align 8
  ret i64 %169
}

declare dso_local i64 @ck_rhs_map_probe_next(%struct.ck_rhs_map*, i64, i64) #1

declare dso_local i8* @ck_pr_load_ptr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
