; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_get_princs_s.c_foreach.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_get_princs_s.c_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.foreach_data = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, %struct.TYPE_5__*, i8*)* @foreach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @foreach(i32 %0, i32* %1, %struct.TYPE_5__* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.foreach_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.foreach_data*
  store %struct.foreach_data* %14, %struct.foreach_data** %10, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @krb5_unparse_name(i32 %15, i32 %19, i8** %11)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* %12, align 8
  store i64 %24, i64* %5, align 8
  br label %64

25:                                               ; preds = %4
  %26 = load %struct.foreach_data*, %struct.foreach_data** %10, align 8
  %27 = getelementptr inbounds %struct.foreach_data, %struct.foreach_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %25
  %31 = load %struct.foreach_data*, %struct.foreach_data** %10, align 8
  %32 = getelementptr inbounds %struct.foreach_data, %struct.foreach_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i64 @fnmatch(i64 %33, i8* %34, i32 0)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = load %struct.foreach_data*, %struct.foreach_data** %10, align 8
  %39 = getelementptr inbounds %struct.foreach_data, %struct.foreach_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = call i64 @fnmatch(i64 %40, i8* %41, i32 0)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37, %30
  %45 = load %struct.foreach_data*, %struct.foreach_data** %10, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i64 @add_princ(%struct.foreach_data* %45, i8* %46)
  store i64 %47, i64* %12, align 8
  br label %51

48:                                               ; preds = %37
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @free(i8* %49)
  br label %51

51:                                               ; preds = %48, %44
  br label %56

52:                                               ; preds = %25
  %53 = load %struct.foreach_data*, %struct.foreach_data** %10, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = call i64 @add_princ(%struct.foreach_data* %53, i8* %54)
  store i64 %55, i64* %12, align 8
  br label %56

56:                                               ; preds = %52, %51
  %57 = load i64, i64* %12, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @free(i8* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i64, i64* %12, align 8
  store i64 %63, i64* %5, align 8
  br label %64

64:                                               ; preds = %62, %23
  %65 = load i64, i64* %5, align 8
  ret i64 %65
}

declare dso_local i64 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i64 @fnmatch(i64, i8*, i32) #1

declare dso_local i64 @add_princ(%struct.foreach_data*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
