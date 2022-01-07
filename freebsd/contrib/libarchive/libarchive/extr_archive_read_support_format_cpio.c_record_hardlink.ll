; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_record_hardlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_record_hardlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.cpio = type { %struct.links_entry* }
%struct.links_entry = type { i64, i64, i64, %struct.links_entry*, %struct.links_entry*, %struct.links_entry* }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Out of memory adding file to list\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.cpio*, %struct.archive_entry*)* @record_hardlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record_hardlink(%struct.archive_read* %0, %struct.cpio* %1, %struct.archive_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca %struct.cpio*, align 8
  %7 = alloca %struct.archive_entry*, align 8
  %8 = alloca %struct.links_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store %struct.cpio* %1, %struct.cpio** %6, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %7, align 8
  %11 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %12 = call i32 @archive_entry_nlink(%struct.archive_entry* %11)
  %13 = icmp sle i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %15, i32* %4, align 4
  br label %164

16:                                               ; preds = %3
  %17 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %18 = call i64 @archive_entry_dev(%struct.archive_entry* %17)
  store i64 %18, i64* %9, align 8
  %19 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %20 = call i64 @archive_entry_ino64(%struct.archive_entry* %19)
  store i64 %20, i64* %10, align 8
  %21 = load %struct.cpio*, %struct.cpio** %6, align 8
  %22 = getelementptr inbounds %struct.cpio, %struct.cpio* %21, i32 0, i32 0
  %23 = load %struct.links_entry*, %struct.links_entry** %22, align 8
  store %struct.links_entry* %23, %struct.links_entry** %8, align 8
  br label %24

24:                                               ; preds = %98, %16
  %25 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %26 = icmp ne %struct.links_entry* %25, null
  br i1 %26, label %27, label %102

27:                                               ; preds = %24
  %28 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %29 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %97

33:                                               ; preds = %27
  %34 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %35 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %97

39:                                               ; preds = %33
  %40 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %41 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %42 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %41, i32 0, i32 3
  %43 = load %struct.links_entry*, %struct.links_entry** %42, align 8
  %44 = call i32 @archive_entry_copy_hardlink(%struct.archive_entry* %40, %struct.links_entry* %43)
  %45 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %46 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %46, align 8
  %49 = icmp sle i64 %48, 0
  br i1 %49, label %50, label %95

50:                                               ; preds = %39
  %51 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %52 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %51, i32 0, i32 4
  %53 = load %struct.links_entry*, %struct.links_entry** %52, align 8
  %54 = icmp ne %struct.links_entry* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %57 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %56, i32 0, i32 5
  %58 = load %struct.links_entry*, %struct.links_entry** %57, align 8
  %59 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %60 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %59, i32 0, i32 4
  %61 = load %struct.links_entry*, %struct.links_entry** %60, align 8
  %62 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %61, i32 0, i32 5
  store %struct.links_entry* %58, %struct.links_entry** %62, align 8
  br label %63

63:                                               ; preds = %55, %50
  %64 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %65 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %64, i32 0, i32 5
  %66 = load %struct.links_entry*, %struct.links_entry** %65, align 8
  %67 = icmp ne %struct.links_entry* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %70 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %69, i32 0, i32 4
  %71 = load %struct.links_entry*, %struct.links_entry** %70, align 8
  %72 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %73 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %72, i32 0, i32 5
  %74 = load %struct.links_entry*, %struct.links_entry** %73, align 8
  %75 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %74, i32 0, i32 4
  store %struct.links_entry* %71, %struct.links_entry** %75, align 8
  br label %76

76:                                               ; preds = %68, %63
  %77 = load %struct.cpio*, %struct.cpio** %6, align 8
  %78 = getelementptr inbounds %struct.cpio, %struct.cpio* %77, i32 0, i32 0
  %79 = load %struct.links_entry*, %struct.links_entry** %78, align 8
  %80 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %81 = icmp eq %struct.links_entry* %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %84 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %83, i32 0, i32 5
  %85 = load %struct.links_entry*, %struct.links_entry** %84, align 8
  %86 = load %struct.cpio*, %struct.cpio** %6, align 8
  %87 = getelementptr inbounds %struct.cpio, %struct.cpio* %86, i32 0, i32 0
  store %struct.links_entry* %85, %struct.links_entry** %87, align 8
  br label %88

88:                                               ; preds = %82, %76
  %89 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %90 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %89, i32 0, i32 3
  %91 = load %struct.links_entry*, %struct.links_entry** %90, align 8
  %92 = call i32 @free(%struct.links_entry* %91)
  %93 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %94 = call i32 @free(%struct.links_entry* %93)
  br label %95

95:                                               ; preds = %88, %39
  %96 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %96, i32* %4, align 4
  br label %164

97:                                               ; preds = %33, %27
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %100 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %99, i32 0, i32 5
  %101 = load %struct.links_entry*, %struct.links_entry** %100, align 8
  store %struct.links_entry* %101, %struct.links_entry** %8, align 8
  br label %24

102:                                              ; preds = %24
  %103 = call i64 @malloc(i32 48)
  %104 = inttoptr i64 %103 to %struct.links_entry*
  store %struct.links_entry* %104, %struct.links_entry** %8, align 8
  %105 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %106 = icmp eq %struct.links_entry* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %109 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %108, i32 0, i32 0
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = call i32 @archive_set_error(i32* %109, i32 %110, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %112 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %112, i32* %4, align 4
  br label %164

113:                                              ; preds = %102
  %114 = load %struct.cpio*, %struct.cpio** %6, align 8
  %115 = getelementptr inbounds %struct.cpio, %struct.cpio* %114, i32 0, i32 0
  %116 = load %struct.links_entry*, %struct.links_entry** %115, align 8
  %117 = icmp ne %struct.links_entry* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %120 = load %struct.cpio*, %struct.cpio** %6, align 8
  %121 = getelementptr inbounds %struct.cpio, %struct.cpio* %120, i32 0, i32 0
  %122 = load %struct.links_entry*, %struct.links_entry** %121, align 8
  %123 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %122, i32 0, i32 4
  store %struct.links_entry* %119, %struct.links_entry** %123, align 8
  br label %124

124:                                              ; preds = %118, %113
  %125 = load %struct.cpio*, %struct.cpio** %6, align 8
  %126 = getelementptr inbounds %struct.cpio, %struct.cpio* %125, i32 0, i32 0
  %127 = load %struct.links_entry*, %struct.links_entry** %126, align 8
  %128 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %129 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %128, i32 0, i32 5
  store %struct.links_entry* %127, %struct.links_entry** %129, align 8
  %130 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %131 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %130, i32 0, i32 4
  store %struct.links_entry* null, %struct.links_entry** %131, align 8
  %132 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %133 = load %struct.cpio*, %struct.cpio** %6, align 8
  %134 = getelementptr inbounds %struct.cpio, %struct.cpio* %133, i32 0, i32 0
  store %struct.links_entry* %132, %struct.links_entry** %134, align 8
  %135 = load i64, i64* %9, align 8
  %136 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %137 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  %138 = load i64, i64* %10, align 8
  %139 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %140 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  %141 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %142 = call i32 @archive_entry_nlink(%struct.archive_entry* %141)
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %146 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %145, i32 0, i32 2
  store i64 %144, i64* %146, align 8
  %147 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %148 = call i32 @archive_entry_pathname(%struct.archive_entry* %147)
  %149 = call %struct.links_entry* @strdup(i32 %148)
  %150 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %151 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %150, i32 0, i32 3
  store %struct.links_entry* %149, %struct.links_entry** %151, align 8
  %152 = load %struct.links_entry*, %struct.links_entry** %8, align 8
  %153 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %152, i32 0, i32 3
  %154 = load %struct.links_entry*, %struct.links_entry** %153, align 8
  %155 = icmp eq %struct.links_entry* %154, null
  br i1 %155, label %156, label %162

156:                                              ; preds = %124
  %157 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %158 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %157, i32 0, i32 0
  %159 = load i32, i32* @ENOMEM, align 4
  %160 = call i32 @archive_set_error(i32* %158, i32 %159, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %161 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %161, i32* %4, align 4
  br label %164

162:                                              ; preds = %124
  %163 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %162, %156, %107, %95, %14
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i32 @archive_entry_nlink(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_dev(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_ino64(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_copy_hardlink(%struct.archive_entry*, %struct.links_entry*) #1

declare dso_local i32 @free(%struct.links_entry*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local %struct.links_entry* @strdup(i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
