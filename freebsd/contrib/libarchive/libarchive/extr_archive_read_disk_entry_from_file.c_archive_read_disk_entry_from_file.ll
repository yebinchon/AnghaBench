; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_entry_from_file.c_archive_read_disk_entry_from_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_entry_from_file.c_archive_read_disk_entry_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }
%struct.stat = type { i64, i32, i32 }
%struct.archive_read_disk = type { i32, i32 (i32*, i8*, i32)*, i64 (i32*)*, i32, i32*, i32 (i32*)*, i32 }

@ARCHIVE_READ_DISK_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"archive_read_disk_entry_from_file\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Can't stat %s\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_READDISK_NO_ACL = common dso_local global i32 0, align 4
@ARCHIVE_READDISK_NO_XATTR = common dso_local global i32 0, align 4
@ARCHIVE_READDISK_MAC_COPYFILE = common dso_local global i32 0, align 4
@ARCHIVE_READDISK_NO_FFLAGS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EXT2_IOC_GETFLAGS = common dso_local global i32 0, align 4
@FS_IOC_GETFLAGS = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_disk_entry_from_file(%struct.archive* %0, %struct.archive_entry* %1, i32 %2, %struct.stat* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive*, align 8
  %7 = alloca %struct.archive_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat*, align 8
  %10 = alloca %struct.archive_read_disk*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.stat, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %6, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.stat* %3, %struct.stat** %9, align 8
  %17 = load %struct.archive*, %struct.archive** %6, align 8
  %18 = bitcast %struct.archive* %17 to %struct.archive_read_disk*
  store %struct.archive_read_disk* %18, %struct.archive_read_disk** %10, align 8
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %14, align 4
  %20 = load %struct.archive*, %struct.archive** %6, align 8
  %21 = load i32, i32* @ARCHIVE_READ_DISK_MAGIC, align 4
  %22 = load i32, i32* @ARCHIVE_STATE_ANY, align 4
  %23 = call i32 @archive_check_magic(%struct.archive* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.archive*, %struct.archive** %6, align 8
  %25 = call i32 @archive_clear_error(%struct.archive* %24)
  %26 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %27 = call i8* @archive_entry_sourcepath(%struct.archive_entry* %26)
  store i8* %27, i8** %11, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %32 = call i8* @archive_entry_pathname(%struct.archive_entry* %31)
  store i8* %32, i8** %11, align 8
  br label %33

33:                                               ; preds = %30, %4
  %34 = load %struct.archive_read_disk*, %struct.archive_read_disk** %10, align 8
  %35 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %57

38:                                               ; preds = %33
  %39 = load %struct.stat*, %struct.stat** %9, align 8
  %40 = icmp eq %struct.stat* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load i8*, i8** %11, align 8
  %43 = call i64 @la_stat(i8* %42, %struct.stat* %13)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load %struct.archive_read_disk*, %struct.archive_read_disk** %10, align 8
  %47 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %46, i32 0, i32 3
  %48 = load i32, i32* @errno, align 4
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %47, i32 %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %51, i32* %5, align 4
  br label %142

52:                                               ; preds = %41
  store %struct.stat* %13, %struct.stat** %9, align 8
  br label %53

53:                                               ; preds = %52, %38
  %54 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %55 = load %struct.stat*, %struct.stat** %9, align 8
  %56 = call i32 @archive_entry_copy_stat(%struct.archive_entry* %54, %struct.stat* %55)
  br label %57

57:                                               ; preds = %53, %33
  %58 = load %struct.archive*, %struct.archive** %6, align 8
  %59 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %60 = call i32 @archive_entry_uid(%struct.archive_entry* %59)
  %61 = call i8* @archive_read_disk_uname(%struct.archive* %58, i32 %60)
  store i8* %61, i8** %12, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = call i32 @archive_entry_copy_uname(%struct.archive_entry* %65, i8* %66)
  br label %68

68:                                               ; preds = %64, %57
  %69 = load %struct.archive*, %struct.archive** %6, align 8
  %70 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %71 = call i32 @archive_entry_gid(%struct.archive_entry* %70)
  %72 = call i8* @archive_read_disk_gname(%struct.archive* %69, i32 %71)
  store i8* %72, i8** %12, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = call i32 @archive_entry_copy_gname(%struct.archive_entry* %76, i8* %77)
  br label %79

79:                                               ; preds = %75, %68
  store i32 0, i32* %15, align 4
  %80 = load %struct.archive_read_disk*, %struct.archive_read_disk** %10, align 8
  %81 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @ARCHIVE_READDISK_NO_ACL, align 4
  %84 = and i32 %82, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load %struct.archive_read_disk*, %struct.archive_read_disk** %10, align 8
  %88 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %89 = call i32 @archive_read_disk_entry_setup_acls(%struct.archive_read_disk* %87, %struct.archive_entry* %88, i32* %8)
  store i32 %89, i32* %15, align 4
  br label %90

90:                                               ; preds = %86, %79
  %91 = load %struct.archive_read_disk*, %struct.archive_read_disk** %10, align 8
  %92 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ARCHIVE_READDISK_NO_XATTR, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %90
  %98 = load %struct.archive_read_disk*, %struct.archive_read_disk** %10, align 8
  %99 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %100 = call i32 @setup_xattrs(%struct.archive_read_disk* %98, %struct.archive_entry* %99, i32* %8)
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* %16, align 4
  store i32 %105, i32* %15, align 4
  br label %106

106:                                              ; preds = %104, %97
  br label %107

107:                                              ; preds = %106, %90
  %108 = load %struct.archive_read_disk*, %struct.archive_read_disk** %10, align 8
  %109 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @ARCHIVE_READDISK_MAC_COPYFILE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %107
  %115 = load %struct.archive_read_disk*, %struct.archive_read_disk** %10, align 8
  %116 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %117 = call i32 @setup_mac_metadata(%struct.archive_read_disk* %115, %struct.archive_entry* %116, i32* %8)
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i32, i32* %16, align 4
  store i32 %122, i32* %15, align 4
  br label %123

123:                                              ; preds = %121, %114
  br label %124

124:                                              ; preds = %123, %107
  %125 = load %struct.archive_read_disk*, %struct.archive_read_disk** %10, align 8
  %126 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %127 = call i32 @setup_sparse(%struct.archive_read_disk* %125, %struct.archive_entry* %126, i32* %8)
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %15, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load i32, i32* %16, align 4
  store i32 %132, i32* %15, align 4
  br label %133

133:                                              ; preds = %131, %124
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @close(i32 %138)
  br label %140

140:                                              ; preds = %137, %133
  %141 = load i32, i32* %15, align 4
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %140, %45
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @archive_clear_error(%struct.archive*) #1

declare dso_local i8* @archive_entry_sourcepath(%struct.archive_entry*) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i64 @la_stat(i8*, %struct.stat*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

declare dso_local i32 @archive_entry_copy_stat(%struct.archive_entry*, %struct.stat*) #1

declare dso_local i8* @archive_read_disk_uname(%struct.archive*, i32) #1

declare dso_local i32 @archive_entry_uid(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_copy_uname(%struct.archive_entry*, i8*) #1

declare dso_local i8* @archive_read_disk_gname(%struct.archive*, i32) #1

declare dso_local i32 @archive_entry_gid(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_copy_gname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_read_disk_entry_setup_acls(%struct.archive_read_disk*, %struct.archive_entry*, i32*) #1

declare dso_local i32 @setup_xattrs(%struct.archive_read_disk*, %struct.archive_entry*, i32*) #1

declare dso_local i32 @setup_mac_metadata(%struct.archive_read_disk*, %struct.archive_entry*, i32*) #1

declare dso_local i32 @setup_sparse(%struct.archive_read_disk*, %struct.archive_entry*, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
