; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtio.c_DtParseLine.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtio.c_DtParseLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@FALSE = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@ACPI_RAW_TABLE_DATA_HEADER = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @DtParseLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DtParseLine(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %19, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @AE_OK, align 4
  store i32 %24, i32* %4, align 4
  br label %202

25:                                               ; preds = %3
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* @ACPI_RAW_TABLE_DATA_HEADER, align 4
  %28 = call i64 @strstr(i8* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @AE_NOT_FOUND, align 4
  store i32 %31, i32* %4, align 4
  br label %202

32:                                               ; preds = %25
  %33 = load i8*, i8** %5, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 58)
  store i8* %34, i8** %14, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @AE_OK, align 4
  store i32 %38, i32* %4, align 4
  br label %202

39:                                               ; preds = %32
  %40 = load i8*, i8** %5, align 8
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %14, align 8
  store i8* %41, i8** %9, align 8
  br label %42

42:                                               ; preds = %74, %39
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = icmp ult i8* %43, %44
  br i1 %45, label %46, label %77

46:                                               ; preds = %42
  %47 = load i8*, i8** %8, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 91
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %63, %51
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i8*, i8** %8, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 93
  br label %61

61:                                               ; preds = %56, %52
  %62 = phi i1 [ false, %52 ], [ %60, %56 ]
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %8, align 8
  br label %52

66:                                               ; preds = %61
  br label %74

67:                                               ; preds = %46
  %68 = load i8*, i8** %8, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 32
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %77

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %66
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %8, align 8
  br label %42

77:                                               ; preds = %72, %42
  %78 = load i8*, i8** %14, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = call i8* @ACPI_PTR_DIFF(i8* %78, i8* %79)
  %81 = getelementptr i8, i8* %80, i64 3
  store i8* %81, i8** %17, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = call i8* @ACPI_PTR_DIFF(i8* %82, i8* %83)
  %85 = getelementptr i8, i8* %84, i64 1
  store i8* %85, i8** %18, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = call i8* @ACPI_PTR_DIFF(i8* %86, i8* %87)
  store i8* %88, i8** %15, align 8
  %89 = load i8*, i8** %15, align 8
  %90 = getelementptr i8, i8* %89, i64 1
  %91 = call i8* @UtLocalCalloc(i8* %90)
  store i8* %91, i8** %10, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = call i32 @strncpy(i8* %92, i8* %93, i8* %94)
  %96 = load i8*, i8** %10, align 8
  %97 = call i8* @DtTrim(i8* %96)
  store i8* %97, i8** %12, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @ACPI_FREE(i8* %98)
  %100 = load i8*, i8** %14, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  store i8* %101, i8** %9, align 8
  store i8* %101, i8** %8, align 8
  br label %102

102:                                              ; preds = %147, %77
  %103 = load i8*, i8** %9, align 8
  %104 = load i8, i8* %103, align 1
  %105 = icmp ne i8 %104, 0
  br i1 %105, label %106, label %150

106:                                              ; preds = %102
  %107 = load i8*, i8** %9, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 34
  br i1 %110, label %111, label %139

111:                                              ; preds = %106
  %112 = load i8*, i8** %9, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %9, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 34
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i64, i64* @TRUE, align 8
  store i64 %119, i64* %19, align 8
  br label %120

120:                                              ; preds = %118, %111
  br label %121

121:                                              ; preds = %133, %120
  %122 = load i8*, i8** %9, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load i8*, i8** %9, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 34
  br label %131

131:                                              ; preds = %126, %121
  %132 = phi i1 [ false, %121 ], [ %130, %126 ]
  br i1 %132, label %133, label %136

133:                                              ; preds = %131
  %134 = load i8*, i8** %9, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %9, align 8
  br label %121

136:                                              ; preds = %131
  %137 = load i8*, i8** %9, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %9, align 8
  br label %150

139:                                              ; preds = %106
  %140 = load i8*, i8** %9, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 91
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load i8*, i8** %9, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 -1
  store i8* %146, i8** %9, align 8
  br label %150

147:                                              ; preds = %139
  %148 = load i8*, i8** %9, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %9, align 8
  br label %102

150:                                              ; preds = %144, %136, %102
  %151 = load i8*, i8** %9, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = call i8* @ACPI_PTR_DIFF(i8* %151, i8* %152)
  store i8* %153, i8** %15, align 8
  %154 = load i8*, i8** %15, align 8
  %155 = getelementptr i8, i8* %154, i64 1
  %156 = call i8* @UtLocalCalloc(i8* %155)
  store i8* %156, i8** %11, align 8
  %157 = load i8*, i8** %11, align 8
  %158 = load i8*, i8** %8, align 8
  %159 = load i8*, i8** %15, align 8
  %160 = call i32 @strncpy(i8* %157, i8* %158, i8* %159)
  %161 = load i8*, i8** %11, align 8
  %162 = call i8* @DtTrim(i8* %161)
  store i8* %162, i8** %13, align 8
  %163 = load i8*, i8** %11, align 8
  %164 = call i32 @ACPI_FREE(i8* %163)
  %165 = load i8*, i8** %13, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %172

167:                                              ; preds = %150
  %168 = load i8*, i8** %13, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %167, %150
  %173 = load i64, i64* %19, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %200

175:                                              ; preds = %172, %167
  %176 = call %struct.TYPE_4__* (...) @UtFieldCacheCalloc()
  store %struct.TYPE_4__* %176, %struct.TYPE_4__** %16, align 8
  %177 = load i8*, i8** %12, align 8
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  store i8* %177, i8** %179, align 8
  %180 = load i8*, i8** %13, align 8
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  store i8* %180, i8** %182, align 8
  %183 = load i8*, i8** %6, align 8
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 6
  store i8* %183, i8** %185, align 8
  %186 = load i8*, i8** %7, align 8
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 5
  store i8* %186, i8** %188, align 8
  %189 = load i8*, i8** %18, align 8
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 4
  store i8* %189, i8** %191, align 8
  %192 = load i8*, i8** %17, align 8
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 3
  store i8* %192, i8** %194, align 8
  %195 = load i8*, i8** %15, align 8
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 2
  store i8* %195, i8** %197, align 8
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %199 = call i32 @DtLinkField(%struct.TYPE_4__* %198)
  br label %200

200:                                              ; preds = %175, %172
  %201 = load i32, i32* @AE_OK, align 4
  store i32 %201, i32* %4, align 4
  br label %202

202:                                              ; preds = %200, %37, %30, %23
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i64 @strstr(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @ACPI_PTR_DIFF(i8*, i8*) #1

declare dso_local i8* @UtLocalCalloc(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i8*) #1

declare dso_local i8* @DtTrim(i8*) #1

declare dso_local i32 @ACPI_FREE(i8*) #1

declare dso_local %struct.TYPE_4__* @UtFieldCacheCalloc(...) #1

declare dso_local i32 @DtLinkField(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
