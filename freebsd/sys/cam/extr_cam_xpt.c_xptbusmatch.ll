; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptbusmatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptbusmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_match_pattern = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.bus_match_pattern }
%struct.bus_match_pattern = type { i32, i64, i64, i64, i32 }
%struct.cam_eb = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i32 }

@DM_RET_NONE = common dso_local global i32 0, align 4
@DM_RET_ERROR = common dso_local global i32 0, align 4
@DM_RET_DESCEND = common dso_local global i32 0, align 4
@DM_RET_COPY = common dso_local global i32 0, align 4
@DEV_MATCH_BUS = common dso_local global i64 0, align 8
@DM_RET_ACTION_MASK = common dso_local global i32 0, align 4
@BUS_MATCH_ANY = common dso_local global i32 0, align 4
@BUS_MATCH_NONE = common dso_local global i32 0, align 4
@BUS_MATCH_PATH = common dso_local global i32 0, align 4
@BUS_MATCH_BUS_ID = common dso_local global i32 0, align 4
@BUS_MATCH_UNIT = common dso_local global i32 0, align 4
@BUS_MATCH_NAME = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@DM_RET_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dev_match_pattern*, i64, %struct.cam_eb*)* @xptbusmatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xptbusmatch(%struct.dev_match_pattern* %0, i64 %1, %struct.cam_eb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dev_match_pattern*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cam_eb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.bus_match_pattern*, align 8
  store %struct.dev_match_pattern* %0, %struct.dev_match_pattern** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.cam_eb* %2, %struct.cam_eb** %7, align 8
  %11 = load i32, i32* @DM_RET_NONE, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.cam_eb*, %struct.cam_eb** %7, align 8
  %13 = icmp eq %struct.cam_eb* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @DM_RET_ERROR, align 4
  store i32 %15, i32* %4, align 4
  br label %179

16:                                               ; preds = %3
  %17 = load %struct.dev_match_pattern*, %struct.dev_match_pattern** %5, align 8
  %18 = icmp eq %struct.dev_match_pattern* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19, %16
  %23 = load i32, i32* @DM_RET_DESCEND, align 4
  %24 = load i32, i32* @DM_RET_COPY, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %4, align 4
  br label %179

26:                                               ; preds = %19
  store i64 0, i64* %9, align 8
  br label %27

27:                                               ; preds = %164, %26
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %167

31:                                               ; preds = %27
  %32 = load %struct.dev_match_pattern*, %struct.dev_match_pattern** %5, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.dev_match_pattern, %struct.dev_match_pattern* %32, i64 %33
  %35 = getelementptr inbounds %struct.dev_match_pattern, %struct.dev_match_pattern* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DEV_MATCH_BUS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %31
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @DM_RET_ACTION_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @DM_RET_NONE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* @DM_RET_DESCEND, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %45, %39
  br label %164

50:                                               ; preds = %31
  %51 = load %struct.dev_match_pattern*, %struct.dev_match_pattern** %5, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds %struct.dev_match_pattern, %struct.dev_match_pattern* %51, i64 %52
  %54 = getelementptr inbounds %struct.dev_match_pattern, %struct.dev_match_pattern* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store %struct.bus_match_pattern* %55, %struct.bus_match_pattern** %10, align 8
  %56 = load %struct.bus_match_pattern*, %struct.bus_match_pattern** %10, align 8
  %57 = getelementptr inbounds %struct.bus_match_pattern, %struct.bus_match_pattern* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @BUS_MATCH_ANY, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %50
  %62 = load i32, i32* @DM_RET_COPY, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @DM_RET_ACTION_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @DM_RET_NONE, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %179

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %50
  %74 = load %struct.bus_match_pattern*, %struct.bus_match_pattern** %10, align 8
  %75 = getelementptr inbounds %struct.bus_match_pattern, %struct.bus_match_pattern* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @BUS_MATCH_NONE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %164

80:                                               ; preds = %73
  %81 = load %struct.bus_match_pattern*, %struct.bus_match_pattern** %10, align 8
  %82 = getelementptr inbounds %struct.bus_match_pattern, %struct.bus_match_pattern* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @BUS_MATCH_PATH, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %80
  %88 = load %struct.bus_match_pattern*, %struct.bus_match_pattern** %10, align 8
  %89 = getelementptr inbounds %struct.bus_match_pattern, %struct.bus_match_pattern* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.cam_eb*, %struct.cam_eb** %7, align 8
  %92 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %164

96:                                               ; preds = %87, %80
  %97 = load %struct.bus_match_pattern*, %struct.bus_match_pattern** %10, align 8
  %98 = getelementptr inbounds %struct.bus_match_pattern, %struct.bus_match_pattern* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @BUS_MATCH_BUS_ID, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %96
  %104 = load %struct.bus_match_pattern*, %struct.bus_match_pattern** %10, align 8
  %105 = getelementptr inbounds %struct.bus_match_pattern, %struct.bus_match_pattern* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.cam_eb*, %struct.cam_eb** %7, align 8
  %108 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %106, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  br label %164

114:                                              ; preds = %103, %96
  %115 = load %struct.bus_match_pattern*, %struct.bus_match_pattern** %10, align 8
  %116 = getelementptr inbounds %struct.bus_match_pattern, %struct.bus_match_pattern* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @BUS_MATCH_UNIT, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %114
  %122 = load %struct.bus_match_pattern*, %struct.bus_match_pattern** %10, align 8
  %123 = getelementptr inbounds %struct.bus_match_pattern, %struct.bus_match_pattern* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.cam_eb*, %struct.cam_eb** %7, align 8
  %126 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %125, i32 0, i32 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %124, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %121
  br label %164

132:                                              ; preds = %121, %114
  %133 = load %struct.bus_match_pattern*, %struct.bus_match_pattern** %10, align 8
  %134 = getelementptr inbounds %struct.bus_match_pattern, %struct.bus_match_pattern* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @BUS_MATCH_NAME, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %132
  %140 = load %struct.bus_match_pattern*, %struct.bus_match_pattern** %10, align 8
  %141 = getelementptr inbounds %struct.bus_match_pattern, %struct.bus_match_pattern* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.cam_eb*, %struct.cam_eb** %7, align 8
  %144 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %143, i32 0, i32 1
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @DEV_IDLEN, align 4
  %149 = call i64 @strncmp(i32 %142, i32 %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %139
  br label %164

152:                                              ; preds = %139, %132
  %153 = load i32, i32* @DM_RET_COPY, align 4
  %154 = load i32, i32* %8, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @DM_RET_ACTION_MASK, align 4
  %158 = and i32 %156, %157
  %159 = load i32, i32* @DM_RET_DESCEND, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %152
  %162 = load i32, i32* %8, align 4
  store i32 %162, i32* %4, align 4
  br label %179

163:                                              ; preds = %152
  br label %164

164:                                              ; preds = %163, %151, %131, %113, %95, %79, %49
  %165 = load i64, i64* %9, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* %9, align 8
  br label %27

167:                                              ; preds = %27
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* @DM_RET_ACTION_MASK, align 4
  %170 = and i32 %168, %169
  %171 = load i32, i32* @DM_RET_NONE, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %167
  %174 = load i32, i32* @DM_RET_STOP, align 4
  %175 = load i32, i32* %8, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %8, align 4
  br label %177

177:                                              ; preds = %173, %167
  %178 = load i32, i32* %8, align 4
  store i32 %178, i32* %4, align 4
  br label %179

179:                                              ; preds = %177, %161, %70, %22, %14
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i64 @strncmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
