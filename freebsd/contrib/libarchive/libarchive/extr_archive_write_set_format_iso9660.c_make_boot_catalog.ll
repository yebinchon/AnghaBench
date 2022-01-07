; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_make_boot_catalog.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_make_boot_catalog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { %struct.iso9660* }
%struct.iso9660 = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8, i8, i32, i8, i32, %struct.TYPE_8__*, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@LOGICAL_BLOCK_SIZE = common dso_local global i32 0, align 4
@BOOT_MEDIA_NO_EMULATION = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @make_boot_catalog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_boot_catalog(%struct.archive_write* %0) #0 {
  %2 = alloca %struct.archive_write*, align 8
  %3 = alloca %struct.iso9660*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %2, align 8
  %8 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %9 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %8, i32 0, i32 0
  %10 = load %struct.iso9660*, %struct.iso9660** %9, align 8
  store %struct.iso9660* %10, %struct.iso9660** %3, align 8
  %11 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %12 = call i8* @wb_buffptr(%struct.archive_write* %11)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %15 = call i32 @memset(i8* %13, i32 0, i32 %14)
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 1, i8* %18, align 1
  %19 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %20 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 %22, i8* %24, align 1
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 3
  store i8 0, i8* %26, align 1
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  store i8 0, i8* %28, align 1
  %29 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %30 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 6
  %32 = call i64 @archive_strlen(%struct.TYPE_10__* %31)
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %1
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 4
  %37 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %38 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @strncpy(i8* %36, i32 %41, i32 23)
  br label %43

43:                                               ; preds = %34, %1
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 27
  store i8 0, i8* %45, align 1
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 29
  store i8 0, i8* %47, align 1
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 28
  store i8 0, i8* %49, align 1
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 30
  store i8 85, i8* %51, align 1
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 31
  store i8 -86, i8* %53, align 1
  store i32 0, i32* %6, align 4
  %54 = load i8*, i8** %4, align 8
  %55 = bitcast i8* %54 to i32*
  store i32* %55, i32** %7, align 8
  br label %56

56:                                               ; preds = %62, %43
  %57 = load i32*, i32** %7, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 32
  %60 = bitcast i8* %59 to i32*
  %61 = icmp ult i32* %57, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %7, align 8
  %65 = ptrtoint i32* %63 to i32
  %66 = call i64 @archive_le16dec(i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %6, align 4
  br label %56

71:                                               ; preds = %56
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 28
  %74 = load i32, i32* %6, align 4
  %75 = xor i32 %74, -1
  %76 = add nsw i32 %75, 1
  %77 = call i32 @set_num_721(i8* %73, i32 %76)
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 32
  store i8* %79, i8** %5, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  store i8 -120, i8* %81, align 1
  %82 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %83 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i8, i8* %84, align 1
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  store i8 %85, i8* %87, align 1
  %88 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %89 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = load i8, i8* @BOOT_MEDIA_NO_EMULATION, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %71
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 2
  %99 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %100 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @set_num_721(i8* %98, i32 %102)
  br label %108

104:                                              ; preds = %71
  %105 = load i8*, i8** %5, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 2
  %107 = call i32 @set_num_721(i8* %106, i32 0)
  br label %108

108:                                              ; preds = %104, %96
  %109 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %110 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 3
  %112 = load i8, i8* %111, align 8
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 4
  store i8 %112, i8* %114, align 1
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 5
  store i8 0, i8* %116, align 1
  %117 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %118 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = load i8, i8* @BOOT_MEDIA_NO_EMULATION, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %108
  %126 = load i8*, i8** %5, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 6
  %128 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %129 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @set_num_721(i8* %127, i32 %131)
  br label %137

133:                                              ; preds = %108
  %134 = load i8*, i8** %5, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 6
  %136 = call i32 @set_num_721(i8* %135, i32 1)
  br label %137

137:                                              ; preds = %133, %125
  %138 = load i8*, i8** %5, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 8
  %140 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %141 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 5
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @set_num_731(i8* %139, i32 %148)
  %150 = load i8*, i8** %5, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 12
  %152 = call i32 @memset(i8* %151, i32 0, i32 20)
  %153 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %154 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %155 = call i32 @wb_consume(%struct.archive_write* %153, i32 %154)
  ret i32 %155
}

declare dso_local i8* @wb_buffptr(%struct.archive_write*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @archive_strlen(%struct.TYPE_10__*) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i64 @archive_le16dec(i32) #1

declare dso_local i32 @set_num_721(i8*, i32) #1

declare dso_local i32 @set_num_731(i8*, i32) #1

declare dso_local i32 @wb_consume(%struct.archive_write*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
