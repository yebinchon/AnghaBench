; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_keyraw.c_sldns_rr_dnskey_key_size_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_keyraw.c_sldns_rr_dnskey_key_size_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sldns_rr_dnskey_key_size_raw(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %62 [
    i32 139, label %12
    i32 138, label %12
    i32 132, label %26
    i32 131, label %26
    i32 130, label %26
  ]

12:                                               ; preds = %3, %3
  %13 = load i64, i64* %6, align 8
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = mul nsw i32 %20, 8
  %22 = add nsw i32 64, %21
  %23 = mul nsw i32 %22, 8
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %4, align 8
  br label %63

25:                                               ; preds = %12
  store i64 0, i64* %4, align 8
  br label %63

26:                                               ; preds = %3, %3, %3
  %27 = load i64, i64* %6, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %61

29:                                               ; preds = %26
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load i64, i64* %6, align 8
  %37 = icmp ugt i64 %36, 3
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = call i32 @memmove(i8* %10, i8* %40, i32 2)
  %42 = load i8, i8* %10, align 1
  %43 = call zeroext i8 @ntohs(i8 zeroext %42)
  store i8 %43, i8* %9, align 1
  %44 = load i64, i64* %6, align 8
  %45 = load i8, i8* %9, align 1
  %46 = zext i8 %45 to i64
  %47 = sub i64 %44, %46
  %48 = sub i64 %47, 3
  %49 = mul i64 %48, 8
  store i64 %49, i64* %4, align 8
  br label %63

50:                                               ; preds = %35
  store i64 0, i64* %4, align 8
  br label %63

51:                                               ; preds = %29
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  store i8 %54, i8* %9, align 1
  %55 = load i64, i64* %6, align 8
  %56 = load i8, i8* %9, align 1
  %57 = zext i8 %56 to i64
  %58 = sub i64 %55, %57
  %59 = sub i64 %58, 1
  %60 = mul i64 %59, 8
  store i64 %60, i64* %4, align 8
  br label %63

61:                                               ; preds = %26
  store i64 0, i64* %4, align 8
  br label %63

62:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %63

63:                                               ; preds = %62, %61, %51, %50, %38, %25, %15
  %64 = load i64, i64* %4, align 8
  ret i64 %64
}

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local zeroext i8 @ntohs(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
