; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_lib.c_CMS_set_detached.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_lib.c_CMS_set_detached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ASN1_STRING_FLAG_CONT = common dso_local global i32 0, align 4
@CMS_F_CMS_SET_DETACHED = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CMS_set_detached(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__**, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = call %struct.TYPE_5__** @CMS_get0_content(i32* %7)
  store %struct.TYPE_5__** %8, %struct.TYPE_5__*** %6, align 8
  %9 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %10 = icmp ne %struct.TYPE_5__** %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = call i32 @ASN1_OCTET_STRING_free(%struct.TYPE_5__* %17)
  %19 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %19, align 8
  store i32 1, i32* %3, align 4
  br label %42

20:                                               ; preds = %12
  %21 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = icmp eq %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = call %struct.TYPE_5__* (...) @ASN1_OCTET_STRING_new()
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %26, align 8
  br label %27

27:                                               ; preds = %24, %20
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32, i32* @ASN1_STRING_FLAG_CONT, align 4
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %32
  store i32 %37, i32* %35, align 4
  store i32 1, i32* %3, align 4
  br label %42

38:                                               ; preds = %27
  %39 = load i32, i32* @CMS_F_CMS_SET_DETACHED, align 4
  %40 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %41 = call i32 @CMSerr(i32 %39, i32 %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %31, %15, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_5__** @CMS_get0_content(i32*) #1

declare dso_local i32 @ASN1_OCTET_STRING_free(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @ASN1_OCTET_STRING_new(...) #1

declare dso_local i32 @CMSerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
