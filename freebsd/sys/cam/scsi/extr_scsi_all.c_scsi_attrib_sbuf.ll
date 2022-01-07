; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_attrib_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_attrib_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_attrib_table_entry = type { i32 (%struct.sbuf.0*, %struct.scsi_mam_attribute_header*, i32, i32, i32, i8*, i32)*, i32*, i32, i32* }
%struct.sbuf.0 = type opaque
%struct.scsi_mam_attribute_header = type { i32 }
%struct.sbuf = type { i32 }

@scsi_mam_attr_table = common dso_local global %struct.scsi_attrib_table_entry* null, align 8
@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_attrib_sbuf(%struct.sbuf* %0, %struct.scsi_mam_attribute_header* %1, i32 %2, %struct.scsi_attrib_table_entry* %3, i64 %4, i32 %5, i32 %6, i8* %7, i32 %8) #0 {
  %10 = alloca %struct.sbuf*, align 8
  %11 = alloca %struct.scsi_mam_attribute_header*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scsi_attrib_table_entry*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.scsi_attrib_table_entry*, align 8
  %21 = alloca %struct.scsi_attrib_table_entry*, align 8
  %22 = alloca %struct.scsi_attrib_table_entry*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %10, align 8
  store %struct.scsi_mam_attribute_header* %1, %struct.scsi_mam_attribute_header** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.scsi_attrib_table_entry* %3, %struct.scsi_attrib_table_entry** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store i32 %8, i32* %18, align 4
  store %struct.scsi_attrib_table_entry* null, %struct.scsi_attrib_table_entry** %20, align 8
  store %struct.scsi_attrib_table_entry* null, %struct.scsi_attrib_table_entry** %21, align 8
  store %struct.scsi_attrib_table_entry* null, %struct.scsi_attrib_table_entry** %22, align 8
  store i64 0, i64* %23, align 8
  store i64 0, i64* %24, align 8
  store i32 0, i32* %19, align 4
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %27, 4
  br i1 %28, label %29, label %30

29:                                               ; preds = %9
  store i32 1, i32* %19, align 4
  br label %147

30:                                               ; preds = %9
  %31 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %11, align 8
  %32 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @scsi_2btoul(i32 %33)
  store i32 %34, i32* %25, align 4
  %35 = load %struct.scsi_attrib_table_entry*, %struct.scsi_attrib_table_entry** %13, align 8
  %36 = icmp ne %struct.scsi_attrib_table_entry* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %30
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.scsi_attrib_table_entry*, %struct.scsi_attrib_table_entry** %13, align 8
  store %struct.scsi_attrib_table_entry* %41, %struct.scsi_attrib_table_entry** %20, align 8
  %42 = load i64, i64* %14, align 8
  store i64 %42, i64* %23, align 8
  %43 = load %struct.scsi_attrib_table_entry*, %struct.scsi_attrib_table_entry** @scsi_mam_attr_table, align 8
  store %struct.scsi_attrib_table_entry* %43, %struct.scsi_attrib_table_entry** %21, align 8
  %44 = load %struct.scsi_attrib_table_entry*, %struct.scsi_attrib_table_entry** @scsi_mam_attr_table, align 8
  %45 = call i64 @nitems(%struct.scsi_attrib_table_entry* %44)
  store i64 %45, i64* %24, align 8
  br label %52

46:                                               ; preds = %37
  %47 = load %struct.scsi_attrib_table_entry*, %struct.scsi_attrib_table_entry** @scsi_mam_attr_table, align 8
  store %struct.scsi_attrib_table_entry* %47, %struct.scsi_attrib_table_entry** %20, align 8
  %48 = load %struct.scsi_attrib_table_entry*, %struct.scsi_attrib_table_entry** @scsi_mam_attr_table, align 8
  %49 = call i64 @nitems(%struct.scsi_attrib_table_entry* %48)
  store i64 %49, i64* %23, align 8
  %50 = load %struct.scsi_attrib_table_entry*, %struct.scsi_attrib_table_entry** %13, align 8
  store %struct.scsi_attrib_table_entry* %50, %struct.scsi_attrib_table_entry** %21, align 8
  %51 = load i64, i64* %14, align 8
  store i64 %51, i64* %24, align 8
  br label %52

52:                                               ; preds = %46, %40
  br label %57

53:                                               ; preds = %30
  %54 = load %struct.scsi_attrib_table_entry*, %struct.scsi_attrib_table_entry** @scsi_mam_attr_table, align 8
  store %struct.scsi_attrib_table_entry* %54, %struct.scsi_attrib_table_entry** %20, align 8
  %55 = load %struct.scsi_attrib_table_entry*, %struct.scsi_attrib_table_entry** @scsi_mam_attr_table, align 8
  %56 = call i64 @nitems(%struct.scsi_attrib_table_entry* %55)
  store i64 %56, i64* %23, align 8
  br label %57

