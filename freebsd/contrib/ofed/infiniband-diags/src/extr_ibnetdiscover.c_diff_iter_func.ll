; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibnetdiscover.c_diff_iter_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibnetdiscover.c_diff_iter_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, i32, %struct.TYPE_13__**, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.iter_diff_data = type { i8*, i32, i8*, i32 (%struct.TYPE_14__*, i8*)*, i32 (%struct.TYPE_14__*, i32, i32*, i8*, i8*)*, i32 (%struct.TYPE_13__*, i32, i8*)*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"DEBUG: fabric1_node %p\0A\00", align 1
@DIFF_FLAG_PORT_CONNECTION = common dso_local global i32 0, align 4
@DIFF_FLAG_LID = common dso_local global i32 0, align 4
@DIFF_FLAG_NODE_DESCRIPTION = common dso_local global i32 0, align 4
@IB_SMP_DATA_SIZE = common dso_local global i32 0, align 4
@f = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%snumports = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i8*)* @diff_iter_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diff_iter_func(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iter_diff_data*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.iter_diff_data*
  store %struct.iter_diff_data* %11, %struct.iter_diff_data** %5, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = call i32 @DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %12)
  %14 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %15 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.TYPE_14__* @ibnd_find_node_guid(i32 %16, i32 %19)
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %6, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = icmp ne %struct.TYPE_14__* %21, null
  br i1 %22, label %70, label %23

23:                                               ; preds = %2
  %24 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %25 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %24, i32 0, i32 4
  %26 = load i32 (%struct.TYPE_14__*, i32, i32*, i8*, i8*)*, i32 (%struct.TYPE_14__*, i32, i32*, i8*, i8*)** %25, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %29 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %32 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 %26(%struct.TYPE_14__* %27, i32 0, i32* null, i8* %30, i8* %33)
  store i32 1, i32* %8, align 4
  br label %35

35:                                               ; preds = %66, %23
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sle i32 %36, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %35
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %44, i64 %46
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %7, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %50 = icmp ne %struct.TYPE_13__* %49, null
  br i1 %50, label %51, label %65

51:                                               ; preds = %41
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %58 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %57, i32 0, i32 5
  %59 = load i32 (%struct.TYPE_13__*, i32, i8*)*, i32 (%struct.TYPE_13__*, i32, i8*)** %58, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %62 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 %59(%struct.TYPE_13__* %60, i32 0, i8* %63)
  br label %65

65:                                               ; preds = %56, %51, %41
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %35

69:                                               ; preds = %35
  br label %183

70:                                               ; preds = %2
  %71 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %72 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @DIFF_FLAG_PORT_CONNECTION, align 4
  %75 = load i32, i32* @DIFF_FLAG_LID, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @DIFF_FLAG_NODE_DESCRIPTION, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %73, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %182

81:                                               ; preds = %70
  store i32 0, i32* %9, align 4
  %82 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %83 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @DIFF_FLAG_LID, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %81
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %91, %94
  br i1 %95, label %113, label %96

96:                                               ; preds = %88, %81
  %97 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %98 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @DIFF_FLAG_NODE_DESCRIPTION, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %134

103:                                              ; preds = %96
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @IB_SMP_DATA_SIZE, align 4
  %111 = call i64 @memcmp(i32 %106, i32 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %134

113:                                              ; preds = %103, %88
  %114 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %115 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %114, i32 0, i32 4
  %116 = load i32 (%struct.TYPE_14__*, i32, i32*, i8*, i8*)*, i32 (%struct.TYPE_14__*, i32, i32*, i8*, i8*)** %115, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %118 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %119 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 %116(%struct.TYPE_14__* %117, i32 0, i32* null, i8* null, i8* %120)
  %122 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %123 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %122, i32 0, i32 3
  %124 = load i32 (%struct.TYPE_14__*, i8*)*, i32 (%struct.TYPE_14__*, i8*)** %123, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %126 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %127 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 %124(%struct.TYPE_14__* %125, i8* %128)
  %130 = load i32, i32* @f, align 4
  %131 = call i32 (i32, i8*, ...) @fprintf(i32 %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %113, %103, %96
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %137, %140
  br i1 %141, label %142, label %162

142:                                              ; preds = %134
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %144 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %145 = call i32 @diff_iter_out_header(%struct.TYPE_14__* %143, %struct.iter_diff_data* %144, i32* %9)
  %146 = load i32, i32* @f, align 4
  %147 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %148 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (i32, i8*, ...) @fprintf(i32 %146, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %149, i32 %152)
  %154 = load i32, i32* @f, align 4
  %155 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %156 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %155, i32 0, i32 2
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 (i32, i8*, ...) @fprintf(i32 %154, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %157, i32 %160)
  br label %183

162:                                              ; preds = %134
  %163 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %164 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @DIFF_FLAG_PORT_CONNECTION, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %176, label %169

169:                                              ; preds = %162
  %170 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %171 = getelementptr inbounds %struct.iter_diff_data, %struct.iter_diff_data* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @DIFF_FLAG_LID, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %169, %162
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %179 = load %struct.iter_diff_data*, %struct.iter_diff_data** %5, align 8
  %180 = call i32 @diff_ports(%struct.TYPE_14__* %177, %struct.TYPE_14__* %178, i32* %9, %struct.iter_diff_data* %179)
  br label %181

181:                                              ; preds = %176, %169
  br label %182

182:                                              ; preds = %181, %70
  br label %183

183:                                              ; preds = %142, %182, %69
  ret void
}

declare dso_local i32 @DEBUG(i8*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @ibnd_find_node_guid(i32, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @diff_iter_out_header(%struct.TYPE_14__*, %struct.iter_diff_data*, i32*) #1

declare dso_local i32 @diff_ports(%struct.TYPE_14__*, %struct.TYPE_14__*, i32*, %struct.iter_diff_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
