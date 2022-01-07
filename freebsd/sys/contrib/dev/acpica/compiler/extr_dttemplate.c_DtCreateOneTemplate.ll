; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dttemplate.c_DtCreateOneTemplate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dttemplate.c_DtCreateOneTemplate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@FILE_SUFFIX_ASL_CODE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Could not generate output filename\0A\00", align 1
@AE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Could not open output file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"/*\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"iASL Compiler/Disassembler\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" * \00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c" * Template for [%4.4s] ACPI Table\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c" * Template for [%4.4s] and %u [SSDT] ACPI Tables\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c" (static data table)\0A\00", align 1
@AslGbl_VerboseTemplates = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [81 x i8] c" * Format: [HexOffset DecimalOffset ByteLength]  FieldName : HexFieldValue\0A */\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c" * Format: [ByteLength]  FieldName : HexFieldValue\0A */\0A\00", align 1
@ACPI_TABLE_HEADER = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c" (AML byte code table)\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c" */\0A\00", align 1
@ACPI_SIG_DSDT = common dso_local global i32 0, align 4
@ACPI_SIG_SSDT = common dso_local global i32 0, align 4
@ACPI_SIG_OSDT = common dso_local global i32 0, align 4
@ACPI_SIG_FACS = common dso_local global i32 0, align 4
@TemplateFacs = common dso_local global i32 0, align 4
@ACPI_RSDP_NAME = common dso_local global i32 0, align 4
@TemplateRsdp = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [42 x i8] c"%4.4s, Unrecognized ACPI table signature\0A\00", align 1
@.str.14 = private unnamed_addr constant [58 x i8] c"Created ACPI table template for [%4.4s], written to \22%s\22\0A\00", align 1
@.str.15 = private unnamed_addr constant [73 x i8] c"Created ACPI table templates for [%4.4s] and %u [SSDT], written to \22%s\22\0A\00", align 1
@stdout = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.TYPE_3__*)* @DtCreateOneTemplate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DtCreateOneTemplate(i8* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %13 = load i32, i32* @AE_OK, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* @FILE_SUFFIX_ASL_CODE, align 4
  %16 = call i8* @FlGenerateFilename(i8* %14, i32 %15)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @AE_ERROR, align 4
  store i32 %22, i32* %4, align 4
  br label %192

23:                                               ; preds = %3
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @AcpiUtStrlwr(i8* %24)
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @UtQueryForOverwrite(i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @AE_OK, align 4
  store i32 %30, i32* %4, align 4
  br label %192

31:                                               ; preds = %23
  %32 = load i8*, i8** %8, align 8
  %33 = call i32* @fopen(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %33, i32** %9, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @stderr, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* @AE_ERROR, align 4
  store i32 %40, i32* %4, align 4
  br label %192

41:                                               ; preds = %31
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @AcpiOsRedirectOutput(i32* %42)
  %44 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %45 = call i8* @ACPI_COMMON_HEADER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %46 = call i32 (i8*, ...) @AcpiOsPrintf(i8* %45)
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %50)
  br label %56

52:                                               ; preds = %41
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i8* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %49
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %58 = icmp ne %struct.TYPE_3__* %57, null
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %61 = load i64, i64* @AslGbl_VerboseTemplates, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.9, i64 0, i64 0))
  br label %67

65:                                               ; preds = %59
  %66 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %63
  %68 = load i32, i32* @ACPI_TABLE_HEADER, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ACPI_CAST_PTR(i32 %68, i32 %71)
  %73 = call i32 @AcpiDmDumpDataTable(i32 %72)
  br label %171

