; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_cvcompiler.c_CgWriteAmlComment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_cvcompiler.c_CgWriteAmlComment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i8*, i8*, i8*, %struct.TYPE_8__*, %struct.TYPE_8__*, i64, i64, i64, i32 }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_8__* }

@PARSEOP_DEFINITION_BLOCK = common dso_local global i64 0, align 8
@AcpiGbl_CaptureComments = common dso_local global i32 0, align 4
@FILE_SUFFIX_DISASSEMBLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Writing file comment, \22%s\22 for %s\0A\00", align 1
@FILENAME_COMMENT = common dso_local global i32 0, align 4
@PARENTFILENAME_COMMENT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@PARSEOP_INCLUDE = common dso_local global i64 0, align 8
@INCLUDE_COMMENT = common dso_local global i32 0, align 4
@STANDARD_COMMENT = common dso_local global i32 0, align 4
@ENDBLK_COMMENT = common dso_local global i32 0, align 4
@INLINE_COMMENT = common dso_local global i32 0, align 4
@ENDNODE_COMMENT = common dso_local global i32 0, align 4
@CLOSE_BRACE_COMMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CgWriteAmlComment(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PARSEOP_DEFINITION_BLOCK, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @AcpiGbl_CaptureComments, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %1
  br label %184

17:                                               ; preds = %13
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %76

23:                                               ; preds = %17
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 8
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @FILE_SUFFIX_DISASSEMBLY, align 4
  %29 = call i8* @FlGenerateFilename(i64 %27, i32 %28)
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @CvDbgPrint(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %37)
  br label %39

39:                                               ; preds = %32, %23
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* @FILENAME_COMMENT, align 4
  %43 = call i32 @CgWriteOneAmlComment(%struct.TYPE_7__* %40, i8* %41, i32 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %39
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 8
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @AcpiUtStricmp(i64 %53, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %49
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @FILE_SUFFIX_DISASSEMBLY, align 4
  %66 = call i8* @FlGenerateFilename(i64 %64, i32 %65)
  store i8* %66, i8** %6, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* @PARENTFILENAME_COMMENT, align 4
  %70 = call i32 @CgWriteOneAmlComment(%struct.TYPE_7__* %67, i8* %68, i32 %69)
  br label %71

71:                                               ; preds = %60, %49, %39
  %72 = load i64, i64* @FALSE, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 6
  store i64 %72, i64* %75, align 8
  br label %76

76:                                               ; preds = %71, %17
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 5
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  store %struct.TYPE_8__* %80, %struct.TYPE_8__** %3, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PARSEOP_INCLUDE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = load i32, i32* @INCLUDE_COMMENT, align 4
  store i32 %88, i32* %4, align 4
  br label %91

89:                                               ; preds = %76
  %90 = load i32, i32* @STANDARD_COMMENT, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %87
  br label %92

92:                                               ; preds = %95, %91
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = icmp ne %struct.TYPE_8__* %93, null
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @CgWriteOneAmlComment(%struct.TYPE_7__* %96, i8* %99, i32 %100)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  store %struct.TYPE_8__* %104, %struct.TYPE_8__** %3, align 8
  br label %92

105:                                              ; preds = %92
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 5
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %108, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  store %struct.TYPE_8__* %112, %struct.TYPE_8__** %3, align 8
  %113 = load i32, i32* @ENDBLK_COMMENT, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %117, %105
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %116 = icmp ne %struct.TYPE_8__* %115, null
  br i1 %116, label %117, label %127

117:                                              ; preds = %114
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @CgWriteOneAmlComment(%struct.TYPE_7__* %118, i8* %121, i32 %122)
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  store %struct.TYPE_8__* %126, %struct.TYPE_8__** %3, align 8
  br label %114

127:                                              ; preds = %114
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %130, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %148

136:                                              ; preds = %127
  %137 = load i32, i32* @INLINE_COMMENT, align 4
  store i32 %137, i32* %4, align 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = call i32 @CgWriteOneAmlComment(%struct.TYPE_7__* %138, i8* %142, i32 %143)
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  store i8* null, i8** %147, align 8
  br label %148

148:                                              ; preds = %136, %127
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %166

154:                                              ; preds = %148
  %155 = load i32, i32* @ENDNODE_COMMENT, align 4
  store i32 %155, i32* %4, align 4
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* %4, align 4
  %162 = call i32 @CgWriteOneAmlComment(%struct.TYPE_7__* %156, i8* %160, i32 %161)
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 2
  store i8* null, i8** %165, align 8
  br label %166

166:                                              ; preds = %154, %148
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 3
  %170 = load i8*, i8** %169, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %184

172:                                              ; preds = %166
  %173 = load i32, i32* @CLOSE_BRACE_COMMENT, align 4
  store i32 %173, i32* %4, align 4
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 3
  %178 = load i8*, i8** %177, align 8
  %179 = load i32, i32* %4, align 4
  %180 = call i32 @CgWriteOneAmlComment(%struct.TYPE_7__* %174, i8* %178, i32 %179)
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 3
  store i8* null, i8** %183, align 8
  br label %184

184:                                              ; preds = %16, %172, %166
  ret void
}

declare dso_local i8* @FlGenerateFilename(i64, i32) #1

declare dso_local i32 @CvDbgPrint(i8*, i8*, i32) #1

declare dso_local i32 @CgWriteOneAmlComment(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i64 @AcpiUtStricmp(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
