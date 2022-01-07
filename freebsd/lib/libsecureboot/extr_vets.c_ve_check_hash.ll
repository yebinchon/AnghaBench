; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_vets.c_ve_check_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_vets.c_ve_check_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 (i32*, i8*)* }

@br_sha512_SIZE = common dso_local global i32 0, align 4
@VE_FINGERPRINT_WRONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s: %.*s != %.*s\00", align 1
@VE_FINGERPRINT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ve_check_hash(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load i32, i32* @br_sha512_SIZE, align 4
  %20 = mul nsw i32 %19, 2
  %21 = add nsw i32 %20, 2
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %25 = load i32, i32* @br_sha512_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %29, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = call i32 %30(i32* %32, i8* %27)
  %34 = trunc i64 %22 to i32
  %35 = load i64, i64* %11, align 8
  %36 = call i8* @hexdigest(i8* %24, i32 %34, i8* %27, i64 %35)
  store i8* %36, i8** %15, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %5
  %40 = load i32, i32* @VE_FINGERPRINT_WRONG, align 4
  store i32 %40, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %67

41:                                               ; preds = %5
  %42 = load i64, i64* %11, align 8
  %43 = mul i64 2, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %17, align 4
  %45 = load i8*, i8** %15, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* %17, align 4
  %48 = call i32 @strncmp(i8* %45, i8* %46, i32 %47)
  store i32 %48, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %17, align 4
  %53 = load i8*, i8** %15, align 8
  %54 = load i32, i32* %17, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @ve_error_set(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %51, i32 %52, i8* %53, i32 %54, i8* %55)
  %57 = load i32, i32* @VE_FINGERPRINT_WRONG, align 4
  store i32 %57, i32* %16, align 4
  br label %58

58:                                               ; preds = %50, %41
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* %16, align 4
  br label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @VE_FINGERPRINT_OK, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %67

67:                                               ; preds = %65, %39
  %68 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @hexdigest(i8*, i32, i8*, i64) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @ve_error_set(i8*, i8*, i32, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
