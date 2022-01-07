; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_init_sec_context.c_gsskrb5_initiator_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_init_sec_context.c_gsskrb5_initiator_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32*, i32*, i64 }

@CLOSE_CCACHE = common dso_local global i32 0, align 4
@IS_CFX = common dso_local global i32 0, align 4
@INITIATOR_READY = common dso_local global i32 0, align 4
@OPEN = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, %struct.TYPE_4__*, i32)* @gsskrb5_initiator_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gsskrb5_initiator_ready(i64* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @krb5_free_creds(i32 %15, i32* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 5
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CLOSE_CCACHE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @krb5_cc_close(i32 %29, i32* %32)
  br label %34

34:                                               ; preds = %28, %3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  store i32* null, i32** %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @krb5_auth_con_getremoteseqnumber(i32 %37, i32 %40, i32* %9)
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = call i32 @_gsskrb5i_is_cfx(i32 %42, %struct.TYPE_4__* %43, i32 0)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @IS_CFX, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %10, align 4
  %50 = load i64*, i64** %5, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @_gssapi_msg_order_f(i64 %53)
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i64 @_gssapi_msg_order_create(i64* %50, i32* %52, i32 %54, i32 %55, i32 0, i32 %56)
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %34
  %61 = load i64, i64* %8, align 8
  store i64 %61, i64* %4, align 8
  br label %72

62:                                               ; preds = %34
  %63 = load i32, i32* @INITIATOR_READY, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @OPEN, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %71, i64* %4, align 8
  br label %72

72:                                               ; preds = %62, %60
  %73 = load i64, i64* %4, align 8
  ret i64 %73
}

declare dso_local i32 @krb5_free_creds(i32, i32*) #1

declare dso_local i32 @krb5_cc_close(i32, i32*) #1

declare dso_local i32 @krb5_auth_con_getremoteseqnumber(i32, i32, i32*) #1

declare dso_local i32 @_gsskrb5i_is_cfx(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i64 @_gssapi_msg_order_create(i64*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @_gssapi_msg_order_f(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
