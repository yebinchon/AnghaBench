; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_xattr.c_archive_entry_xattr_add_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_xattr.c_archive_entry_xattr_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { %struct.ae_xattr* }
%struct.ae_xattr = type { i64, %struct.ae_xattr*, i32*, i32* }

@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @archive_entry_xattr_add_entry(%struct.archive_entry* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ae_xattr*, align 8
  store %struct.archive_entry* %0, %struct.archive_entry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = call i32* @malloc(i64 32)
  %11 = bitcast i32* %10 to %struct.ae_xattr*
  store %struct.ae_xattr* %11, %struct.ae_xattr** %9, align 8
  %12 = icmp eq %struct.ae_xattr* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = call i32 @__archive_errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32* @strdup(i8* %16)
  %18 = load %struct.ae_xattr*, %struct.ae_xattr** %9, align 8
  %19 = getelementptr inbounds %struct.ae_xattr, %struct.ae_xattr* %18, i32 0, i32 3
  store i32* %17, i32** %19, align 8
  %20 = icmp eq i32* %17, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 @__archive_errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %15
  %24 = load i64, i64* %8, align 8
  %25 = call i32* @malloc(i64 %24)
  %26 = load %struct.ae_xattr*, %struct.ae_xattr** %9, align 8
  %27 = getelementptr inbounds %struct.ae_xattr, %struct.ae_xattr* %26, i32 0, i32 2
  store i32* %25, i32** %27, align 8
  %28 = icmp ne i32* %25, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load %struct.ae_xattr*, %struct.ae_xattr** %9, align 8
  %31 = getelementptr inbounds %struct.ae_xattr, %struct.ae_xattr* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @memcpy(i32* %32, i8* %33, i64 %34)
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.ae_xattr*, %struct.ae_xattr** %9, align 8
  %38 = getelementptr inbounds %struct.ae_xattr, %struct.ae_xattr* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %42

39:                                               ; preds = %23
  %40 = load %struct.ae_xattr*, %struct.ae_xattr** %9, align 8
  %41 = getelementptr inbounds %struct.ae_xattr, %struct.ae_xattr* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %39, %29
  %43 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %44 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %43, i32 0, i32 0
  %45 = load %struct.ae_xattr*, %struct.ae_xattr** %44, align 8
  %46 = load %struct.ae_xattr*, %struct.ae_xattr** %9, align 8
  %47 = getelementptr inbounds %struct.ae_xattr, %struct.ae_xattr* %46, i32 0, i32 1
  store %struct.ae_xattr* %45, %struct.ae_xattr** %47, align 8
  %48 = load %struct.ae_xattr*, %struct.ae_xattr** %9, align 8
  %49 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %50 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %49, i32 0, i32 0
  store %struct.ae_xattr* %48, %struct.ae_xattr** %50, align 8
  ret void
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @__archive_errx(i32, i8*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
