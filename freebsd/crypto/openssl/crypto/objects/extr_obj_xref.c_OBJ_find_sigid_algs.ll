; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/objects/extr_obj_xref.c_OBJ_find_sigid_algs.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/objects/extr_obj_xref.c_OBJ_find_sigid_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@sig_app = common dso_local global i32* null, align 8
@sigoid_srt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OBJ_find_sigid_algs(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32*, i32** @sig_app, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32*, i32** @sig_app, align 8
  %17 = call i32 @sk_nid_triple_find(i32* %16, %struct.TYPE_6__* %8)
  store i32 %17, i32* %10, align 4
  %18 = load i32*, i32** @sig_app, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call %struct.TYPE_6__* @sk_nid_triple_value(i32* %18, i32 %19)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %9, align 8
  br label %21

21:                                               ; preds = %15, %3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %23 = icmp eq %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* @sigoid_srt, align 4
  %26 = load i32, i32* @sigoid_srt, align 4
  %27 = call i32 @OSSL_NELEM(i32 %26)
  %28 = call %struct.TYPE_6__* @OBJ_bsearch_sig(%struct.TYPE_6__* %8, i32 %25, i32 %27)
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %9, align 8
  br label %29

29:                                               ; preds = %24, %21
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %31 = icmp eq %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %50

33:                                               ; preds = %29
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %36, %33
  %42 = load i32*, i32** %7, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %41
  store i32 1, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %32
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @sk_nid_triple_find(i32*, %struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @sk_nid_triple_value(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @OBJ_bsearch_sig(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @OSSL_NELEM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
