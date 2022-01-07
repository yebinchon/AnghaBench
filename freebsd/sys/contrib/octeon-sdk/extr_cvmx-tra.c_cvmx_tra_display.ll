; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-tra.c_cvmx_tra_display.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-tra.c_cvmx_tra_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8* }
%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@CVMX_L2C_TADS = common dso_local global i32 0, align 4
@_cvmx_tra_unit = common dso_local global i32 0, align 4
@CVMX_TRA_CTL = common dso_local global i32 0, align 4
@OCTEON_CN3XXX = common dso_local global i32 0, align 4
@OCTEON_CN5XXX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_tra_display() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_12__, align 8
  %3 = alloca [4 x %struct.TYPE_13__], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca %struct.TYPE_13__, align 8
  store i32 0, i32* %1, align 4
  %9 = load i32, i32* @CVMX_L2C_TADS, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %72

11:                                               ; preds = %0
  br label %12

12:                                               ; preds = %68, %11
  store i32 0, i32* %1, align 4
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %30, %12
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @CVMX_L2C_TADS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %3, i64 0, i64 %19
  %21 = load i32, i32* %4, align 4
  %22 = call { i64, i64 } @cvmx_tra_read_v2(i32 %21)
  %23 = bitcast %struct.TYPE_13__* %5 to { i64, i64 }*
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 0
  %25 = extractvalue { i64, i64 } %22, 0
  store i64 %25, i64* %24, align 8
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 1
  %27 = extractvalue { i64, i64 } %22, 1
  store i64 %27, i64* %26, align 8
  %28 = bitcast %struct.TYPE_13__* %20 to i8*
  %29 = bitcast %struct.TYPE_13__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 8 %29, i64 16, i1 false)
  br label %30

30:                                               ; preds = %17
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %13

33:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %64, %33
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @CVMX_L2C_TADS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @CVMX_TRAX_CTL(i32 %39)
  %41 = call i8* @cvmx_read_csr(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  store i8* %41, i8** %42, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %3, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 16
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %38
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* @_cvmx_tra_unit, align 4
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %3, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = bitcast %struct.TYPE_13__* %54 to { i64, i64 }*
  %58 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 16
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %57, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @cvmx_tra_decode_text(i8* %56, i64 %59, i64 %61)
  store i32 1, i32* %1, align 4
  br label %63

63:                                               ; preds = %50, %38
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %34

67:                                               ; preds = %34
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %1, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %12, label %71

71:                                               ; preds = %68
  br label %123

72:                                               ; preds = %0
  %73 = load i32, i32* @CVMX_TRA_CTL, align 4
  %74 = call i8* @cvmx_read_csr(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  store i8* %74, i8** %75, align 8
  br label %76

76:                                               ; preds = %119, %72
  %77 = call { i64, i64 } (...) @cvmx_tra_read()
  %78 = bitcast %struct.TYPE_13__* %8 to { i64, i64 }*
  %79 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %78, i32 0, i32 0
  %80 = extractvalue { i64, i64 } %77, 0
  store i64 %80, i64* %79, align 8
  %81 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %78, i32 0, i32 1
  %82 = extractvalue { i64, i64 } %77, 1
  store i64 %82, i64* %81, align 8
  %83 = bitcast %struct.TYPE_13__* %7 to i8*
  %84 = bitcast %struct.TYPE_13__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 16, i1 false)
  %85 = load i32, i32* @OCTEON_CN3XXX, align 4
  %86 = call i64 @OCTEON_IS_MODEL(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %76
  %89 = load i32, i32* @OCTEON_CN5XXX, align 4
  %90 = call i64 @OCTEON_IS_MODEL(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %88, %76
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 1, i32* %1, align 4
  br label %106

98:                                               ; preds = %92, %88
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 1, i32* %1, align 4
  br label %105

104:                                              ; preds = %98
  store i32 0, i32* %1, align 4
  br label %105

105:                                              ; preds = %104, %103
  br label %106

106:                                              ; preds = %105, %97
  %107 = load i32, i32* %1, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = bitcast %struct.TYPE_13__* %7 to { i64, i64 }*
  %113 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %112, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @cvmx_tra_decode_text(i8* %111, i64 %114, i64 %116)
  br label %118

118:                                              ; preds = %109, %106
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %1, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %76, label %122

122:                                              ; preds = %119
  br label %123

123:                                              ; preds = %122, %71
  ret void
}

declare dso_local { i64, i64 } @cvmx_tra_read_v2(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_TRAX_CTL(i32) #1

declare dso_local i32 @cvmx_tra_decode_text(i8*, i64, i64) #1

declare dso_local { i64, i64 } @cvmx_tra_read(...) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
