; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asloperands.c_OpnDoPackage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asloperands.c_OpnDoPackage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_8__, i32, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i64 }

@PARSEOP_DEFAULT_ARG = common dso_local global i64 0, align 8
@PARSEOP_INTEGER = common dso_local global i64 0, align 8
@PARSEOP_QWORDCONST = common dso_local global i64 0, align 8
@ASL_REMARK = common dso_local global i32 0, align 4
@ASL_MSG_LIST_LENGTH_SHORT = common dso_local global i32 0, align 4
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_LIST_LENGTH_LONG = common dso_local global i32 0, align 4
@PARSEOP_ZERO = common dso_local global i64 0, align 8
@ASL_MSG_PACKAGE_LENGTH = common dso_local global i32 0, align 4
@PARSEOP_ONE = common dso_local global i64 0, align 8
@PARSEOP_ONES = common dso_local global i64 0, align 8
@AML_PACKAGE_OP = common dso_local global i32 0, align 4
@PARSEOP_PACKAGE = common dso_local global i64 0, align 8
@AML_RAW_DATA_BYTE = common dso_local global i32 0, align 4
@PARSEOP_RAW_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OpnDoPackage(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 5
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %3, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PARSEOP_DEFAULT_ARG, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %24, %20
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = icmp ne %struct.TYPE_10__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i64, i64* %5, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %5, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %3, align 8
  br label %21

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PARSEOP_INTEGER, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PARSEOP_QWORDCONST, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %83

46:                                               ; preds = %39, %32
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %46
  %55 = load i64, i64* %5, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* @ASL_REMARK, align 4
  %59 = load i32, i32* @ASL_MSG_LIST_LENGTH_SHORT, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = call i32 @AslError(i32 %58, i32 %59, %struct.TYPE_10__* %60, i32* null)
  br label %62

62:                                               ; preds = %57, %54
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %5, align 8
  br label %82

68:                                               ; preds = %46
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %5, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load i32, i32* @ASL_ERROR, align 4
  %78 = load i32, i32* @ASL_MSG_LIST_LENGTH_LONG, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = call i32 @AslError(i32 %77, i32 %78, %struct.TYPE_10__* %79, i32* null)
  br label %81

81:                                               ; preds = %76, %68
  br label %82

82:                                               ; preds = %81, %62
  br label %83

83:                                               ; preds = %82, %39
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @PARSEOP_DEFAULT_ARG, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %83
  %91 = load i64, i64* @PARSEOP_INTEGER, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  store i64 %91, i64* %97, align 8
  %98 = load i64, i64* %5, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i64 %98, i64* %105, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %107 = call i32 @UtSetParseOpName(%struct.TYPE_10__* %106)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = call i32 @OpcSetOptimalIntegerSize(%struct.TYPE_10__* %111)
  br label %113

113:                                              ; preds = %90, %83
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @PARSEOP_INTEGER, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %141, label %120

120:                                              ; preds = %113
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @PARSEOP_QWORDCONST, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %141, label %127

127:                                              ; preds = %120
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @PARSEOP_ZERO, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %141, label %134

134:                                              ; preds = %127
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @PARSEOP_DEFAULT_ARG, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %134, %127, %120, %113
  %142 = load i64, i64* %5, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* @ASL_REMARK, align 4
  %146 = load i32, i32* @ASL_MSG_PACKAGE_LENGTH, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %148 = call i32 @AslError(i32 %145, i32 %146, %struct.TYPE_10__* %147, i32* null)
  br label %149

149:                                              ; preds = %144, %141
  br label %150

150:                                              ; preds = %149, %134
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 4
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @PARSEOP_INTEGER, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %170

160:                                              ; preds = %150
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 4
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp sle i64 %168, 255
  br i1 %169, label %200, label %170

170:                                              ; preds = %160, %150
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 4
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @PARSEOP_ONE, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %200, label %180

180:                                              ; preds = %170
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 4
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @PARSEOP_ONES, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %200, label %190

190:                                              ; preds = %180
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 4
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @PARSEOP_ZERO, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %225

200:                                              ; preds = %190, %180, %170, %160
  %201 = load i32, i32* @AML_PACKAGE_OP, align 4
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 3
  store i32 %201, i32* %204, align 8
  %205 = load i64, i64* @PARSEOP_PACKAGE, align 8
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  store i64 %205, i64* %208, align 8
  %209 = load i32, i32* @AML_RAW_DATA_BYTE, align 4
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 3
  store i32 %209, i32* %212, align 8
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 1
  store i32 1, i32* %215, align 8
  %216 = load i64, i64* @PARSEOP_RAW_DATA, align 8
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  store i64 %216, i64* %219, align 8
  %220 = load i64, i64* %5, align 8
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  store i64 %220, i64* %224, align 8
  br label %225

225:                                              ; preds = %200, %190
  ret void
}

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @UtSetParseOpName(%struct.TYPE_10__*) #1

declare dso_local i32 @OpcSetOptimalIntegerSize(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
