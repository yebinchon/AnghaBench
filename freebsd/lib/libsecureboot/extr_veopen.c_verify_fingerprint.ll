; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_veopen.c_verify_fingerprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/extr_veopen.c_verify_fingerprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i32*, i8*, i32)*, i32 (i32*)* }
%struct.TYPE_9__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"no_hash\00", align 1
@VE_FINGERPRINT_IGNORE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"sha256=\00", align 1
@br_sha256_vtable = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@br_sha256_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: no supported fingerprint\00", align 1
@VE_FINGERPRINT_UNKNOWN = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@br_sha1_SIZE = common dso_local global i64 0, align 8
@br_sha1_vtable = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@br_sha384_SIZE = common dso_local global i64 0, align 8
@br_sha384_vtable = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@br_sha512_SIZE = common dso_local global i64 0, align 8
@br_sha512_vtable = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i64)* @verify_fingerprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_fingerprint(i32 %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_9__, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @strncmp(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @VE_FINGERPRINT_IGNORE, align 4
  store i32 %25, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %84

26:                                               ; preds = %4
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @strncmp(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  store %struct.TYPE_10__* @br_sha256_vtable, %struct.TYPE_10__** %12, align 8
  %31 = load i64, i64* @br_sha256_SIZE, align 8
  store i64 %31, i64* %14, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 7
  store i8* %33, i8** %8, align 8
  br label %38

34:                                               ; preds = %26
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @ve_error_set(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @VE_FINGERPRINT_UNKNOWN, align 4
  store i32 %37, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %84

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32 (i32*)*, i32 (i32*)** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %44 = call i32 %42(i32* %43)
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @SEEK_SET, align 4
  %50 = call i32 @lseek(i32 %48, i64 0, i32 %49)
  br label %51

51:                                               ; preds = %47, %39
  br label %52

52:                                               ; preds = %71, %51
  %53 = load i32, i32* %6, align 4
  %54 = trunc i64 %18 to i32
  %55 = call i32 @read(i32 %53, i8* %20, i32 %54)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %84

60:                                               ; preds = %52
  %61 = load i32, i32* %15, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %68 = load i32, i32* %15, align 4
  %69 = call i32 %66(i32* %67, i8* %20, i32 %68)
  br label %70

70:                                               ; preds = %63, %60
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %15, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %52, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = load i64, i64* %9, align 8
  %77 = load i32, i32* @SEEK_SET, align 4
  %78 = call i32 @lseek(i32 %75, i64 %76, i32 %77)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load i64, i64* %14, align 8
  %83 = call i32 @ve_check_hash(%struct.TYPE_9__* %13, %struct.TYPE_10__* %79, i8* %80, i8* %81, i64 %82)
  store i32 %83, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %84

84:                                               ; preds = %74, %58, %34, %24
  %85 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @ve_error_set(i8*, i8*) #2

declare dso_local i32 @lseek(i32, i64, i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @ve_check_hash(%struct.TYPE_9__*, %struct.TYPE_10__*, i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