57:                                               ; preds = %53, %52
  %58 = load %struct.scsi_attrib_table_entry*, %struct.scsi_attrib_table_entry** %20, align 8
  %59 = load i64, i64* %23, align 8
  %60 = load i32, i32* %25, align 4
  %61 = call %struct.scsi_attrib_table_entry* @scsi_find_attrib_entry(%struct.scsi_attrib_table_entry* %58, i64 %59, i32 %60)
  store %struct.scsi_attrib_table_entry* %61, %struct.scsi_attrib_table_entry** %22, align 8
  %62 = load %struct.scsi_attrib_table_entry*, %struct.scsi_attrib_table_entry** %22, align 8
  %63 = icmp ne %struct.scsi_attrib_table_entry* %62, null
  br i1 %63, label %64, label %93

64:                                               ; preds = %57
  %65 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %66 = load i32, i32* %16, align 4
  %67 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %11, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.scsi_attrib_table_entry*, %struct.scsi_attrib_table_entry** %22, align 8
  %70 = getelementptr inbounds %struct.scsi_attrib_table_entry, %struct.scsi_attrib_table_entry* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @scsi_attrib_prefix_sbuf(%struct.sbuf* %65, i32 %66, %struct.scsi_mam_attribute_header* %67, i32 %68, i32* %71)
  %73 = load %struct.scsi_attrib_table_entry*, %struct.scsi_attrib_table_entry** %22, align 8
  %74 = getelementptr inbounds %struct.scsi_attrib_table_entry, %struct.scsi_attrib_table_entry* %73, i32 0, i32 0
  %75 = load i32 (%struct.sbuf.0*, %struct.scsi_mam_attribute_header*, i32, i32, i32, i8*, i32)*, i32 (%struct.sbuf.0*, %struct.scsi_mam_attribute_header*, i32, i32, i32, i8*, i32)** %74, align 8
  %76 = icmp eq i32 (%struct.sbuf.0*, %struct.scsi_mam_attribute_header*, i32, i32, i32, i8*, i32)* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  br label %139

78:                                               ; preds = %64
  %79 = load %struct.scsi_attrib_table_entry*, %struct.scsi_attrib_table_entry** %22, align 8
  %80 = getelementptr inbounds %struct.scsi_attrib_table_entry, %struct.scsi_attrib_table_entry* %79, i32 0, i32 0
  %81 = load i32 (%struct.sbuf.0*, %struct.scsi_mam_attribute_header*, i32, i32, i32, i8*, i32)*, i32 (%struct.sbuf.0*, %struct.scsi_mam_attribute_header*, i32, i32, i32, i8*, i32)** %80, align 8
  %82 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %83 = bitcast %struct.sbuf* %82 to %struct.sbuf.0*
  %84 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %11, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.scsi_attrib_table_entry*, %struct.scsi_attrib_table_entry** %22, align 8
  %87 = getelementptr inbounds %struct.scsi_attrib_table_entry, %struct.scsi_attrib_table_entry* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %16, align 4
  %90 = load i8*, i8** %17, align 8
  %91 = load i32, i32* %18, align 4
  %92 = call i32 %81(%struct.sbuf.0* %83, %struct.scsi_mam_attribute_header* %84, i32 %85, i32 %88, i32 %89, i8* %90, i32 %91)
  store i32 %92, i32* %19, align 4
  br label %147

93:                                               ; preds = %57
  %94 = load %struct.scsi_attrib_table_entry*, %struct.scsi_attrib_table_entry** %21, align 8
  %95 = icmp ne %struct.scsi_attrib_table_entry* %94, null
  br i1 %95, label %96, label %133

96:                                               ; preds = %93
  %97 = load %struct.scsi_attrib_table_entry*, %struct.scsi_attrib_table_entry** %21, align 8
  %98 = load i64, i64* %24, align 8
  %99 = load i32, i32* %25, align 4
  %100 = call %struct.scsi_attrib_table_entry* @scsi_find_attrib_entry(%struct.scsi_attrib_table_entry* %97, i64 %98, i32 %99)
  store %struct.scsi_attrib_table_entry* %100, %struct.scsi_attrib_table_entry** %22, align 8
  %101 = load %struct.scsi_attrib_table_entry*, %struct.scsi_attrib_table_entry** %22, align 8
  %102 = icmp ne %struct.scsi_attrib_table_entry* %101, null
  br i1 %102, label %103, label %132

103:                                              ; preds = %96
  %104 = load %struct.scsi_attrib_table_entry*, %struct.scsi_attrib_table_entry** %22, align 8
  %105 = getelementptr inbounds %struct.scsi_attrib_table_entry, %struct.scsi_attrib_table_entry* %104, i32 0, i32 0
  %106 = load i32 (%struct.sbuf.0*, %struct.scsi_mam_attribute_header*, i32, i32, i32, i8*, i32)*, i32 (%struct.sbuf.0*, %struct.scsi_mam_attribute_header*, i32, i32, i32, i8*, i32)** %105, align 8
  %107 = icmp eq i32 (%struct.sbuf.0*, %struct.scsi_mam_attribute_header*, i32, i32, i32, i8*, i32)* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %139

