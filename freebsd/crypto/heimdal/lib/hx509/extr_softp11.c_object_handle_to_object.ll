; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_object_handle_to_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_object_handle_to_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.st_object** }
%struct.st_object = type { i64 }

@soft_token = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CKR_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@CKR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.st_object**)* @object_handle_to_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @object_handle_to_object(i64 %0, %struct.st_object** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.st_object**, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.st_object** %1, %struct.st_object*** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @HANDLE_OBJECT_ID(i64 %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.st_object**, %struct.st_object*** %5, align 8
  store %struct.st_object* null, %struct.st_object** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 0, i32 0), align 8
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @CKR_ARGUMENTS_BAD, align 4
  store i32 %14, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.st_object**, %struct.st_object*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 0, i32 1), align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.st_object*, %struct.st_object** %16, i64 %18
  %20 = load %struct.st_object*, %struct.st_object** %19, align 8
  %21 = icmp eq %struct.st_object* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @CKR_ARGUMENTS_BAD, align 4
  store i32 %23, i32* %3, align 4
  br label %44

24:                                               ; preds = %15
  %25 = load %struct.st_object**, %struct.st_object*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 0, i32 1), align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.st_object*, %struct.st_object** %25, i64 %27
  %29 = load %struct.st_object*, %struct.st_object** %28, align 8
  %30 = getelementptr inbounds %struct.st_object, %struct.st_object* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @CKR_ARGUMENTS_BAD, align 4
  store i32 %35, i32* %3, align 4
  br label %44

36:                                               ; preds = %24
  %37 = load %struct.st_object**, %struct.st_object*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soft_token, i32 0, i32 0, i32 1), align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.st_object*, %struct.st_object** %37, i64 %39
  %41 = load %struct.st_object*, %struct.st_object** %40, align 8
  %42 = load %struct.st_object**, %struct.st_object*** %5, align 8
  store %struct.st_object* %41, %struct.st_object** %42, align 8
  %43 = load i32, i32* @CKR_OK, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %36, %34, %22, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @HANDLE_OBJECT_ID(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
