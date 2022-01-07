; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_archive_write_pax_header_xattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_archive_write_pax_header_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pax = type { i32, i32 }
%struct.archive_string = type { i32 }

@WRITE_LIBARCHIVE_XATTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"LIBARCHIVE.xattr.\00", align 1
@WRITE_SCHILY_XATTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"SCHILY.xattr.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pax*, i8*, i8*, i64)* @archive_write_pax_header_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @archive_write_pax_header_xattr(%struct.pax* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.pax*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.archive_string, align 4
  %10 = alloca i8*, align 8
  store %struct.pax* %0, %struct.pax** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.pax*, %struct.pax** %5, align 8
  %12 = getelementptr inbounds %struct.pax, %struct.pax* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @WRITE_LIBARCHIVE_XATTR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %4
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i8* @base64_encode(i8* %18, i64 %19)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = call i32 @archive_string_init(%struct.archive_string* %9)
  %28 = call i32 @archive_strcpy(%struct.archive_string* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @archive_strcat(%struct.archive_string* %9, i8* %29)
  %31 = load %struct.pax*, %struct.pax** %5, align 8
  %32 = getelementptr inbounds %struct.pax, %struct.pax* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %9, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @add_pax_attr(i32* %32, i32 %34, i8* %35)
  %37 = call i32 @archive_string_free(%struct.archive_string* %9)
  br label %38

38:                                               ; preds = %26, %23, %17
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @free(i8* %39)
  br label %41

41:                                               ; preds = %38, %4
  %42 = load %struct.pax*, %struct.pax** %5, align 8
  %43 = getelementptr inbounds %struct.pax, %struct.pax* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @WRITE_SCHILY_XATTR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %41
  %49 = call i32 @archive_string_init(%struct.archive_string* %9)
  %50 = call i32 @archive_strcpy(%struct.archive_string* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @archive_strcat(%struct.archive_string* %9, i8* %51)
  %53 = load %struct.pax*, %struct.pax** %5, align 8
  %54 = getelementptr inbounds %struct.pax, %struct.pax* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %9, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @add_pax_attr_binary(i32* %54, i32 %56, i8* %57, i64 %58)
  %60 = call i32 @archive_string_free(%struct.archive_string* %9)
  br label %61

61:                                               ; preds = %48, %41
  ret void
}

declare dso_local i8* @base64_encode(i8*, i64) #1

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i32 @archive_strcpy(%struct.archive_string*, i8*) #1

declare dso_local i32 @archive_strcat(%struct.archive_string*, i8*) #1

declare dso_local i32 @add_pax_attr(i32*, i32, i8*) #1

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @add_pax_attr_binary(i32*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
