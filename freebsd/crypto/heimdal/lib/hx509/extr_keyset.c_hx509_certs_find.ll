; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_keyset.c_hx509_certs_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_keyset.c_hx509_certs_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (i32, %struct.TYPE_9__*, i32, i32*, i32**)* }

@HX509_CERT_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_certs_find(i32 %0, %struct.TYPE_9__* %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  %13 = load i32**, i32*** %9, align 8
  store i32* null, i32** %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @_hx509_query_statistic(i32 %14, i32 0, i32* %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32 (i32, %struct.TYPE_9__*, i32, i32*, i32**)*, i32 (i32, %struct.TYPE_9__*, i32, i32*, i32**)** %20, align 8
  %22 = icmp ne i32 (i32, %struct.TYPE_9__*, i32, i32*, i32**)* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32 (i32, %struct.TYPE_9__*, i32, i32*, i32**)*, i32 (i32, %struct.TYPE_9__*, i32, i32*, i32**)** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32**, i32*** %9, align 8
  %36 = call i32 %28(i32 %29, %struct.TYPE_9__* %30, i32 %33, i32* %34, i32** %35)
  store i32 %36, i32* %5, align 4
  br label %87

37:                                               ; preds = %4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = call i32 @hx509_certs_start_seq(i32 %38, %struct.TYPE_9__* %39, i32* %10)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %5, align 4
  br label %87

45:                                               ; preds = %37
  store i32* null, i32** %11, align 8
  br label %46

46:                                               ; preds = %45, %67
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @hx509_certs_next_cert(i32 %47, %struct.TYPE_9__* %48, i32 %49, i32** %11)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %70

54:                                               ; preds = %46
  %55 = load i32*, i32** %11, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %70

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = call i64 @_hx509_query_match_cert(i32 %59, i32* %60, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32*, i32** %11, align 8
  %66 = load i32**, i32*** %9, align 8
  store i32* %65, i32** %66, align 8
  br label %70

67:                                               ; preds = %58
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @hx509_cert_free(i32* %68)
  br label %46

70:                                               ; preds = %64, %57, %53
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @hx509_certs_end_seq(i32 %71, %struct.TYPE_9__* %72, i32 %73)
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %5, align 4
  br label %87

79:                                               ; preds = %70
  %80 = load i32*, i32** %11, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @hx509_clear_error_string(i32 %83)
  %85 = load i32, i32* @HX509_CERT_NOT_FOUND, align 4
  store i32 %85, i32* %5, align 4
  br label %87

86:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %82, %77, %43, %23
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @_hx509_query_statistic(i32, i32, i32*) #1

declare dso_local i32 @hx509_certs_start_seq(i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @hx509_certs_next_cert(i32, %struct.TYPE_9__*, i32, i32**) #1

declare dso_local i64 @_hx509_query_match_cert(i32, i32*, i32*) #1

declare dso_local i32 @hx509_cert_free(i32*) #1

declare dso_local i32 @hx509_certs_end_seq(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @hx509_clear_error_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
