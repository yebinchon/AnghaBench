; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_restrict.c_alloc_res6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_restrict.c_alloc_res6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V6_SIZEOF_RESTRICT_U = common dso_local global i64 0, align 8
@INC_RESLIST6 = common dso_local global i64 0, align 8
@resfree6 = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @alloc_res6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @alloc_res6() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = load i64, i64* @V6_SIZEOF_RESTRICT_U, align 8
  store i64 %7, i64* %2, align 8
  %8 = load i64, i64* @INC_RESLIST6, align 8
  store i64 %8, i64* %3, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* @resfree6, align 4
  %11 = load i32, i32* @link, align 4
  %12 = call i32 @UNLINK_HEAD_SLIST(i32* %9, i32 %10, i32 %11)
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = load i32*, i32** %5, align 8
  store i32* %16, i32** %1, align 8
  br label %55

17:                                               ; preds = %0
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* %2, align 8
  %20 = call i32* @eallocarray(i64 %18, i64 %19)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = bitcast i32* %21 to i8*
  %23 = load i64, i64* %3, align 8
  %24 = sub i64 %23, 1
  %25 = load i64, i64* %2, align 8
  %26 = mul i64 %24, %25
  %27 = getelementptr inbounds i8, i8* %22, i64 %26
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %5, align 8
  %29 = load i64, i64* %3, align 8
  %30 = sub i64 %29, 1
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %45, %17
  %32 = load i64, i64* %6, align 8
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load i32, i32* @resfree6, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @link, align 4
  %38 = call i32 @LINK_SLIST(i32 %35, i32* %36, i32 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = bitcast i32* %39 to i8*
  %41 = load i64, i64* %2, align 8
  %42 = sub i64 0, %41
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** %5, align 8
  br label %45

45:                                               ; preds = %34
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, -1
  store i64 %47, i64* %6, align 8
  br label %31

48:                                               ; preds = %31
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = icmp eq i32* %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @INSIST(i32 %52)
  %54 = load i32*, i32** %5, align 8
  store i32* %54, i32** %1, align 8
  br label %55

55:                                               ; preds = %48, %15
  %56 = load i32*, i32** %1, align 8
  ret i32* %56
}

declare dso_local i32 @UNLINK_HEAD_SLIST(i32*, i32, i32) #1

declare dso_local i32* @eallocarray(i64, i64) #1

declare dso_local i32 @LINK_SLIST(i32, i32*, i32) #1

declare dso_local i32 @INSIST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
