; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_keys.c_ldns_key_new_frm_engine.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_keys.c_ldns_key_new_frm_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@LDNS_STATUS_MEM_ERR = common dso_local global i32 0, align 4
@LDNS_STATUS_ERR = common dso_local global i32 0, align 4
@LDNS_STATUS_ENGINE_KEY_NOT_LOADED = common dso_local global i32 0, align 4
@LDNS_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_key_new_frm_engine(%struct.TYPE_8__** %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = call %struct.TYPE_8__* (...) @ldns_key_new()
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %10, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @LDNS_STATUS_MEM_ERR, align 4
  store i32 %15, i32* %5, align 4
  br label %51

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 (...) @UI_OpenSSL()
  %20 = call i32 @ENGINE_load_private_key(i32* %17, i8* %18, i32 %19, i32* null)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %16
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %31 = call i32 @ldns_key_free(%struct.TYPE_8__* %30)
  %32 = load i32, i32* @LDNS_STATUS_ERR, align 4
  store i32 %32, i32* %5, align 4
  br label %51

33:                                               ; preds = %16
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %35 = load i64, i64* %9, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @ldns_key_set_algorithm(%struct.TYPE_8__* %34, i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %33
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %45 = call i32 @ldns_key_free(%struct.TYPE_8__* %44)
  %46 = load i32, i32* @LDNS_STATUS_ENGINE_KEY_NOT_LOADED, align 4
  store i32 %46, i32* %5, align 4
  br label %51

47:                                               ; preds = %33
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %49 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %49, align 8
  %50 = load i32, i32* @LDNS_STATUS_OK, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %43, %29, %14
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_8__* @ldns_key_new(...) #1

declare dso_local i32 @ENGINE_load_private_key(i32*, i8*, i32, i32*) #1

declare dso_local i32 @UI_OpenSSL(...) #1

declare dso_local i32 @ldns_key_free(%struct.TYPE_8__*) #1

declare dso_local i32 @ldns_key_set_algorithm(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
