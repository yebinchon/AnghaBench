; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbtest.c_AcpiDbTestBufferType.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbtest.c_AcpiDbTestBufferType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32* }

@.str = private unnamed_addr constant [29 x i8] c" Ignoring zero length buffer\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i32 0, align 4
@ACPI_DEBUG_LENGTH_FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" %2.2X\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"...  \00", align 1
@BUFFER_FILL_VALUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c" MISMATCH 2: New buffer value\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c" MISMATCH 3: While restoring original buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @AcpiDbTestBufferType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiDbTestBufferType(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ACPI_ROUND_BITS_UP_TO_BYTES(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @AE_OK, align 4
  store i32 %21, i32* %3, align 4
  br label %182

22:                                               ; preds = %2
  %23 = load i32, i32* %12, align 4
  %24 = call i32* @ACPI_ALLOCATE_ZEROED(i32 %23)
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %28, i32* %3, align 4
  br label %182

29:                                               ; preds = %22
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @ACPI_TYPE_BUFFER, align 4
  %32 = call i32 @AcpiDbReadFromObject(i32* %30, i32 %31, %struct.TYPE_7__** %6)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i64 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %160

37:                                               ; preds = %29
  %38 = load i32, i32* @ACPI_DEBUG_LENGTH_FORMAT, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %40, i32 %41, i32 %45)
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %66, %37
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %48, 8
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %51, %52
  br label %54

54:                                               ; preds = %50, %47
  %55 = phi i1 [ false, %47 ], [ %53, %50 ]
  br i1 %55, label %56, label %69

56:                                               ; preds = %54
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %56
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %47

69:                                               ; preds = %54
  %70 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* @BUFFER_FILL_VALUE, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @memset(i32* %71, i32 %72, i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = srem i32 %75, 8
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %69
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @ACPI_MASK_BITS_ABOVE(i32 %80)
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  store i32 %81, i32* %86, align 4
  br label %87

87:                                               ; preds = %79, %69
  %88 = load i32, i32* @ACPI_TYPE_BUFFER, align 4
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i32 %88, i32* %89, align 8
  %90 = load i32, i32* %12, align 4
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i32* %93, i32** %95, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @AcpiDbWriteToObject(i32* %96, %struct.TYPE_7__* %10)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i64 @ACPI_FAILURE(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %87
  br label %160

102:                                              ; preds = %87
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* @ACPI_TYPE_BUFFER, align 4
  %105 = call i32 @AcpiDbReadFromObject(i32* %103, i32 %104, %struct.TYPE_7__** %7)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i64 @ACPI_FAILURE(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %160

110:                                              ; preds = %102
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* %12, align 4
  %117 = call i64 @memcmp(i32* %114, i32* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %110
  %120 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %110
  %122 = load i32, i32* %12, align 4
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  store i32* %128, i32** %130, align 8
  %131 = load i32*, i32** %4, align 8
  %132 = call i32 @AcpiDbWriteToObject(i32* %131, %struct.TYPE_7__* %10)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call i64 @ACPI_FAILURE(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %121
  br label %160

137:                                              ; preds = %121
  %138 = load i32*, i32** %4, align 8
  %139 = load i32, i32* @ACPI_TYPE_BUFFER, align 4
  %140 = call i32 @AcpiDbReadFromObject(i32* %138, i32 %139, %struct.TYPE_7__** %8)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = call i64 @ACPI_FAILURE(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %160

145:                                              ; preds = %137
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = call i64 @memcmp(i32* %149, i32* %153, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %145
  %158 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %145
  br label %160

160:                                              ; preds = %159, %144, %136, %109, %101, %36
  %161 = load i32*, i32** %9, align 8
  %162 = call i32 @ACPI_FREE(i32* %161)
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %164 = icmp ne %struct.TYPE_7__* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %167 = call i32 @AcpiOsFree(%struct.TYPE_7__* %166)
  br label %168

168:                                              ; preds = %165, %160
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %170 = icmp ne %struct.TYPE_7__* %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %173 = call i32 @AcpiOsFree(%struct.TYPE_7__* %172)
  br label %174

174:                                              ; preds = %171, %168
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %176 = icmp ne %struct.TYPE_7__* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %179 = call i32 @AcpiOsFree(%struct.TYPE_7__* %178)
  br label %180

180:                                              ; preds = %177, %174
  %181 = load i32, i32* %11, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %180, %27, %19
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @ACPI_ROUND_BITS_UP_TO_BYTES(i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*, ...) #1

declare dso_local i32* @ACPI_ALLOCATE_ZEROED(i32) #1

declare dso_local i32 @AcpiDbReadFromObject(i32*, i32, %struct.TYPE_7__**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ACPI_MASK_BITS_ABOVE(i32) #1

declare dso_local i32 @AcpiDbWriteToObject(i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @ACPI_FREE(i32*) #1

declare dso_local i32 @AcpiOsFree(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
