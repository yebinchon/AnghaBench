; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_pcd.c_FM_PCD_ForceIntr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_pcd.c_FM_PCD_ForceIntr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_9__*, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"FM_PCD_ForceIntr - guest mode!\00", align 1
@MINOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Can't ask for this interrupt - keygen is not working\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Can't ask for this interrupt - policer is not working\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Can't ask for this interrupt -parsrer is not working\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Invalid interrupt requested\00", align 1
@FM_PCD_EX_PRS_DOUBLE_ECC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"The selected exception is masked\00", align 1
@FM_PCD_EX_PRS_SINGLE_ECC = common dso_local global i32 0, align 4
@FM_EX_KG_DOUBLE_ECC = common dso_local global i32 0, align 4
@FM_EX_KG_KEYSIZE_OVERFLOW = common dso_local global i32 0, align 4
@FM_PCD_EX_PLCR_DOUBLE_ECC = common dso_local global i32 0, align 4
@FM_PCD_PLCR_DOUBLE_ECC = common dso_local global i32 0, align 4
@FM_PCD_EX_PLCR_INIT_ENTRY_ERROR = common dso_local global i32 0, align 4
@FM_PCD_PLCR_INIT_ENTRY_ERROR = common dso_local global i32 0, align 4
@FM_PCD_EX_PLCR_PRAM_SELF_INIT_COMPLETE = common dso_local global i32 0, align 4
@FM_PCD_PLCR_PRAM_SELF_INIT_COMPLETE = common dso_local global i32 0, align 4
@FM_PCD_EX_PLCR_ATOMIC_ACTION_COMPLETE = common dso_local global i32 0, align 4
@FM_PCD_PLCR_ATOMIC_ACTION_COMPLETE = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FM_PCD_ForceIntr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @E_INVALID_HANDLE, align 4
  %11 = call i32 @SANITY_CHECK_RETURN_ERROR(i32 %9, i32 %10)
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* @E_INVALID_STATE, align 4
  %19 = call i32 @SANITY_CHECK_RETURN_ERROR(i32 %17, i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NCSW_MASTER_ID, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @MAJOR, align 4
  %27 = load i32, i32* @E_NOT_SUPPORTED, align 4
  %28 = call i32 @RETURN_ERROR(i32 %26, i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %2
  %30 = load i32, i32* %4, align 4
  switch i32 %30, label %61 [
    i32 135, label %31
    i32 134, label %31
    i32 132, label %41
    i32 131, label %41
    i32 130, label %41
    i32 133, label %41
    i32 129, label %51
    i32 128, label %51
  ]

31:                                               ; preds = %29, %29
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @MINOR, align 4
  %38 = load i32, i32* @E_INVALID_STATE, align 4
  %39 = call i32 @RETURN_ERROR(i32 %37, i32 %38, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %31
  br label %65

41:                                               ; preds = %29, %29, %29, %29
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = icmp ne %struct.TYPE_9__* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @MINOR, align 4
  %48 = load i32, i32* @E_INVALID_STATE, align 4
  %49 = call i32 @RETURN_ERROR(i32 %47, i32 %48, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %41
  br label %65

51:                                               ; preds = %29, %29
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @MINOR, align 4
  %58 = load i32, i32* @E_INVALID_STATE, align 4
  %59 = call i32 @RETURN_ERROR(i32 %57, i32 %58, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %51
  br label %65

61:                                               ; preds = %29
  %62 = load i32, i32* @MAJOR, align 4
  %63 = load i32, i32* @E_INVALID_STATE, align 4
  %64 = call i32 @RETURN_ERROR(i32 %62, i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %65

65:                                               ; preds = %61, %60, %50, %40
  %66 = load i32, i32* %4, align 4
  switch i32 %66, label %217 [
    i32 129, label %67
    i32 128, label %79
    i32 135, label %91
    i32 134, label %112
    i32 132, label %133
    i32 131, label %154
    i32 130, label %175
    i32 133, label %196
  ]

67:                                               ; preds = %65
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @FM_PCD_EX_PRS_DOUBLE_ECC, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* @MINOR, align 4
  %76 = load i32, i32* @E_NOT_SUPPORTED, align 4
  %77 = call i32 @RETURN_ERROR(i32 %75, i32 %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %78

78:                                               ; preds = %74, %67
  br label %217

79:                                               ; preds = %65
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @FM_PCD_EX_PRS_SINGLE_ECC, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* @MINOR, align 4
  %88 = load i32, i32* @E_NOT_SUPPORTED, align 4
  %89 = call i32 @RETURN_ERROR(i32 %87, i32 %88, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %90

90:                                               ; preds = %86, %79
  br label %217

91:                                               ; preds = %65
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @FM_EX_KG_DOUBLE_ECC, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* @MINOR, align 4
  %100 = load i32, i32* @E_NOT_SUPPORTED, align 4
  %101 = call i32 @RETURN_ERROR(i32 %99, i32 %100, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %102

102:                                              ; preds = %98, %91
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @FM_EX_KG_DOUBLE_ECC, align 4
  %111 = call i32 @WRITE_UINT32(i32 %109, i32 %110)
  br label %217

112:                                              ; preds = %65
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @FM_EX_KG_KEYSIZE_OVERFLOW, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %112
  %120 = load i32, i32* @MINOR, align 4
  %121 = load i32, i32* @E_NOT_SUPPORTED, align 4
  %122 = call i32 @RETURN_ERROR(i32 %120, i32 %121, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %123

123:                                              ; preds = %119, %112
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @FM_EX_KG_KEYSIZE_OVERFLOW, align 4
  %132 = call i32 @WRITE_UINT32(i32 %130, i32 %131)
  br label %217

133:                                              ; preds = %65
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @FM_PCD_EX_PLCR_DOUBLE_ECC, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %133
  %141 = load i32, i32* @MINOR, align 4
  %142 = load i32, i32* @E_NOT_SUPPORTED, align 4
  %143 = call i32 @RETURN_ERROR(i32 %141, i32 %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %144

144:                                              ; preds = %140, %133
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @FM_PCD_PLCR_DOUBLE_ECC, align 4
  %153 = call i32 @WRITE_UINT32(i32 %151, i32 %152)
  br label %217

154:                                              ; preds = %65
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @FM_PCD_EX_PLCR_INIT_ENTRY_ERROR, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %154
  %162 = load i32, i32* @MINOR, align 4
  %163 = load i32, i32* @E_NOT_SUPPORTED, align 4
  %164 = call i32 @RETURN_ERROR(i32 %162, i32 %163, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %165

165:                                              ; preds = %161, %154
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @FM_PCD_PLCR_INIT_ENTRY_ERROR, align 4
  %174 = call i32 @WRITE_UINT32(i32 %172, i32 %173)
  br label %217

175:                                              ; preds = %65
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @FM_PCD_EX_PLCR_PRAM_SELF_INIT_COMPLETE, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %175
  %183 = load i32, i32* @MINOR, align 4
  %184 = load i32, i32* @E_NOT_SUPPORTED, align 4
  %185 = call i32 @RETURN_ERROR(i32 %183, i32 %184, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %186

186:                                              ; preds = %182, %175
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @FM_PCD_PLCR_PRAM_SELF_INIT_COMPLETE, align 4
  %195 = call i32 @WRITE_UINT32(i32 %193, i32 %194)
  br label %217

196:                                              ; preds = %65
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @FM_PCD_EX_PLCR_ATOMIC_ACTION_COMPLETE, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %196
  %204 = load i32, i32* @MINOR, align 4
  %205 = load i32, i32* @E_NOT_SUPPORTED, align 4
  %206 = call i32 @RETURN_ERROR(i32 %204, i32 %205, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %207

207:                                              ; preds = %203, %196
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @FM_PCD_PLCR_ATOMIC_ACTION_COMPLETE, align 4
  %216 = call i32 @WRITE_UINT32(i32 %214, i32 %215)
  br label %217

217:                                              ; preds = %65, %207, %186, %165, %144, %123, %102, %90, %78
  %218 = load i32, i32* @E_OK, align 4
  ret i32 %218
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(i32, i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i32 @WRITE_UINT32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
