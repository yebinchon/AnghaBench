; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbdisply.c_AcpiDbDecodeAndDisplayObject.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbdisply.c_AcpiDbDecodeAndDisplayObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@DB_BYTE_DISPLAY = common dso_local global i32 0, align 4
@DB_WORD_DISPLAY = common dso_local global i32 0, align 4
@DB_DWORD_DISPLAY = common dso_local global i32 0, align 4
@DB_QWORD_DISPLAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Address %p is invalid in this address space\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Cannot read entire Named object at address %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Cannot read entire ACPI object at address %p\0A\00", align 1
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Cannot read entire Parser object at address %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Not a known ACPI internal object, descriptor type %2.2X\0A\00", align 1
@ACPI_FULL_PATHNAME_NO_TRAILING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Could not convert name to pathname\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Object %p: Namespace Node - Pathname: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Invalid Named object at address %p\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"\0AAttached Object %p:\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Invalid internal ACPI Object at address %p\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c" Namespace Node - \00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Pathname: %s\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDbDecodeAndDisplayObject(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [80 x i8], align 16
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i32, i32* @DB_BYTE_DISPLAY, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %210

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %49

20:                                               ; preds = %17
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @AcpiUtStrupr(i8* %21)
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 87
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @DB_WORD_DISPLAY, align 4
  store i32 %29, i32* %8, align 4
  br label %48

30:                                               ; preds = %20
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 68
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @DB_DWORD_DISPLAY, align 4
  store i32 %37, i32* %8, align 4
  br label %47

38:                                               ; preds = %30
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 81
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @DB_QWORD_DISPLAY, align 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %44, %38
  br label %47

47:                                               ; preds = %46, %36
  br label %48

48:                                               ; preds = %47, %28
  br label %49

49:                                               ; preds = %48, %17
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 80, i32* %50, align 8
  %51 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i8* %51, i8** %52, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp sge i32 %56, 48
  br i1 %57, label %58, label %129

58:                                               ; preds = %49
  %59 = load i8*, i8** %3, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp sle i32 %62, 57
  br i1 %63, label %64, label %129

64:                                               ; preds = %58
  %65 = load i8*, i8** %3, align 8
  %66 = call i8* @AcpiDbGetPointer(i8* %65)
  store i8* %66, i8** %5, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i64 @AcpiOsReadable(i8* %67, i32 16)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %71)
  br label %210

73:                                               ; preds = %64
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @ACPI_GET_DESCRIPTOR_TYPE(i8* %74)
  switch i32 %75, label %114 [
    i32 130, label %76
    i32 129, label %85
    i32 128, label %99
  ]

76:                                               ; preds = %73
  %77 = load i8*, i8** %5, align 8
  %78 = call i64 @AcpiOsReadable(i8* %77, i32 1)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %81)
  br label %210

83:                                               ; preds = %76
  %84 = load i8*, i8** %5, align 8
  store i8* %84, i8** %6, align 8
  br label %136

85:                                               ; preds = %73
  %86 = load i8*, i8** %5, align 8
  %87 = call i64 @AcpiOsReadable(i8* %86, i32 1)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %90)
  br label %210

92:                                               ; preds = %85
  %93 = load i8*, i8** %5, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %96 = call i32 @AcpiUtDebugDumpBuffer(i8* %93, i32 1, i32 %94, i32 %95)
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 @AcpiExDumpObjectDescriptor(i8* %97, i32 1)
  br label %128

99:                                               ; preds = %73
  %100 = load i8*, i8** %5, align 8
  %101 = call i64 @AcpiOsReadable(i8* %100, i32 4)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = load i8*, i8** %5, align 8
  %105 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %104)
  br label %210

106:                                              ; preds = %99
  %107 = load i8*, i8** %5, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %110 = call i32 @AcpiUtDebugDumpBuffer(i8* %107, i32 4, i32 %108, i32 %109)
  %111 = load i8*, i8** %5, align 8
  %112 = bitcast i8* %111 to i32*
  %113 = call i32 @AcpiDbDumpParserDescriptor(i32* %112)
  br label %128

114:                                              ; preds = %73
  %115 = load i8*, i8** %5, align 8
  %116 = call i32 @ACPI_GET_DESCRIPTOR_TYPE(i8* %115)
  %117 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  store i32 16, i32* %12, align 4
  %118 = load i8*, i8** %5, align 8
  %119 = call i64 @AcpiOsReadable(i8* %118, i32 64)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  store i32 64, i32* %12, align 4
  br label %122

