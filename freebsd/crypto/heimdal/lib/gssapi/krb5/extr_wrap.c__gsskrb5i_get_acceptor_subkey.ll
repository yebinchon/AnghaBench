; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_wrap.c__gsskrb5i_get_acceptor_subkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_wrap.c__gsskrb5i_get_acceptor_subkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@LOCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"No acceptor subkey available\00", align 1
@GSS_KRB5_S_KG_NO_SUBKEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_gsskrb5i_get_acceptor_subkey(%struct.TYPE_3__* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %9 = load i32**, i32*** %7, align 8
  store i32* null, i32** %9, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @LOCAL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32**, i32*** %7, align 8
  %22 = call i64 @krb5_auth_con_getremotesubkey(i32 %17, i32 %20, i32** %21)
  store i64 %22, i64* %8, align 8
  br label %30

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32**, i32*** %7, align 8
  %29 = call i64 @krb5_auth_con_getlocalsubkey(i32 %24, i32 %27, i32** %28)
  store i64 %29, i64* %8, align 8
  br label %30

30:                                               ; preds = %23, %16
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32**, i32*** %7, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @krb5_set_error_message(i32 %38, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %40 = load i64, i64* @GSS_KRB5_S_KG_NO_SUBKEY, align 8
  store i64 %40, i64* %4, align 8
  br label %43

41:                                               ; preds = %33, %30
  %42 = load i64, i64* %8, align 8
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

declare dso_local i64 @krb5_auth_con_getremotesubkey(i32, i32, i32**) #1

declare dso_local i64 @krb5_auth_con_getlocalsubkey(i32, i32, i32**) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
