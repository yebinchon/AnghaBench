; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_archive_entry_fflags_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_archive_entry_fflags_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i64, i64, i32, i32 }

@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"No memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @archive_entry_fflags_text(%struct.archive_entry* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.archive_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.archive_entry* %0, %struct.archive_entry** %3, align 8
  %6 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %7 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %10 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %9, i32 0, i32 2
  %11 = call i64 @archive_mstring_get_mbs(i32 %8, i32* %10, i8** %4)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %2, align 8
  br label %71

18:                                               ; preds = %13
  br label %26

19:                                               ; preds = %1
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @ENOMEM, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @__archive_errx(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %19
  br label %26

26:                                               ; preds = %25, %18
  %27 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %28 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %33 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i8* null, i8** %2, align 8
  br label %71

37:                                               ; preds = %31, %26
  %38 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %39 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %42 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i8* @ae_fflagstostr(i64 %40, i64 %43)
  store i8* %44, i8** %5, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i8* null, i8** %2, align 8
  br label %71

48:                                               ; preds = %37
  %49 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %50 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %49, i32 0, i32 2
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @archive_mstring_copy_mbs(i32* %50, i8* %51)
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %56 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %59 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %58, i32 0, i32 2
  %60 = call i64 @archive_mstring_get_mbs(i32 %57, i32* %59, i8** %4)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %48
  %63 = load i8*, i8** %4, align 8
  store i8* %63, i8** %2, align 8
  br label %71

64:                                               ; preds = %48
  %65 = load i64, i64* @errno, align 8
  %66 = load i64, i64* @ENOMEM, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 @__archive_errx(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %64
  store i8* null, i8** %2, align 8
  br label %71

71:                                               ; preds = %70, %62, %47, %36, %16
  %72 = load i8*, i8** %2, align 8
  ret i8* %72
}

declare dso_local i64 @archive_mstring_get_mbs(i32, i32*, i8**) #1

declare dso_local i32 @__archive_errx(i32, i8*) #1

declare dso_local i8* @ae_fflagstostr(i64, i64) #1

declare dso_local i32 @archive_mstring_copy_mbs(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