122:                                              ; preds = %121, %114
  %123 = load i8*, i8** %5, align 8
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %127 = call i32 @AcpiUtDebugDumpBuffer(i8* %123, i32 %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %122, %106, %92
  br label %210

129:                                              ; preds = %58, %49
  %130 = load i8*, i8** %3, align 8
  %131 = call i8* @AcpiDbLocalNsLookup(i8* %130)
  store i8* %131, i8** %6, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  br label %210

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135, %83
  %137 = load i8*, i8** %6, align 8
  %138 = load i32, i32* @ACPI_FULL_PATHNAME_NO_TRAILING, align 4
  %139 = call i32 @AcpiGetName(i8* %137, i32 %138, %struct.TYPE_3__* %10)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = call i64 @ACPI_FAILURE(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %136
  %144 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %150

145:                                              ; preds = %136
  %146 = load i8*, i8** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* %146, i8* %148)
  br label %150

150:                                              ; preds = %145, %143
  %151 = load i8*, i8** %6, align 8
  %152 = call i64 @AcpiOsReadable(i8* %151, i32 1)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %150
  %155 = load i8*, i8** %6, align 8
  %156 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* %155)
  br label %210

157:                                              ; preds = %150
  %158 = load i8*, i8** %6, align 8
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %161 = call i32 @AcpiUtDebugDumpBuffer(i8* %158, i32 1, i32 %159, i32 %160)
  %162 = load i8*, i8** %6, align 8
  %163 = call i32 @AcpiExDumpNamespaceNode(i8* %162, i32 1)
  %164 = load i8*, i8** %6, align 8
  %165 = call i8* @AcpiNsGetAttachedObject(i8* %164)
  store i8* %165, i8** %7, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %210

168:                                              ; preds = %157
  %169 = load i8*, i8** %7, align 8
  %170 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %169)
  %171 = load i8*, i8** %7, align 8
  %172 = call i64 @AcpiOsReadable(i8* %171, i32 1)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %168
  %175 = load i8*, i8** %7, align 8
  %176 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i8* %175)
  br label %210

177:                                              ; preds = %168
  %178 = load i8*, i8** %7, align 8
  %179 = call i32 @ACPI_GET_DESCRIPTOR_TYPE(i8* %178)
  %180 = icmp eq i32 %179, 130
  br i1 %180, label %181, label %201

181:                                              ; preds = %177
  %182 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %183 = load i8*, i8** %7, align 8
  %184 = load i32, i32* @ACPI_FULL_PATHNAME_NO_TRAILING, align 4
  %185 = call i32 @AcpiGetName(i8* %183, i32 %184, %struct.TYPE_3__* %10)
  store i32 %185, i32* %11, align 4
  %186 = load i32, i32* %11, align 4
  %187 = call i64 @ACPI_FAILURE(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %181
  %190 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %195

191:                                              ; preds = %181
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* %193)
  br label %195

195:                                              ; preds = %191, %189
  %196 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %197 = load i8*, i8** %7, align 8
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %200 = call i32 @AcpiUtDebugDumpBuffer(i8* %197, i32 1, i32 %198, i32 %199)
  br label %207

201:                                              ; preds = %177
  %202 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %203 = load i8*, i8** %7, align 8
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %206 = call i32 @AcpiUtDebugDumpBuffer(i8* %203, i32 1, i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %201, %195
  %208 = load i8*, i8** %7, align 8
  %209 = call i32 @AcpiExDumpObjectDescriptor(i8* %208, i32 1)
  br label %210

210:                                              ; preds = %16, %70, %80, %89, %103, %128, %134, %154, %174, %207, %157
  ret void
}

declare dso_local i32 @AcpiUtStrupr(i8*) #1

declare dso_local i8* @AcpiDbGetPointer(i8*) #1

declare dso_local i64 @AcpiOsReadable(i8*, i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*, ...) #1

declare dso_local i32 @ACPI_GET_DESCRIPTOR_TYPE(i8*) #1

declare dso_local i32 @AcpiUtDebugDumpBuffer(i8*, i32, i32, i32) #1

declare dso_local i32 @AcpiExDumpObjectDescriptor(i8*, i32) #1

declare dso_local i32 @AcpiDbDumpParserDescriptor(i32*) #1

declare dso_local i8* @AcpiDbLocalNsLookup(i8*) #1

declare dso_local i32 @AcpiGetName(i8*, i32, %struct.TYPE_3__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiExDumpNamespaceNode(i8*, i32) #1

declare dso_local i8* @AcpiNsGetAttachedObject(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
