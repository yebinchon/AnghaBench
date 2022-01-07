; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_replic.c_FM_PCD_FrmReplicAddMember.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_replic.c_FM_PCD_FrmReplicAddMember.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }

@E_INVALID_HANDLE = common dso_local global i64 0, align 8
@E_BUSY = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_SELECTION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"memberIndex is greater than the members in the list\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"memberIndex is greater than the allowed number of members in the group\00", align 1
@FM_PCD_FRM_REPLIC_MAX_NUM_OF_ENTRIES = common dso_local global i64 0, align 8
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"numOfEntries with new entry can not be larger than %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"member check parameters in add operation\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"No available member\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"member position in add member\00", align 1
@E_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FM_PCD_FrmReplicAddMember(i64 %0, i64 %1, %struct.TYPE_24__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %15, %struct.TYPE_24__** %8, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %11, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %17 = load i64, i64* @E_INVALID_HANDLE, align 8
  %18 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_24__* %16, i64 %17)
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %20 = load i64, i64* @E_INVALID_HANDLE, align 8
  %21 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_24__* %19, i64 %20)
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %23 = call i64 @FrmReplicGroupTryLock(%struct.TYPE_24__* %22)
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %12, align 8
  %25 = call i64 @GET_ERROR_TYPE(i64 %24)
  %26 = load i64, i64* @E_BUSY, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i64, i64* @E_BUSY, align 8
  %30 = call i64 @ERROR_CODE(i64 %29)
  store i64 %30, i64* %4, align 8
  br label %187

