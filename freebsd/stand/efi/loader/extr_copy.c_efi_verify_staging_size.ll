; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_copy.c_efi_verify_staging_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/loader/extr_copy.c_efi_verify_staging_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (i32*, %struct.TYPE_8__*, i32*, i32*, i32*)* }
%struct.TYPE_8__ = type { i64, i32, i64 }

@BS = common dso_local global %struct.TYPE_9__* null, align 8
@EFI_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Can't read memory map: %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Unable to allocate memory\0A\00", align 1
@EFI_PAGE_SIZE = common dso_local global i32 0, align 4
@KERNEL_PHYSICAL_BASE = common dso_local global i64 0, align 8
@EFI_PAGE_SHIFT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"Can't find valid memory map for staging area!\0A\00", align 1
@EfiConventionalMemory = common dso_local global i64 0, align 8
@EfiLoaderData = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"Staging area's size is reduced: %ld -> %ld!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*)* @efi_verify_staging_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efi_verify_staging_size(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %45, %1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** @BS, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32 (i32*, %struct.TYPE_8__*, i32*, i32*, i32*)*, i32 (i32*, %struct.TYPE_8__*, i32*, i32*, i32*)** %17, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = call i32 %18(i32* %3, %struct.TYPE_8__* %19, i32* %8, i32* %9, i32* %10)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @EFI_ERROR(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %46

25:                                               ; preds = %15
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @EFI_BUFFER_TOO_SMALL, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @EFI_ERROR_CODE(i32 %30)
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %163

33:                                               ; preds = %25
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = call i32 @free(%struct.TYPE_8__* %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %9, align 4
  %38 = mul nsw i32 10, %37
  %39 = add nsw i32 %36, %38
  %40 = call %struct.TYPE_8__* @malloc(i32 %39)
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %4, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = icmp eq %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %163

45:                                               ; preds = %33
  br label %15

46:                                               ; preds = %24
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %5, align 8
  br label %51

51:                                               ; preds = %86, %46
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %92

55:                                               ; preds = %51
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @EFI_PAGE_SIZE, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %59, %65
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* @KERNEL_PHYSICAL_BASE, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %55
  %71 = load i64, i64* @KERNEL_PHYSICAL_BASE, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp sge i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70, %55
  br label %86

75:                                               ; preds = %70
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* @KERNEL_PHYSICAL_BASE, align 8
  %81 = load i64, i64* %6, align 8
  %82 = sub nsw i64 %80, %81
  %83 = load i64, i64* @EFI_PAGE_SHIFT, align 8
  %84 = ashr i64 %82, %83
  %85 = sub nsw i64 %79, %84
  store i64 %85, i64* %14, align 8
  br label %92

86:                                               ; preds = %74
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call %struct.TYPE_8__* @NextMemoryDescriptor(%struct.TYPE_8__* %89, i32 %90)
  store %struct.TYPE_8__* %91, %struct.TYPE_8__** %5, align 8
  br label %51

92:                                               ; preds = %75, %51
  %93 = load i64, i64* %14, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %163

97:                                               ; preds = %92
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call %struct.TYPE_8__* @NextMemoryDescriptor(%struct.TYPE_8__* %100, i32 %101)
  store %struct.TYPE_8__* %102, %struct.TYPE_8__** %5, align 8
  br label %103

103:                                              ; preds = %144, %97
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %150

107:                                              ; preds = %103
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @EfiConventionalMemory, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @EfiLoaderData, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %150

120:                                              ; preds = %113, %107
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %7, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %150

127:                                              ; preds = %120
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @EFI_PAGE_SIZE, align 4
  %135 = mul nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %130, %136
  store i64 %137, i64* %7, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = load i64, i64* %14, align 8
  %143 = add i64 %142, %141
  store i64 %143, i64* %14, align 8
  br label %144

144:                                              ; preds = %127
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %12, align 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %148 = load i32, i32* %9, align 4
  %149 = call %struct.TYPE_8__* @NextMemoryDescriptor(%struct.TYPE_8__* %147, i32 %148)
  store %struct.TYPE_8__* %149, %struct.TYPE_8__** %5, align 8
  br label %103

150:                                              ; preds = %126, %119, %103
  %151 = load i64*, i64** %2, align 8
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %14, align 8
  %154 = icmp ugt i64 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %150
  %156 = load i64*, i64** %2, align 8
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %14, align 8
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %157, i64 %158)
  %160 = load i64, i64* %14, align 8
  %161 = load i64*, i64** %2, align 8
  store i64 %160, i64* %161, align 8
  br label %162

162:                                              ; preds = %155, %150
  br label %163

163:                                              ; preds = %162, %95, %43, %29
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %165 = call i32 @free(%struct.TYPE_8__* %164)
  ret void
}

declare dso_local i32 @EFI_ERROR(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @EFI_ERROR_CODE(i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local %struct.TYPE_8__* @NextMemoryDescriptor(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
