; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_context.c_copy_enctypes.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_context.c_copy_enctypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KRB5_ENCTYPE_NULL = common dso_local global i64 0, align 8
@KRB5_PROG_ETYPE_NOSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"no valid enctype set\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i64**)* @copy_enctypes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_enctypes(i32 %0, i64* %1, i64** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64** %2, i64*** %7, align 8
  store i64* null, i64** %8, align 8
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %18, %3
  %12 = load i64*, i64** %6, align 8
  %13 = load i64, i64* %10, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %17
  %19 = load i64, i64* %10, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %10, align 8
  br label %11

21:                                               ; preds = %11
  %22 = load i64, i64* %10, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %10, align 8
  %24 = load i64*, i64** %8, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @ALLOC(i64* %24, i64 %25)
  %27 = load i64*, i64** %8, align 8
  %28 = icmp eq i64* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @krb5_enomem(i32 %30)
  store i32 %31, i32* %4, align 4
  br label %78

32:                                               ; preds = %21
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %33

33:                                               ; preds = %57, %32
  %34 = load i64*, i64** %6, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = load i64*, i64** %6, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @krb5_enctype_valid(i32 %40, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %57

48:                                               ; preds = %39
  %49 = load i64*, i64** %6, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %9, align 8
  %56 = getelementptr inbounds i64, i64* %53, i64 %54
  store i64 %52, i64* %56, align 8
  br label %57

57:                                               ; preds = %48, %47
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %10, align 8
  br label %33

60:                                               ; preds = %33
  %61 = load i64, i64* @KRB5_ENCTYPE_NULL, align 8
  %62 = load i64*, i64** %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 %61, i64* %64, align 8
  %65 = load i64, i64* %9, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %60
  %68 = load i64*, i64** %8, align 8
  %69 = call i32 @free(i64* %68)
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @KRB5_PROG_ETYPE_NOSUPP, align 4
  %72 = call i32 @N_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %73 = call i32 @krb5_set_error_message(i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* @KRB5_PROG_ETYPE_NOSUPP, align 4
  store i32 %74, i32* %4, align 4
  br label %78

75:                                               ; preds = %60
  %76 = load i64*, i64** %8, align 8
  %77 = load i64**, i64*** %7, align 8
  store i64* %76, i64** %77, align 8
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %75, %67, %29
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @ALLOC(i64*, i64) #1

declare dso_local i32 @krb5_enomem(i32) #1

declare dso_local i64 @krb5_enctype_valid(i32, i64) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
