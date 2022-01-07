; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_gssmaestro.c_init_sec_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_gssmaestro.c_init_sec_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32 }

@eInitContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*, i32*, i32*, i32, i8*, i32*, i32*)* @init_sec_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_sec_context(%struct.client* %0, i32* %1, i32* %2, i32 %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.client*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.client* %0, %struct.client** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load i32*, i32** %14, align 8
  %17 = call i32 @krb5_data_zero(i32* %16)
  %18 = load %struct.client*, %struct.client** %8, align 8
  %19 = load i32, i32* @eInitContext, align 4
  %20 = call i32 @put32(%struct.client* %18, i32 %19)
  %21 = load %struct.client*, %struct.client** %8, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @put32(%struct.client* %21, i32 %23)
  %25 = load %struct.client*, %struct.client** %8, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @put32(%struct.client* %25, i32 %27)
  %29 = load %struct.client*, %struct.client** %8, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @put32(%struct.client* %29, i32 %30)
  %32 = load %struct.client*, %struct.client** %8, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = call i32 @putstring(%struct.client* %32, i8* %33)
  %35 = load %struct.client*, %struct.client** %8, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @putdata(%struct.client* %35, i32 %37)
  %39 = load %struct.client*, %struct.client** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ret32(%struct.client* %39, i32 %41)
  %43 = load %struct.client*, %struct.client** %8, align 8
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @ret32(%struct.client* %43, i32 %44)
  %46 = load %struct.client*, %struct.client** %8, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @retdata(%struct.client* %46, i32 %48)
  %50 = load i32, i32* %15, align 4
  ret i32 %50
}

declare dso_local i32 @krb5_data_zero(i32*) #1

declare dso_local i32 @put32(%struct.client*, i32) #1

declare dso_local i32 @putstring(%struct.client*, i8*) #1

declare dso_local i32 @putdata(%struct.client*, i32) #1

declare dso_local i32 @ret32(%struct.client*, i32) #1

declare dso_local i32 @retdata(%struct.client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
