; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_derive_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_derive_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i8*, i8*, i32 }
%struct.crypto_bignum = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sae_data*)* @sae_derive_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sae_derive_commit(%struct.sae_data* %0) #0 {
  %2 = alloca %struct.sae_data*, align 8
  %3 = alloca %struct.crypto_bignum*, align 8
  %4 = alloca i32, align 4
  store %struct.sae_data* %0, %struct.sae_data** %2, align 8
  %5 = call i8* (...) @crypto_bignum_init()
  %6 = bitcast i8* %5 to %struct.crypto_bignum*
  store %struct.crypto_bignum* %6, %struct.crypto_bignum** %3, align 8
  %7 = load %struct.sae_data*, %struct.sae_data** %2, align 8
  %8 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = call i8* (...) @crypto_bignum_init()
  %15 = load %struct.sae_data*, %struct.sae_data** %2, align 8
  %16 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  store i8* %14, i8** %18, align 8
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.sae_data*, %struct.sae_data** %2, align 8
  %21 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = call i8* (...) @crypto_bignum_init()
  %28 = load %struct.sae_data*, %struct.sae_data** %2, align 8
  %29 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i8* %27, i8** %31, align 8
  br label %32

32:                                               ; preds = %26, %19
  %33 = load %struct.crypto_bignum*, %struct.crypto_bignum** %3, align 8
  %34 = icmp ne %struct.crypto_bignum* %33, null
  br i1 %34, label %35, label %94

35:                                               ; preds = %32
  %36 = load %struct.sae_data*, %struct.sae_data** %2, align 8
  %37 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %94

42:                                               ; preds = %35
  %43 = load %struct.sae_data*, %struct.sae_data** %2, align 8
  %44 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %94

49:                                               ; preds = %42
  %50 = load %struct.sae_data*, %struct.sae_data** %2, align 8
  %51 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.sae_data*, %struct.sae_data** %2, align 8
  %56 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.crypto_bignum*, %struct.crypto_bignum** %3, align 8
  %61 = load %struct.sae_data*, %struct.sae_data** %2, align 8
  %62 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @dragonfly_generate_scalar(i32 %54, i8* %59, %struct.crypto_bignum* %60, i8* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %94, label %68

68:                                               ; preds = %49
  %69 = load %struct.sae_data*, %struct.sae_data** %2, align 8
  %70 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load %struct.sae_data*, %struct.sae_data** %2, align 8
  %77 = load %struct.crypto_bignum*, %struct.crypto_bignum** %3, align 8
  %78 = call i64 @sae_derive_commit_element_ecc(%struct.sae_data* %76, %struct.crypto_bignum* %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %94, label %80

80:                                               ; preds = %75, %68
  %81 = load %struct.sae_data*, %struct.sae_data** %2, align 8
  %82 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.sae_data*, %struct.sae_data** %2, align 8
  %89 = load %struct.crypto_bignum*, %struct.crypto_bignum** %3, align 8
  %90 = call i64 @sae_derive_commit_element_ffc(%struct.sae_data* %88, %struct.crypto_bignum* %89)
  %91 = icmp slt i64 %90, 0
  br label %92

92:                                               ; preds = %87, %80
  %93 = phi i1 [ false, %80 ], [ %91, %87 ]
  br label %94

94:                                               ; preds = %92, %75, %49, %42, %35, %32
  %95 = phi i1 [ true, %75 ], [ true, %49 ], [ true, %42 ], [ true, %35 ], [ true, %32 ], [ %93, %92 ]
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %4, align 4
  %97 = load %struct.crypto_bignum*, %struct.crypto_bignum** %3, align 8
  %98 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %97, i32 1)
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 -1, i32 0
  ret i32 %102
}

declare dso_local i8* @crypto_bignum_init(...) #1

declare dso_local i64 @dragonfly_generate_scalar(i32, i8*, %struct.crypto_bignum*, i8*) #1

declare dso_local i64 @sae_derive_commit_element_ecc(%struct.sae_data*, %struct.crypto_bignum*) #1

declare dso_local i64 @sae_derive_commit_element_ffc(%struct.sae_data*, %struct.crypto_bignum*) #1

declare dso_local i32 @crypto_bignum_deinit(%struct.crypto_bignum*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
