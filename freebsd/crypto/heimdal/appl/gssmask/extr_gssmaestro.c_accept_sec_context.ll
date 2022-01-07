; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_gssmaestro.c_accept_sec_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_gssmaestro.c_accept_sec_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32 }

@eAcceptContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*, i32*, i32, i32*, i32*, i32*)* @accept_sec_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @accept_sec_context(%struct.client* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.client*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.client* %0, %struct.client** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = call i32 @krb5_data_zero(i32* %14)
  %16 = load %struct.client*, %struct.client** %7, align 8
  %17 = load i32, i32* @eAcceptContext, align 4
  %18 = call i32 @put32(%struct.client* %16, i32 %17)
  %19 = load %struct.client*, %struct.client** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @put32(%struct.client* %19, i32 %21)
  %23 = load %struct.client*, %struct.client** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @put32(%struct.client* %23, i32 %24)
  %26 = load %struct.client*, %struct.client** %7, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @putdata(%struct.client* %26, i32 %28)
  %30 = load %struct.client*, %struct.client** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ret32(%struct.client* %30, i32 %32)
  %34 = load %struct.client*, %struct.client** %7, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @ret32(%struct.client* %34, i32 %35)
  %37 = load %struct.client*, %struct.client** %7, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @retdata(%struct.client* %37, i32 %39)
  %41 = load %struct.client*, %struct.client** %7, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ret32(%struct.client* %41, i32 %43)
  %45 = load i32, i32* %13, align 4
  ret i32 %45
}

declare dso_local i32 @krb5_data_zero(i32*) #1

declare dso_local i32 @put32(%struct.client*, i32) #1

declare dso_local i32 @putdata(%struct.client*, i32) #1

declare dso_local i32 @ret32(%struct.client*, i32) #1

declare dso_local i32 @retdata(%struct.client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
