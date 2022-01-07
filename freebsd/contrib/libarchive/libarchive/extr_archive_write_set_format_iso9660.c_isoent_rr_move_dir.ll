; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_rr_move_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_rr_move_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, %struct.iso9660* }
%struct.iso9660 = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, %struct.isoent* }
%struct.isoent = type { i64, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.isoent*, %struct.isoent*, %struct.isoent*, %struct.isoent* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32*, i32**, i64 }
%struct.TYPE_6__ = type { %struct.isoent*, %struct.isoent**, i64 }

@.str = private unnamed_addr constant [9 x i8] c"rr_moved\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Can't allocate memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.isoent**, %struct.isoent*, %struct.isoent**)* @isoent_rr_move_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isoent_rr_move_dir(%struct.archive_write* %0, %struct.isoent** %1, %struct.isoent* %2, %struct.isoent** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_write*, align 8
  %7 = alloca %struct.isoent**, align 8
  %8 = alloca %struct.isoent*, align 8
  %9 = alloca %struct.isoent**, align 8
  %10 = alloca %struct.iso9660*, align 8
  %11 = alloca %struct.isoent*, align 8
  %12 = alloca %struct.isoent*, align 8
  %13 = alloca %struct.isoent*, align 8
  %14 = alloca %struct.isoent*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %6, align 8
  store %struct.isoent** %1, %struct.isoent*** %7, align 8
  store %struct.isoent* %2, %struct.isoent** %8, align 8
  store %struct.isoent** %3, %struct.isoent*** %9, align 8
  %15 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %16 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %15, i32 0, i32 1
  %17 = load %struct.iso9660*, %struct.iso9660** %16, align 8
  store %struct.iso9660* %17, %struct.iso9660** %10, align 8
  %18 = load %struct.isoent**, %struct.isoent*** %7, align 8
  %19 = load %struct.isoent*, %struct.isoent** %18, align 8
  store %struct.isoent* %19, %struct.isoent** %11, align 8
  %20 = icmp eq %struct.isoent* %19, null
  br i1 %20, label %21, label %63