74:                                               ; preds = %56
  %75 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %76 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* @ACPI_SIG_DSDT, align 4
  %79 = call i64 @ACPI_COMPARE_NAMESEG(i8* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %111

81:                                               ; preds = %74
  %82 = load i32*, i32** %9, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* @ACPI_SIG_DSDT, align 4
  %85 = call i32 @DtEmitDefinitionBlock(i32* %82, i8* %83, i32 %84, i32 1)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* @AE_ERROR, align 4
  store i32 %89, i32* %10, align 4
  br label %186

90:                                               ; preds = %81
  store i32 1, i32* %12, align 4
  br label %91

91:                                               ; preds = %107, %90
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %91
  %96 = load i32*, i32** %9, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load i32, i32* @ACPI_SIG_SSDT, align 4
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  %101 = call i32 @DtEmitDefinitionBlock(i32* %96, i8* %97, i32 %98, i32 %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %95
  %105 = load i32, i32* @AE_ERROR, align 4
  store i32 %105, i32* %10, align 4
  br label %186

106:                                              ; preds = %95
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %91

110:                                              ; preds = %91
  br label %170

111:                                              ; preds = %74
  %112 = load i8*, i8** %5, align 8
  %113 = load i32, i32* @ACPI_SIG_SSDT, align 4
  %114 = call i64 @ACPI_COMPARE_NAMESEG(i8* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = load i32*, i32** %9, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = load i32, i32* @ACPI_SIG_SSDT, align 4
  %120 = call i32 @DtEmitDefinitionBlock(i32* %117, i8* %118, i32 %119, i32 1)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = load i32, i32* @AE_ERROR, align 4
  store i32 %124, i32* %10, align 4
  br label %186

125:                                              ; preds = %116
  br label %169

126:                                              ; preds = %111
  %127 = load i8*, i8** %5, align 8
  %128 = load i32, i32* @ACPI_SIG_OSDT, align 4
  %129 = call i64 @ACPI_COMPARE_NAMESEG(i8* %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %126
  %132 = load i32*, i32** %9, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = load i32, i32* @ACPI_SIG_OSDT, align 4
  %135 = call i32 @DtEmitDefinitionBlock(i32* %132, i8* %133, i32 %134, i32 1)
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %131
  %139 = load i32, i32* @AE_ERROR, align 4
  store i32 %139, i32* %10, align 4
  br label %186

140:                                              ; preds = %131
  br label %168

141:                                              ; preds = %126
  %142 = load i8*, i8** %5, align 8
  %143 = load i32, i32* @ACPI_SIG_FACS, align 4
  %144 = call i64 @ACPI_COMPARE_NAMESEG(i8* %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load i32, i32* @ACPI_TABLE_HEADER, align 4
  %148 = load i32, i32* @TemplateFacs, align 4
  %149 = call i32 @ACPI_CAST_PTR(i32 %147, i32 %148)
  %150 = call i32 @AcpiDmDumpDataTable(i32 %149)
  br label %167

151:                                              ; preds = %141
  %152 = load i8*, i8** %5, align 8
  %153 = load i32, i32* @ACPI_RSDP_NAME, align 4
  %154 = call i64 @ACPI_COMPARE_NAMESEG(i8* %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load i32, i32* @ACPI_TABLE_HEADER, align 4
  %158 = load i32, i32* @TemplateRsdp, align 4
  %159 = call i32 @ACPI_CAST_PTR(i32 %157, i32 %158)
  %160 = call i32 @AcpiDmDumpDataTable(i32 %159)
  br label %166

161:                                              ; preds = %151
  %162 = load i32, i32* @stderr, align 4
  %163 = load i8*, i8** %5, align 8
  %164 = call i32 (i32, i8*, ...) @fprintf(i32 %162, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i8* %163)
  %165 = load i32, i32* @AE_ERROR, align 4
  store i32 %165, i32* %10, align 4
  br label %186

166:                                              ; preds = %156
  br label %167

167:                                              ; preds = %166, %146
  br label %168

168:                                              ; preds = %167, %140
  br label %169

169:                                              ; preds = %168, %125
  br label %170

170:                                              ; preds = %169, %110
  br label %171

171:                                              ; preds = %170, %67
  %172 = load i32, i32* %6, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load i32, i32* @stderr, align 4
  %176 = load i8*, i8** %5, align 8
  %177 = load i8*, i8** %8, align 8
  %178 = call i32 (i32, i8*, ...) @fprintf(i32 %175, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.14, i64 0, i64 0), i8* %176, i8* %177)
  br label %185

179:                                              ; preds = %171
  %180 = load i32, i32* @stderr, align 4
  %181 = load i8*, i8** %5, align 8
  %182 = load i32, i32* %6, align 4
  %183 = load i8*, i8** %8, align 8
  %184 = call i32 (i32, i8*, ...) @fprintf(i32 %180, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.15, i64 0, i64 0), i8* %181, i32 %182, i8* %183)
  br label %185

185:                                              ; preds = %179, %174
  br label %186

186:                                              ; preds = %185, %161, %138, %123, %104, %88
  %187 = load i32*, i32** %9, align 8
  %188 = call i32 @fclose(i32* %187)
  %189 = load i32*, i32** @stdout, align 8
  %190 = call i32 @AcpiOsRedirectOutput(i32* %189)
  %191 = load i32, i32* %10, align 4
  store i32 %191, i32* %4, align 4
  br label %192

192:                                              ; preds = %186, %36, %29, %19
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i8* @FlGenerateFilename(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @AcpiUtStrlwr(i8*) #1

declare dso_local i32 @UtQueryForOverwrite(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @AcpiOsRedirectOutput(i32*) #1

declare dso_local i32 @AcpiOsPrintf(i8*, ...) #1

declare dso_local i8* @ACPI_COMMON_HEADER(i8*, i8*) #1

declare dso_local i32 @AcpiDmDumpDataTable(i32) #1

declare dso_local i32 @ACPI_CAST_PTR(i32, i32) #1

declare dso_local i64 @ACPI_COMPARE_NAMESEG(i8*, i32) #1

declare dso_local i32 @DtEmitDefinitionBlock(i32*, i8*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
