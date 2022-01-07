; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c__get_derived_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c__get_derived_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct._krb5_key_data }
%struct._krb5_key_data = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_8__*, i32, %struct._krb5_key_data**)* @_get_derived_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_get_derived_key(i32 %0, %struct.TYPE_8__* %1, i32 %2, %struct._krb5_key_data** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._krb5_key_data**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct._krb5_key_data*, align 8
  %12 = alloca [5 x i8], align 1
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct._krb5_key_data** %3, %struct._krb5_key_data*** %9, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %40, %4
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %13
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %19
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load %struct._krb5_key_data**, %struct._krb5_key_data*** %9, align 8
  store %struct._krb5_key_data* %37, %struct._krb5_key_data** %38, align 8
  store i32 0, i32* %5, align 4
  br label %76

39:                                               ; preds = %19
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %13

43:                                               ; preds = %13
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call %struct._krb5_key_data* @_new_derived_key(%struct.TYPE_8__* %44, i32 %45)
  store %struct._krb5_key_data* %46, %struct._krb5_key_data** %11, align 8
  %47 = load %struct._krb5_key_data*, %struct._krb5_key_data** %11, align 8
  %48 = icmp eq %struct._krb5_key_data* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %53 = call i32 @krb5_set_error_message(i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* @ENOMEM, align 4
  store i32 %54, i32* %5, align 4
  br label %76

55:                                               ; preds = %43
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct._krb5_key_data*, %struct._krb5_key_data** %11, align 8
  %62 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %61, i32 0, i32 0
  %63 = call i32 @krb5_copy_keyblock(i32 %56, i32 %60, i32* %62)
  %64 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @_krb5_put_int(i8* %64, i32 %65, i32 5)
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct._krb5_key_data*, %struct._krb5_key_data** %11, align 8
  %72 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %73 = call i32 @_krb5_derive_key(i32 %67, i32 %70, %struct._krb5_key_data* %71, i8* %72, i32 5)
  %74 = load %struct._krb5_key_data*, %struct._krb5_key_data** %11, align 8
  %75 = load %struct._krb5_key_data**, %struct._krb5_key_data*** %9, align 8
  store %struct._krb5_key_data* %74, %struct._krb5_key_data** %75, align 8
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %55, %49, %30
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct._krb5_key_data* @_new_derived_key(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @krb5_copy_keyblock(i32, i32, i32*) #1

declare dso_local i32 @_krb5_put_int(i8*, i32, i32) #1

declare dso_local i32 @_krb5_derive_key(i32, i32, %struct._krb5_key_data*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
