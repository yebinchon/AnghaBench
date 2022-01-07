; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c__archive_write_disk_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c__archive_write_disk_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write_disk = type { i32*, i32, i32* }
%struct.fixup_entry = type { i32, %struct.fixup_entry*, %struct.fixup_entry*, i32, %struct.fixup_entry*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ARCHIVE_WRITE_DISK_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_HEADER = common dso_local global i32 0, align 4
@ARCHIVE_STATE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"archive_write_disk_close\00", align 1
@TODO_TIMES = common dso_local global i32 0, align 4
@TODO_MODE_BASE = common dso_local global i32 0, align 4
@TODO_ACLS = common dso_local global i32 0, align 4
@TODO_FFLAGS = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@TODO_MAC_METADATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*)* @_archive_write_disk_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_archive_write_disk_close(%struct.archive* %0) #0 {
  %2 = alloca %struct.archive*, align 8
  %3 = alloca %struct.archive_write_disk*, align 8
  %4 = alloca %struct.fixup_entry*, align 8
  %5 = alloca %struct.fixup_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %2, align 8
  %8 = load %struct.archive*, %struct.archive** %2, align 8
  %9 = bitcast %struct.archive* %8 to %struct.archive_write_disk*
  store %struct.archive_write_disk* %9, %struct.archive_write_disk** %3, align 8
  %10 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %11 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %10, i32 0, i32 1
  %12 = load i32, i32* @ARCHIVE_WRITE_DISK_MAGIC, align 4
  %13 = load i32, i32* @ARCHIVE_STATE_HEADER, align 4
  %14 = load i32, i32* @ARCHIVE_STATE_DATA, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @archive_check_magic(i32* %11, i32 %12, i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %18 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %17, i32 0, i32 1
  %19 = call i32 @_archive_write_disk_finish_entry(i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %21 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call %struct.fixup_entry* @sort_dir_list(i32* %22)
  store %struct.fixup_entry* %23, %struct.fixup_entry** %5, align 8
  br label %24

24:                                               ; preds = %189, %1
  %25 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %26 = icmp ne %struct.fixup_entry* %25, null
  br i1 %26, label %27, label %193

27:                                               ; preds = %24
  store i32 -1, i32* %6, align 4
  %28 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %29 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  %30 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %31 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TODO_TIMES, align 4
  %34 = load i32, i32* @TODO_MODE_BASE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @TODO_ACLS, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @TODO_FFLAGS, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %32, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %27
  %43 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %44 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %43, i32 0, i32 1
  %45 = load %struct.fixup_entry*, %struct.fixup_entry** %44, align 8
  %46 = load i32, i32* @O_WRONLY, align 4
  %47 = load i32, i32* @O_BINARY, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @O_NOFOLLOW, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @O_CLOEXEC, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @open(%struct.fixup_entry* %45, i32 %52)
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %42, %27
  %55 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %56 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @TODO_TIMES, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %95

61:                                               ; preds = %54
  %62 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %65 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %68 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %67, i32 0, i32 1
  %69 = load %struct.fixup_entry*, %struct.fixup_entry** %68, align 8
  %70 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %71 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %70, i32 0, i32 15
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %74 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %73, i32 0, i32 14
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %77 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %76, i32 0, i32 13
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %80 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %79, i32 0, i32 12
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %83 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %82, i32 0, i32 11
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %86 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %85, i32 0, i32 10
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %89 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %92 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @set_times(%struct.archive_write_disk* %62, i32 %63, i32 %66, %struct.fixup_entry* %69, i32 %72, i32 %75, i32 %78, i32 %81, i32 %84, i32 %87, i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %61, %54
  %96 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %97 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @TODO_MODE_BASE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %104 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %103, i32 0, i32 1
  %105 = load %struct.fixup_entry*, %struct.fixup_entry** %104, align 8
  %106 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %107 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @chmod(%struct.fixup_entry* %105, i32 %108)
  br label %110

110:                                              ; preds = %102, %95
  %111 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %112 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @TODO_ACLS, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %110
  %118 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %119 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %118, i32 0, i32 1
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %122 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %121, i32 0, i32 1
  %123 = load %struct.fixup_entry*, %struct.fixup_entry** %122, align 8
  %124 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %125 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %124, i32 0, i32 3
  %126 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %127 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @archive_write_disk_set_acls(i32* %119, i32 %120, %struct.fixup_entry* %123, i32* %125, i32 %128)
  br label %130

130:                                              ; preds = %117, %110
  %131 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %132 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @TODO_FFLAGS, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %130
  %138 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %141 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %140, i32 0, i32 1
  %142 = load %struct.fixup_entry*, %struct.fixup_entry** %141, align 8
  %143 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %144 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %147 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @set_fflags_platform(%struct.archive_write_disk* %138, i32 %139, %struct.fixup_entry* %142, i32 %145, i32 %148, i32 0)
  br label %150

150:                                              ; preds = %137, %130
  %151 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %152 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @TODO_MAC_METADATA, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %169

157:                                              ; preds = %150
  %158 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %159 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %160 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %159, i32 0, i32 1
  %161 = load %struct.fixup_entry*, %struct.fixup_entry** %160, align 8
  %162 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %163 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %162, i32 0, i32 2
  %164 = load %struct.fixup_entry*, %struct.fixup_entry** %163, align 8
  %165 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %166 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @set_mac_metadata(%struct.archive_write_disk* %158, %struct.fixup_entry* %161, %struct.fixup_entry* %164, i32 %167)
  br label %169

169:                                              ; preds = %157, %150
  %170 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %171 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %170, i32 0, i32 4
  %172 = load %struct.fixup_entry*, %struct.fixup_entry** %171, align 8
  store %struct.fixup_entry* %172, %struct.fixup_entry** %4, align 8
  %173 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %174 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %173, i32 0, i32 3
  %175 = call i32 @archive_acl_clear(i32* %174)
  %176 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %177 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %176, i32 0, i32 2
  %178 = load %struct.fixup_entry*, %struct.fixup_entry** %177, align 8
  %179 = call i32 @free(%struct.fixup_entry* %178)
  %180 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %181 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %180, i32 0, i32 1
  %182 = load %struct.fixup_entry*, %struct.fixup_entry** %181, align 8
  %183 = call i32 @free(%struct.fixup_entry* %182)
  %184 = load i32, i32* %6, align 4
  %185 = icmp sge i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %169
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @close(i32 %187)
  br label %189

189:                                              ; preds = %186, %169
  %190 = load %struct.fixup_entry*, %struct.fixup_entry** %5, align 8
  %191 = call i32 @free(%struct.fixup_entry* %190)
  %192 = load %struct.fixup_entry*, %struct.fixup_entry** %4, align 8
  store %struct.fixup_entry* %192, %struct.fixup_entry** %5, align 8
  br label %24

193:                                              ; preds = %24
  %194 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %195 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %194, i32 0, i32 0
  store i32* null, i32** %195, align 8
  %196 = load i32, i32* %7, align 4
  ret i32 %196
}

declare dso_local i32 @archive_check_magic(i32*, i32, i32, i8*) #1

declare dso_local i32 @_archive_write_disk_finish_entry(i32*) #1

declare dso_local %struct.fixup_entry* @sort_dir_list(i32*) #1

declare dso_local i32 @open(%struct.fixup_entry*, i32) #1

declare dso_local i32 @set_times(%struct.archive_write_disk*, i32, i32, %struct.fixup_entry*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @chmod(%struct.fixup_entry*, i32) #1

declare dso_local i32 @archive_write_disk_set_acls(i32*, i32, %struct.fixup_entry*, i32*, i32) #1

declare dso_local i32 @set_fflags_platform(%struct.archive_write_disk*, i32, %struct.fixup_entry*, i32, i32, i32) #1

declare dso_local i32 @set_mac_metadata(%struct.archive_write_disk*, %struct.fixup_entry*, %struct.fixup_entry*, i32) #1

declare dso_local i32 @archive_acl_clear(i32*) #1

declare dso_local i32 @free(%struct.fixup_entry*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
