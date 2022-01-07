; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_commonInit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_commonInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.st_object = type { i32 }

@CKR_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"called commonInit on key that doesn't support required attr\00", align 1
@CKR_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"called mech (%08lx) not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64*, i32, %struct.TYPE_3__*, i32, %struct.st_object**)* @commonInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @commonInit(i32* %0, i32 %1, i64* %2, i32 %3, %struct.TYPE_3__* %4, i32 %5, %struct.st_object** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.st_object**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64* %2, i64** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.st_object** %6, %struct.st_object*** %15, align 8
  %18 = load %struct.st_object**, %struct.st_object*** %15, align 8
  store %struct.st_object* null, %struct.st_object** %18, align 8
  %19 = load i32, i32* %14, align 4
  %20 = load %struct.st_object**, %struct.st_object*** %15, align 8
  %21 = call i32 @object_handle_to_object(i32 %19, %struct.st_object** %20)
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* @CKR_OK, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %7
  %25 = load i32, i32* %16, align 4
  store i32 %25, i32* %8, align 4
  br label %69

26:                                               ; preds = %7
  %27 = load %struct.st_object**, %struct.st_object*** %15, align 8
  %28 = load %struct.st_object*, %struct.st_object** %27, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @attributes_match(%struct.st_object* %28, i32* %29, i32 %30)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = call i32 (i8*, ...) @application_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @CKR_ARGUMENTS_BAD, align 4
  store i32 %36, i32* %8, align 4
  br label %69

37:                                               ; preds = %26
  store i32 0, i32* %17, align 4
  br label %38

38:                                               ; preds = %54, %37
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load i64*, i64** %11, align 8
  %44 = load i32, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %57

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %17, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %17, align 4
  br label %38

57:                                               ; preds = %52, %38
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i8*, ...) @application_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  %66 = load i32, i32* @CKR_ARGUMENTS_BAD, align 4
  store i32 %66, i32* %8, align 4
  br label %69

67:                                               ; preds = %57
  %68 = load i32, i32* @CKR_OK, align 4
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %67, %61, %34, %24
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i32 @object_handle_to_object(i32, %struct.st_object**) #1

declare dso_local i32 @attributes_match(%struct.st_object*, i32*, i32) #1

declare dso_local i32 @application_error(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
