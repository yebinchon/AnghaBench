; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_rd_req.c_get_key_from_keytab.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_rd_req.c_get_key_from_keytab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_11__*, i32, i32*, i32**)* @get_key_from_keytab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_key_from_keytab(i32 %0, %struct.TYPE_11__* %1, i32 %2, i32* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca %struct.TYPE_10__, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32** %4, i32*** %10, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @krb5_kt_default(i32 %18, i32** %14)
  br label %22

20:                                               ; preds = %5
  %21 = load i32*, i32** %9, align 8
  store i32* %21, i32** %14, align 8
  br label %22

22:                                               ; preds = %20, %17
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %13, align 4
  br label %37

36:                                               ; preds = %22
  store i32 0, i32* %13, align 4
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i32, i32* %6, align 4
  %39 = load i32*, i32** %14, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @krb5_kt_get_entry(i32 %38, i32* %39, i32 %40, i32 %41, i32 %46, %struct.TYPE_10__* %11)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  br label %58

51:                                               ; preds = %37
  %52 = load i32, i32* %6, align 4
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %54 = load i32**, i32*** %10, align 8
  %55 = call i64 @krb5_copy_keyblock(i32 %52, i32* %53, i32** %54)
  store i64 %55, i64* %12, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @krb5_kt_free_entry(i32 %56, %struct.TYPE_10__* %11)
  br label %58

58:                                               ; preds = %51, %50
  %59 = load i32*, i32** %9, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @krb5_kt_close(i32 %62, i32* %63)
  br label %65

65:                                               ; preds = %61, %58
  %66 = load i64, i64* %12, align 8
  ret i64 %66
}

declare dso_local i32 @krb5_kt_default(i32, i32**) #1

declare dso_local i64 @krb5_kt_get_entry(i32, i32*, i32, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @krb5_copy_keyblock(i32, i32*, i32**) #1

declare dso_local i32 @krb5_kt_free_entry(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @krb5_kt_close(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
