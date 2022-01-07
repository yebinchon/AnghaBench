; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_keyraw.c_sldns_calc_keytag_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_keyraw.c_sldns_calc_keytag_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RSAMD5 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_calc_keytag_raw(i64* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ult i64 %9, 4
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

12:                                               ; preds = %2
  %13 = load i64*, i64** %4, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 3
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LDNS_RSAMD5, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  %19 = load i64, i64* %5, align 8
  %20 = icmp ugt i64 %19, 4
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i64*, i64** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = getelementptr inbounds i64, i64* %24, i64 -3
  %26 = call i32 @memmove(i32* %6, i64* %25, i32 2)
  br label %27

27:                                               ; preds = %21, %18
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ntohs(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %68

31:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  store i64 0, i64* %7, align 8
  br label %32

32:                                               ; preds = %57, %31
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = load i64, i64* %7, align 8
  %38 = and i64 %37, 1
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i64*, i64** %4, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  br label %51

45:                                               ; preds = %36
  %46 = load i64*, i64** %4, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = shl i64 %49, 8
  br label %51

51:                                               ; preds = %45, %40
  %52 = phi i64 [ %44, %40 ], [ %50, %45 ]
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %51
  %58 = load i64, i64* %7, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %7, align 8
  br label %32

60:                                               ; preds = %32
  %61 = load i32, i32* %8, align 4
  %62 = ashr i32 %61, 16
  %63 = and i32 %62, 65535
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, 65535
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %60, %27, %11
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @memmove(i32*, i64*, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
