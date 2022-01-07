; ModuleID = '/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_find_static_dtb.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_find_static_dtb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.preloaded_file = type { i32 }
%struct.file_metadata = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"fdt_find_static_dtb()\0A\00", align 1
@relocation_offset = common dso_local global i32 0, align 4
@MODINFOMD_ELFHDR = common dso_local global i32 0, align 4
@MODINFOMD_SHDR = common dso_local global i32 0, align 4
@SHT_DYNSYM = common dso_local global i64 0, align 8
@SHT_STRTAB = common dso_local global i64 0, align 8
@STB_GLOBAL = common dso_local global i64 0, align 8
@STT_NOTYPE = common dso_local global i64 0, align 8
@FDT_STATIC_DTB_SYMBOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @fdt_find_static_dtb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fdt_find_static_dtb() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.preloaded_file*, align 8
  %10 = alloca %struct.file_metadata*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = call i32 @debugf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %13, align 4
  store i8* null, i8** %11, align 8
  %15 = load i32, i32* @relocation_offset, align 4
  %16 = call i64 @__elfN(i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = call %struct.preloaded_file* @file_findfile(i32* null, i32* null)
  store %struct.preloaded_file* %17, %struct.preloaded_file** %9, align 8
  %18 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %19 = icmp eq %struct.preloaded_file* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  store i64 0, i64* %1, align 8
  br label %154

21:                                               ; preds = %0
  %22 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %23 = load i32, i32* @MODINFOMD_ELFHDR, align 4
  %24 = call %struct.file_metadata* @file_findmetadata(%struct.preloaded_file* %22, i32 %23)
  store %struct.file_metadata* %24, %struct.file_metadata** %10, align 8
  %25 = load %struct.file_metadata*, %struct.file_metadata** %10, align 8
  %26 = icmp eq %struct.file_metadata* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i64 0, i64* %1, align 8
  br label %154

28:                                               ; preds = %21
  %29 = load %struct.file_metadata*, %struct.file_metadata** %10, align 8
  %30 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %2, align 8
  %33 = load %struct.preloaded_file*, %struct.preloaded_file** %9, align 8
  %34 = load i32, i32* @MODINFOMD_SHDR, align 4
  %35 = call %struct.file_metadata* @file_findmetadata(%struct.preloaded_file* %33, i32 %34)
  store %struct.file_metadata* %35, %struct.file_metadata** %10, align 8
  %36 = load %struct.file_metadata*, %struct.file_metadata** %10, align 8
  %37 = icmp eq %struct.file_metadata* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i64 0, i64* %1, align 8
  br label %154

39:                                               ; preds = %28
  %40 = load %struct.file_metadata*, %struct.file_metadata** %10, align 8
  %41 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %103, %39
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %106

50:                                               ; preds = %44
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SHT_DYNSYM, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %50
  %60 = load i64, i64* %6, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %59
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = add nsw i64 %68, %69
  store i64 %70, i64* %6, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = udiv i64 %77, 24
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %13, align 4
  br label %102

80:                                               ; preds = %59, %50
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SHT_STRTAB, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %80
  %90 = load i64, i64* %5, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = add nsw i64 %98, %99
  store i64 %100, i64* %5, align 8
  br label %101

101:                                              ; preds = %92, %89, %80
  br label %102

102:                                              ; preds = %101, %62
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %44

106:                                              ; preds = %44
  store i64 0, i64* %7, align 8
  br label %107

107:                                              ; preds = %149, %133, %106
  %108 = load i32, i32* %13, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i64, i64* %7, align 8
  %112 = icmp eq i64 %111, 0
  br label %113

113:                                              ; preds = %110, %107
  %114 = phi i1 [ false, %107 ], [ %112, %110 ]
  br i1 %114, label %115, label %152

115:                                              ; preds = %113
  %116 = load i64, i64* %6, align 8
  %117 = call i32 @COPYOUT(i64 %116, %struct.TYPE_5__* %4, i32 24)
  %118 = load i64, i64* %6, align 8
  %119 = add i64 %118, 24
  store i64 %119, i64* %6, align 8
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %13, align 4
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @ELF_ST_BIND(i32 %123)
  %125 = load i64, i64* @STB_GLOBAL, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %133, label %127

127:                                              ; preds = %115
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @ELF_ST_TYPE(i32 %129)
  %131 = load i64, i64* @STT_NOTYPE, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127, %115
  br label %107

134:                                              ; preds = %127
  %135 = load i64, i64* %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %135, %137
  %139 = call i8* @strdupout(i64 %138)
  store i8* %139, i8** %11, align 8
  %140 = load i8*, i8** %11, align 8
  %141 = load i32, i32* @FDT_STATIC_DTB_SYMBOL, align 4
  %142 = call i64 @strcmp(i8* %140, i32 %141)
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %134
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %8, align 8
  %148 = add nsw i64 %146, %147
  store i64 %148, i64* %7, align 8
  br label %149

149:                                              ; preds = %144, %134
  %150 = load i8*, i8** %11, align 8
  %151 = call i32 @free(i8* %150)
  br label %107

152:                                              ; preds = %113
  %153 = load i64, i64* %7, align 8
  store i64 %153, i64* %1, align 8
  br label %154

154:                                              ; preds = %152, %38, %27, %20
  %155 = load i64, i64* %1, align 8
  ret i64 %155
}

declare dso_local i32 @debugf(i8*) #1

declare dso_local i64 @__elfN(i32) #1

declare dso_local %struct.preloaded_file* @file_findfile(i32*, i32*) #1

declare dso_local %struct.file_metadata* @file_findmetadata(%struct.preloaded_file*, i32) #1

declare dso_local i32 @COPYOUT(i64, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @ELF_ST_BIND(i32) #1

declare dso_local i64 @ELF_ST_TYPE(i32) #1

declare dso_local i8* @strdupout(i64) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