109:                                              ; preds = %103
  %110 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %111 = load i32, i32* %16, align 4
  %112 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %11, align 8
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.scsi_attrib_table_entry*, %struct.scsi_attrib_table_entry** %22, align 8
  %115 = getelementptr inbounds %struct.scsi_attrib_table_entry, %struct.scsi_attrib_table_entry* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @scsi_attrib_prefix_sbuf(%struct.sbuf* %110, i32 %111, %struct.scsi_mam_attribute_header* %112, i32 %113, i32* %116)
  %118 = load %struct.scsi_attrib_table_entry*, %struct.scsi_attrib_table_entry** %22, align 8
  %119 = getelementptr inbounds %struct.scsi_attrib_table_entry, %struct.scsi_attrib_table_entry* %118, i32 0, i32 0
  %120 = load i32 (%struct.sbuf.0*, %struct.scsi_mam_attribute_header*, i32, i32, i32, i8*, i32)*, i32 (%struct.sbuf.0*, %struct.scsi_mam_attribute_header*, i32, i32, i32, i8*, i32)** %119, align 8
  %121 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %122 = bitcast %struct.sbuf* %121 to %struct.sbuf.0*
  %123 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %11, align 8
  %124 = load i32, i32* %12, align 4
  %125 = load %struct.scsi_attrib_table_entry*, %struct.scsi_attrib_table_entry** %22, align 8
  %126 = getelementptr inbounds %struct.scsi_attrib_table_entry, %struct.scsi_attrib_table_entry* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %16, align 4
  %129 = load i8*, i8** %17, align 8
  %130 = load i32, i32* %18, align 4
  %131 = call i32 %120(%struct.sbuf.0* %122, %struct.scsi_mam_attribute_header* %123, i32 %124, i32 %127, i32 %128, i8* %129, i32 %130)
  store i32 %131, i32* %19, align 4
  br label %147

132:                                              ; preds = %96
  br label %133

133:                                              ; preds = %132, %93
  %134 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %135 = load i32, i32* %16, align 4
  %136 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %11, align 8
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @scsi_attrib_prefix_sbuf(%struct.sbuf* %134, i32 %135, %struct.scsi_mam_attribute_header* %136, i32 %137, i32* null)
  br label %139

139:                                              ; preds = %133, %108, %77
  %140 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %141 = load i32, i32* %12, align 4
  %142 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %11, align 8
  %143 = load i32, i32* %16, align 4
  %144 = load i8*, i8** %17, align 8
  %145 = load i32, i32* %18, align 4
  %146 = call i32 @scsi_attrib_value_sbuf(%struct.sbuf* %140, i32 %141, %struct.scsi_mam_attribute_header* %142, i32 %143, i8* %144, i32 %145)
  store i32 %146, i32* %19, align 4
  br label %147

147:                                              ; preds = %139, %109, %78, %29
  %148 = load i32, i32* %19, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %169

150:                                              ; preds = %147
  %151 = load %struct.scsi_attrib_table_entry*, %struct.scsi_attrib_table_entry** %22, align 8
  %152 = icmp ne %struct.scsi_attrib_table_entry* %151, null
  br i1 %152, label %153, label %164

153:                                              ; preds = %150
  %154 = load %struct.scsi_attrib_table_entry*, %struct.scsi_attrib_table_entry** %22, align 8
  %155 = getelementptr inbounds %struct.scsi_attrib_table_entry, %struct.scsi_attrib_table_entry* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %160 = load %struct.scsi_attrib_table_entry*, %struct.scsi_attrib_table_entry** %22, align 8
  %161 = getelementptr inbounds %struct.scsi_attrib_table_entry, %struct.scsi_attrib_table_entry* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %162)
  br label %164

164:                                              ; preds = %158, %153, %150
  %165 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %166 = call i32 @sbuf_trim(%struct.sbuf* %165)
  %167 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %168 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %167, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %169

169:                                              ; preds = %164, %147
  %170 = load i32, i32* %19, align 4
  ret i32 %170
}

declare dso_local i32 @scsi_2btoul(i32) #1

declare dso_local i64 @nitems(%struct.scsi_attrib_table_entry*) #1

declare dso_local %struct.scsi_attrib_table_entry* @scsi_find_attrib_entry(%struct.scsi_attrib_table_entry*, i64, i32) #1

declare dso_local i32 @scsi_attrib_prefix_sbuf(%struct.sbuf*, i32, %struct.scsi_mam_attribute_header*, i32, i32*) #1

declare dso_local i32 @scsi_attrib_value_sbuf(%struct.sbuf*, i32, %struct.scsi_mam_attribute_header*, i32, i8*, i32) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i32 @sbuf_trim(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
