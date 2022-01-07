; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_verify_file.c_find_manifest.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_verify_file.c_find_manifest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@VE_FINGERPRINT_NONE = common dso_local global i32 0, align 4
@manifest_names = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"looking for %s\0A\00", align 1
@MANIFEST_SKIP = common dso_local global i8* null, align 8
@MANIFEST_SKIP_ALWAYS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @find_manifest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_manifest(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i32, i32* @MAXPATHLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* @MAXPATHLEN, align 4
  %18 = sub nsw i32 %17, 1
  %19 = call i32 @strncpy(i8* %15, i8* %16, i32 %18)
  %20 = call i8* @strrchr(i8* %15, i8 signext 47)
  store i8* %20, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %63

23:                                               ; preds = %1
  %24 = load i8*, i8** %7, align 8
  store i8 0, i8* %24, align 1
  %25 = call i8* @strdup(i8* %15)
  store i8* %25, i8** %7, align 8
  %26 = load i32, i32* @VE_FINGERPRINT_NONE, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i8**, i8*** @manifest_names, align 8
  store i8** %27, i8*** %9, align 8
  br label %28

28:                                               ; preds = %56, %23
  %29 = load i8**, i8*** %9, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %59

32:                                               ; preds = %28
  %33 = trunc i64 %13 to i32
  %34 = load i8*, i8** %7, align 8
  %35 = load i8**, i8*** %9, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @snprintf(i8* %15, i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %34, i8* %36)
  %38 = call i32 @DEBUG_PRINTF(i32 5, i8* %15)
  %39 = call i64 @stat(i8* %15, %struct.stat* %4)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  store i8* null, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i8*, i8** %7, align 8
  br label %51

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i8* [ %49, %48 ], [ null, %50 ]
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @load_manifest(i8* %15, i8* %52, i8* %53, %struct.stat* %4)
  store i32 %54, i32* %10, align 4
  br label %59

55:                                               ; preds = %41, %32
  br label %56

56:                                               ; preds = %55
  %57 = load i8**, i8*** %9, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i32 1
  store i8** %58, i8*** %9, align 8
  br label %28

59:                                               ; preds = %51, %28
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @free(i8* %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %63

63:                                               ; preds = %59, %22
  %64 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @DEBUG_PRINTF(i32, i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @load_manifest(i8*, i8*, i8*, %struct.stat*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
