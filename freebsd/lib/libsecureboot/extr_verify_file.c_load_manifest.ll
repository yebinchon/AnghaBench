; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_verify_file.c_load_manifest.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_verify_file.c_load_manifest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@VE_FINGERPRINT_NONE = common dso_local global i32 0, align 4
@VE_NOT_CHECKED = common dso_local global i32 0, align 4
@VEF_VERBOSE = common dso_local global i32 0, align 4
@VE_VERIFIED = common dso_local global i32 0, align 4
@loaded_manifests = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"loaded: %s %s %s\0A\00", align 1
@VE_FINGERPRINT_WRONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_manifest(i8* %0, i8* %1, i8* %2, %struct.stat* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat*, align 8
  %10 = alloca %struct.stat, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.stat* %3, %struct.stat** %9, align 8
  %14 = load i32, i32* @VE_FINGERPRINT_NONE, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  %18 = icmp ugt i64 %17, 4
  br i1 %18, label %19, label %73

19:                                               ; preds = %4
  %20 = load %struct.stat*, %struct.stat** %9, align 8
  %21 = icmp ne %struct.stat* %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %19
  store %struct.stat* %10, %struct.stat** %9, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @stat(i8* %23, %struct.stat* %10)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @S_ISREG(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26, %22
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %5, align 4
  br label %75

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %19
  %35 = load %struct.stat*, %struct.stat** %9, align 8
  %36 = call i32 @is_verified(%struct.stat* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @VE_NOT_CHECKED, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %5, align 4
  br label %75

42:                                               ; preds = %34
  %43 = load %struct.stat*, %struct.stat** %9, align 8
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ve_utc_set(i32 %45)
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* @VEF_VERBOSE, align 4
  %49 = call i64 @verify_signed(i8* %47, i32 %48)
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %13, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %42
  %54 = load i8*, i8** %6, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = load %struct.stat*, %struct.stat** %9, align 8
  %59 = call i32 @fingerprint_info_add(i8* %54, i8* %55, i8* %56, i8* %57, %struct.stat* %58)
  %60 = load %struct.stat*, %struct.stat** %9, align 8
  %61 = load i32, i32* @VE_VERIFIED, align 4
  %62 = call i32 @add_verify_status(%struct.stat* %60, i32 %61)
  store i32 1, i32* @loaded_manifests, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @DEBUG_PRINTF(i32 3, i8* %65)
  store i32 0, i32* %12, align 4
  br label %72

67:                                               ; preds = %42
  %68 = load i32, i32* @VE_FINGERPRINT_WRONG, align 4
  store i32 %68, i32* %12, align 4
  %69 = load %struct.stat*, %struct.stat** %9, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @add_verify_status(%struct.stat* %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %53
  br label %73

73:                                               ; preds = %72, %4
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %40, %31
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @is_verified(%struct.stat*) #1

declare dso_local i32 @ve_utc_set(i32) #1

declare dso_local i64 @verify_signed(i8*, i32) #1

declare dso_local i32 @fingerprint_info_add(i8*, i8*, i8*, i8*, %struct.stat*) #1

declare dso_local i32 @add_verify_status(%struct.stat*, i32) #1

declare dso_local i32 @DEBUG_PRINTF(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
