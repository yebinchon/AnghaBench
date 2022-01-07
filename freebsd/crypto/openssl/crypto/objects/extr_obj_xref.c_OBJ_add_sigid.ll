; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/objects/extr_obj_xref.c_OBJ_add_sigid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/objects/extr_obj_xref.c_OBJ_add_sigid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@sig_app = common dso_local global i32* null, align 8
@sig_sk_cmp = common dso_local global i32 0, align 4
@sigx_app = common dso_local global i32* null, align 8
@sigx_cmp = common dso_local global i32 0, align 4
@OBJ_F_OBJ_ADD_SIGID = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OBJ_add_sigid(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** @sig_app, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @sig_sk_cmp, align 4
  %13 = call i32* @sk_nid_triple_new(i32 %12)
  store i32* %13, i32** @sig_app, align 8
  br label %14

14:                                               ; preds = %11, %3
  %15 = load i32*, i32** @sig_app, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %63

18:                                               ; preds = %14
  %19 = load i32*, i32** @sigx_app, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @sigx_cmp, align 4
  %23 = call i32* @sk_nid_triple_new(i32 %22)
  store i32* %23, i32** @sigx_app, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32*, i32** @sigx_app, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %63

28:                                               ; preds = %24
  %29 = call %struct.TYPE_5__* @OPENSSL_malloc(i32 12)
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %8, align 8
  %30 = icmp eq %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* @OBJ_F_OBJ_ADD_SIGID, align 4
  %33 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %34 = call i32 @OBJerr(i32 %32, i32 %33)
  store i32 0, i32* %4, align 4
  br label %63

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32*, i32** @sig_app, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = call i32 @sk_nid_triple_push(i32* %45, %struct.TYPE_5__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %35
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = call i32 @OPENSSL_free(%struct.TYPE_5__* %50)
  store i32 0, i32* %4, align 4
  br label %63

52:                                               ; preds = %35
  %53 = load i32*, i32** @sigx_app, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = call i32 @sk_nid_triple_push(i32* %53, %struct.TYPE_5__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %63

58:                                               ; preds = %52
  %59 = load i32*, i32** @sig_app, align 8
  %60 = call i32 @sk_nid_triple_sort(i32* %59)
  %61 = load i32*, i32** @sigx_app, align 8
  %62 = call i32 @sk_nid_triple_sort(i32* %61)
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %58, %57, %49, %31, %27, %17
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32* @sk_nid_triple_new(i32) #1

declare dso_local %struct.TYPE_5__* @OPENSSL_malloc(i32) #1

declare dso_local i32 @OBJerr(i32, i32) #1

declare dso_local i32 @sk_nid_triple_push(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_5__*) #1

declare dso_local i32 @sk_nid_triple_sort(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
