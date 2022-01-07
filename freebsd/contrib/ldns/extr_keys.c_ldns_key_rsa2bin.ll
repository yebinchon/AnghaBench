; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_keys.c_ldns_key_rsa2bin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_keys.c_ldns_key_rsa2bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_4__*, i64*)* @ldns_key_rsa2bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldns_key_rsa2bin(i8* %0, %struct.TYPE_4__* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %81

15:                                               ; preds = %3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %10, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %11, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @BN_num_bytes(i32* %22)
  %24 = icmp sle i32 %23, 256
  br i1 %24, label %25, label %48

25:                                               ; preds = %15
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @BN_num_bytes(i32* %26)
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 %28, i8* %30, align 1
  %31 = load i32*, i32** %11, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = call i32 @BN_bn2bin(i32* %31, i8* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = call i32 @BN_bn2bin(i32* %35, i8* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load i64*, i64** %7, align 8
  store i64 %46, i64* %47, align 8
  br label %80

48:                                               ; preds = %15
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @BN_num_bytes(i32* %49)
  %51 = icmp sle i32 %50, 65536
  br i1 %51, label %52, label %78

52:                                               ; preds = %48
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @BN_num_bytes(i32* %57)
  %59 = sext i32 %58 to i64
  %60 = call i32 @ldns_write_uint16(i8* %56, i64 %59)
  %61 = load i32*, i32** %11, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 3
  %64 = call i32 @BN_bn2bin(i32* %61, i8* %63)
  %65 = load i32*, i32** %10, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 4
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @BN_num_bytes(i32* %68)
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = call i32 @BN_bn2bin(i32* %65, i8* %71)
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @BN_num_bytes(i32* %73)
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, 6
  %77 = load i64*, i64** %7, align 8
  store i64 %76, i64* %77, align 8
  br label %79

78:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %81

79:                                               ; preds = %52
  br label %80

80:                                               ; preds = %79, %25
  store i32 1, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %78, %14
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @BN_num_bytes(i32*) #1

declare dso_local i32 @BN_bn2bin(i32*, i8*) #1

declare dso_local i32 @ldns_write_uint16(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
