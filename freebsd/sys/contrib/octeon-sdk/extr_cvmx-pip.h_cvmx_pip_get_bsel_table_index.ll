; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pip.h_cvmx_pip_get_bsel_table_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pip.h_cvmx_pip_get_bsel_table_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__, i8* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__, i8* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@OCTEON_FEATURE_BIT_EXTRACTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @cvmx_pip_get_bsel_table_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_pip_get_bsel_table_index(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__, align 8
  %8 = alloca %struct.TYPE_15__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = call i32 @cvmx_wqe_get_port(%struct.TYPE_14__* %12)
  %14 = and i32 %13, 3
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @OCTEON_FEATURE_BIT_EXTRACTOR, align 4
  %16 = call i32 @octeon_has_feature(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %176

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @CVMX_PIP_BSEL_EXT_CFGX(i32 %20)
  %22 = call i8* @cvmx_read_csr(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @CVMX_PIP_BSEL_EXT_POSX(i32 %24)
  %26 = call i8* @cvmx_read_csr(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  store i8* %26, i8** %27, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %162, %19
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %31, label %165

31:                                               ; preds = %28
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @cvmx_phys_to_ptr(i32 %36)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %9, align 8
  %45 = load i32, i32* %6, align 4
  switch i32 %45, label %150 [
    i32 0, label %46
    i32 1, label %59
    i32 2, label %72
    i32 3, label %85
    i32 4, label %98
    i32 5, label %111
    i32 6, label %124
    i32 7, label %137
  ]

46:                                               ; preds = %31
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = ashr i32 %49, 3
  %51 = load i8*, i8** %9, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, 3
  %58 = sub nsw i32 7, %57
  store i32 %58, i32* %10, align 4
  br label %150

59:                                               ; preds = %31
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 3
  %64 = load i8*, i8** %9, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 3
  %71 = sub nsw i32 7, %70
  store i32 %71, i32* %10, align 4
  br label %150

72:                                               ; preds = %31
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = ashr i32 %75, 3
  %77 = load i8*, i8** %9, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, 3
  %84 = sub nsw i32 7, %83
  store i32 %84, i32* %10, align 4
  br label %150

85:                                               ; preds = %31
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 3
  %90 = load i8*, i8** %9, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 3
  %97 = sub nsw i32 7, %96
  store i32 %97, i32* %10, align 4
  br label %150

98:                                               ; preds = %31
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = ashr i32 %101, 3
  %103 = load i8*, i8** %9, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8* %105, i8** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, 3
  %110 = sub nsw i32 7, %109
  store i32 %110, i32* %10, align 4
  br label %150

111:                                              ; preds = %31
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = ashr i32 %114, 3
  %116 = load i8*, i8** %9, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 3
  %123 = sub nsw i32 7, %122
  store i32 %123, i32* %10, align 4
  br label %150

124:                                              ; preds = %31
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = ashr i32 %127, 3
  %129 = load i8*, i8** %9, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  store i8* %131, i8** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, 3
  %136 = sub nsw i32 7, %135
  store i32 %136, i32* %10, align 4
  br label %150

137:                                              ; preds = %31
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 7
  %140 = load i32, i32* %139, align 4
  %141 = ashr i32 %140, 3
  %142 = load i8*, i8** %9, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  store i8* %144, i8** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 3
  %149 = sub nsw i32 7, %148
  store i32 %149, i32* %10, align 4
  br label %150

150:                                              ; preds = %31, %137, %124, %111, %98, %85, %72, %59, %46
  %151 = load i8*, i8** %9, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = load i32, i32* %10, align 4
  %155 = ashr i32 %153, %154
  %156 = and i32 %155, 1
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %6, align 4
  %159 = shl i32 %157, %158
  %160 = load i32, i32* %5, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %150
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %6, align 4
  br label %28

165:                                              ; preds = %28
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %170, %168
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %5, align 4
  %173 = load i32, i32* %5, align 4
  %174 = and i32 %173, 511
  store i32 %174, i32* %5, align 4
  %175 = load i32, i32* %5, align 4
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %165, %18
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i32 @cvmx_wqe_get_port(%struct.TYPE_14__*) #1

declare dso_local i32 @octeon_has_feature(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_PIP_BSEL_EXT_CFGX(i32) #1

declare dso_local i32 @CVMX_PIP_BSEL_EXT_POSX(i32) #1

declare dso_local i64 @cvmx_phys_to_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
