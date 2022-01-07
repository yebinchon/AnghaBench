; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_get_initial_ticket.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_protocol.c_kcm_op_get_initial_ticket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32 }

@KCM_FLAGS_USE_CACHED_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32, i32*, i32*)* @kcm_op_get_initial_ticket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kcm_op_get_initial_ticket(i32 %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 0, i64* %15, align 8
  store i32* null, i32** %16, align 8
  %18 = call i32 @krb5_keyblock_zero(i32* %17)
  %19 = load i32*, i32** %10, align 8
  %20 = call i64 @krb5_ret_stringz(i32* %19, i8** %14)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i64, i64* %12, align 8
  store i64 %24, i64* %6, align 8
  br label %148

25:                                               ; preds = %5
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i8*, i8** %14, align 8
  %30 = call i32 @KCM_LOG_REQUEST_NAME(i32 %26, i32* %27, i32 %28, i8* %29)
  %31 = load i32*, i32** %10, align 8
  %32 = call i64 @krb5_ret_int8(i32* %31, i64* %15)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load i8*, i8** %14, align 8
  %37 = call i32 @free(i8* %36)
  %38 = load i64, i64* %12, align 8
  store i64 %38, i64* %6, align 8
  br label %148

39:                                               ; preds = %25
  %40 = load i64, i64* %15, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32*, i32** %10, align 8
  %44 = call i64 @krb5_ret_principal(i32* %43, i32** %16)
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i8*, i8** %14, align 8
  %49 = call i32 @free(i8* %48)
  %50 = load i64, i64* %12, align 8
  store i64 %50, i64* %6, align 8
  br label %148

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %39
  %53 = load i32*, i32** %10, align 8
  %54 = call i64 @krb5_ret_keyblock(i32* %53, i32* %17)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load i8*, i8** %14, align 8
  %59 = call i32 @free(i8* %58)
  %60 = load i32*, i32** %16, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = load i32*, i32** %16, align 8
  %65 = call i32 @krb5_free_principal(i32 %63, i32* %64)
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i64, i64* %12, align 8
  store i64 %67, i64* %6, align 8
  br label %148

68:                                               ; preds = %52
  %69 = load i32, i32* %7, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i8*, i8** %14, align 8
  %73 = call i64 @kcm_ccache_resolve_client(i32 %69, i32* %70, i32 %71, i8* %72, %struct.TYPE_7__** %13)
  store i64 %73, i64* %12, align 8
  %74 = load i64, i64* %12, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %132

76:                                               ; preds = %68
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = call i32 @HEIMDAL_MUTEX_lock(i32* %78)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %76
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @krb5_free_principal(i32 %85, i32* %88)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  store i32* null, i32** %91, align 8
  br label %92

92:                                               ; preds = %84, %76
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = call i32 @krb5_free_keyblock(i32 %93, i32* %96)
  %98 = load i32*, i32** %16, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  store i32* %98, i32** %100, align 8
  %101 = load i32, i32* %17, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  %105 = load i32, i32* @KCM_FLAGS_USE_CACHED_KEY, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %112 = call i64 @kcm_ccache_enqueue_default(i32 %110, %struct.TYPE_7__* %111, i32* null)
  store i64 %112, i64* %12, align 8
  %113 = load i64, i64* %12, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %92
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 3
  store i32* null, i32** %117, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = call i32 @krb5_keyblock_zero(i32* %120)
  %122 = load i32, i32* @KCM_FLAGS_USE_CACHED_KEY, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %115, %92
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = call i32 @HEIMDAL_MUTEX_unlock(i32* %130)
  br label %132

132:                                              ; preds = %128, %68
  %133 = load i8*, i8** %14, align 8
  %134 = call i32 @free(i8* %133)
  %135 = load i64, i64* %12, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load i32, i32* %7, align 4
  %139 = load i32*, i32** %16, align 8
  %140 = call i32 @krb5_free_principal(i32 %138, i32* %139)
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @krb5_free_keyblock(i32 %141, i32* %17)
  br label %143

143:                                              ; preds = %137, %132
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %146 = call i32 @kcm_release_ccache(i32 %144, %struct.TYPE_7__* %145)
  %147 = load i64, i64* %12, align 8
  store i64 %147, i64* %6, align 8
  br label %148

148:                                              ; preds = %143, %66, %47, %35, %23
  %149 = load i64, i64* %6, align 8
  ret i64 %149
}

declare dso_local i32 @krb5_keyblock_zero(i32*) #1

declare dso_local i64 @krb5_ret_stringz(i32*, i8**) #1

declare dso_local i32 @KCM_LOG_REQUEST_NAME(i32, i32*, i32, i8*) #1

declare dso_local i64 @krb5_ret_int8(i32*, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @krb5_ret_principal(i32*, i32**) #1

declare dso_local i64 @krb5_ret_keyblock(i32*, i32*) #1

declare dso_local i32 @krb5_free_principal(i32, i32*) #1

declare dso_local i64 @kcm_ccache_resolve_client(i32, i32*, i32, i8*, %struct.TYPE_7__**) #1

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i32 @krb5_free_keyblock(i32, i32*) #1

declare dso_local i64 @kcm_ccache_enqueue_default(i32, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

declare dso_local i32 @kcm_release_ccache(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
