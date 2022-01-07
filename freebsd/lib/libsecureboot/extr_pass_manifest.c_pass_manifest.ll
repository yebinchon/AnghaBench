; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_pass_manifest.c_pass_manifest.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_pass_manifest.c_pass_manifest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32*, i8*)*, i32 (i32*, i8*, i32)*, i32 (i32*)* }
%struct.stat = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@br_sha256_SIZE = common dso_local global i32 0, align 4
@br_sha256_vtable = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MAXPATHLEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VE_NOT_CHECKED = common dso_local global i32 0, align 4
@VE_VERIFIED = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VEF_VERBOSE = common dso_local global i32 0, align 4
@VE_FINGERPRINT_WRONG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@manifest_prefix = common dso_local global i8* null, align 8
@manifest_path = common dso_local global i8* null, align 8
@manifest_hash = common dso_local global i8* null, align 8
@manifest_present = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pass_manifest(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_4__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i32, i32* @br_sha256_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  store i8* null, i8** %6, align 8
  store %struct.TYPE_5__* @br_sha256_vtable, %struct.TYPE_5__** %10, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i64, i64* @MAXPATHLEN, align 8
  %20 = call i64 @strnlen(i8* %18, i64 %19)
  %21 = load i64, i64* @MAXPATHLEN, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* @MAXPATHLEN, align 8
  %26 = call i64 @strnlen(i8* %24, i64 %25)
  %27 = load i64, i64* @MAXPATHLEN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %2
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %127

31:                                               ; preds = %23
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @stat(i8* %32, %struct.stat* %7)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %119

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @S_ISREG(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %12, align 4
  br label %119

44:                                               ; preds = %37
  %45 = call i32 @is_verified(%struct.stat* %7)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @VE_NOT_CHECKED, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @VE_VERIFIED, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @EPERM, align 4
  store i32 %54, i32* %12, align 4
  br label %119

55:                                               ; preds = %49, %44
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @VE_VERIFIED, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i8*, i8** %4, align 8
  %61 = call i8* @read_file(i8* %60, i32* null)
  store i8* %61, i8** %6, align 8
  br label %67

62:                                               ; preds = %55
  %63 = load i8*, i8** %4, align 8
  %64 = load i32, i32* @VEF_VERBOSE, align 4
  %65 = call i64 @verify_signed(i8* %63, i32 %64)
  %66 = inttoptr i64 %65 to i8*
  store i8* %66, i8** %6, align 8
  br label %67

67:                                               ; preds = %62, %59
  %68 = load i8*, i8** %6, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* @VE_FINGERPRINT_WRONG, align 4
  %72 = call i32 @add_verify_status(%struct.stat* %7, i32 %71)
  %73 = load i32, i32* @EIO, align 4
  store i32 %73, i32* %12, align 4
  br label %119

74:                                               ; preds = %67
  %75 = load i32, i32* @VE_VERIFIED, align 4
  %76 = call i32 @add_verify_status(%struct.stat* %7, i32 %75)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i32 (i32*)*, i32 (i32*)** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %81 = call i32 %79(i32* %80)
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 %84(i32* %85, i8* %86, i32 %88)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %94 = call i32 %92(i32* %93, i8* %17)
  %95 = load i8*, i8** %5, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %74
  %98 = load i8*, i8** @manifest_prefix, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  store i8 0, i8* %99, align 1
  br label %104

100:                                              ; preds = %74
  %101 = load i8*, i8** @manifest_prefix, align 8
  %102 = load i8*, i8** %5, align 8
  %103 = call i32 @strcpy(i8* %101, i8* %102)
  br label %104

104:                                              ; preds = %100, %97
  %105 = load i8*, i8** @manifest_path, align 8
  %106 = load i8*, i8** %4, align 8
  %107 = call i32 @strcpy(i8* %105, i8* %106)
  %108 = load i8*, i8** @manifest_hash, align 8
  %109 = load i32, i32* @br_sha256_SIZE, align 4
  %110 = mul nsw i32 2, %109
  %111 = add nsw i32 %110, 2
  %112 = load i32, i32* @br_sha256_SIZE, align 4
  %113 = call i32 @hexdigest(i8* %108, i32 %111, i8* %17, i32 %112)
  %114 = load i8*, i8** @manifest_hash, align 8
  %115 = load i32, i32* @br_sha256_SIZE, align 4
  %116 = mul nsw i32 2, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  store i8 0, i8* %118, align 1
  store i32 1, i32* @manifest_present, align 4
  store i32 0, i32* %12, align 4
  br label %119

119:                                              ; preds = %104, %70, %53, %42, %36
  %120 = load i8*, i8** %6, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i8*, i8** %6, align 8
  %124 = call i32 @free(i8* %123)
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i32, i32* %12, align 4
  store i32 %126, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %127

127:                                              ; preds = %125, %29
  %128 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strnlen(i8*, i64) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @S_ISREG(i32) #2

declare dso_local i32 @is_verified(%struct.stat*) #2

declare dso_local i8* @read_file(i8*, i32*) #2

declare dso_local i64 @verify_signed(i8*, i32) #2

declare dso_local i32 @add_verify_status(%struct.stat*, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @hexdigest(i8*, i32, i8*, i32) #2

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
