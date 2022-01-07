; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_hx509_parse_private_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_hx509_parse_private_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.hx509_private_key_ops = type { i32 (i32, %struct.TYPE_4__*, i8*, i64, i32, i32*)* }

@HX509_SIG_ALG_NO_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_parse_private_key(i32 %0, %struct.TYPE_4__* %1, i8* %2, i64 %3, i32 %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca %struct.hx509_private_key_ops*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32** %5, i32*** %13, align 8
  %16 = load i32**, i32*** %13, align 8
  store i32* null, i32** %16, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call %struct.hx509_private_key_ops* @hx509_find_private_alg(i32* %18)
  store %struct.hx509_private_key_ops* %19, %struct.hx509_private_key_ops** %14, align 8
  %20 = load %struct.hx509_private_key_ops*, %struct.hx509_private_key_ops** %14, align 8
  %21 = icmp eq %struct.hx509_private_key_ops* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @hx509_clear_error_string(i32 %23)
  %25 = load i32, i32* @HX509_SIG_ALG_NO_SUPPORTED, align 4
  store i32 %25, i32* %7, align 4
  br label %56

26:                                               ; preds = %6
  %27 = load i32**, i32*** %13, align 8
  %28 = load %struct.hx509_private_key_ops*, %struct.hx509_private_key_ops** %14, align 8
  %29 = call i32 @hx509_private_key_init(i32** %27, %struct.hx509_private_key_ops* %28, i32* null)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @hx509_set_error_string(i32 %33, i32 0, i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %7, align 4
  br label %56

37:                                               ; preds = %26
  %38 = load %struct.hx509_private_key_ops*, %struct.hx509_private_key_ops** %14, align 8
  %39 = getelementptr inbounds %struct.hx509_private_key_ops, %struct.hx509_private_key_ops* %38, i32 0, i32 0
  %40 = load i32 (i32, %struct.TYPE_4__*, i8*, i64, i32, i32*)*, i32 (i32, %struct.TYPE_4__*, i8*, i64, i32, i32*)** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32**, i32*** %13, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 %40(i32 %41, %struct.TYPE_4__* %42, i8* %43, i64 %44, i32 %45, i32* %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %37
  %52 = load i32**, i32*** %13, align 8
  %53 = call i32 @hx509_private_key_free(i32** %52)
  br label %54

54:                                               ; preds = %51, %37
  %55 = load i32, i32* %15, align 4
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %54, %32, %22
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local %struct.hx509_private_key_ops* @hx509_find_private_alg(i32*) #1

declare dso_local i32 @hx509_clear_error_string(i32) #1

declare dso_local i32 @hx509_private_key_init(i32**, %struct.hx509_private_key_ops*, i32*) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

declare dso_local i32 @hx509_private_key_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
