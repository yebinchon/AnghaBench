; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_bio.c_bio_nread0.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_bio.c_bio_nread0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.bio_bio_st*, i32 }
%struct.bio_bio_st = type { i8*, i64, i64, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.bio_bio_st* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i8**)* @bio_nread0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bio_nread0(%struct.TYPE_7__* %0, i8** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.bio_bio_st*, align 8
  %7 = alloca %struct.bio_bio_st*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = call i32 @BIO_clear_retry_flags(%struct.TYPE_7__* %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %94

17:                                               ; preds = %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.bio_bio_st*, %struct.bio_bio_st** %19, align 8
  store %struct.bio_bio_st* %20, %struct.bio_bio_st** %6, align 8
  %21 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %22 = icmp ne %struct.bio_bio_st* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %26 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %25, i32 0, i32 5
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %32 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %31, i32 0, i32 5
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.bio_bio_st*, %struct.bio_bio_st** %34, align 8
  store %struct.bio_bio_st* %35, %struct.bio_bio_st** %7, align 8
  %36 = load %struct.bio_bio_st*, %struct.bio_bio_st** %7, align 8
  %37 = icmp ne %struct.bio_bio_st* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.bio_bio_st*, %struct.bio_bio_st** %7, align 8
  %41 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.bio_bio_st*, %struct.bio_bio_st** %7, align 8
  %47 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %46, i32 0, i32 4
  store i64 0, i64* %47, align 8
  %48 = load %struct.bio_bio_st*, %struct.bio_bio_st** %7, align 8
  %49 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %17
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = call i64 @bio_read(%struct.TYPE_7__* %53, i8* %9, i32 1)
  store i64 %54, i64* %3, align 8
  br label %94

55:                                               ; preds = %17
  %56 = load %struct.bio_bio_st*, %struct.bio_bio_st** %7, align 8
  %57 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %8, align 8
  %59 = load %struct.bio_bio_st*, %struct.bio_bio_st** %7, align 8
  %60 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.bio_bio_st*, %struct.bio_bio_st** %7, align 8
  %63 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = add nsw i64 %64, %65
  %67 = icmp slt i64 %61, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %55
  %69 = load %struct.bio_bio_st*, %struct.bio_bio_st** %7, align 8
  %70 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.bio_bio_st*, %struct.bio_bio_st** %7, align 8
  %73 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %71, %74
  store i64 %75, i64* %8, align 8
  br label %76

76:                                               ; preds = %68, %55
  %77 = load i64, i64* %8, align 8
  %78 = icmp sgt i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load i8**, i8*** %5, align 8
  %82 = icmp ne i8** %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = load %struct.bio_bio_st*, %struct.bio_bio_st** %7, align 8
  %85 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.bio_bio_st*, %struct.bio_bio_st** %7, align 8
  %88 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  %91 = load i8**, i8*** %5, align 8
  store i8* %90, i8** %91, align 8
  br label %92

92:                                               ; preds = %83, %76
  %93 = load i64, i64* %8, align 8
  store i64 %93, i64* %3, align 8
  br label %94

94:                                               ; preds = %92, %52, %16
  %95 = load i64, i64* %3, align 8
  ret i64 %95
}

declare dso_local i32 @BIO_clear_retry_flags(%struct.TYPE_7__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @bio_read(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
