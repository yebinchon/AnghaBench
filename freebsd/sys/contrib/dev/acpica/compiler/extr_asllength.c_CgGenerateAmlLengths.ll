; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asllength.c_CgGenerateAmlLengths.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asllength.c_CgGenerateAmlLengths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i8*, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i8*, i32 }

@AslGbl_TableLength = common dso_local global i32 0, align 4
@OP_NAME_INTERNALIZED = common dso_local global i32 0, align 4
@ASL_DEBUG_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failure from internalize name %X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CgGenerateAmlLengths(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %45 [
    i32 143, label %9
    i32 139, label %16
    i32 141, label %23
    i32 140, label %30
    i32 144, label %37
    i32 142, label %41
  ]

9:                                                ; preds = %1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  store i32 1, i32* %15, align 8
  br label %180

16:                                               ; preds = %1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  store i32 2, i32* %22, align 8
  br label %180

23:                                               ; preds = %1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  store i32 4, i32* %29, align 8
  br label %180

30:                                               ; preds = %1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  store i32 8, i32* %36, align 8
  br label %180

37:                                               ; preds = %1
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  br label %180

41:                                               ; preds = %1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  br label %180

45:                                               ; preds = %1
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %177 [
    i32 137, label %51
    i32 132, label %59
    i32 131, label %74
    i32 133, label %74
    i32 128, label %141
    i32 130, label %155
    i32 129, label %169
    i32 138, label %173
    i32 135, label %173
    i32 134, label %173
    i32 136, label %174
  ]

51:                                               ; preds = %46
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 4, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* @AslGbl_TableLength, align 4
  br label %180

59:                                               ; preds = %46
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  store i32 4, i32* %65, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 4
  store i8* %70, i8** %73, align 8
  br label %180

74:                                               ; preds = %46, %46
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @OP_NAME_INTERNALIZED, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %180

83:                                               ; preds = %74
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  store i32 0, i32* %86, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @UtInternalizeName(i8* %91, i8** %3)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @ACPI_FAILURE(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %83
  %97 = load i32, i32* @ASL_DEBUG_OUTPUT, align 4
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @DbgPrint(i32 %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %180

100:                                              ; preds = %83
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 4
  store i8* %105, i8** %108, align 8
  %109 = load i8*, i8** %3, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  store i8* %109, i8** %113, align 8
  %114 = load i32, i32* @OP_NAME_INTERNALIZED, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %114
  store i32 %119, i32* %117, align 8
  %120 = load i8*, i8** %3, align 8
  %121 = call i32 @strlen(i8* %120)
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 2
  store i32 %121, i32* %124, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %134, label %130

130:                                              ; preds = %100
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %132 = call i32 @UtNameContainsAllPrefix(%struct.TYPE_10__* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %130, %100
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %134, %130
  br label %180

141:                                              ; preds = %46
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  store i32 1, i32* %144, align 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 6
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @strlen(i8* %149)
  %151 = add nsw i32 %150, 1
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 2
  store i32 %151, i32* %154, align 8
  br label %180

155:                                              ; preds = %46
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  store i32 0, i32* %158, align 4
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @CgGetPackageLenByteCount(%struct.TYPE_10__* %159, i32 %164)
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 7
  store i32 %165, i32* %168, align 8
  br label %180

169:                                              ; preds = %46
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  store i32 0, i32* %172, align 4
  br label %180

173:                                              ; preds = %46, %46, %46
  br label %180

174:                                              ; preds = %46
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %176 = call i32 @CgGenerateAmlOpcodeLength(%struct.TYPE_10__* %175)
  br label %180

177:                                              ; preds = %46
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %179 = call i32 @CgGenerateAmlOpcodeLength(%struct.TYPE_10__* %178)
  br label %180

180:                                              ; preds = %9, %16, %23, %30, %37, %41, %177, %174, %173, %169, %155, %141, %140, %96, %82, %59, %51
  ret void
}

declare dso_local i32 @UtInternalizeName(i8*, i8**) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @DbgPrint(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @UtNameContainsAllPrefix(%struct.TYPE_10__*) #1

declare dso_local i32 @CgGetPackageLenByteCount(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @CgGenerateAmlOpcodeLength(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
