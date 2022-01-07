; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_destroy_c.c_kadm5_c_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_destroy_c.c_kadm5_c_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32*, i64, i64, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kadm5_c_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %5, %struct.TYPE_2__** %3, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 7
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @free(i64 %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @free(i64 %12)
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @close(i32 %16)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @free(i64 %25)
  br label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @free(i64 %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @krb5_auth_con_free(i32 %45, i32* %48)
  br label %50

50:                                               ; preds = %42, %37
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @krb5_free_context(i32 %58)
  br label %60

60:                                               ; preds = %55, %50
  ret i32 0
}

declare dso_local i32 @free(i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @krb5_auth_con_free(i32, i32*) #1

declare dso_local i32 @krb5_free_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
