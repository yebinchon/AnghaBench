; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_msg.c_mod_rpt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_msg.c_mod_rpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64*, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_12__*, i32, i8*, i64)* }

@mod_rpt.action = internal constant [7 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [10 x i8] c"293|added\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"294|changed\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"295|deleted\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"296|joined\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"297|moved\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"298|shifted\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"299|yanked\00", align 1
@mod_rpt.lines = internal constant [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str.7 = private unnamed_addr constant [9 x i8] c"300|line\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"301|lines\00", align 1
@SC_EX_SILENT = common dso_local global i32 0, align 4
@OOBLNO = common dso_local global i32 0, align 4
@O_REPORT = common dso_local global i32 0, align 4
@L_YANKED = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"%lu \00", align 1
@M_INFO = common dso_local global i32 0, align 4
@MAXNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mod_rpt(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = load i32, i32* @SC_EX_SILENT, align 4
  %16 = call i64 @F_ISSET(%struct.TYPE_12__* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %198

19:                                               ; preds = %1
  %20 = load i32, i32* @OOBLNO, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %24 = load i32, i32* @O_REPORT, align 4
  %25 = call i64 @O_VAL(%struct.TYPE_12__* %23, i32 %24)
  store i64 %25, i64* %4, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %3, align 8
  br label %26

26:                                               ; preds = %40, %19
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, 7
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %3, align 8
  %39 = add nsw i64 %38, %37
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %26

43:                                               ; preds = %26
  %44 = load i64, i64* %3, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %198

47:                                               ; preds = %43
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* %4, align 8
  %50 = icmp sle i64 %48, %49
  br i1 %50, label %51, label %76

51:                                               ; preds = %47
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* @L_YANKED, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %72, %60
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ult i64 %63, 7
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %61

75:                                               ; preds = %61
  br label %198

76:                                               ; preds = %51, %47
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @GET_SPACE_GOTOC(%struct.TYPE_12__* %77, i8* %78, i64 %79, i32 1401)
  %81 = load i8*, i8** %12, align 8
  store i8* %81, i8** %13, align 8
  store i32 1, i32* %5, align 4
  store i64 0, i64* %9, align 8
  store i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @mod_rpt.action, i64 0, i64 0), i8*** %11, align 8
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %172, %76
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp ult i64 %84, 7
  br i1 %85, label %86, label %177

86:                                               ; preds = %82
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %171

95:                                               ; preds = %86
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 0, i32* %5, align 4
  br label %106

99:                                               ; preds = %95
  %100 = load i8*, i8** %13, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %13, align 8
  store i8 59, i8* %100, align 1
  %102 = load i8*, i8** %13, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %13, align 8
  store i8 32, i8* %102, align 1
  %104 = load i64, i64* %9, align 8
  %105 = add i64 %104, 2
  store i64 %105, i64* %9, align 8
  br label %106

106:                                              ; preds = %99, %98
  %107 = load i8*, i8** %13, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @snprintf(i8* %107, i32 25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 %114)
  store i64 %115, i64* %8, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 %116
  store i8* %118, i8** %13, align 8
  %119 = load i64, i64* %8, align 8
  %120 = load i64, i64* %9, align 8
  %121 = add i64 %120, %119
  store i64 %121, i64* %9, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 1
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 0, i32 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [2 x i8*], [2 x i8*]* @mod_rpt.lines, i64 0, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = call i8* @msg_cat(%struct.TYPE_12__* %122, i8* %135, i64* %8)
  store i8* %136, i8** %10, align 8
  %137 = load i8*, i8** %13, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = load i64, i64* %8, align 8
  %140 = call i32 @memcpy(i8* %137, i8* %138, i64 %139)
  %141 = load i64, i64* %8, align 8
  %142 = load i8*, i8** %13, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 %141
  store i8* %143, i8** %13, align 8
  %144 = load i64, i64* %8, align 8
  %145 = load i64, i64* %9, align 8
  %146 = add i64 %145, %144
  store i64 %146, i64* %9, align 8
  %147 = load i8*, i8** %13, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %13, align 8
  store i8 32, i8* %147, align 1
  %149 = load i64, i64* %9, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %9, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %152 = load i8**, i8*** %11, align 8
  %153 = load i8*, i8** %152, align 8
  %154 = call i8* @msg_cat(%struct.TYPE_12__* %151, i8* %153, i64* %8)
  store i8* %154, i8** %10, align 8
  %155 = load i8*, i8** %13, align 8
  %156 = load i8*, i8** %10, align 8
  %157 = load i64, i64* %8, align 8
  %158 = call i32 @memcpy(i8* %155, i8* %156, i64 %157)
  %159 = load i64, i64* %8, align 8
  %160 = load i8*, i8** %13, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 %159
  store i8* %161, i8** %13, align 8
  %162 = load i64, i64* %8, align 8
  %163 = load i64, i64* %9, align 8
  %164 = add i64 %163, %162
  store i64 %164, i64* %9, align 8
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i64*, i64** %166, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  store i64 0, i64* %170, align 8
  br label %171

171:                                              ; preds = %106, %86
  br label %172

172:                                              ; preds = %171
  %173 = load i8**, i8*** %11, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i32 1
  store i8** %174, i8*** %11, align 8
  %175 = load i32, i32* %6, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %6, align 4
  br label %82

177:                                              ; preds = %82
  %178 = load i8*, i8** %13, align 8
  store i8 10, i8* %178, align 1
  %179 = load i64, i64* %9, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %9, align 8
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %182 = call i32 @ex_fflush(%struct.TYPE_12__* %181)
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = load i32 (%struct.TYPE_12__*, i32, i8*, i64)*, i32 (%struct.TYPE_12__*, i32, i8*, i64)** %186, align 8
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %189 = load i32, i32* @M_INFO, align 4
  %190 = load i8*, i8** %12, align 8
  %191 = load i64, i64* %9, align 8
  %192 = call i32 %187(%struct.TYPE_12__* %188, i32 %189, i8* %190, i64 %191)
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %194 = load i8*, i8** %12, align 8
  %195 = load i64, i64* %7, align 8
  %196 = call i32 @FREE_SPACE(%struct.TYPE_12__* %193, i8* %194, i64 %195)
  br label %197

197:                                              ; preds = %177
  br label %198

198:                                              ; preds = %197, %75, %46, %18
  ret void
}

declare dso_local i64 @F_ISSET(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @O_VAL(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @GET_SPACE_GOTOC(%struct.TYPE_12__*, i8*, i64, i32) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i8* @msg_cat(%struct.TYPE_12__*, i8*, i64*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @ex_fflush(%struct.TYPE_12__*) #1

declare dso_local i32 @FREE_SPACE(%struct.TYPE_12__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
