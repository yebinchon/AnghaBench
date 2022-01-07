; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditreduce/extr_auditreduce.c_select_hdr32.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditreduce/extr_auditreduce.c_select_hdr32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@OPT_A = common dso_local global i32 0, align 4
@OPT_a = common dso_local global i32 0, align 4
@OPT_b = common dso_local global i32 0, align 4
@OPT_c = common dso_local global i32 0, align 4
@OPT_m = common dso_local global i32 0, align 4
@OPT_v = common dso_local global i32 0, align 4
@opttochk = common dso_local global i32 0, align 4
@p_atime = common dso_local global i32 0, align 4
@p_btime = common dso_local global i32 0, align 4
@maskp = common dso_local global i32 0, align 4
@AU_PRS_BOTH = common dso_local global i32 0, align 4
@AU_PRS_USECACHE = common dso_local global i32 0, align 4
@p_evec = common dso_local global i64* null, align 8
@p_evec_used = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32*)* @select_hdr32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_hdr32(i64 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %struct.TYPE_7__* %5 to { i64, i64 }*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  store i64 %0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  store i64 %1, i64* %11, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @OPT_A, align 4
  %15 = load i32, i32* @OPT_a, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @OPT_b, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @OPT_c, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @OPT_m, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @OPT_v, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @SETOPT(i32 %13, i32 %24)
  %26 = load i32, i32* @opttochk, align 4
  %27 = load i32, i32* @OPT_A, align 4
  %28 = call i64 @ISOPTSET(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %63, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @opttochk, align 4
  %32 = load i32, i32* @OPT_a, align 4
  %33 = call i64 @ISOPTSET(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @p_atime, align 4
  %42 = call i64 @difftime(i32 %40, i32 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %111

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %30
  %47 = load i32, i32* @opttochk, align 4
  %48 = load i32, i32* @OPT_b, align 4
  %49 = call i64 @ISOPTSET(i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load i32, i32* @p_btime, align 4
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i64 @difftime(i32 %52, i32 %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %111

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %46
  br label %63

63:                                               ; preds = %62, %3
  %64 = load i32, i32* @opttochk, align 4
  %65 = load i32, i32* @OPT_c, align 4
  %66 = call i64 @ISOPTSET(i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @AU_PRS_BOTH, align 4
  %74 = load i32, i32* @AU_PRS_USECACHE, align 4
  %75 = call i32 @au_preselect(i64 %72, i32* @maskp, i32 %73, i32 %74)
  %76 = icmp ne i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %111

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %63
  %80 = load i32, i32* @opttochk, align 4
  %81 = load i32, i32* @OPT_m, align 4
  %82 = call i64 @ISOPTSET(i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %79
  store i32 0, i32* %8, align 4
  %85 = load i64*, i64** @p_evec, align 8
  store i64* %85, i64** %7, align 8
  br label %86

86:                                               ; preds = %102, %84
  %87 = load i64*, i64** %7, align 8
  %88 = load i64*, i64** @p_evec, align 8
  %89 = load i64, i64* @p_evec_used, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = icmp ult i64* %87, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64*, i64** %7, align 8
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  store i32 1, i32* %8, align 4
  br label %101

101:                                              ; preds = %100, %92
  br label %102

102:                                              ; preds = %101
  %103 = load i64*, i64** %7, align 8
  %104 = getelementptr inbounds i64, i64* %103, i32 1
  store i64* %104, i64** %7, align 8
  br label %86

105:                                              ; preds = %86
  %106 = load i32, i32* %8, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %111

109:                                              ; preds = %105
  br label %110

110:                                              ; preds = %109, %79
  store i32 1, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %108, %77, %60, %44
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @SETOPT(i32, i32) #1

declare dso_local i64 @ISOPTSET(i32, i32) #1

declare dso_local i64 @difftime(i32, i32) #1

declare dso_local i32 @au_preselect(i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
