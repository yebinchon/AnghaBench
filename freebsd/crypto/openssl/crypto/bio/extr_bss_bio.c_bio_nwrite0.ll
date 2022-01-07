; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_bio.c_bio_nwrite0.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_bio.c_bio_nwrite0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.bio_bio_st*, i32 }
%struct.bio_bio_st = type { i8*, i64, i64, i64, i64, i64, i32* }

@BIO_F_BIO_NWRITE0 = common dso_local global i32 0, align 4
@BIO_R_BROKEN_PIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8**)* @bio_nwrite0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bio_nwrite0(%struct.TYPE_5__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.bio_bio_st*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = call i32 @BIO_clear_retry_flags(%struct.TYPE_5__* %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %128

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.bio_bio_st*, %struct.bio_bio_st** %18, align 8
  store %struct.bio_bio_st* %19, %struct.bio_bio_st** %6, align 8
  %20 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %21 = icmp ne %struct.bio_bio_st* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %25 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %24, i32 0, i32 6
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %31 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %37 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %36, i32 0, i32 5
  store i64 0, i64* %37, align 8
  %38 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %39 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %16
  %43 = load i32, i32* @BIO_F_BIO_NWRITE0, align 4
  %44 = load i32, i32* @BIO_R_BROKEN_PIPE, align 4
  %45 = call i32 @BIOerr(i32 %43, i32 %44)
  store i32 -1, i32* %3, align 4
  br label %128

46:                                               ; preds = %16
  %47 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %48 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %51 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ule i64 %49, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %57 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %60 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %46
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = call i32 @BIO_set_retry_write(%struct.TYPE_5__* %64)
  store i32 -1, i32* %3, align 4
  br label %128

66:                                               ; preds = %46
  %67 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %68 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %71 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = sub i64 %69, %72
  store i64 %73, i64* %7, align 8
  %74 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %75 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %78 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %76, %79
  store i64 %80, i64* %8, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %83 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp uge i64 %81, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %66
  %87 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %88 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = sub i64 %90, %89
  store i64 %91, i64* %8, align 8
  br label %92

92:                                               ; preds = %86, %66
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %7, align 8
  %95 = add i64 %93, %94
  %96 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %97 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ugt i64 %95, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %92
  %101 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %102 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %8, align 8
  %105 = sub i64 %103, %104
  store i64 %105, i64* %7, align 8
  br label %106

106:                                              ; preds = %100, %92
  %107 = load i8**, i8*** %5, align 8
  %108 = icmp ne i8** %107, null
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %111 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i64, i64* %8, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load i8**, i8*** %5, align 8
  store i8* %114, i8** %115, align 8
  br label %116

116:                                              ; preds = %109, %106
  %117 = load i64, i64* %8, align 8
  %118 = load i64, i64* %7, align 8
  %119 = add i64 %117, %118
  %120 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %121 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ule i64 %119, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert(i32 %124)
  %126 = load i64, i64* %7, align 8
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %116, %63, %42, %15
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @BIO_clear_retry_flags(%struct.TYPE_5__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i32 @BIO_set_retry_write(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
