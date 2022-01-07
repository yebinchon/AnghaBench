; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_add_pax_acl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_add_pax_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32 }
%struct.archive_entry = type { i32 }
%struct.pax = type { i32, i32 }

@ARCHIVE_ENTRY_ACL_TYPE_NFS4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"SCHILY.acl.ace\00", align 1
@ARCHIVE_ENTRY_ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"SCHILY.acl.access\00", align 1
@ARCHIVE_ENTRY_ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"SCHILY.acl.default\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Can't allocate memory for \00", align 1
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Can't translate \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" to UTF-8\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.archive_entry*, %struct.pax*, i32)* @add_pax_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_pax_acl(%struct.archive_write* %0, %struct.archive_entry* %1, %struct.pax* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_write*, align 8
  %7 = alloca %struct.archive_entry*, align 8
  %8 = alloca %struct.pax*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %6, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %7, align 8
  store %struct.pax* %2, %struct.pax** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %14 = call i32 @archive_entry_acl_types(%struct.archive_entry* %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_NFS4, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %36

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %35

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_DEFAULT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %33, i32* %5, align 4
  br label %79

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %34, %25
  br label %36

36:                                               ; preds = %35, %19
  %37 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.pax*, %struct.pax** %8, align 8
  %40 = getelementptr inbounds %struct.pax, %struct.pax* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @archive_entry_acl_to_text_l(%struct.archive_entry* %37, i32* null, i32 %38, i32 %41)
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %64

45:                                               ; preds = %36
  %46 = load i64, i64* @errno, align 8
  %47 = load i64, i64* @ENOMEM, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %51 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %50, i32 0, i32 0
  %52 = load i64, i64* @ENOMEM, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 (i32*, i64, i8*, i8*, i8*, ...) @archive_set_error(i32* %51, i64 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %55, i32* %5, align 4
  br label %79

56:                                               ; preds = %45
  %57 = load %struct.archive_write*, %struct.archive_write** %6, align 8
  %58 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %57, i32 0, i32 0
  %59 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %60 = sext i32 %59 to i64
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 (i32*, i64, i8*, i8*, i8*, ...) @archive_set_error(i32* %58, i64 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %63 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %63, i32* %5, align 4
  br label %79

64:                                               ; preds = %36
  %65 = load i8*, i8** %10, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.pax*, %struct.pax** %8, align 8
  %71 = getelementptr inbounds %struct.pax, %struct.pax* %70, i32 0, i32 0
  %72 = load i8*, i8** %11, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @add_pax_attr(i32* %71, i8* %72, i8* %73)
  br label %75

75:                                               ; preds = %69, %64
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %75, %56, %49, %32
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @archive_entry_acl_types(%struct.archive_entry*) #1

declare dso_local i8* @archive_entry_acl_to_text_l(%struct.archive_entry*, i32*, i32, i32) #1

declare dso_local i32 @archive_set_error(i32*, i64, i8*, i8*, i8*, ...) #1

declare dso_local i32 @add_pax_attr(i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
