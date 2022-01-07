; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_txt_showmatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_txt_showmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i64, i32* }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_23__ = type { i64, i64, i32, i64 }
%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_22__ = type { i32 }

@P_TOP = common dso_local global i32 0, align 4
@CS_EOF = common dso_local global i64 0, align 8
@CS_SOF = common dso_local global i64 0, align 8
@M_BERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Unmatched %s\00", align 1
@O_MATCHTIME = common dso_local global i32 0, align 4
@EC_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*)* @txt_showmatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txt_showmatch(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_23__, align 8
  %8 = alloca %struct.TYPE_26__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %12 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %17 = call i32 @UPDATE_POSITION(%struct.TYPE_25__* %15, %struct.TYPE_24__* %16)
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %19 = call i64 @vs_refresh(%struct.TYPE_25__* %18, i32 1)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %139

22:                                               ; preds = %2
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %24 = load i32, i32* @P_TOP, align 4
  %25 = call i64 @vs_sm_position(%struct.TYPE_25__* %23, %struct.TYPE_26__* %8, i32 0, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %139

28:                                               ; preds = %22
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %35, 1
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  store i64 %36, i64* %37, align 8
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %39 = call i64 @cs_init(%struct.TYPE_25__* %38, %struct.TYPE_23__* %7)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %139

42:                                               ; preds = %28
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %44 = call %struct.TYPE_22__* @VIP(%struct.TYPE_25__* %43)
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %10, align 4
  %49 = call i32* @STRCHR(i32 %46, i32 %48)
  %50 = getelementptr inbounds i32, i32* %49, i64 -1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  store i32 1, i32* %9, align 4
  br label %52

52:                                               ; preds = %98, %78, %42
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %54 = call i64 @cs_prev(%struct.TYPE_25__* %53, %struct.TYPE_23__* %7)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %139

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CS_EOF, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CS_SOF, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %66, %61
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %73 = load i32, i32* @M_BERR, align 4
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @KEY_NAME(%struct.TYPE_25__* %74, i32 %75)
  %77 = call i32 @msgq(%struct.TYPE_25__* %72, i32 %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %76)
  store i32 0, i32* %3, align 4
  br label %139

78:                                               ; preds = %66
  br label %52

79:                                               ; preds = %57
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %98

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %9, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %99

97:                                               ; preds = %92, %87
  br label %98

98:                                               ; preds = %97, %84
  br label %52

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp slt i64 %101, %103
  br i1 %104, label %117, label %105

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %107, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp slt i64 %113, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111, %99
  store i32 0, i32* %3, align 4
  br label %139

118:                                              ; preds = %111, %105
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 1
  store i64 %124, i64* %126, align 8
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %128 = call i64 @vs_refresh(%struct.TYPE_25__* %127, i32 1)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %118
  store i32 1, i32* %3, align 4
  br label %139

131:                                              ; preds = %118
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %134 = load i32, i32* @O_MATCHTIME, align 4
  %135 = call i32 @O_VAL(%struct.TYPE_25__* %133, i32 %134)
  %136 = mul nsw i32 %135, 100
  %137 = load i32, i32* @EC_TIMEOUT, align 4
  %138 = call i32 @v_event_get(%struct.TYPE_25__* %132, i32* null, i32 %136, i32 %137)
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %131, %130, %117, %71, %56, %41, %27, %21
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @UPDATE_POSITION(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i64 @vs_refresh(%struct.TYPE_25__*, i32) #1

declare dso_local i64 @vs_sm_position(%struct.TYPE_25__*, %struct.TYPE_26__*, i32, i32) #1

declare dso_local i64 @cs_init(%struct.TYPE_25__*, %struct.TYPE_23__*) #1

declare dso_local i32* @STRCHR(i32, i32) #1

declare dso_local %struct.TYPE_22__* @VIP(%struct.TYPE_25__*) #1

declare dso_local i64 @cs_prev(%struct.TYPE_25__*, %struct.TYPE_23__*) #1

declare dso_local i32 @msgq(%struct.TYPE_25__*, i32, i8*, i32) #1

declare dso_local i32 @KEY_NAME(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @v_event_get(%struct.TYPE_25__*, i32*, i32, i32) #1

declare dso_local i32 @O_VAL(%struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
