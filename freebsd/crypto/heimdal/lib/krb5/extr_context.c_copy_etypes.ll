; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_context.c_copy_etypes.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_context.c_copy_etypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i64**)* @copy_etypes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_etypes(i32 %0, i64* %1, i64** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64** %2, i64*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %17, %3
  %10 = load i64*, i64** %6, align 8
  %11 = load i32, i32* %8, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %8, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %8, align 4
  br label %9

20:                                               ; preds = %9
  %21 = load i32, i32* %8, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = mul i64 8, %24
  %26 = trunc i64 %25 to i32
  %27 = call i64* @malloc(i32 %26)
  %28 = load i64**, i64*** %7, align 8
  store i64* %27, i64** %28, align 8
  %29 = load i64**, i64*** %7, align 8
  %30 = load i64*, i64** %29, align 8
  %31 = icmp eq i64* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %20
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 @krb5_set_error_message(i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %4, align 4
  br label %47

38:                                               ; preds = %20
  %39 = load i64**, i64*** %7, align 8
  %40 = load i64*, i64** %39, align 8
  %41 = load i64*, i64** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = mul i64 8, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memcpy(i64* %40, i64* %41, i32 %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %38, %32
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