31:                                               ; preds = %3
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %39 = call i32 @FrmReplicGroupUnlock(%struct.TYPE_24__* %38)
  %40 = load i32, i32* @MAJOR, align 4
  %41 = load i64, i64* @E_INVALID_SELECTION, align 8
  %42 = call i32 @RETURN_ERROR(i32 %40, i64 %41, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %37, %31
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %51 = call i32 @FrmReplicGroupUnlock(%struct.TYPE_24__* %50)
  %52 = load i32, i32* @MAJOR, align 4
  %53 = load i64, i64* @E_INVALID_SELECTION, align 8
  %54 = call i32 @RETURN_ERROR(i32 %52, i64 %53, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %49, %43
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  %60 = load i64, i64* @FM_PCD_FRM_REPLIC_MAX_NUM_OF_ENTRIES, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %64 = call i32 @FrmReplicGroupUnlock(%struct.TYPE_24__* %63)
  %65 = load i32, i32* @MAJOR, align 4
  %66 = load i64, i64* @E_INVALID_VALUE, align 8
  %67 = load i64, i64* @FM_PCD_FRM_REPLIC_MAX_NUM_OF_ENTRIES, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @RETURN_ERROR(i32 %65, i64 %66, i8* %68)
  br label %70

70:                                               ; preds = %62, %55
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %75 = call i64 @MemberCheckParams(i32 %73, %struct.TYPE_24__* %74)
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* %12, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %80 = call i32 @FrmReplicGroupUnlock(%struct.TYPE_24__* %79)
  %81 = load i32, i32* @MAJOR, align 4
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @RETURN_ERROR(i32 %81, i64 %82, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %84

84:                                               ; preds = %78, %70
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load i32, i32* @TRUE, align 4
  %88 = call i32 @GetMemberPosition(%struct.TYPE_24__* %85, i64 %86, i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %91 = load i32, i32* %13, align 4
  %92 = icmp eq i32 %91, 129
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i32, i32* @TRUE, align 4
  br label %97

95:                                               ; preds = %84
  %96 = load i32, i32* @FALSE, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = call %struct.TYPE_23__* @InitMember(%struct.TYPE_24__* %89, %struct.TYPE_24__* %90, i32 %98)
  store %struct.TYPE_23__* %99, %struct.TYPE_23__** %9, align 8
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %101 = icmp ne %struct.TYPE_23__* %100, null
  br i1 %101, label %108, label %102

102:                                              ; preds = %97
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %104 = call i32 @FrmReplicGroupUnlock(%struct.TYPE_24__* %103)
  %105 = load i32, i32* @MAJOR, align 4
  %106 = load i64, i64* @E_INVALID_HANDLE, align 8
  %107 = call i32 @RETURN_ERROR(i32 %105, i64 %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %108

108:                                              ; preds = %102, %97
  %109 = load i32, i32* %13, align 4
  switch i32 %109, label %177 [
    i32 130, label %110
    i32 128, label %131
    i32 129, label %156
  ]

110:                                              ; preds = %108
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %112 = load i64, i64* %6, align 8
  %113 = call %struct.TYPE_23__* @GetMemberByIndex(%struct.TYPE_24__* %111, i64 %112)
  store %struct.TYPE_23__* %113, %struct.TYPE_23__** %10, align 8
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %115 = call i32 @ASSERT_COND(%struct.TYPE_23__* %114)
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %119 = call i32 @LinkMemberToMember(%struct.TYPE_24__* %116, %struct.TYPE_23__* %117, %struct.TYPE_23__* %118)
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %125 = call i32 @LinkSourceToMember(%struct.TYPE_24__* %120, i32 %123, %struct.TYPE_23__* %124)
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 2
  %130 = call i32 @AddMemberToList(%struct.TYPE_24__* %126, %struct.TYPE_23__* %127, i32* %129)
  br label %183

131:                                              ; preds = %108
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %133 = load i64, i64* %6, align 8
  %134 = call %struct.TYPE_23__* @GetMemberByIndex(%struct.TYPE_24__* %132, i64 %133)
  store %struct.TYPE_23__* %134, %struct.TYPE_23__** %10, align 8
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %136 = call i32 @ASSERT_COND(%struct.TYPE_23__* %135)
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %138 = load i64, i64* %6, align 8
  %139 = sub nsw i64 %138, 1
  %140 = call %struct.TYPE_23__* @GetMemberByIndex(%struct.TYPE_24__* %137, i64 %139)
  store %struct.TYPE_23__* %140, %struct.TYPE_23__** %11, align 8
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %142 = call i32 @ASSERT_COND(%struct.TYPE_23__* %141)
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %146 = call i32 @LinkMemberToMember(%struct.TYPE_24__* %143, %struct.TYPE_23__* %144, %struct.TYPE_23__* %145)
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %150 = call i32 @LinkMemberToMember(%struct.TYPE_24__* %147, %struct.TYPE_23__* %148, %struct.TYPE_23__* %149)
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 0
  %155 = call i32 @AddMemberToList(%struct.TYPE_24__* %151, %struct.TYPE_23__* %152, i32* %154)
  br label %183

156:                                              ; preds = %108
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %158 = load i64, i64* %6, align 8
  %159 = sub nsw i64 %158, 1
  %160 = call %struct.TYPE_23__* @GetMemberByIndex(%struct.TYPE_24__* %157, i64 %159)
  store %struct.TYPE_23__* %160, %struct.TYPE_23__** %11, align 8
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %162 = call i32 @ASSERT_COND(%struct.TYPE_23__* %161)
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %166 = call i32 @LinkMemberToMember(%struct.TYPE_24__* %163, %struct.TYPE_23__* %164, %struct.TYPE_23__* %165)
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @FALSE, align 4
  %171 = call i32 @FillReplicAdOfTypeResult(i32 %169, i32 %170)
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 0
  %176 = call i32 @AddMemberToList(%struct.TYPE_24__* %172, %struct.TYPE_23__* %173, i32* %175)
  br label %183

177:                                              ; preds = %108
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %179 = call i32 @FrmReplicGroupUnlock(%struct.TYPE_24__* %178)
  %180 = load i32, i32* @MAJOR, align 4
  %181 = load i64, i64* @E_INVALID_SELECTION, align 8
  %182 = call i32 @RETURN_ERROR(i32 %180, i64 %181, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %183

183:                                              ; preds = %177, %156, %131, %110
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %185 = call i32 @FrmReplicGroupUnlock(%struct.TYPE_24__* %184)
  %186 = load i64, i64* @E_OK, align 8
  store i64 %186, i64* %4, align 8
  br label %187

187:                                              ; preds = %183, %28
  %188 = load i64, i64* %4, align 8
  ret i64 %188
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_24__*, i64) #1

declare dso_local i64 @FrmReplicGroupTryLock(%struct.TYPE_24__*) #1

declare dso_local i64 @GET_ERROR_TYPE(i64) #1

declare dso_local i64 @ERROR_CODE(i64) #1

declare dso_local i32 @FrmReplicGroupUnlock(%struct.TYPE_24__*) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i64 @MemberCheckParams(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @GetMemberPosition(%struct.TYPE_24__*, i64, i32) #1

declare dso_local %struct.TYPE_23__* @InitMember(%struct.TYPE_24__*, %struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_23__* @GetMemberByIndex(%struct.TYPE_24__*, i64) #1

declare dso_local i32 @ASSERT_COND(%struct.TYPE_23__*) #1

declare dso_local i32 @LinkMemberToMember(%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @LinkSourceToMember(%struct.TYPE_24__*, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @AddMemberToList(%struct.TYPE_24__*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @FillReplicAdOfTypeResult(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
