; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c__hx509_generate_private_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c__hx509_generate_private_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hx509_generate_private_context = type { i32 }
%struct.hx509_private_key_ops = type { i32 (i32, %struct.hx509_generate_private_context.0*, i32*)* }
%struct.hx509_generate_private_context.0 = type opaque

@HX509_SIG_ALG_NO_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hx509_generate_private_key(i32 %0, %struct.hx509_generate_private_context* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hx509_generate_private_context*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.hx509_private_key_ops*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.hx509_generate_private_context* %1, %struct.hx509_generate_private_context** %6, align 8
  store i32** %2, i32*** %7, align 8
  %10 = load i32**, i32*** %7, align 8
  store i32* null, i32** %10, align 8
  %11 = load %struct.hx509_generate_private_context*, %struct.hx509_generate_private_context** %6, align 8
  %12 = getelementptr inbounds %struct.hx509_generate_private_context, %struct.hx509_generate_private_context* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.hx509_private_key_ops* @hx509_find_private_alg(i32 %13)
  store %struct.hx509_private_key_ops* %14, %struct.hx509_private_key_ops** %8, align 8
  %15 = load %struct.hx509_private_key_ops*, %struct.hx509_private_key_ops** %8, align 8
  %16 = icmp eq %struct.hx509_private_key_ops* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @hx509_clear_error_string(i32 %18)
  %20 = load i32, i32* @HX509_SIG_ALG_NO_SUPPORTED, align 4
  store i32 %20, i32* %4, align 4
  br label %49

21:                                               ; preds = %3
  %22 = load i32**, i32*** %7, align 8
  %23 = load %struct.hx509_private_key_ops*, %struct.hx509_private_key_ops** %8, align 8
  %24 = call i32 @hx509_private_key_init(i32** %22, %struct.hx509_private_key_ops* %23, i32* null)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @hx509_set_error_string(i32 %28, i32 0, i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %49

32:                                               ; preds = %21
  %33 = load %struct.hx509_private_key_ops*, %struct.hx509_private_key_ops** %8, align 8
  %34 = getelementptr inbounds %struct.hx509_private_key_ops, %struct.hx509_private_key_ops* %33, i32 0, i32 0
  %35 = load i32 (i32, %struct.hx509_generate_private_context.0*, i32*)*, i32 (i32, %struct.hx509_generate_private_context.0*, i32*)** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.hx509_generate_private_context*, %struct.hx509_generate_private_context** %6, align 8
  %38 = bitcast %struct.hx509_generate_private_context* %37 to %struct.hx509_generate_private_context.0*
  %39 = load i32**, i32*** %7, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 %35(i32 %36, %struct.hx509_generate_private_context.0* %38, i32* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load i32**, i32*** %7, align 8
  %46 = call i32 @hx509_private_key_free(i32** %45)
  br label %47

47:                                               ; preds = %44, %32
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %27, %17
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.hx509_private_key_ops* @hx509_find_private_alg(i32) #1

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
