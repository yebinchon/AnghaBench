; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_add_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_add_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autr_ta = type { %struct.autr_ta* }
%struct.trust_anchor = type { i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { %struct.autr_ta* }

@LDNS_RR_TYPE_DNSKEY = common dso_local global i64 0, align 8
@LDNS_RR_CLASS_IN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.autr_ta* (%struct.trust_anchor*, i32, i32*, i64)* @add_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.autr_ta* @add_key(%struct.trust_anchor* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.autr_ta*, align 8
  %6 = alloca %struct.trust_anchor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.autr_ta*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.trust_anchor* %0, %struct.trust_anchor** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i64, i64* @LDNS_RR_TYPE_DNSKEY, align 8
  %18 = call i32 @htons(i64 %17)
  store i32 %18, i32* %14, align 4
  %19 = load i64, i64* @LDNS_RR_CLASS_IN, align 8
  %20 = call i32 @htons(i64 %19)
  store i32 %20, i32* %15, align 4
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @htons(i64 %21)
  store i32 %22, i32* %16, align 4
  %23 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %24 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %13, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @htonl(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i64, i64* %13, align 8
  %29 = add i64 %28, 10
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %29, %30
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i64 @malloc(i64 %32)
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %11, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %4
  store %struct.autr_ta* null, %struct.autr_ta** %5, align 8
  br label %94

38:                                               ; preds = %4
  %39 = load i32*, i32** %11, align 8
  %40 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %41 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %44 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @memmove(i32* %39, i32* %42, i64 %45)
  %47 = load i32*, i32** %11, align 8
  %48 = load i64, i64* %13, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = call i32 @memmove(i32* %49, i32* %14, i64 2)
  %51 = load i32*, i32** %11, align 8
  %52 = load i64, i64* %13, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = call i32 @memmove(i32* %54, i32* %15, i64 2)
  %56 = load i32*, i32** %11, align 8
  %57 = load i64, i64* %13, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = call i32 @memmove(i32* %59, i32* %7, i64 4)
  %61 = load i32*, i32** %11, align 8
  %62 = load i64, i64* %13, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = getelementptr inbounds i32, i32* %63, i64 8
  %65 = call i32 @memmove(i32* %64, i32* %16, i64 2)
  %66 = load i32*, i32** %11, align 8
  %67 = load i64, i64* %13, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = getelementptr inbounds i32, i32* %68, i64 10
  %70 = load i32*, i32** %8, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @memmove(i32* %69, i32* %70, i64 %71)
  %73 = load i32*, i32** %11, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call %struct.autr_ta* @autr_ta_create(i32* %73, i64 %74, i64 %75)
  store %struct.autr_ta* %76, %struct.autr_ta** %10, align 8
  %77 = load %struct.autr_ta*, %struct.autr_ta** %10, align 8
  %78 = icmp ne %struct.autr_ta* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %38
  store %struct.autr_ta* null, %struct.autr_ta** %5, align 8
  br label %94

80:                                               ; preds = %38
  %81 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %82 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load %struct.autr_ta*, %struct.autr_ta** %84, align 8
  %86 = load %struct.autr_ta*, %struct.autr_ta** %10, align 8
  %87 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %86, i32 0, i32 0
  store %struct.autr_ta* %85, %struct.autr_ta** %87, align 8
  %88 = load %struct.autr_ta*, %struct.autr_ta** %10, align 8
  %89 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %90 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store %struct.autr_ta* %88, %struct.autr_ta** %92, align 8
  %93 = load %struct.autr_ta*, %struct.autr_ta** %10, align 8
  store %struct.autr_ta* %93, %struct.autr_ta** %5, align 8
  br label %94

94:                                               ; preds = %80, %79, %37
  %95 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  ret %struct.autr_ta* %95
}

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

declare dso_local %struct.autr_ta* @autr_ta_create(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