21:                                               ; preds = %4
  %22 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  %23 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load %struct.isoent*, %struct.isoent** %24, align 8
  store %struct.isoent* %25, %struct.isoent** %14, align 8
  %26 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %27 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  %28 = call %struct.isoent* @isoent_create_virtual_dir(%struct.archive_write* %26, %struct.iso9660* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.isoent* %28, %struct.isoent** %11, align 8
  %29 = load %struct.isoent*, %struct.isoent** %11, align 8
  %30 = icmp eq %struct.isoent* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %21
  %32 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %33 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %32, i32 0, i32 0
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = call i32 @archive_set_error(i32* %33, i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %36, i32* %5, align 4
  br label %202

37:                                               ; preds = %21
  %38 = load %struct.isoent*, %struct.isoent** %14, align 8
  %39 = load %struct.isoent*, %struct.isoent** %11, align 8
  %40 = call i32 @isoent_add_child_head(%struct.isoent* %38, %struct.isoent* %39)
  %41 = load %struct.isoent*, %struct.isoent** %14, align 8
  %42 = getelementptr inbounds %struct.isoent, %struct.isoent* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.isoent*, %struct.isoent** %14, align 8
  %47 = getelementptr inbounds %struct.isoent, %struct.isoent* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @archive_entry_nlink(i32 %50)
  %52 = add nsw i64 %51, 1
  %53 = call i32 @archive_entry_set_nlink(i32 %45, i64 %52)
  %54 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  %55 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load %struct.isoent*, %struct.isoent** %11, align 8
  %60 = call i32 @path_table_add_entry(i32* %58, %struct.isoent* %59)
  %61 = load %struct.isoent*, %struct.isoent** %11, align 8
  %62 = load %struct.isoent**, %struct.isoent*** %7, align 8
  store %struct.isoent* %61, %struct.isoent** %62, align 8
  br label %63

63:                                               ; preds = %37, %4
  %64 = load %struct.isoent*, %struct.isoent** %8, align 8
  %65 = call %struct.isoent* @isoent_clone(%struct.isoent* %64)
  store %struct.isoent* %65, %struct.isoent** %12, align 8
  %66 = load %struct.isoent*, %struct.isoent** %12, align 8
  %67 = icmp eq %struct.isoent* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %70 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %69, i32 0, i32 0
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = call i32 @archive_set_error(i32* %70, i32 %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %73, i32* %5, align 4
  br label %202

74:                                               ; preds = %63
  %75 = load %struct.isoent*, %struct.isoent** %8, align 8
  %76 = getelementptr inbounds %struct.isoent, %struct.isoent* %75, i32 0, i32 4
  %77 = load %struct.isoent*, %struct.isoent** %76, align 8
  %78 = load %struct.isoent*, %struct.isoent** %12, align 8
  %79 = getelementptr inbounds %struct.isoent, %struct.isoent* %78, i32 0, i32 7
  store %struct.isoent* %77, %struct.isoent** %79, align 8
  %80 = load %struct.isoent*, %struct.isoent** %12, align 8
  %81 = load %struct.isoent*, %struct.isoent** %8, align 8
  %82 = getelementptr inbounds %struct.isoent, %struct.isoent* %81, i32 0, i32 6
  store %struct.isoent* %80, %struct.isoent** %82, align 8
  %83 = load %struct.isoent*, %struct.isoent** %8, align 8
  %84 = getelementptr inbounds %struct.isoent, %struct.isoent* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load %struct.isoent*, %struct.isoent** %85, align 8
  %87 = icmp ne %struct.isoent* %86, null
  br i1 %87, label %88, label %104

88:                                               ; preds = %74
  %89 = load %struct.isoent*, %struct.isoent** %8, align 8
  %90 = getelementptr inbounds %struct.isoent, %struct.isoent* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load %struct.isoent*, %struct.isoent** %91, align 8
  %93 = load %struct.isoent*, %struct.isoent** %12, align 8
  %94 = getelementptr inbounds %struct.isoent, %struct.isoent* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load %struct.isoent**, %struct.isoent*** %95, align 8
  store %struct.isoent* %92, %struct.isoent** %96, align 8
  %97 = load %struct.isoent*, %struct.isoent** %8, align 8
  %98 = getelementptr inbounds %struct.isoent, %struct.isoent* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load %struct.isoent**, %struct.isoent*** %99, align 8
  %101 = load %struct.isoent*, %struct.isoent** %12, align 8
  %102 = getelementptr inbounds %struct.isoent, %struct.isoent* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  store %struct.isoent** %100, %struct.isoent*** %103, align 8
  br label %104

104:                                              ; preds = %88, %74
  %105 = load %struct.isoent*, %struct.isoent** %12, align 8
  %106 = getelementptr inbounds %struct.isoent, %struct.isoent* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load %struct.isoent*, %struct.isoent** %107, align 8
  store %struct.isoent* %108, %struct.isoent** %13, align 8
  br label %109

109:                                              ; preds = %116, %104
  %110 = load %struct.isoent*, %struct.isoent** %13, align 8
  %111 = icmp ne %struct.isoent* %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load %struct.isoent*, %struct.isoent** %12, align 8
  %114 = load %struct.isoent*, %struct.isoent** %13, align 8
  %115 = getelementptr inbounds %struct.isoent, %struct.isoent* %114, i32 0, i32 4
  store %struct.isoent* %113, %struct.isoent** %115, align 8
  br label %116

116:                                              ; preds = %112
  %117 = load %struct.isoent*, %struct.isoent** %13, align 8
  %118 = getelementptr inbounds %struct.isoent, %struct.isoent* %117, i32 0, i32 5
  %119 = load %struct.isoent*, %struct.isoent** %118, align 8
  store %struct.isoent* %119, %struct.isoent** %13, align 8
  br label %109

120:                                              ; preds = %109
  %121 = load %struct.isoent*, %struct.isoent** %8, align 8
  %122 = getelementptr inbounds %struct.isoent, %struct.isoent* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.isoent*, %struct.isoent** %12, align 8
  %126 = getelementptr inbounds %struct.isoent, %struct.isoent* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  store i64 %124, i64* %127, align 8
  %128 = load %struct.isoent*, %struct.isoent** %8, align 8
  %129 = getelementptr inbounds %struct.isoent, %struct.isoent* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  store i64 0, i64* %130, align 8
  %131 = load %struct.isoent*, %struct.isoent** %8, align 8
  %132 = getelementptr inbounds %struct.isoent, %struct.isoent* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  store %struct.isoent* null, %struct.isoent** %133, align 8
  %134 = load %struct.isoent*, %struct.isoent** %8, align 8
  %135 = getelementptr inbounds %struct.isoent, %struct.isoent* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load %struct.isoent*, %struct.isoent** %8, align 8
  %138 = getelementptr inbounds %struct.isoent, %struct.isoent* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  store %struct.isoent** %136, %struct.isoent*** %139, align 8
  %140 = load %struct.isoent*, %struct.isoent** %8, align 8
  %141 = getelementptr inbounds %struct.isoent, %struct.isoent* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %161

145:                                              ; preds = %120
  %146 = load %struct.isoent*, %struct.isoent** %8, align 8
  %147 = getelementptr inbounds %struct.isoent, %struct.isoent* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.isoent*, %struct.isoent** %12, align 8
  %151 = getelementptr inbounds %struct.isoent, %struct.isoent* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32**, i32*** %152, align 8
  store i32* %149, i32** %153, align 8
  %154 = load %struct.isoent*, %struct.isoent** %8, align 8
  %155 = getelementptr inbounds %struct.isoent, %struct.isoent* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load i32**, i32*** %156, align 8
  %158 = load %struct.isoent*, %struct.isoent** %12, align 8
  %159 = getelementptr inbounds %struct.isoent, %struct.isoent* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  store i32** %157, i32*** %160, align 8
  br label %161

161:                                              ; preds = %145, %120
  %162 = load %struct.isoent*, %struct.isoent** %8, align 8
  %163 = getelementptr inbounds %struct.isoent, %struct.isoent* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.isoent*, %struct.isoent** %12, align 8
  %167 = getelementptr inbounds %struct.isoent, %struct.isoent* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 2
  store i64 %165, i64* %168, align 8
  %169 = load %struct.isoent*, %struct.isoent** %8, align 8
  %170 = getelementptr inbounds %struct.isoent, %struct.isoent* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 2
  store i64 0, i64* %171, align 8
  %172 = load %struct.isoent*, %struct.isoent** %8, align 8
  %173 = getelementptr inbounds %struct.isoent, %struct.isoent* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  store i32* null, i32** %174, align 8
  %175 = load %struct.isoent*, %struct.isoent** %8, align 8
  %176 = getelementptr inbounds %struct.isoent, %struct.isoent* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load %struct.isoent*, %struct.isoent** %8, align 8
  %179 = getelementptr inbounds %struct.isoent, %struct.isoent* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  store i32** %177, i32*** %180, align 8
  %181 = load %struct.isoent*, %struct.isoent** %11, align 8
  %182 = load %struct.isoent*, %struct.isoent** %12, align 8
  %183 = call i32 @isoent_add_child_tail(%struct.isoent* %181, %struct.isoent* %182)
  %184 = load %struct.isoent*, %struct.isoent** %11, align 8
  %185 = getelementptr inbounds %struct.isoent, %struct.isoent* %184, i32 0, i32 1
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.isoent*, %struct.isoent** %11, align 8
  %190 = getelementptr inbounds %struct.isoent, %struct.isoent* %189, i32 0, i32 1
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i64 @archive_entry_nlink(i32 %193)
  %195 = add nsw i64 %194, 1
  %196 = call i32 @archive_entry_set_nlink(i32 %188, i64 %195)
  %197 = load %struct.isoent*, %struct.isoent** %8, align 8
  %198 = getelementptr inbounds %struct.isoent, %struct.isoent* %197, i32 0, i32 0
  store i64 0, i64* %198, align 8
  %199 = load %struct.isoent*, %struct.isoent** %12, align 8
  %200 = load %struct.isoent**, %struct.isoent*** %9, align 8
  store %struct.isoent* %199, %struct.isoent** %200, align 8
  %201 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %201, i32* %5, align 4
  br label %202

202:                                              ; preds = %161, %68, %31
  %203 = load i32, i32* %5, align 4
  ret i32 %203
}

declare dso_local %struct.isoent* @isoent_create_virtual_dir(%struct.archive_write*, %struct.iso9660*, i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @isoent_add_child_head(%struct.isoent*, %struct.isoent*) #1

declare dso_local i32 @archive_entry_set_nlink(i32, i64) #1

declare dso_local i64 @archive_entry_nlink(i32) #1

declare dso_local i32 @path_table_add_entry(i32*, %struct.isoent*) #1

declare dso_local %struct.isoent* @isoent_clone(%struct.isoent*) #1

declare dso_local i32 @isoent_add_child_tail(%struct.isoent*, %struct.isoent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
