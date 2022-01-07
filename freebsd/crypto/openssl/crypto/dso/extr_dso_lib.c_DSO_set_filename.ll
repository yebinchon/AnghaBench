; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dso/extr_dso_lib.c_DSO_set_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dso/extr_dso_lib.c_DSO_set_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64 }

@DSO_F_DSO_SET_FILENAME = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@DSO_R_DSO_ALREADY_LOADED = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DSO_set_filename(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = icmp eq %struct.TYPE_3__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @DSO_F_DSO_SET_FILENAME, align 4
  %14 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %15 = call i32 @DSOerr(i32 %13, i32 %14)
  store i32 0, i32* %3, align 4
  br label %42

16:                                               ; preds = %9
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @DSO_F_DSO_SET_FILENAME, align 4
  %23 = load i32, i32* @DSO_R_DSO_ALREADY_LOADED, align 4
  %24 = call i32 @DSOerr(i32 %22, i32 %23)
  store i32 0, i32* %3, align 4
  br label %42

25:                                               ; preds = %16
  %26 = load i8*, i8** %5, align 8
  %27 = call i8* @OPENSSL_strdup(i8* %26)
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @DSO_F_DSO_SET_FILENAME, align 4
  %32 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %33 = call i32 @DSOerr(i32 %31, i32 %32)
  store i32 0, i32* %3, align 4
  br label %42

34:                                               ; preds = %25
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @OPENSSL_free(i8* %37)
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %34, %30, %21, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @DSOerr(i32, i32) #1

declare dso_local i8* @OPENSSL_strdup(i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
