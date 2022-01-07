; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_traverse_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_traverse_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { %struct.iso9660* }
%struct.iso9660 = type { %struct.isoent*, %struct.TYPE_6__, i32 }
%struct.isoent = type { %struct.isoent*, %struct.isoent*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__*, i64 }
%struct.TYPE_8__ = type { %struct.isoent* }
%struct.TYPE_7__ = type { i64, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.vdd = type { i64, i32, %struct.isoent* }
%struct.idr = type { i32 }

@VDD_JOLIET = common dso_local global i64 0, align 8
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.vdd*)* @isoent_traverse_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isoent_traverse_tree(%struct.archive_write* %0, %struct.vdd* %1) #0 {
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.vdd*, align 8
  %5 = alloca %struct.iso9660*, align 8
  %6 = alloca %struct.isoent*, align 8
  %7 = alloca %struct.idr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32 (%struct.archive_write*, %struct.isoent*, %struct.idr*)*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  store %struct.vdd* %1, %struct.vdd** %4, align 8
  %11 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %12 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %11, i32 0, i32 0
  %13 = load %struct.iso9660*, %struct.iso9660** %12, align 8
  store %struct.iso9660* %13, %struct.iso9660** %5, align 8
  %14 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %15 = load %struct.vdd*, %struct.vdd** %4, align 8
  %16 = call i32 @idr_init(%struct.iso9660* %14, %struct.vdd* %15, %struct.idr* %7)
  %17 = load %struct.vdd*, %struct.vdd** %4, align 8
  %18 = getelementptr inbounds %struct.vdd, %struct.vdd* %17, i32 0, i32 2
  %19 = load %struct.isoent*, %struct.isoent** %18, align 8
  store %struct.isoent* %19, %struct.isoent** %6, align 8
  store i32 0, i32* %8, align 4
  %20 = load %struct.vdd*, %struct.vdd** %4, align 8
  %21 = getelementptr inbounds %struct.vdd, %struct.vdd* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VDD_JOLIET, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 (%struct.archive_write*, %struct.isoent*, %struct.idr*)* @isoent_gen_joliet_identifier, i32 (%struct.archive_write*, %struct.isoent*, %struct.idr*)** %10, align 8
  br label %27

26:                                               ; preds = %2
  store i32 (%struct.archive_write*, %struct.isoent*, %struct.idr*)* @isoent_gen_iso9660_identifier, i32 (%struct.archive_write*, %struct.isoent*, %struct.idr*)** %10, align 8
  br label %27

27:                                               ; preds = %26, %25
  br label %28

28:                                               ; preds = %166, %27
  %29 = load %struct.isoent*, %struct.isoent** %6, align 8
  %30 = getelementptr inbounds %struct.isoent, %struct.isoent* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %69

