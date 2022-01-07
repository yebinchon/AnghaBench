; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_list_item_verbose.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_list_item_verbose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpio = type { i64, i64 }
%struct.archive_entry = type { i32 }

@stdout = common dso_local global i32* null, align 8
@list_item_verbose.now = internal global i32 0, align 4
@AE_IFCHR = common dso_local global i64 0, align 8
@AE_IFBLK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"%lu,%lu\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%e %b  %Y\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%b %e  %Y\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%e %b %H:%M\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%b %e %H:%M\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"%s%3d %-8s %-8s %8s %12s %s\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" link to %s\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" -> %s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpio*, %struct.archive_entry*)* @list_item_verbose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_item_verbose(%struct.cpio* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca %struct.cpio*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca [32 x i8], align 16
  %7 = alloca [16 x i8], align 16
  %8 = alloca [16 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.cpio* %0, %struct.cpio** %3, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %4, align 8
  %14 = load i32*, i32** @stdout, align 8
  store i32* %14, i32** %11, align 8
  %15 = load i32, i32* @list_item_verbose.now, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = call i32 @time(i32* @list_item_verbose.now)
  br label %19

19:                                               ; preds = %17, %2
  %20 = load %struct.cpio*, %struct.cpio** %3, align 8
  %21 = getelementptr inbounds %struct.cpio, %struct.cpio* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %26 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %27 = call i64 @archive_entry_uid(%struct.archive_entry* %26)
  %28 = call i32 @cpio_i64toa(i64 %27)
  %29 = call i32 @strcpy(i8* %25, i32 %28)
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  store i8* %30, i8** %9, align 8
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %32 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %33 = call i64 @archive_entry_gid(%struct.archive_entry* %32)
  %34 = call i32 @cpio_i64toa(i64 %33)
  %35 = call i32 @strcpy(i8* %31, i32 %34)
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  store i8* %36, i8** %10, align 8
  br label %60

37:                                               ; preds = %19
  %38 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %39 = call i8* @archive_entry_uname(%struct.archive_entry* %38)
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.cpio*, %struct.cpio** %3, align 8
  %44 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %45 = call i64 @archive_entry_uid(%struct.archive_entry* %44)
  %46 = trunc i64 %45 to i32
  %47 = call i8* @lookup_uname(%struct.cpio* %43, i32 %46)
  store i8* %47, i8** %9, align 8
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %50 = call i8* @archive_entry_gname(%struct.archive_entry* %49)
  store i8* %50, i8** %10, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.cpio*, %struct.cpio** %3, align 8
  %55 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %56 = call i64 @archive_entry_gid(%struct.archive_entry* %55)
  %57 = trunc i64 %56 to i32
  %58 = call i8* @lookup_gname(%struct.cpio* %54, i32 %57)
  store i8* %58, i8** %10, align 8
  br label %59

59:                                               ; preds = %53, %48
  br label %60

60:                                               ; preds = %59, %24
  %61 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %62 = call i64 @archive_entry_filetype(%struct.archive_entry* %61)
  %63 = load i64, i64* @AE_IFCHR, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %67 = call i64 @archive_entry_filetype(%struct.archive_entry* %66)
  %68 = load i64, i64* @AE_IFBLK, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %65, %60
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %72 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %73 = call i64 @archive_entry_rdevmajor(%struct.archive_entry* %72)
  %74 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %75 = call i64 @archive_entry_rdevminor(%struct.archive_entry* %74)
  %76 = call i32 @snprintf(i8* %71, i32 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %73, i64 %75)
  br label %83

77:                                               ; preds = %65
  %78 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %79 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %80 = call i64 @archive_entry_size(%struct.archive_entry* %79)
  %81 = call i32 @cpio_i64toa(i64 %80)
  %82 = call i32 @strcpy(i8* %78, i32 %81)
  br label %83

83:                                               ; preds = %77, %70
  %84 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %85 = call i32 @archive_entry_mtime(%struct.archive_entry* %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @list_item_verbose.now, align 4
  %88 = sub nsw i32 %86, %87
  %89 = icmp sgt i32 %88, 15768000
  br i1 %89, label %95, label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @list_item_verbose.now, align 4
  %93 = sub nsw i32 %91, %92
  %94 = icmp slt i32 %93, -15768000
  br i1 %94, label %95, label %102

95:                                               ; preds = %90, %83
  %96 = load %struct.cpio*, %struct.cpio** %3, align 8
  %97 = getelementptr inbounds %struct.cpio, %struct.cpio* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  store i8* %101, i8** %12, align 8
  br label %109

102:                                              ; preds = %90
  %103 = load %struct.cpio*, %struct.cpio** %3, align 8
  %104 = getelementptr inbounds %struct.cpio, %struct.cpio* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)
  store i8* %108, i8** %12, align 8
  br label %109

109:                                              ; preds = %102, %95
  %110 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %111 = load i8*, i8** %12, align 8
  %112 = call i32 @localtime(i32* %13)
  %113 = call i32 @strftime(i8* %110, i32 32, i8* %111, i32 %112)
  %114 = load i32*, i32** %11, align 8
  %115 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %116 = call i8* @archive_entry_strmode(%struct.archive_entry* %115)
  %117 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %118 = call i8* @archive_entry_nlink(%struct.archive_entry* %117)
  %119 = load i8*, i8** %9, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %122 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %123 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %124 = call i32 @archive_entry_pathname(%struct.archive_entry* %123)
  %125 = call i32 (i32*, i8*, ...) @fprintf(i32* %114, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %116, i8* %118, i8* %119, i8* %120, i8* %121, i8* %122, i32 %124)
  %126 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %127 = call i8* @archive_entry_hardlink(%struct.archive_entry* %126)
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %109
  %130 = load i32*, i32** %11, align 8
  %131 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %132 = call i8* @archive_entry_hardlink(%struct.archive_entry* %131)
  %133 = call i32 (i32*, i8*, ...) @fprintf(i32* %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %132)
  br label %144

134:                                              ; preds = %109
  %135 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %136 = call i8* @archive_entry_symlink(%struct.archive_entry* %135)
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load i32*, i32** %11, align 8
  %140 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %141 = call i8* @archive_entry_symlink(%struct.archive_entry* %140)
  %142 = call i32 (i32*, i8*, ...) @fprintf(i32* %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %141)
  br label %143

143:                                              ; preds = %138, %134
  br label %144

144:                                              ; preds = %143, %129
  %145 = load i32*, i32** %11, align 8
  %146 = call i32 (i32*, i8*, ...) @fprintf(i32* %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @cpio_i64toa(i64) #1

declare dso_local i64 @archive_entry_uid(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_gid(%struct.archive_entry*) #1

declare dso_local i8* @archive_entry_uname(%struct.archive_entry*) #1

declare dso_local i8* @lookup_uname(%struct.cpio*, i32) #1

declare dso_local i8* @archive_entry_gname(%struct.archive_entry*) #1

declare dso_local i8* @lookup_gname(%struct.cpio*, i32) #1

declare dso_local i64 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, i64) #1

declare dso_local i64 @archive_entry_rdevmajor(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_rdevminor(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, i32) #1

declare dso_local i32 @localtime(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @archive_entry_strmode(%struct.archive_entry*) #1

declare dso_local i8* @archive_entry_nlink(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i8* @archive_entry_hardlink(%struct.archive_entry*) #1

declare dso_local i8* @archive_entry_symlink(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
