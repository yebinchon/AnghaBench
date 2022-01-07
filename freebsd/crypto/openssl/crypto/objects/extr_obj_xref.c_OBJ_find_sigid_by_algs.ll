; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/objects/extr_obj_xref.c_OBJ_find_sigid_by_algs.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/objects/extr_obj_xref.c_OBJ_find_sigid_by_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@sigx_app = common dso_local global i64 0, align 8
@sigoid_srt_xref = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OBJ_find_sigid_by_algs(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_6__**, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__** null, %struct.TYPE_6__*** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i64, i64* @sigx_app, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load i64, i64* @sigx_app, align 8
  %20 = call i32 @sk_nid_triple_find(i64 %19, %struct.TYPE_6__* %8)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i64, i64* @sigx_app, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call %struct.TYPE_6__* @sk_nid_triple_value(i64 %24, i32 %25)
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__** %9, %struct.TYPE_6__*** %10, align 8
  br label %27

27:                                               ; preds = %23, %18
  br label %28

28:                                               ; preds = %27, %3
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %30 = icmp eq %struct.TYPE_6__** %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* @sigoid_srt_xref, align 4
  %33 = load i32, i32* @sigoid_srt_xref, align 4
  %34 = call i32 @OSSL_NELEM(i32 %33)
  %35 = call %struct.TYPE_6__** @OBJ_bsearch_sigx(%struct.TYPE_6__** %9, i32 %32, i32 %34)
  store %struct.TYPE_6__** %35, %struct.TYPE_6__*** %10, align 8
  br label %36

36:                                               ; preds = %31, %28
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %38 = icmp eq %struct.TYPE_6__** %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %50

40:                                               ; preds = %36
  %41 = load i32*, i32** %5, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %40
  store i32 1, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %39
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @sk_nid_triple_find(i64, %struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @sk_nid_triple_value(i64, i32) #1

declare dso_local %struct.TYPE_6__** @OBJ_bsearch_sigx(%struct.TYPE_6__**, i32, i32) #1

declare dso_local i32 @OSSL_NELEM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