33:                                               ; preds = %28
  %34 = load %struct.isoent*, %struct.isoent** %6, align 8
  %35 = getelementptr inbounds %struct.isoent, %struct.isoent* %34, i32 0, i32 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @archive_entry_mtime_is_set(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %69, label %41

41:                                               ; preds = %33
  %42 = load %struct.isoent*, %struct.isoent** %6, align 8
  %43 = getelementptr inbounds %struct.isoent, %struct.isoent* %42, i32 0, i32 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %48 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @archive_entry_set_mtime(i32 %46, i32 %49, i32 0)
  %51 = load %struct.isoent*, %struct.isoent** %6, align 8
  %52 = getelementptr inbounds %struct.isoent, %struct.isoent* %51, i32 0, i32 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %57 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @archive_entry_set_atime(i32 %55, i32 %58, i32 0)
  %60 = load %struct.isoent*, %struct.isoent** %6, align 8
  %61 = getelementptr inbounds %struct.isoent, %struct.isoent* %60, i32 0, i32 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %66 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @archive_entry_set_ctime(i32 %64, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %41, %33, %28
  %70 = load %struct.isoent*, %struct.isoent** %6, align 8
  %71 = getelementptr inbounds %struct.isoent, %struct.isoent* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %142

75:                                               ; preds = %69
  %76 = load %struct.vdd*, %struct.vdd** %4, align 8
  %77 = getelementptr inbounds %struct.vdd, %struct.vdd* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @VDD_JOLIET, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %105

81:                                               ; preds = %75
  %82 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %83 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %105, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  %90 = load %struct.vdd*, %struct.vdd** %4, align 8
  %91 = getelementptr inbounds %struct.vdd, %struct.vdd* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp sge i32 %89, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %87
  %95 = load %struct.isoent*, %struct.isoent** %6, align 8
  %96 = getelementptr inbounds %struct.isoent, %struct.isoent* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load %struct.isoent*, %struct.isoent** %6, align 8
  %102 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %103 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %102, i32 0, i32 0
  store %struct.isoent* %101, %struct.isoent** %103, align 8
  br label %104

104:                                              ; preds = %100, %94
  br label %141

105:                                              ; preds = %87, %81, %75
  %106 = load i32 (%struct.archive_write*, %struct.isoent*, %struct.idr*)*, i32 (%struct.archive_write*, %struct.isoent*, %struct.idr*)** %10, align 8
  %107 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %108 = load %struct.isoent*, %struct.isoent** %6, align 8
  %109 = call i32 %106(%struct.archive_write* %107, %struct.isoent* %108, %struct.idr* %7)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %174

113:                                              ; preds = %105
  %114 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %115 = load %struct.isoent*, %struct.isoent** %6, align 8
  %116 = call i32 @isoent_make_sorted_files(%struct.archive_write* %114, %struct.isoent* %115, %struct.idr* %7)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %174

120:                                              ; preds = %113
  %121 = load %struct.isoent*, %struct.isoent** %6, align 8
  %122 = getelementptr inbounds %struct.isoent, %struct.isoent* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load %struct.isoent*, %struct.isoent** %123, align 8
  %125 = icmp ne %struct.isoent* %124, null
  br i1 %125, label %126, label %140

126:                                              ; preds = %120
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  %129 = load %struct.vdd*, %struct.vdd** %4, align 8
  %130 = getelementptr inbounds %struct.vdd, %struct.vdd* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %126
  %134 = load %struct.isoent*, %struct.isoent** %6, align 8
  %135 = getelementptr inbounds %struct.isoent, %struct.isoent* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load %struct.isoent*, %struct.isoent** %136, align 8
  store %struct.isoent* %137, %struct.isoent** %6, align 8
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %166

140:                                              ; preds = %126, %120
  br label %141

141:                                              ; preds = %140, %104
  br label %142

142:                                              ; preds = %141, %69
  br label %143

143:                                              ; preds = %164, %142
  %144 = load %struct.isoent*, %struct.isoent** %6, align 8
  %145 = load %struct.isoent*, %struct.isoent** %6, align 8
  %146 = getelementptr inbounds %struct.isoent, %struct.isoent* %145, i32 0, i32 1
  %147 = load %struct.isoent*, %struct.isoent** %146, align 8
  %148 = icmp ne %struct.isoent* %144, %147
  br i1 %148, label %149, label %165

149:                                              ; preds = %143
  %150 = load %struct.isoent*, %struct.isoent** %6, align 8
  %151 = getelementptr inbounds %struct.isoent, %struct.isoent* %150, i32 0, i32 0
  %152 = load %struct.isoent*, %struct.isoent** %151, align 8
  %153 = icmp eq %struct.isoent* %152, null
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load %struct.isoent*, %struct.isoent** %6, align 8
  %156 = getelementptr inbounds %struct.isoent, %struct.isoent* %155, i32 0, i32 1
  %157 = load %struct.isoent*, %struct.isoent** %156, align 8
  store %struct.isoent* %157, %struct.isoent** %6, align 8
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %8, align 4
  br label %164

160:                                              ; preds = %149
  %161 = load %struct.isoent*, %struct.isoent** %6, align 8
  %162 = getelementptr inbounds %struct.isoent, %struct.isoent* %161, i32 0, i32 0
  %163 = load %struct.isoent*, %struct.isoent** %162, align 8
  store %struct.isoent* %163, %struct.isoent** %6, align 8
  br label %165

164:                                              ; preds = %154
  br label %143

165:                                              ; preds = %160, %143
  br label %166

166:                                              ; preds = %165, %133
  %167 = load %struct.isoent*, %struct.isoent** %6, align 8
  %168 = load %struct.isoent*, %struct.isoent** %6, align 8
  %169 = getelementptr inbounds %struct.isoent, %struct.isoent* %168, i32 0, i32 1
  %170 = load %struct.isoent*, %struct.isoent** %169, align 8
  %171 = icmp ne %struct.isoent* %167, %170
  br i1 %171, label %28, label %172

172:                                              ; preds = %166
  %173 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %173, i32* %9, align 4
  br label %174

174:                                              ; preds = %172, %119, %112
  %175 = call i32 @idr_cleanup(%struct.idr* %7)
  %176 = load i32, i32* %9, align 4
  ret i32 %176
}

declare dso_local i32 @idr_init(%struct.iso9660*, %struct.vdd*, %struct.idr*) #1

declare dso_local i32 @isoent_gen_joliet_identifier(%struct.archive_write*, %struct.isoent*, %struct.idr*) #1

declare dso_local i32 @isoent_gen_iso9660_identifier(%struct.archive_write*, %struct.isoent*, %struct.idr*) #1

declare dso_local i32 @archive_entry_mtime_is_set(i32) #1

declare dso_local i32 @archive_entry_set_mtime(i32, i32, i32) #1

declare dso_local i32 @archive_entry_set_atime(i32, i32, i32) #1

declare dso_local i32 @archive_entry_set_ctime(i32, i32, i32) #1

declare dso_local i32 @isoent_make_sorted_files(%struct.archive_write*, %struct.isoent*, %struct.idr*) #1

declare dso_local i32 @idr_cleanup(%struct.idr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
