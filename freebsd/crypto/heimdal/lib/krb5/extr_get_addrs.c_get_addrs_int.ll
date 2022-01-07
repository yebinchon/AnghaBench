; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_addrs.c_get_addrs_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_addrs.c_get_addrs_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32* }

@SCAN_INTERFACES = common dso_local global i32 0, align 4
@EXTRA_ADDRESSES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_9__*, i32)* @get_addrs_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_addrs_int(i32 %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 -1, i64* %8, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @SCAN_INTERFACES, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @find_all_addresses(i32 %19, %struct.TYPE_9__* %20, i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25, %18
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = call i64 @gethostname_fallback(i32 %31, %struct.TYPE_9__* %32)
  store i64 %33, i64* %8, align 8
  br label %34

34:                                               ; preds = %30, %25
  br label %36

35:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i64, i64* %8, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @EXTRA_ADDRESSES, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @krb5_get_extra_addresses(i32 %45, %struct.TYPE_9__* %9)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = call i32 @krb5_free_addresses(i32 %50, %struct.TYPE_9__* %51)
  %53 = load i64, i64* %8, align 8
  store i64 %53, i64* %4, align 8
  br label %82

54:                                               ; preds = %44
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = call i64 @krb5_append_addresses(i32 %55, %struct.TYPE_9__* %56, %struct.TYPE_9__* %9)
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = call i32 @krb5_free_addresses(i32 %61, %struct.TYPE_9__* %62)
  %64 = load i64, i64* %8, align 8
  store i64 %64, i64* %4, align 8
  br label %82

65:                                               ; preds = %54
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @krb5_free_addresses(i32 %66, %struct.TYPE_9__* %9)
  br label %68

68:                                               ; preds = %65, %39, %36
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @free(i32* %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %73, %68
  %81 = load i64, i64* %8, align 8
  store i64 %81, i64* %4, align 8
  br label %82

82:                                               ; preds = %80, %60, %49
  %83 = load i64, i64* %4, align 8
  ret i64 %83
}

declare dso_local i64 @find_all_addresses(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i64 @gethostname_fallback(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @krb5_get_extra_addresses(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @krb5_free_addresses(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @krb5_append_addresses(i32, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
