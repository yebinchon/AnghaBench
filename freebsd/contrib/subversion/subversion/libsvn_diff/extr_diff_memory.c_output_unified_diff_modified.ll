; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_memory.c_output_unified_diff_modified.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_memory.c_output_unified_diff_modified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64*, i64*, i64*, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@unified_output_context = common dso_local global i32 0, align 4
@unified_output_skip = common dso_local global i32 0, align 4
@unified_output_delete = common dso_local global i32 0, align 4
@unified_output_insert = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64, i64, i64, i64, i64, i64)* @output_unified_diff_modified to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @output_unified_diff_modified(i8* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %15, align 8
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %18, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %7
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %16, align 8
  br label %34

32:                                               ; preds = %7
  %33 = load i64, i64* %9, align 8
  store i64 %33, i64* %16, align 8
  br label %34

34:                                               ; preds = %32, %28
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %41, %34
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %53, %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  store i64 %63, i64* %17, align 8
  br label %80

64:                                               ; preds = %41
  store i64 -1, i64* %17, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = load i64, i64* %10, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* %12, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74, %71
  %78 = load i64, i64* @TRUE, align 8
  store i64 %78, i64* %18, align 8
  br label %79

79:                                               ; preds = %77, %74, %64
  br label %80

80:                                               ; preds = %79, %48
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %16, align 8
  %83 = sub nsw i64 %81, %82
  store i64 %83, i64* %19, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %19, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %80
  %92 = load i64, i64* %17, align 8
  %93 = load i64, i64* %19, align 8
  %94 = icmp sle i64 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @output_unified_flush_hunk(%struct.TYPE_4__* %96, i32 %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  %102 = load i64, i64* @TRUE, align 8
  store i64 %102, i64* %18, align 8
  br label %124

103:                                              ; preds = %91, %80
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %103
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %110, %103
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %119 = load i32, i32* @unified_output_context, align 4
  %120 = load i64, i64* %9, align 8
  %121 = call i32 @output_unified_token_range(%struct.TYPE_4__* %118, i32 0, i32 %119, i64 %120)
  %122 = call i32 @SVN_ERR(i32 %121)
  br label %123

123:                                              ; preds = %117, %110
  br label %124

124:                                              ; preds = %123, %95
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %126 = load i32, i32* @unified_output_skip, align 4
  %127 = load i64, i64* %9, align 8
  %128 = load i64, i64* %16, align 8
  %129 = sub nsw i64 %127, %128
  %130 = call i32 @output_unified_token_range(%struct.TYPE_4__* %125, i32 0, i32 %126, i64 %129)
  %131 = call i32 @SVN_ERR(i32 %130)
  %132 = load i64, i64* %18, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %166

134:                                              ; preds = %124
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %134
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %146, 0
  br label %148

148:                                              ; preds = %141, %134
  %149 = phi i1 [ false, %134 ], [ %147, %141 ]
  %150 = zext i1 %149 to i32
  %151 = call i32 @SVN_ERR_ASSERT(i32 %150)
  %152 = load i64, i64* %9, align 8
  %153 = load i64, i64* %16, align 8
  %154 = sub nsw i64 %152, %153
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 2
  %157 = load i64*, i64** %156, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 0
  store i64 %154, i64* %158, align 8
  %159 = load i64, i64* %11, align 8
  %160 = load i64, i64* %16, align 8
  %161 = sub nsw i64 %159, %160
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 2
  %164 = load i64*, i64** %163, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 1
  store i64 %161, i64* %165, align 8
  br label %166

166:                                              ; preds = %148, %124
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %168 = load i32, i32* @unified_output_skip, align 4
  %169 = load i64, i64* %11, align 8
  %170 = call i32 @output_unified_token_range(%struct.TYPE_4__* %167, i32 1, i32 %168, i64 %169)
  %171 = call i32 @SVN_ERR(i32 %170)
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %173 = load i32, i32* @unified_output_context, align 4
  %174 = load i64, i64* %9, align 8
  %175 = call i32 @output_unified_token_range(%struct.TYPE_4__* %172, i32 0, i32 %173, i64 %174)
  %176 = call i32 @SVN_ERR(i32 %175)
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %178 = load i32, i32* @unified_output_delete, align 4
  %179 = load i64, i64* %9, align 8
  %180 = load i64, i64* %10, align 8
  %181 = add nsw i64 %179, %180
  %182 = call i32 @output_unified_token_range(%struct.TYPE_4__* %177, i32 0, i32 %178, i64 %181)
  %183 = call i32 @SVN_ERR(i32 %182)
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %185 = load i32, i32* @unified_output_insert, align 4
  %186 = load i64, i64* %11, align 8
  %187 = load i64, i64* %12, align 8
  %188 = add nsw i64 %186, %187
  %189 = call i32 @output_unified_token_range(%struct.TYPE_4__* %184, i32 1, i32 %185, i64 %188)
  %190 = call i32 @SVN_ERR(i32 %189)
  %191 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %191
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @output_unified_flush_hunk(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @output_unified_token_range(%struct.TYPE_4__*, i32, i32, i64) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
