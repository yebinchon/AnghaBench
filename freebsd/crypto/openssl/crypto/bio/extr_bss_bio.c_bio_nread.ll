; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_bio.c_bio_nread.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_bio.c_bio_nread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.bio_bio_st* }
%struct.bio_bio_st = type { i64, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.bio_bio_st* }

@OSSL_SSIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i8**, i64)* @bio_nread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bio_nread(%struct.TYPE_6__* %0, i8** %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bio_bio_st*, align 8
  %9 = alloca %struct.bio_bio_st*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @OSSL_SSIZE_MAX, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* @OSSL_SSIZE_MAX, align 8
  store i64 %16, i64* %10, align 8
  br label %19

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  store i64 %18, i64* %10, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = load i8**, i8*** %6, align 8
  %22 = call i64 @bio_nread0(%struct.TYPE_6__* %20, i8** %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i64, i64* %11, align 8
  store i64 %27, i64* %10, align 8
  br label %28

28:                                               ; preds = %26, %19
  %29 = load i64, i64* %10, align 8
  %30 = icmp ule i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i64, i64* %10, align 8
  store i64 %32, i64* %4, align 8
  br label %82

33:                                               ; preds = %28
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.bio_bio_st*, %struct.bio_bio_st** %35, align 8
  store %struct.bio_bio_st* %36, %struct.bio_bio_st** %8, align 8
  %37 = load %struct.bio_bio_st*, %struct.bio_bio_st** %8, align 8
  %38 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %37, i32 0, i32 3
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.bio_bio_st*, %struct.bio_bio_st** %40, align 8
  store %struct.bio_bio_st* %41, %struct.bio_bio_st** %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.bio_bio_st*, %struct.bio_bio_st** %9, align 8
  %44 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load %struct.bio_bio_st*, %struct.bio_bio_st** %9, align 8
  %48 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %77

51:                                               ; preds = %33
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.bio_bio_st*, %struct.bio_bio_st** %9, align 8
  %54 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load %struct.bio_bio_st*, %struct.bio_bio_st** %9, align 8
  %58 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.bio_bio_st*, %struct.bio_bio_st** %9, align 8
  %61 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp sle i64 %59, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.bio_bio_st*, %struct.bio_bio_st** %9, align 8
  %67 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.bio_bio_st*, %struct.bio_bio_st** %9, align 8
  %70 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %51
  %74 = load %struct.bio_bio_st*, %struct.bio_bio_st** %9, align 8
  %75 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %73, %51
  br label %80

77:                                               ; preds = %33
  %78 = load %struct.bio_bio_st*, %struct.bio_bio_st** %9, align 8
  %79 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %77, %76
  %81 = load i64, i64* %10, align 8
  store i64 %81, i64* %4, align 8
  br label %82

82:                                               ; preds = %80, %31
  %83 = load i64, i64* %4, align 8
  ret i64 %83
}

declare dso_local i64 @bio_nread0(%struct.TYPE_6__*, i8**) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
