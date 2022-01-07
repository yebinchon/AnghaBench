; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_table.c_engine_table_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_table.c_engine_table_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32*, i32 }

@global_engine_lock = common dso_local global i32 0, align 4
@ENGINE_F_ENGINE_TABLE_REGISTER = common dso_local global i32 0, align 4
@ENGINE_R_INIT_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @engine_table_register(%struct.TYPE_10__** %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* @global_engine_lock, align 4
  %18 = call i32 @CRYPTO_THREAD_write_lock(i32 %17)
  %19 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  store i32 1, i32* %14, align 4
  br label %23

23:                                               ; preds = %22, %6
  %24 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %25 = call i32 @int_table_check(%struct.TYPE_10__** %24, i32 1)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %139

28:                                               ; preds = %23
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @engine_cleanup_add_first(i32* %32)
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %135, %34
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %11, align 4
  %38 = icmp ne i32 %36, 0
  br i1 %38, label %39, label %138

39:                                               ; preds = %35
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = call %struct.TYPE_11__* @lh_ENGINE_PILE_retrieve(i32* %45, %struct.TYPE_11__* %15)
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %16, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %48 = icmp ne %struct.TYPE_11__* %47, null
  br i1 %48, label %93, label %49

49:                                               ; preds = %39
  %50 = call %struct.TYPE_11__* @OPENSSL_malloc(i32 24)
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %16, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %52 = icmp eq %struct.TYPE_11__* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %139

54:                                               ; preds = %49
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = call i32 (...) @sk_ENGINE_new_null()
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %54
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %70 = call i32 @OPENSSL_free(%struct.TYPE_11__* %69)
  br label %139

71:                                               ; preds = %54
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  store i32* null, i32** %73, align 8
  %74 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %78 = call i32 @lh_ENGINE_PILE_insert(i32* %76, %struct.TYPE_11__* %77)
  %79 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = call %struct.TYPE_11__* @lh_ENGINE_PILE_retrieve(i32* %81, %struct.TYPE_11__* %15)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %84 = icmp ne %struct.TYPE_11__* %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %71
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @sk_ENGINE_free(i32 %88)
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %91 = call i32 @OPENSSL_free(%struct.TYPE_11__* %90)
  br label %139

92:                                               ; preds = %71
  br label %93

93:                                               ; preds = %92, %39
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @sk_ENGINE_delete_ptr(i32 %96, i32* %97)
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @sk_ENGINE_push(i32 %101, i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %93
  br label %139

106:                                              ; preds = %93
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  store i32 0, i32* %108, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %135

111:                                              ; preds = %106
  %112 = load i32*, i32** %9, align 8
  %113 = call i32 @engine_unlocked_init(i32* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* @ENGINE_F_ENGINE_TABLE_REGISTER, align 4
  %117 = load i32, i32* @ENGINE_R_INIT_FAILED, align 4
  %118 = call i32 @ENGINEerr(i32 %116, i32 %117)
  br label %139

119:                                              ; preds = %111
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @engine_unlocked_finish(i32* %127, i32 0)
  br label %129

129:                                              ; preds = %124, %119
  %130 = load i32*, i32** %9, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 2
  store i32* %130, i32** %132, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  store i32 1, i32* %134, align 4
  br label %135

135:                                              ; preds = %129, %106
  %136 = load i32*, i32** %10, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %10, align 8
  br label %35

138:                                              ; preds = %35
  store i32 1, i32* %13, align 4
  br label %139

139:                                              ; preds = %138, %115, %105, %85, %68, %53, %27
  %140 = load i32, i32* @global_engine_lock, align 4
  %141 = call i32 @CRYPTO_THREAD_unlock(i32 %140)
  %142 = load i32, i32* %13, align 4
  ret i32 %142
}

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local i32 @int_table_check(%struct.TYPE_10__**, i32) #1

declare dso_local i32 @engine_cleanup_add_first(i32*) #1

declare dso_local %struct.TYPE_11__* @lh_ENGINE_PILE_retrieve(i32*, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @OPENSSL_malloc(i32) #1

declare dso_local i32 @sk_ENGINE_new_null(...) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_11__*) #1

declare dso_local i32 @lh_ENGINE_PILE_insert(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @sk_ENGINE_free(i32) #1

declare dso_local i32 @sk_ENGINE_delete_ptr(i32, i32*) #1

declare dso_local i32 @sk_ENGINE_push(i32, i32*) #1

declare dso_local i32 @engine_unlocked_init(i32*) #1

declare dso_local i32 @ENGINEerr(i32, i32) #1

declare dso_local i32 @engine_unlocked_finish(i32*, i32) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
