; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_find_nsec3_ce.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_neg_find_nsec3_ce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_neg_data = type { i64 }
%struct.val_neg_zone = type { i64, i32, i32, i32, i32, i32, i32 }

@NSEC3_SHA_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.val_neg_data* (%struct.val_neg_zone*, i32*, i64, i32, i32*, i32*, i64*)* @neg_find_nsec3_ce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.val_neg_data* @neg_find_nsec3_ce(%struct.val_neg_zone* %0, i32* %1, i64 %2, i32 %3, i32* %4, i32* %5, i64* %6) #0 {
  %8 = alloca %struct.val_neg_data*, align 8
  %9 = alloca %struct.val_neg_zone*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.val_neg_data*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca [257 x i32], align 16
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.val_neg_zone* %0, %struct.val_neg_zone** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64* %6, i64** %15, align 8
  %23 = load i32, i32* @NSEC3_SHA_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %17, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %18, align 8
  %27 = load i64*, i64** %15, align 8
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %82, %7
  %29 = load i32, i32* %12, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %91

31:                                               ; preds = %28
  %32 = load i32*, i32** %13, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.val_neg_zone*, %struct.val_neg_zone** %9, align 8
  %36 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.val_neg_zone*, %struct.val_neg_zone** %9, align 8
  %39 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.val_neg_zone*, %struct.val_neg_zone** %9, align 8
  %42 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.val_neg_zone*, %struct.val_neg_zone** %9, align 8
  %45 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = mul nuw i64 4, %24
  %48 = trunc i64 %47 to i32
  %49 = call i64 @nsec3_get_hashed(i32* %32, i32* %33, i64 %34, i32 %37, i32 %40, i32 %43, i32 %46, i32* %26, i32 %48)
  store i64 %49, i64* %20, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %31
  store %struct.val_neg_data* null, %struct.val_neg_data** %8, align 8
  store i32 1, i32* %22, align 4
  br label %92

52:                                               ; preds = %31
  %53 = load i64, i64* %20, align 8
  %54 = load %struct.val_neg_zone*, %struct.val_neg_zone** %9, align 8
  %55 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.val_neg_zone*, %struct.val_neg_zone** %9, align 8
  %58 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds [257 x i32], [257 x i32]* %19, i64 0, i64 0
  %61 = call i64 @nsec3_hash_to_b32(i32* %26, i64 %53, i32 %56, i32 %59, i32* %60, i32 1028)
  store i64 %61, i64* %21, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %52
  store %struct.val_neg_data* null, %struct.val_neg_data** %8, align 8
  store i32 1, i32* %22, align 4
  br label %92

64:                                               ; preds = %52
  %65 = load %struct.val_neg_zone*, %struct.val_neg_zone** %9, align 8
  %66 = getelementptr inbounds [257 x i32], [257 x i32]* %19, i64 0, i64 0
  %67 = load i64, i64* %21, align 8
  %68 = load %struct.val_neg_zone*, %struct.val_neg_zone** %9, align 8
  %69 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  %72 = call %struct.val_neg_data* @neg_find_data(%struct.val_neg_zone* %65, i32* %66, i64 %67, i64 %71)
  store %struct.val_neg_data* %72, %struct.val_neg_data** %16, align 8
  %73 = load %struct.val_neg_data*, %struct.val_neg_data** %16, align 8
  %74 = icmp ne %struct.val_neg_data* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %64
  %76 = load %struct.val_neg_data*, %struct.val_neg_data** %16, align 8
  %77 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load %struct.val_neg_data*, %struct.val_neg_data** %16, align 8
  store %struct.val_neg_data* %81, %struct.val_neg_data** %8, align 8
  store i32 1, i32* %22, align 4
  br label %92

82:                                               ; preds = %75, %64
  %83 = load i64, i64* %20, align 8
  %84 = load i64*, i64** %15, align 8
  store i64 %83, i64* %84, align 8
  %85 = load i32*, i32** %14, align 8
  %86 = load i64, i64* %20, align 8
  %87 = call i32 @memmove(i32* %85, i32* %26, i64 %86)
  %88 = call i32 @dname_remove_label(i32** %10, i64* %11)
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %12, align 4
  br label %28

91:                                               ; preds = %28
  store %struct.val_neg_data* null, %struct.val_neg_data** %8, align 8
  store i32 1, i32* %22, align 4
  br label %92

92:                                               ; preds = %91, %80, %63, %51
  %93 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load %struct.val_neg_data*, %struct.val_neg_data** %8, align 8
  ret %struct.val_neg_data* %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @nsec3_get_hashed(i32*, i32*, i64, i32, i32, i32, i32, i32*, i32) #2

declare dso_local i64 @nsec3_hash_to_b32(i32*, i64, i32, i32, i32*, i32) #2

declare dso_local %struct.val_neg_data* @neg_find_data(%struct.val_neg_zone*, i32*, i64, i64) #2

declare dso_local i32 @memmove(i32*, i32*, i64) #2

declare dso_local i32 @dname_remove_label(i32**, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
