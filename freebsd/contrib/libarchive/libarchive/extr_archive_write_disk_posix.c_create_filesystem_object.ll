; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_create_filesystem_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_create_filesystem_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_disk = type { i32, i64, i32, i32, i64, i32, i32, i64, i32, i32, i32 }
%struct.stat = type { i32 }
%struct.archive_string = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@TODO_HFS_COMPRESSION = common dso_local global i32 0, align 4
@TODO_XATTR = common dso_local global i32 0, align 4
@AE_IFMT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MINIMUM_DIR_MODE = common dso_local global i32 0, align 4
@MAXIMUM_DIR_MODE = common dso_local global i32 0, align 4
@TODO_TIMES = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_PERM = common dso_local global i32 0, align 4
@TODO_MODE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@S_IFBLK = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_disk*)* @create_filesystem_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_filesystem_object(%struct.archive_write_disk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write_disk*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca %struct.archive_string, align 4
  %11 = alloca i32, align 4
  store %struct.archive_write_disk* %0, %struct.archive_write_disk** %3, align 8
  %12 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %13 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @archive_entry_hardlink(i32 %14)
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @EPERM, align 4
  store i32 %19, i32* %2, align 4
  br label %171

20:                                               ; preds = %1
  %21 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %22 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @archive_entry_symlink(i32 %23)
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @EPERM, align 4
  store i32 %28, i32* %2, align 4
  br label %171

29:                                               ; preds = %20
  %30 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %31 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 4095
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 511
  %36 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %37 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %35, %39
  store i32 %40, i32* %6, align 4
  %41 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %42 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %29
  %46 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %47 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @TODO_HFS_COMPRESSION, align 4
  %50 = load i32, i32* @TODO_XATTR, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, 128
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %45, %29
  %58 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %59 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @AE_IFMT, align 4
  %62 = and i32 %60, %61
  switch i32 %62, label %63 [
    i32 128, label %64
    i32 131, label %91
    i32 132, label %93
    i32 130, label %95
    i32 129, label %152
  ]

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %57, %63
  %65 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %66 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @O_WRONLY, align 4
  %69 = load i32, i32* @O_CREAT, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @O_EXCL, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @O_BINARY, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @O_CLOEXEC, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %6, align 4
  %78 = call i8* (i32, i32, ...) @open(i32 %67, i32 %76, i32 %77)
  %79 = ptrtoint i8* %78 to i64
  %80 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %81 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %80, i32 0, i32 4
  store i64 %79, i64* %81, align 8
  %82 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %83 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @__archive_ensure_cloexec_flag(i64 %84)
  %86 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %87 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %88, 0
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %7, align 4
  br label %154

91:                                               ; preds = %57
  %92 = load i32, i32* @EINVAL, align 4
  store i32 %92, i32* %2, align 4
  br label %171

93:                                               ; preds = %57
  %94 = load i32, i32* @EINVAL, align 4
  store i32 %94, i32* %2, align 4
  br label %171

95:                                               ; preds = %57
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @MINIMUM_DIR_MODE, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @MAXIMUM_DIR_MODE, align 4
  %100 = and i32 %98, %99
  store i32 %100, i32* %6, align 4
  %101 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %102 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @mkdir(i32 %103, i32 %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %151

108:                                              ; preds = %95
  %109 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %110 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @TODO_TIMES, align 4
  %113 = and i32 %111, %112
  %114 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %115 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* @TODO_TIMES, align 4
  %119 = xor i32 %118, -1
  %120 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %121 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %134, label %127

127:                                              ; preds = %108
  %128 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %129 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @ARCHIVE_EXTRACT_PERM, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %127, %108
  %135 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %136 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @TODO_MODE, align 4
  %139 = and i32 %137, %138
  %140 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %141 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %134, %127
  %145 = load i32, i32* @TODO_MODE, align 4
  %146 = xor i32 %145, -1
  %147 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %148 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = and i32 %149, %146
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %144, %95
  br label %154

152:                                              ; preds = %57
  %153 = load i32, i32* @EINVAL, align 4
  store i32 %153, i32* %2, align 4
  br label %171

154:                                              ; preds = %151, %64
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = load i32, i32* @errno, align 4
  store i32 %158, i32* %2, align 4
  br label %171

159:                                              ; preds = %154
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %5, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %159
  %164 = load i32, i32* @TODO_MODE, align 4
  %165 = xor i32 %164, -1
  %166 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %167 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = and i32 %168, %165
  store i32 %169, i32* %167, align 8
  br label %170

170:                                              ; preds = %163, %159
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %170, %157, %152, %93, %91, %27, %18
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i8* @archive_entry_hardlink(i32) #1

declare dso_local i8* @archive_entry_symlink(i32) #1

declare dso_local i8* @open(i32, i32, ...) #1

declare dso_local i32 @__archive_ensure_cloexec_flag(i64) #1

declare dso_local i32 @mkdir(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
